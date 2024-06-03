FROM ubuntu:20.04

WORKDIR /app

COPY . . 

RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get clean

EXPOSE 1111

CMD ["python3", "app.py"]


