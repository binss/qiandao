FROM python:2.7-alpine

RUN apk update
RUN apk add bash autoconf g++

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN pip install -r requirements.txt

ENV PORT 8923
EXPOSE $PORT/tcp

VOLUME ["/usr/src/app/"]

CMD ["python","/usr/src/app/run.py"]
