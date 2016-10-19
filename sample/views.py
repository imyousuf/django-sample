from django.conf import settings
from django.http import HttpResponse
from django.template import loader


def root(request):
    template = loader.get_template('index.html')
    context = {
        'debug': settings.DEBUG,
    }
    return HttpResponse(template.render(context, request))


