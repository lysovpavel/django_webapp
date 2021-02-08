from ..models import User
from rest_framework import serializers
from rest_framework.validators import UniqueValidator


class UserSerializer(serializers.ModelSerializer):
    # new_password = serializers.CharField(required=False)
    email = serializers.EmailField(validators=[UniqueValidator(queryset=User.objects.all(),
                                                               message='Email уже используется другим пользователем')])

    class Meta:
        model = User
        fields = (
            'id',
            'username',
            'password',
            'first_name',
            'last_name',
            'email',
        )

