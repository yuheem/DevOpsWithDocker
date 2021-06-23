# 3.6

## Multi-stage frontend

Multi-stage builds. Lets do a multi-stage build for the [frontend](https://github.com/docker-hy/material-applications/tree/main/example-frontend) project since we’ve come so far with the application.

Even though multi-stage builds are designed mostly for binaries in mind, we can leverage the benefits with our frontend project as having original source code with the final assets makes little sense. Build it with the instructions in README and the built assets should be in `build` folder.

You can still use the `serve` to serve the static files or try out something else.

## Multi-stage backend

Lets do a multi-stage build for the [backend](https://github.com/docker-hy/material-applications/tree/main/example-backend) project since we’ve come so far with the application.

The project is in golang and building a binary that runs in a container, while straightforward, isn’t exactly trivial. Use resources that you have available (Google, example projects) to build the binary and run it inside a container that uses FROM scratch.

To pass the exercise the image must be smaller than 25MB.

## Size

```sh
> docker images
REPOSITORY                  TAG           IMAGE ID       CREATED          SIZE
yuheem98/example-frontend   latest        2e5411346968   2 minutes ago    118MB
yuheem98/example-backend    latest        e5e4f085fac7   3 minutes ago    23.7MB
```
