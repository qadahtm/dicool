# Docker for COOL Compiler (Student Distribution)
This docker configuration is created for teaching the Compiler Construction courses at Umm Al-Qura University. 
You can watch the [video tutorial on MacOS](https://www.youtube.com/watch?v=1Dbzo9HiDwk) for more help.

## Installing Docker
Before starting this. You need to install Docker. Go to the following link to install Docker.

[Download and Install Docker](https://www.docker.com/products/docker-desktop/)

## Building Docker Container
```bash
docker compose up --build
```

## Running Docker Container
```bash
docker compose run cool
```

# Notes
This docker image is based on 32-bit Ubuntu.
This is tested on Apple M1 with Ventura 13.4.1.

# Author
Thamir M. Qadah