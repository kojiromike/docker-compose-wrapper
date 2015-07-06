FROM python:2
WORKDIR /compose
RUN ["pip", "install", "docker-compose==1.2"]
ENTRYPOINT ["docker-compose"]
