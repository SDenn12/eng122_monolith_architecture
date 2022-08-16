# updates ubuntu
sudo apt-get update
sudo apt-get upgrade -y

# nginx install
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx

# nodejs install
sudo apt-get purge nodejs npm
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# pm2 install
sudo npm install pm2 -g

# automate 
sudo cp -f app/rev_prox_file /etc/nginx/sites-available/default
sudo systemctl restart nginx
