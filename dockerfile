FROM centos:latest
RUN yum install -y httpd \
    zip   \
   unzip
ADD http://https://www.free-css.com/assets/files/free-css-templates/download/page266/labspa.zip /var/www/html
WORKDIR /var/www/html
RUN unzip labspa.zip
CMD [apachectl -D FOREGROUND]
EXPOSE 80
