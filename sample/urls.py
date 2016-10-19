__author__ = 'imyousuf'

from django.conf.urls import url

from . import views

urlpatterns = [url(r'^$', views.root, name='root')]