sudo docker start helloWorld crudmysql
sudo docker ps
ip1=$(sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' crudmysql)
echo "${ip1}"

 
