# docker-svn
A Docker image to run Subversion with Apache.

### Tags

- `1.0`, `latest`,

    It features:
    - ubuntu 14.04
    - apache2 2.4.7,
    - libapache2 1.8.8.

### Setup
```shell
> docker pull arobas-music/svn
```

### Run
```shell
> docker run \
    --name=some_name \
    -e SVN_SERVER_ADMIN_EMAIL=foo@bar.com \
    -e SVN_SERVER_NAME=foo.bar.com \
    -v $PWD/repositories:/srv/svn/repositories \
    -v $PWD/conf:/srv/svn/conf \
    -P \
    -d \
    arobasmusic/svn    
```

#### Environment variables
- `SVN_SERVER_ADMIN_EMAIL` is for the mail address of the server administrator,
- `SVN_SERVER_NAME` is for the vhost.

#### Volumes
- `/srv/svn/repositories` is where you store your svn repositories.
- `/srv/svn/conf` is where you store your `passwd` and `authz` files.
