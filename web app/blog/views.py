#from webapp1.webapp1.settings import AUTH_PASSWORD_VALIDATORS
#from django.http import HttpResponse
#from .models import Post
from django.shortcuts import render
from .models import post


"""
Dummy data I created
posts = [
    {
        'title': 'Cake',
        'ingredients': 'flour 300g, eggs 4ea, sugar 30g',
        'recipe': 'Mix the egg and sugar, mix the flour, put it into the pot. Bake for 50 minutes.',
        'date_post': '2002-10-09'
    },
    {
        'title': 'Chocolate cookies',
        'ingredients': 'flour 50g, eggs 2ea, sugar 50g',
        'recipe': 'Mix the egg and sugar, mix the flour, put it into the pot. Bake for 15 minutes.',
        'date_post': '2002-10-09'
    }
]
"""

# Create your views here.
def home(request):
    context = {
        #'posts': posts #.objects.all()
        'posts': post.objects.all()
    }
    return render(request, 'blog_home.html', context)

def about(request):
    return render(request, 'blog_about.html')

