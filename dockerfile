#!/usr/bin/env python3

FROM python:3.8
LABEL Maintainer="srinath"
USER root
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt \
    pip install -e .
RUN chmod -R 777  /app/production/call_jobs.py
ENTRYPOINT ["python", "/app/production/call_jobs.py"]