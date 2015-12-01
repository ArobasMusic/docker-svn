# docker-svn
A Docker image to run Subversion with Apache.

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

- `$PWD/repositories` is where you store your svn repositories.
- `$PWD/conf` is where you store your `passwd` and `authz` files.
