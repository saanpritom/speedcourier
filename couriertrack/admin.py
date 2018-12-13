from django.contrib import admin
from couriertrack.models import StatusData, ParcelData

# Register your models here.
class StatusAdmin(admin.ModelAdmin):
    list_display = ('status_title', 'created_at')


class ParcelAdmin(admin.ModelAdmin):
    list_display = ('parcel_number', 'created_at')


admin.site.register(StatusData, StatusAdmin)
admin.site.register(ParcelData, ParcelAdmin)
