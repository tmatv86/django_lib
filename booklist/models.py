from django.db import models
from datetime import date

# Create your models here.
class Book(models.Model):
    author = models.CharField(max_length=100, blank=True)
    name = models.CharField(max_length=300, blank=True)
    upload_date = models.DateTimeField(default=date.today, blank=True)
    available = models.BooleanField(default=False, blank=True)
    genre = models.CharField(max_length=100, default='', blank=True)

    def __str__(self):
        return f'{self.author}, {self.name}, {self.upload_date}, {self.available}'