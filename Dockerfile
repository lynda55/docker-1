# Use the official HTTPD (Apache) base image
FROM httpd:2.4

COPY index.html /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80