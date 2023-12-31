FROM ubuntu
MAINTAINER eazytraining (easytrainingfr@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx 
EXPOSE 80
# ADD static-website-example/ /var/www/html/ 
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
CMD ["nginx", "-g", "daemon off;"]