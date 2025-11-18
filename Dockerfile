FROM ubuntu

# Install Apache
RUN apt update -y && apt install apache2 -y

# Create 20 files
RUN bash -c "touch /key{1..20}"

# Copy your index file
COPY index.html /var/www/html/

# Expose Apache port
EXPOSE 80

# Start Apache in foreground
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
