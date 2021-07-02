FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN pip install flask
COPY app.py /opt/
RUN export FLASK_APP=/opt/app.py
CMD ["flask","run","--host=0.0.0.0","--port=8080"]
