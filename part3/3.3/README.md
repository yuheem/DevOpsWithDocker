# 3.3

In the previous parts we created Dockerfiles for both example [frontend](https://github.com/docker-hy/material-applications/tree/main/example-frontend) and [backend](https://github.com/docker-hy/material-applications/tree/main/example-backend).

Security issues with the user being a root are serious for the example frontend and backend as the containers for web services are supposed to be accessible through the internet.

Make sure the containers start their processes as a non-root user.

## Dockerfile (backend)

```docker
FROM golang:1.16

EXPOSE 8080

WORKDIR /go/src/app

COPY ./example-backend .

RUN go build
RUN go test ./...

RUN useradd -m appuser
RUN chown appuser .
USER appuser

CMD ./server
```

## Dockerfile (frontend)

```docker
# Base image
FROM ubuntu:latest

EXPOSE 5000

WORKDIR /usr/src/app

# Install dependencies
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs

COPY ./example-frontend .

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

RUN npm install
RUN npm run build
RUN npm install -g serve

RUN useradd -m appuser
RUN chown appuser .

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
```
