echo "hello"
sudo apt-get update -y
sudo apt-get install language-pack-en -y
sudo apt-get install nginx -y
sudo apt-get install ufw
sudo ufw enable
sudo ufw allow 8080
sudo ufw allow 'Nginx HTTP'
sudo ufw status
sudo systemctl start nginx
sudo systemctl status nginx
echo "nginx installed successfully............"
