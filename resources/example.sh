export DEBIAN_FRONTEND=noninteractive
echo "hello"
sudo apt-get update -y
#sudo locale-gen en_US.UTF-8
#sudo apt-get install language-pack-en -y
#sudo dpkg-reconfigure locales
sudo locale-gen de_DE.UTF-8 en_US.UTF-8
sudo apt-get install language-pack-en -y
#export LANGUAGE=en_US.UTF-8
#export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8
#export LC_TYPE=en_US.UTF-8
echo "LC_ALL=en_US.UTF-8" >> /etc/environment
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
locale-gen en_US.UTF-8
sudo locale-gen
sudo dpkg-reconfigure locales
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl status nginx
echo "nginx installed successfully............"
