# updates ubuntu
sudo apt-get update
sudo apt-get upgrade -y

# retrieves key from mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# updates ubuntu
sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

# enables and starts mongodb
sudo systemctl restart mongod
sudo systemctl enable mongod

# replaces the config file
sudo cp -f app/mongod.conf /etc/mongod.conf
sudo systemctl restart mongod


