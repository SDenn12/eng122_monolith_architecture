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

# automate reverse proxy
sudo cp -f app/rev_prox_file /etc/nginx/sites-available/default
sudo systemctl restart nginx

# declares env variable
echo "DB_HOST=mongodb://192.168.10.150:27017/posts" | sudo tee -a /etc/environment

# updates the seed
cd app/app
npm install
cd seeds
sudo node seed.js

# system update
sudo apt-get update
sudo apt-get upgrade -y