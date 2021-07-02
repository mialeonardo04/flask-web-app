FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
ENV PATH=/home/ubuntu/.virtualenvs/bin:$PATH
RUN pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py python -m flask run --host=0.0.0.0 --port=8080
