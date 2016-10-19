#!/usr/bin/env bash

while ! nc -q 1 mysql 3306 </dev/null; do sleep 2s; done

exec "$@"