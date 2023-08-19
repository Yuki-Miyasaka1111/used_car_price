FROM python:slim

RUN apt-get update && \
    apt-get install -y libgomp1 && \
    pip install --upgrade pip

COPY ./requirements.txt .

RUN pip install -r requirements.txt