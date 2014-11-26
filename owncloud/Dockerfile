FROM centos:centos6

RUN yum install -y httpd

ADD https://download.owncloud.org/community/owncloud-7.0.3.tar.bz2 /var/www/html

RUN yum install -y php php-dom php-mbstring php-pdo php-gd

RUN chown -R apache:apache /var/www/html

# On rajoute du stockage persist.
VOLUME /data 
COPY run.sh /run.sh

# Only 1 CMD!
CMD /run.sh
