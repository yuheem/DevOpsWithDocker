# 1.4 Missing dependencies

Start a ubuntu image with the process `sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'`

You will notice that a few things required for proper execution are missing. Be sure to remind yourself which flags to use so that the read actually waits for input.

This time return the command you used to start process and the command(s) you used to fix the ensuing problems.

```sh
> docker run -d --rm -it --name missing-dependencies ubuntu sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
> docker exec -it missing-dependencies bash
> apt-get update
> apt-get install curl
> exit
> docker attach missing-dependencies
> helsinki.fi
```
