# lisp-docker

This project builds Docker images for running Lisp remotely.

## How to run

Access a server using this command:

```
ssh -o ServerAliveInterval=30 -L 4023:localhost:4023 username@server-address
```

Run a container using this command: 

```
docker run -p 127.0.0.1:4023:4023 --rm -it veer66/ccl
```

or

```
docker run -p 127.0.0.1:4023:4023 --rm -it veer66/sbcl
```


## From Emacs + Sly

* Run sly-connect to localhost at port 4023
