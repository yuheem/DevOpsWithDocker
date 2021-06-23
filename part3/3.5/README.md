# 3.5

Document the image size before the changes.

Let’s test what the image sizes are when using FROM golang and FROM node in the backend and frontend projects respectively.

Return back to our frontend & backend Dockerfiles and change the FROM to something more suitable. Both should have at least alpine variants ready in DockerHub. Make sure the application still works after the changes.

Document the size after your changes.

## Before

```sh
REPOSITORY                  TAG           IMAGE ID       CREATED              SIZE
yuheem98/example-frontend   latest        53d55b5d8740   About a minute ago   455MB
yuheem98/example-backend    latest        0dfed7af574b   3 minutes ago        1.01GB
```

## After

```sh
REPOSITORY                  TAG           IMAGE ID       CREATED             SIZE
yuheem98/example-backend    latest        331ee910c566   16 seconds ago      448MB
yuheem98/example-frontend   latest        b8e7e7dcc0cc   56 seconds ago      344MB
```
