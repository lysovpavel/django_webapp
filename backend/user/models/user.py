from django.contrib.auth.models import AbstractUser


class User(AbstractUser):

    class Meta:
        verbose_name = 'Пользователь'
        verbose_name_plural = 'Пользователи'
    
    def __str__(self):

        return self.get_full_name() if (self.first_name and self.last_name) \
            else self.email if self.email \
            else self.username
