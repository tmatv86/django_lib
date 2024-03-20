from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm

class LoginForm(forms.Form):
    username = forms.CharField(max_length=25, label='Имя')
    password = forms.CharField(max_length=25, widget=forms.PasswordInput, label='Пароль')


class RegisterForm(UserCreationForm):
    username = forms.CharField(max_length=50, label="Имя")
    email = forms.EmailField(required=True, label="Почта")
    password1 = forms.CharField(widget=forms.PasswordInput, label='Пароль')
    password2 = forms.CharField(widget=forms.PasswordInput, label='Confirm')

    class Meta:
        model = User
        fields = [
            'username',
            'email'
        ]
        help_texts = {
            'username': None
        }
