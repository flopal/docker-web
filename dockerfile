FROM ubuntu:disco

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update &&\
    apt dist-upgrade -y &&\
    apt install apache2 -y &&\
    apt install postgresql -y&&\
    apt install php -y&&\
    apt install libapache2-mod-php -y &&\
    apt install php-pgsql -y&&\
    apt autoremove --purge -y&&\
    ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime &&\
    dpkg-reconfigure --frontend noninteractive tzdata &&\
    /etc/init.d/apache2 start &&\
    /etc/init.d/postgresql start

ENV DEBIAN_FRONTEND=''

