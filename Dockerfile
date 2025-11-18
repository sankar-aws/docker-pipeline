FROM ubuntu
RUN apt update -y && apt install apache2 -y
RUN touch key{1..20}
COPY index.html var/www/html
WORKDIR var/lib/workspace/docker-pipeline
CMD ["usr/sbin/apachectl", "-D", "FOREGROUND"]
