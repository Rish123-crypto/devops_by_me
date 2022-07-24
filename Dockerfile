FROM centos:latest
MAINTAINER rishabhsaxena882@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/ecourses.zip/var/www/html/
WORKDIR /var/www/html
RUN unzip ecourses.zip
RUN cp -rvf ecourses/* .
RUN rm -rf ecourses ecourses.zip
CMD ["/usr/sbin/https", "-D", "FOREGROUND"]
EXPOSE 80
