FROM amazonlinux

RUN yum -y update && yum -y install httpd && yum -y install php

COPY ./index.php /var/www/html/index.php

CMD ["/esr/sbin/httpd","-D","FOREGROUND"]

EXPOSE 80