FROM garpix/python:3.6-ubuntu-django

ENV PYTHONUNBUFFERED 1

WORKDIR /code
COPY requirements.txt /code/

COPY vendor /code/vendor/

RUN pip3 install -r requirements.txt

WORKDIR /code

COPY . /code/

WORKDIR /code/backend

EXPOSE 8080

