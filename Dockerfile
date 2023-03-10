FROM python:3.12.0a6-alpine3.16

WORKDIR /code 
COPY requirements.txt  /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./app /code/app





