#!/bin/bash
(
if [ $# -lt 1 ]
then
  echo "Assuming in django root project dir"
else
  cd "$1"
fi
python manage.py migrate && python manage.py runserver 0.0.0.0:8000
)
