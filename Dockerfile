FROM ubuntu:18.04
RUN apt-get update -y && apt-get install -y python-pip python-dev
RUN pip install -r requirements.txt
COPY app.py /opt/
CMD [ "FLASK_APP=/opt/app.py", "flask", "run", "--host=0.0.0.0", "--port=8080" ]
