FROM ubuntu
RUN apt update -y && apt install apache2 -y
RUN touch key{1..20}
COPY index.html var/www/html
WORKDIR /var/lib/jenkins/workspace/docker-integration
CMD ["usr/sbin/apachectl", "-D", "FOREGROUND"]
