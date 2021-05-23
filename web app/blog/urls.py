from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='blog-home'),
    path('con/', views.about, name='blog-about'), 
]