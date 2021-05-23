#from webapp1.webapp1.settings import AUTH_PASSWORD_VALIDATORS
#from django.http import HttpResponse
#from .models import Post
from django.shortcuts import render
from .models import post

# Create your views here.
def home(request):
    context = {
        #'posts': posts #.objects.all()
        'posts': post.objects.all()
    }
    return render(request, 'blog_home.html', context)

def about(request):
    return render(request, 'blog_about.html')

