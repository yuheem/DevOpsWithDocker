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