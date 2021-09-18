Vagrant.configure("2") do |config|


  config.vm.define "master" do |master|
    master.vm.hostname = "master"
    master.vm.provision :shell, path: "sh.sh"
    master.vm.box = "ubuntu/bionic64"
    master.vm.network "private_network",ip: "10.168.8.3"
      master.vm.provider "virtualbox" do |v|
        v.memory = 1094
        v.cpus = 1
     end
  end




end
