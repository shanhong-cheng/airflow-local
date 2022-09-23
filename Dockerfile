FROM apache/airflow:2.3.0
COPY requirements.txt /requirements.txt

USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
        apt-utils software-properties-common wget \
  && apt-get install -y build-essential libpq-dev python-dev \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
USER airflow

RUN pip install --no-cache-dir -r /requirements.txt
