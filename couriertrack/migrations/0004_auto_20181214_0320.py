# Generated by Django 2.1.2 on 2018-12-13 21:20

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('couriertrack', '0003_parcelstatus'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='statusdata',
            options={'ordering': ('id',)},
        ),
    ]