from django.shortcuts import render
from django.http import HttpResponse
from .models import Book
from .forms import BookAddForm

# Create your views here.
def index_page(request):

    #all_books = Book.objects.all()
    ##    book.genre = 'Классическая литература'
    #   book.save()

    #from datetime import datetime
    #new_book = Book(author="М.Шолохов", name='Тихий Дон', upload_date=datetime.now(), available=True)
    #new_book.save()
    print('HELLO FROM index_page()')
    return render(request, 'index.html')

def show_books(request):

    tablebook = Book.objects.all()
    form = BookAddForm()

    context = {}
    context['tablebook'] = tablebook
    context['form'] = form

    genres = {}
    for idx, val in enumerate(Book.objects.raw(f"SELECT genre, id FROM id_genres")):
        genres[idx] = val.genre

    context['genres'] = genres

    if request.method == "POST":
        if 'Add' in request.POST:
            form = BookAddForm(request.POST)
            if form.data.getlist('author')[0] != '' and form.data.getlist('name')[0] != '':
                if form.data.getlist('genre')[0] not in genres.values():
                    print('Non existent genre!')
                else:
                    form.save()
            else:
                print('No data to save (all fields must be filled out)')
        if 'Delete' in request.POST:
            pk = request.POST.getlist('checks')
            if pk:
                book = Book.objects.get(id=pk[0])
                book.delete()
            else:
                print('No book was choosen to delete')
        if 'sel_name' in request.POST:

            form_id = int(request.POST.getlist('sel_name')[0])
            if form_id != -1:
                tablebook = Book.objects.filter(genre=genres[int(form_id)])
            if form_id == -1:
                tablebook = Book.objects.all()

            form = BookAddForm()
            context = {}
            context['tablebook'] = tablebook
            context['form'] = form
            context['genres'] = genres

    return render(request, 'book_list.html', context)
