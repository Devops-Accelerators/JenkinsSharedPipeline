echo "hello"
sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl status nginx
echo "nginx installed successfully............"
