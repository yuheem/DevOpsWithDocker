# 3.4

Return back to our [frontend](https://github.com/docker-hy/material-applications/tree/main/example-frontend) & [backend](https://github.com/docker-hy/material-applications/tree/main/example-backend) Dockerfiles and you should see the some mistakes we now know to fix.

Document both image sizes at this point, as was done in the material. Optimize the Dockerfiles of both programs, frontend and backend, by joining the RUN commands and removing useless parts.

After your improvements document the image sizes again. The size difference may not be very much yet. The frontend should be around 432MB when using FROM `ubuntu:18.04`. The backend should be around 351MB. The sizes may vary.

## Image size before

```sh
> docker images
REPOSITORY                  TAG           IMAGE ID       CREATED          SIZE
yuheem98/example-frontend   latest        5f453ddc7af9   6 minutes ago    667MB
yuheem98/example-backend    latest        c177e5fd5322   7 minutes ago    1.03GB
```

## Image size after

```sh
> docker images
REPOSITORY                  TAG           IMAGE ID       CREATED              SIZE
yuheem98/example-frontend   latest        53d55b5d8740   About a minute ago   455MB
yuheem98/example-backend    latest        0dfed7af574b   3 minutes ago        1.01GB
```
