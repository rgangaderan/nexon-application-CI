#Basic Dockerfile to create a apache web pasge 
FROM httpd
WORKDIR script
COPY . . 
COPY index.html /usr/local/apache2/htdocs/
CMD ["make","run"]
