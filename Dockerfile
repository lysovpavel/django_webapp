FROM garpix/python:3.6-ubuntu-django

ENV PYTHONUNBUFFERED 1

WORKDIR /code
COPY requirements.txt /code/
COPY vendor /code/vendor/
RUN pip3 install -r /code/requirements.txt

WORKDIR /code

COPY backend /code/backend/
COPY frontend /code/frontend/

WORKDIR /code/backend

EXPOSE 8080

