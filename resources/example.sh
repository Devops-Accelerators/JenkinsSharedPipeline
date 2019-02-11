echo "hello"
sudo apt-get update -y
sudo locale-gen en_US en_US.UTF-8
sudo apt-get install language-pack-en
sudo dpkg-reconfigure locales
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl status nginx
echo "nginx installed successfully............"
