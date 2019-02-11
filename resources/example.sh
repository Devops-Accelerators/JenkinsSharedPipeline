echo "hello"
sudo apt-get install language-pack-en -y
update-locale LANG="en_US.utf-8" 
update-locale LC_ALL="en_US.utf-8"
locale -a
locale
sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl status nginx
echo "nginx installed successfully............"
