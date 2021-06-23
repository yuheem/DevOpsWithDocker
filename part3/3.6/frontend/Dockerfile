FROM node:14-alpine as build-stage

WORKDIR /usr/src/example-frontend

COPY ./example-frontend .

RUN npm install && \
    npm run build

FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/example-frontend

ENV REACT_APP_BACKEND_URL=http://localhost:8080/

COPY --from=build-stage /usr/src/example-frontend/build /usr/src/example-frontend/builld

CMD ["serve", "-s", "-l", "5000", "build"]