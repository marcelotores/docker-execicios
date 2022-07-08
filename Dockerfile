FROM python:alpine

ENV FLASK_APP=app.py

COPY . /usr/src/

RUN pip install -r /usr/src/requirements.txt

WORKDIR /usr/src/

CMD flask run -h 0.0.0.0
