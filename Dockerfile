FROM httpd:2.4
RUN apt update && apt install unzip
ADD https://free-css.com/assets/files/free-css-templates/download/page279/ecourses.zip .
RUN unzip ecourses.zip && mv online-courses-html-template/*  /usr/local/apache2/htdocs/
