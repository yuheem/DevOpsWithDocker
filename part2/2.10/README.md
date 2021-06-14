# 2.10

Some buttons may have stopped working in the frontend + backend project. Make sure that every button for exercises works.

This may need a peek into the browsers developer consoles again like back part 1. The buttons of nginx exercise and the first button behave differently but you want them to match.

If you had to do any changes explain what you had to change.

Submit the docker-compose yml and both dockerfiles.

To resolve the issue we have to set the REQUEST_ORIGIN ENV variable for the backend service to <http://localhost>

## Dockerfile (backend)

```docker
FROM golang:1.16

EXPOSE 8080

WORKDIR /go/src/app

COPY ./example-backend .

RUN go build
RUN go test ./...

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

CMD ["serve", "-s", "-l", "5000", "build"]
```
