FROM python:3.8

WORKDIR geo-prod

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .