# 1.3 Secret message

Image `devopsdockeruh/simple-web-service:ubuntu` will start a container that outputs logs into a file. Go inside the container and use `tail -f ./text.log` to follow the logs. Every 10 seconds the clock will send you a “secret message”.

Submit the secret message and command(s) given as your answer.

```sh
> docker run -d -it --rm --name secret-message devopsdockeruh/simple-web-service:ubuntu
> docker exec -it secret-message bash
> tail -f ./text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```
