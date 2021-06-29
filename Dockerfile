FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

RUN pip install flask

COPY app.py /opt/

ENTRYPOING FLASK_APP=/opt/app.py falsk run --host=0.0.0.0 --port=8080
