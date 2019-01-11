from django.contrib import admin
from django.urls import path, include
from couriertrack import views

urlpatterns = [
    path('', views.homepage, name='home-page'),
    path('contact/', views.contactpage, name='contact-page'),
    path('about/', views.aboutpage, name='about-page'),
    path('clients/', views.clientpage, name='client-page'),
    path('tracking/', views.trackingpage, name='tracking-page'),
    path('tracking/result', views.search, name='search_page'),
    path('parcel/autocomplete', views.ParcelStatusAutocomplete.as_view(), name='parcel-autocomplete'),
]
