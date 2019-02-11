echo "hello"
sudo apt-get update -y
sudo locale-gen en_US en_US.UTF-8
sudo dpkg-reconfigure locales
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl status nginx
echo "nginx installed successfully............"
