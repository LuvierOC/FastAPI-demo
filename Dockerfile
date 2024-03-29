# 
FROM  python:3.12.2-alpine3.19

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
RUN apk update --no-cache
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app

#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
