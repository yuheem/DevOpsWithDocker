# 1.5 Sizes of images

In a previous exercise we used `devopsdockeruh/simple-web-service:ubuntu`.

Here is the same application but instead of ubuntu is using alpine: `devopsdockeruh/simple-web-service:alpine`.

Pull both images and compare the image sizes. Go inside the alpine container and make sure the secret message functionality is the same. Alpine version doesn’t have bash but it has sh.

```
> docker pull devopsdockeruh/simple-web-service:ubuntu
> docker pull devopsdockeruh/simple-web-service:alpine
> docker images
REPOSITORY                          TAG       IMAGE ID       CREATED        SIZE
ubuntu                              latest    7e0aa2d69a15   6 weeks ago    72.7MB
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 months ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 months ago   15.7MB

```

Image with the `:alpine` tag is significantly smaller compared to the image with the `:ubuntu` tag.

```
> docker container run -it -d --name alpine devopsdockeruh/simple-web-service:alpine
> docker exec -it alpine sh
> /usr/src/app # tail -f ./text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```
