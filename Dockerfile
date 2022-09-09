FROM python:3.8

RUN mkdir -p /opt/services/geo-prod
WORKDIR /opt/services/geo-prod

RUN mkdir -p /opt/services/geo-prod/requirements

ADD requirements.txt /opt/services/geo-prod/

COPY . /opt/services/geo-prod/

RUN pip install -r requirements.txt