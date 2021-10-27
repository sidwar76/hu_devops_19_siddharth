FROM python:3.8-slim

LABEL MAINTAINER="Sankalp Saxena sanksaxena@deloitte.com"

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN apt-get update \
    && apt-get install gcc -y \
    && apt-get clean 

RUN pip install -r /app/requirements.txt \
    && rm -rf /root/.cache/pip

COPY . /app/

WORKDIR /app/app

ENTRYPOINT [ "gunicorn", "--workers", "5", "--threads", "2", "--bind", "0.0.0.0:5000", "wsgi:app"]