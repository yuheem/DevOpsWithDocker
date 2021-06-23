FROM golang:1.16

EXPOSE 8080

WORKDIR /go/src/app

COPY ./example-backend .

RUN go build
RUN go test ./...

RUN useradd -m appuser
RUN chown appuser -R /go/src/app
USER appuser

CMD ./server