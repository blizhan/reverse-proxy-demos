FROM python:3.9-slim

RUN apt-get update

COPY requirements.txt .

RUN pip install --upgrade pip setuptools wheel && \
    pip install -r requirements.txt

COPY . .

RUN chmod 755 main.py
