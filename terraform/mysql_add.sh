sudo docker start helloWorld crudmysql
sudo docker ps
ip1=$(sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' crudmysql)
echo "${ip1}"
sudo docker exec -it crudmysql bash
mysql -u root -p Welcome123
show databases;
create database springdb;
use springdb;
CREATE TABLE PERSON(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, name VARCHAR(30) NOT NULL, country VARCHAR(30) NOT NULL);
show table;
 
