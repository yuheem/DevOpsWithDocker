# 2.4

Add redis to example backend.

Redis is used to speed up some operations. Backend uses a slow api to get information. You can test the slow api by requesting `/ping?redis=true` with curl. The frontend program has a button to test this.

Configure a redis container to cache information for the backend. Use the documentation if needed when configuring: <https://hub.docker.com/_/redis/>

The backend [README](https://github.com/docker-hy/material-applications/tree/main/example-backend) should have all the information needed to connect.

When you’ve correctly configured the button will turn green.

Submit the docker-compose.yml
