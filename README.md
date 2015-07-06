# Docker Compose Wrapper

Use Docker Compose without installing it.

## What it is

[Docker Compose][1] is a Python program that orchestrates Docker containers. But if you have Docker, you don't want to install and manage a Python program. So here is a bash function that runs a Docker container that runs Docker Compose... which runs Docker.

## How to use it

Source the `docker-compose-wrapper` script from your .bashrc. Then, use `docker-compose` commands like usual.

## Demo

    $ . docker-compose-wrapper
    $ type docker-compose
    docker-compose is a function
    docker-compose ()
    ...
    $ docker-compose run --rm test
    I am a very busy box
    Removing compose_test_run_1...

[1]: http://docs.docker.com/compose/
