# Base image
FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/example-frontend

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

COPY ./example-frontend .

# Install dependencies
RUN npm install && \
    npm run build && \
    npm install -g serve && \
    adduser -D appuser && \
    chown -R appuser /usr/src

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]