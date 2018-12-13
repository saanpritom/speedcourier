from django.db import models

# Create your models here.
class StatusData(models.Model):
    status_title = models.CharField(max_length=256)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.status_title

    class Meta:
        ordering = ('id',)


class ParcelData(models.Model):
    parcel_number = models.CharField(max_length=256)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.parcel_number


class ParcelStatus(models.Model):
    parcel = models.ForeignKey(ParcelData, related_name='parcel', on_delete=models.CASCADE,)
    status = models.ForeignKey(StatusData, related_name='status', on_delete=models.CASCADE,)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.id)
