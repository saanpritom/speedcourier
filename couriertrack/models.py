from django.db import models

# Create your models here.
class StatusData(models.Model):
    status_title = models.CharField(max_length=256)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.status_title


class ParcelData(models.Model):
    parcel_number = models.CharField(max_length=256)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.parcel_number
