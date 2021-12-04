FROM ubuntu:latest
MAINTAINER senjila.19@gmail.com
Run sudo apt-get -y httpd \
  zip \
  unzip 
  ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/uloax.zip /var/www/html/
  WORKDIR /var/www/html
  RUN unzip uloax.zip
  RUN cp -rvf markups-uloax/* .
  RUN rm.rf _MACOSX markups-uloax uloax.zip
  CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
  EXPOSE 80
