from django.shortcuts import render
from couriertrack.models import StatusData, ParcelData, ParcelStatus
from django.db.models import Q
from itertools import chain
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
import operator
from functools import reduce
from dal import autocomplete

# Create your views here.
def homepage(request):
    return render(request, 'home-page-view.html')


def contactpage(request):
    return render(request, 'contact-page-view.html')


def aboutpage(request):
    return render(request, 'about-us-page-view.html')


def clientpage(request):
    return render(request, 'client-page-view.html')


def trackingpage(request):
    return render(request, 'tracking-page-view.html')


def search(request):
    template_name = 'tracking-result-view.html'
    try:
        dbdatas = request.GET.get('q').split(',')
        mylist = [Q(parcel__parcel_number__contains=x) for x in dbdatas]
        parcel_status = ParcelStatus.objects.filter(reduce(operator.or_,mylist))
        try:
            search_results = list(sorted(chain(parcel_status), key=lambda instance: instance.id))
            total_results = len(search_results)
            context = {'search_items': search_results, 'query_text': dbdatas, 'value': '1', 'total_results': total_results}
            return render(request, template_name, context)
        except IndexError as e:
            context = {'value': '0'}
            return render(request, template_name, context)
    except AttributeError as e:
        context = {'value': '2'}
        return render(request, template_name, context)


def handler404(request):
    return render(request, '404.html', status=404)


def handler500(request):
    return render(request, '404.html', status=500)


#autocomplete form in admin
class ParcelStatusAutocomplete(autocomplete.Select2QuerySetView):
    def get_queryset(self):
        # Don't forget to filter out results depending on the visitor !
        if not self.request.user.is_authenticated:
            return ParcelData.objects.none()

        qs = ParcelData.objects.all()

        if self.q:
            qs = qs.filter(parcel_number__istartswith=self.q)

        return qs
