FROM python:3.6.0

RUN apt-get update \
  && apt-get install python3 python3-pip curl git sudo cron bash -y \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /api
ADD ./requirements.txt /api

RUN pip install -r requirements.txt
ADD ./api /api

ENV CACHE_HOST "10.0.0.4"

CMD ["python", "app.py"]