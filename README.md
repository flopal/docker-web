# Docker web

## Description

Docker web allow to set up quickly a web server with apache2 and PostgreSQL.
**WARNING** : zone info is configured for French

## Install and run

Make sure you have **docker** installed.

Clone this repository

```sh
git clone https://github.com/flopal/docker-web.git
```

Move on repository, build the docker image, run it.

```sh
cd docker-web
docker build -t yourimage:yourversion .
docker run -it yourimage:yourversion
```

If you want to remove automatically the container after exit it, use the option "–rm’.

```sh
docker run -it --rm yourimage:yourversion
```

## Licence

This github project use the [MIT licence](./LICENCE).
