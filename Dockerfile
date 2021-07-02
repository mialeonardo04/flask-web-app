FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN pip install Flask==0.12
COPY app.py /opt/
ENV FLASK_APP=/opt/app.py
ENTRYPOINT flask run --host=0.0.0.0 --port=8080
