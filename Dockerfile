###############################################################################
### Dockerfile to run subversion with apache2 #################################
###############################################################################
FROM ubuntu:14.04
MAINTAINER Julien Graziano <julien.graziano@arobas-music.com>
# Install dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 libapache2-svn
# Configure apache
ADD apache2.conf /etc/apache2/apache2.conf
RUN a2enmod alias
RUN a2enmod dav
RUN a2enmod dav_fs
RUN a2enmod dav_lock
RUN a2enmod dav_svn
RUN a2enmod authz_svn
# Configure svn
RUN mkdir -p /srv/svn/repositories
RUN mkdir -p /srv/svn/conf
VOLUME /var/log/apache2
VOLUME /srv/svn/repositories
VOLUME /srv/svn/conf
#
COPY httpd-foreground /usr/local/bin/
EXPOSE 8080
CMD ["httpd-foreground"]
