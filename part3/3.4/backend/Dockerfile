FROM golang:1.16

EXPOSE 8080

WORKDIR /go/src/example-bdockackend

COPY ./example-backend .

RUN go build && \
    useradd -m appuser && \
    chown appuser -R /go/src/example-backend

USER appuser

CMD ./server