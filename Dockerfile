
FROM python:3.8-alpine

RUN apk add curl
RUN adduser --disabled-password app-user
USER app-user

ENV PRODUCTION="true"
WORKDIR /app
COPY ./requirements.txt requirements.txt

COPY . .
RUN pip3 install -r requirements.txt
CMD ["python3", "run.py"]