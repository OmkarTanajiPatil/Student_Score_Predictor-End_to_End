FROM python:3.12-slim

WORKDIR /app

ENV PYTHONPATH=/app

COPY . /app

RUN apt update -y && apt install awscli -y

RUN pip install -r requirements.txt

CMD ["gunicorn","app:app","--bind","0.0.0.0:10000"]
