# 1.1 Getting started

Start 3 containers from an image that does not automatically exit, such as nginx, detached.

Stop 2 of the containers leaving 1 up.

Submit the output for `docker ps -a` which shows 2 stopped containers and one running.

```
> docker ps -a
CONTAINER ID   IMAGE               COMMAND                  CREATED              STATUS                         PORTS     NAMES
9ec77b77a852   nginx               "/docker-entrypoint.…"   41 seconds ago       Exited (0) 13 seconds ago                mystifying_lamport
eec0d30fa521   nginx               "/docker-entrypoint.…"   51 seconds ago       Exited (0) 13 seconds ago                zen_kalam
de27d8c256c3   nginx               "/docker-entrypoint.…"   About a minute ago   Up About a minute              80/tcp    crazy_thompson
94abd64777a1   docker101tutorial   "/docker-entrypoint.…"   About an hour ago    Exited (0) 49 minutes ago                docker-tutorial
57d1985614fb   alpine/git          "git clone https://g…"   About an hour ago    Exited (0) About an hour ago             repo
```
