# 1.8 Image for script

Now that we know how to create and build Dockerfiles we can improve previous works.

Create a Dockerfile for a new image that starts from ubuntu:18.04.

Make a script file on you local machine with such content as `echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;`. Transfer this file to an image and run it inside the container using CMD. Build the image with tag “curler”.

Run the new `curler` image with the correct flags and input helsinki.fi into it. Output should match the 1.4 one.

Return both Dockerfile and the command you used to run the container.

## Dockerfile

```docker
# Start from ubuntu:18.04 image
FROM ubuntu:18.04

# Use /user/src/app as our workdir
WORKDIR /usr/src/app

# Copy script file from pwd to workdir
COPY script.sh .

RUN chmod +x script.sh

# Update and install curl
RUN apt-get update && apt-get install curl -y;

# When running docker run the command will be ./script.sh
CMD ./script.sh
```

## Commands

```sh
> docker build . -t curler
> docker run -it curler
```
