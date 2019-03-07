#!/usr/bin/env sh

./manage.py runworker channels &
daphne -b 0.0.0.0 -p 8080 app.asgi:application
