# docker-svn
A Docker image to run Subversion with Apache.

### Tags

- `1.0`, `latest`

    Features:
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
    -v $PWD/repositories:/srv/svn/repositories \
    -v $PWD/conf:/srv/svn/conf \
    -v $PWD/logs:/var/log/apache2 \
    -P \
    -d \
    arobasmusic/svn    
```

### Volumes
- `/var/log/apache2` is where apache logs are written.
- `/srv/svn/repositories` is where you store your svn repositories.
- `/srv/svn/conf` is where you store your `passwd` and `authz` files.
