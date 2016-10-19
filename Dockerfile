FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip libmysqlclient-dev libxml2-dev libxslt-dev netcat

RUN mkdir /code && mkdir /runners
WORKDIR /code
ADD ./helper-scripts/docker/django-sample-entrypoint.sh /root/
ADD ./helper-scripts/runners/ /runners/

ADD requirements.txt /code/
RUN pip install -r requirements.txt

RUN mkdir -p ./helper-scripts/pycharm-debug/
ADD ./helper-scripts/pycharm-debug/ /code/helper-scripts/pycharm-debug/
WORKDIR /code
ADD ./manage.py /code/

ADD ./django_sample/ /code/django_sample/
ADD ./sample/ /code/sample/
ADD ./static/ /code/static/
ADD ./templates/ /code/templates/

EXPOSE 8000

ENTRYPOINT ["/root/django-sample-entrypoint.sh"]
