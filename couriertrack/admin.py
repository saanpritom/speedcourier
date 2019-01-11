from django.contrib import admin
from couriertrack.models import StatusData, ParcelData, ParcelStatus
from couriertrack.forms import ParcelStatusForm

# Register your models here.
class StatusAdmin(admin.ModelAdmin):
    list_display = ('id', 'status_title', 'created_at')


class ParcelAdmin(admin.ModelAdmin):
    list_display = ('id', 'parcel_number', 'created_at')


class ParcelStatusAdmin(admin.ModelAdmin):
    form = ParcelStatusForm
    list_display = ('id', 'parcel', 'status', 'created_at')


admin.site.register(StatusData, StatusAdmin)
admin.site.register(ParcelData, ParcelAdmin)
admin.site.register(ParcelStatus, ParcelStatusAdmin)
admin.site.site_header = 'Speed Line Express Ltd'
