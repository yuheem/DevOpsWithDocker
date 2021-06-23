FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /go/src/example-backend

COPY ./example-backend .

RUN go build && \
    adduser -D appuser && \
    chown appuser -R /go/src/example-backend

USER appuser

CMD ./server