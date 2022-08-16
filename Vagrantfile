# What is Vagratn - it's owned by Hashi-Corp

# Ruby


Vagrant.configure("2") do |config|
    
    config.vm.define "app" do |app|
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


    config.vm.define "db" do |db|
        db.vm.box = "ubuntu/bionic64"
        db.vm.network "private_network", ip: "192.168.10.150"

    end
 end

