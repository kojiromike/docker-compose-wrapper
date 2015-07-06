FROM python:2
WORKDIR /compose
RUN ["pip", "install", "docker-compose"]
ENTRYPOINT ["docker-compose"]
