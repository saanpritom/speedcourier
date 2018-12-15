from django.shortcuts import render
from couriertrack.models import StatusData, ParcelData, ParcelStatus
from django.db.models import Q
from itertools import chain
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
import operator
from functools import reduce

# Create your views here.
def homepage(request):
    return render(request, 'home-page-view.html')


def contactpage(request):
    return render(request, 'contact-page-view.html')


def aboutpage(request):
    return render(request, 'about-us-page-view.html')


def trackingpage(request):
    return render(request, 'tracking-page-view.html')


def search(request):
    template_name = 'tracking-result-view.html'
    dbdatas = request.GET.get('q').split(',')
    mylist = [Q(parcel__parcel_number__contains=x) for x in dbdatas]
    parcel_status = ParcelStatus.objects.filter(reduce(operator.or_,mylist))

    context = {'search_items': parcel_status, 'query_text': dbdatas}
    return render(request, template_name, context)

    """try:
        search_results = list(sorted(chain(parcel_status), key=lambda instance: instance.id))
        total_results = len(search_results)
        paginator = Paginator(search_results, 10)
        page = request.GET.get('page')
        s_results = paginator.get_page(page)
        context = {'search_items': s_results, 'keyword': query, 'value': '1', 'total_results': total_results}
        return render(request, template_name, context)
    except IndexError as e:
        context = {'value': '0'}
        return render(request, template_name, context)"""
