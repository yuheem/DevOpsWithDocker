# 1.7 Two line Dockerfile

By default our `devopsdockeruh/simple-web-service:alpine` doesn’t have a CMD. It instead uses _ENTRYPOINT_ to declare which application is run.

We’ll talk more about _ENTRYPOINT_ in the next section, but you already know that the last argument in `docker run` can be used to give command.

As you might’ve noticed it doesn’t start the web service even though the name is “simple-web-service”. A command is needed to start the server!

Try `docker run devopsdockeruh/simple-web-service:alpine hello`. The application reads the argument but will inform that hello isn’t accepted.

In this exercise create a Dockerfile and use FROM and CMD to create a brand new image that automatically runs the server. Tag the new image as “web-server”

Return the Dockerfile and the command you used to run the container.

```
> docker build . -t web-server
> docker run web-server
```
