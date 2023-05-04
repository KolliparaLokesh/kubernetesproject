FROM centos:latest
MAINTAINER lokeshkollipara9gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD hitps://www, free-css, com/assets/tiles/free-css-templates/download/page2S8/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", “FOREGROUND"]
EXPOSE 80
