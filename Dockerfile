# ScriptAlias /cgi-bin/ "/usr/local/apache2/cgi-bin/"
# vi /usr/local/apache2/conf/httpd.conf
# #LoadModule cgi --> LoadModule cgi
FROM httpd:latest
EXPOSE 80
RUN apt-get install bash
RUN apt-get update
RUN apt-get install vim -y

# init apache2
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
RUN touch /var/log/httpd

# copy cgi files
COPY php/cgi-bin/* /usr/local/apache2/cgi-bin

# create log folder for php
RUN mkdir /usr/local/apache2/cgi-bin/log
RUN chmod 777 /usr/local/apache2/cgi-bin/log

# copy html
COPY display.phtml index.html /usr/local/apache2/htdocs