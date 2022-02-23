FROM centos:7
MAINTAINER nouman590195@gmail.com
RUN yum install -y  httpd \
   zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/nekmit.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip nekmit.zip
RUN cp -rvf nekmit/* .
RUN rm -rf  nekmit.zip nekmit
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"] 
EXPOSE 8 
