FROM python:3.8

WORKDIR geo-prod

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .
RUN python manage.py makemigrations && python manage.py sqlmigrate contries 0001 && python manage.py migrate && python manage.py collectstatic
RUN python ./manage.py shell < from contries import load < load.run()