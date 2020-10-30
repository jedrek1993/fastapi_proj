FROM python:3

ENV http_proxy=http://10.171.0.13:8080/ \
    https_proxy=http://10.171.0.13:8080/ \
    HTTP_PROXY=http://10.171.0.13:8080/ \
    HTTPS_PROXY=http://10.171.0.13:8080/

WORKDIR /app

COPY ./Pipfile* ./

RUN pip install pipenv
RUN pipenv install --skip-lock

