# basic python dockerfile
FROM ubuntu:20.04
RUN apt-get -y update
FROM python
WORKDIR /app
COPY . /app/

RUN apt-get update -y
RUN pip install -r requirements.txt

ENTRYPOINT ["python3", "mypandas.py"]
