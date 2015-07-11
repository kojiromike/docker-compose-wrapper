FROM alpine:3.1

ENV DOCKER_COMPOSE_VERSION 1.3.1

##
# Install build dependencies
RUN apk --update add build-base \
                     ca-certificates \
                     openssl-dev \
                     yaml-dev
##
# TODO: Check if we can use polarssl-dev
##

##
# Build Python 2.7.9 from source
ADD https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz .
RUN tar -xzf Python-2.7.9.tgz
WORKDIR /Python-2.7.9
RUN ./configure --enable-shared
RUN make
RUN make install
WORKDIR /
RUN rm -rf /Python-2.7.9 /Python-2.7.9.tgz

##
# Make libpython findable
ENV LD_LIBRARY_PATH /usr/local/lib

# Install setuptools
ADD https://bootstrap.pypa.io/ez_setup.py .
RUN python ez_setup.py \
 && rm ez_setup.py

##
# Unpack Docker Compose Source
ADD https://github.com/docker/compose/archive/${DOCKER_COMPOSE_VERSION}.tar.gz .
RUN tar -xzf ${DOCKER_COMPOSE_VERSION}.tar.gz
WORKDIR /compose-${DOCKER_COMPOSE_VERSION}

ADD https://bootstrap.pypa.io/ez_setup.py ./
RUN python ez_setup.py \
 && rm ez_setup.py
RUN python setup.py install

ENTRYPOINT ["/compose-1.3.1/bin/docker-compose"]
