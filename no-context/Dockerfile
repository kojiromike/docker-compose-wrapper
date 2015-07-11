FROM alpine:3.1
RUN apk --update add py-pip \
 && pip install docker-compose
ENTRYPOINT ["docker-compose"]
