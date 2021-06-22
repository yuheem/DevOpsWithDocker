#!/bin/sh

git clone https://github.com/yuheem/docker-hy.github.io
docker build -t yuheem98/coursepage:latest ./docker-hy.github.io/
docker login
docker push yuheem98/coursepage:latest