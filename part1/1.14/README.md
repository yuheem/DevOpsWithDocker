# Environment

Start both frontend-example and backend-example with correct ports exposed and add ENV to Dockerfile with necessary information from both READMEs ([front](https://github.com/docker-hy/material-applications/tree/main/example-frontend),[back](https://github.com/docker-hy/material-applications/tree/main/example-backend)).

Ignore the backend configurations until frontend sends requests to `_backend_url_/ping` when you press the button.

You know that the configuration is ready when the button for 1.14 of frontend-example responds and turns green.

Do not alter the code of either project

Submit the edited Dockerfiles and commands used to run

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

CMD ["serve", "-s", "-l", "5000", "build"]
```

## Dockerfile (backend)

```docker
FROM golang:1.16

EXPOSE 8080

WORKDIR /go/src/app

COPY ./example-backend .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build
RUN go test ./...

CMD ./server
```

## Commands

```sh
> docker build ../1.12 -t example-frontend
> docker build ../1.13 -t example-backend
> docker run -d -p 8080:8080 example-backend
> docker run -d -p 5000:5000 example-frontend
```
