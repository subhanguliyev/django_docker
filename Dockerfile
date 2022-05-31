FROM python:3.10.4-alpine
WORKDIR /django_docker
COPY ./ /django_docker
RUN apk update && pip install -r /django_docker/requirements.txt --no-cache-dir
EXPOSE 8000
RUN ["python", "manage.py", "runserver", "0.0.0.0:8000"]