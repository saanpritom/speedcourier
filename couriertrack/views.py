from django.shortcuts import render

# Create your views here.
def homepage(request):
    return render(request, 'home-page-view.html')


def contactpage(request):
    return render(request, 'contact-page-view.html')


def aboutpage(request):
    return render(request, 'about-us-page-view.html')


def trackingpage(request):
    return render(request, 'tracking-page-view.html')
