# Figwrapper

The Fig Within

## What it is

[Fig](http://www.fig.sh/) is a Python program that orchestrates Docker containers. But if you have Docker, you don't want to install and manage a Python program. So here is a bash function that runs a Docker container that runs Fig... which runs Docker.

## How to use it

Source the `figwrapper` script from your .bashrc. Then, use `fig` commands like usual.

## Demo

```bash
$ . figwrapper
$ type fig
fig is a function
fig () 
{ 
    docker run --rm --privileged=true -v /var/run/docker.sock:/var/run/docker.sock -v "$PWD":/fig -ti kojiromike/fig "$@"
}
$ fig run --rm test
I am a very busy box
Removing fig_test_run_1...
```

