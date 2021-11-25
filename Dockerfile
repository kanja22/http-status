FROM httpd:2.4
COPY ./http-status.pl /usr/local/apache2/cgi-bin
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
RUN ["chmod", "+x", "/usr/local/apache2/cgi-bin/http-status.pl"]
RUN	apt update
RUN apt install -y libcgi-pm-perl