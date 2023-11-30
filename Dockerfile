FROM python
WORKDIR /app
COPY . /app/

RUN apt-get update -y
RUN pip install -r requirements.txt

ENTRYPOINT ["python3", "mypandas.py"]
