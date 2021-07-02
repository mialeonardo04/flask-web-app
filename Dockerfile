FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python python-pip python-dev

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0 --port=8080
