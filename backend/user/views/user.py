from rest_framework.decorators import action
import base64
from django.utils.encoding import force_bytes

from ..serializers import UserSerializer
from ..models import User
from rest_framework import viewsets, status
from rest_framework.permissions import IsAdminUser
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from django.contrib.auth import update_session_auth_hash


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = (IsAdminUser, IsAuthenticated,)

    @action(detail=False, methods=['GET', ], permission_classes=(IsAuthenticated,), name='telegram_link',
            pagination_class=None)
    def get_telegram_link(self, request, *args, **kwargs):
        user = self.request.user
        uid = base64.urlsafe_b64encode(force_bytes(user.username)).decode('utf-8')
        # serializer = self.get_serializer_class()(data=self.request.data)
        # if serializer.is_valid():
        data = {
            'link': f'https://t.me/plysov_bot?start={uid}'
        }
        return Response(data, status=status.HTTP_200_OK)
        # else:
        #     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class CurrentUserViewSet(viewsets.ModelViewSet):
    permission_classes = (IsAuthenticated,)
    queryset = User.objects.all()
    serializer_class = UserSerializer

    def get_object(self):
        return self.request.user

    def update(self, request, *args, **kwargs):
        instance = self.get_object()
        serializer = self.serializer_class(instance=instance, data=request.data)

        if serializer.is_valid():
            serializer.save()
            new_password = serializer.data.get('new_password', None)
            if new_password is not None:
                instance.set_password(new_password)
                instance.save()
                update_session_auth_hash(request, instance)
            return Response(serializer.data)
        return Response({'success': False, 'text': 'Ошибка', 'error': serializer.errors})