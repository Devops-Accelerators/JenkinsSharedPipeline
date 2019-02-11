export DEBIAN_FRONTEND=noninteractive
echo "hello"
sudo apt-get update -y
#sudo locale-gen en_US.UTF-8
#sudo apt-get install language-pack-en -y
#sudo dpkg-reconfigure locales
sudo locale-gen de_DE.UTF-8 en_US.UTF-8
sudo apt-get install language-pack-en -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl status nginx
echo "nginx installed successfully............"
