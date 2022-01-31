FROM centos:7
RUN yum install -y   zip  unzip    httpd
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/evolve.zip  /var/www/html/
WORKDIR /var/www/html/
RUN unzip evolve.zip
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
