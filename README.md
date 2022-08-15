# Monolith Architecture 

A monolithic artchitecture is the traditional unified model for the design of a software program.

![](mono_image.png)

It is self-contained where the programs components are tightly coupled. Each component is combined into one large application and therefore have large codebases which can be difficult to maintain. 

Other parts of the code may also need to be rewritten if updates are made to a smaller portion of the code.

Benefits of Monolithic Architecture include:

- Faster run-time
- Easier/faster in early stages of development

Generally better for  smaller lightweight applications (compared to micro-services architecture).

Steps:

1. Make a directory 
2. Create your vagrant file
```
Vagrant.configure("2") do |config|

 config.vm.box = "ubuntu/xenial64" # Linux - ubuntu 16.04
# creating a virtual machine ubuntu 
 config.vm.network "private_network", ip: "192.168.10.100"
# once you have added private network, you need reboot VM - vagrant reload
# if reload does not work - try - vagrant destroy - then - vagrant up 

# let's sync our app folder from localhost to VM
 config.vm.synced_folder ".", "/home/vagrant/app"  

# make provision file and connect it
 config.vm.provision :shell, path: "provision.sh"


end
```
3. Create a provision file installing dependencies(must end in .sh)
```
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
sudo npm install pm2
```
4. Enter `vagrant up` to create your vm.
5. Enter `vagrant ssh` to connect to your vm
6. Navigate to where the app.js file is located
7. Use command `npm install` 
8. Use command `npm start`
9. The app should now be working. 
![](app_working.PNG)