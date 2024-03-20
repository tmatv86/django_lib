from django import forms
from .models import Book

class BookAddForm(forms.ModelForm):
    class Meta:
        model = Book
        checks = forms.BooleanField(required=False)
        fields = ['name', 'author', 'genre', 'available']
