from django.contrib import admin
from contries.models import WorldBorder
from django.contrib.gis.admin.options import OSMGeoAdmin


@admin.register(WorldBorder)
class GeoAdmin(OSMGeoAdmin):
    list_display = ('name',)
    list_filter = ('name',)
    search_fields = ('name',)