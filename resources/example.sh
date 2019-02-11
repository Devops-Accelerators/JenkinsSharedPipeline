echo "hello"
sudo apt-get install language-pack-en -y
sudo locale-gen en_US.UTF-8
update-locale LANG=de_DE.UTF-8           
update-locale LC_ALL="en_US.UTF-8" 
locale
sudo apt-get update -y
sudo apt-get install nginx -y
sudo ufw enable
sudo ufw allow 8080
sudo ufw allow 'Nginx HTTP'
sudo ufw status
sudo systemctl start nginx
sudo systemctl status nginx
echo "nginx installed successfully............"
