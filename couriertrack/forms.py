from dal import autocomplete
from django import forms
from couriertrack.models import ParcelData, StatusData


class ParcelStatusForm(forms.ModelForm):
    parcel = forms.ModelChoiceField(
        queryset=ParcelData.objects.all(),
        widget=autocomplete.ModelSelect2(url='parcel-autocomplete')
    )

    class Meta:
        model = ParcelData
        fields = ('__all__')
