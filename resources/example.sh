echo "hello"
sudo apt-get update -y
sudo apt-get install nginx -y
sudo ufw allow 'Nginx HTTP'
sudo ufw status
sudo systemctl start nginx
sudo systemctl status nginx
echo "nginx installed successfully............"
