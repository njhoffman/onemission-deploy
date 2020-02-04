FROM wordpress:php7.4-fpm

ARG buildno
ARG gitcommithash

RUN echo "Build number: $buildno"
RUN echo "Based on commit: $gitcommithash"

# RUN apt-get update
# apache2 php5 php5-mysql
# RUN apt-get -y install wget git

# RUN git clone https://bitbucket.org/njhoffman/onemissionfundraising.git /var/www/html
# RUN echo "hello" >> /var/www/html/test.txt
#
# RUN wget -P /var/www/html/src http://wordpress.org/latest.tar.gz
# RUN ls -alh /var/www/html/src
# RUN tar -xzvf /var/www/html/src/latest.tar.gz -C /var/www/html/public

CMD ["/usr/bin/tail", "-f", "/dev/null"]
