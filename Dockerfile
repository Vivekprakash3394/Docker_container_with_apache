# Building apache docker container

FROM centos
MAINTAINER vivek prakash singh <vivek777praksh@gmail.com>

# Installing apache httpd server
RUN yum install httpd -y

# Copying the index.html file into new docker image runing the daemon command here
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Open the port 80 to access the index.html page using this port
EXPOSE 80
