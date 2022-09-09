#Basic Dockerfile to create a apache web pasge 
FROM httpd
WORKDIR script
RUN apt update && apt install make -y
COPY . .
COPY /Users/rajee/Desktop/nexon-new/nexon-application-CICD/version.sh .
COPY index.html /usr/local/apache2/htdocs/
CMD ["make","run"]
