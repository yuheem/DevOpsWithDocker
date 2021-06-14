# 2.6

Add database to example backend.

Lets use a postgres database to save messages. We won’t need to configure a volume since the official postgres image sets a default volume for us. Lets use the postgres image documentation to our advantage when configuring: <https://hub.docker.com/_/postgres/>. Especially part Environment Variables is of interest.

The backend [README](https://github.com/docker-hy/material-applications/tree/main/example-backend) should have all the information needed to connect.

The button won’t turn green but you can send messages to yourself.

Submit the docker-compose.yml
