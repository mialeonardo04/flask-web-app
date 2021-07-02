FROM ubuntu:18.04
WORKDIR /opt
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apt-get update -y && apt-get install -y python-pip python-dev
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
