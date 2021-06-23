FROM golang:1.16-alpine as build-stage

WORKDIR /go/src/example-backend

COPY ./example-backend .

RUN go build

FROM alpine

EXPOSE 8080

WORKDIR /usr/src/example-backend

COPY --from=build-stage /go/src/example-backend/server /usr/src/example-backend/

CMD ./server