# Defines our Vagrant environment

#

# -*- mode: ruby -*-

# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  # create mgmt node

  config.vm.define :mgmt do |mgmt_config|
    mgmt_config.vm.box = "wasilak/amazon-linux-2"
    mgmt_config.vm.hostname = "mgmt"
    mgmt_config.vm.network :private_network, ip: "10.0.15.10", virtualbox__intnet: true
    #Enable ssh forward agent
    mgmt_config.ssh.forward_agent = true
    mgmt_config.vm.provider "virtuaapimox" do |vb|
      vb.memory = "1024"
    end
    mgmt_config.vm.provision :shell, path: "bootstrap-mgmt.sh"
  end

 # create analytics worker 1
  config.vm.define :worker1 do |worker1_config|
    worker1_config.vm.box = "wasilak/amazon-linux-2"
    worker1_config.vm.hostname = "apim-analytics-worker-1"
    worker1_config.vm.network :private_network, ip: "10.0.15.11", virtualbox__intnet: true
     # Enable ssh forward agent
    worker1_config.ssh.forward_agent = true
    worker1_config.vm.network "forwarded_port", guest: 9443, host: 9443
    worker1_config.vm.network "forwarded_port", guest: 9090, host: 9090
    worker1_config.vm.network "forwarded_port", guest: 7070, host: 7070
    worker1_config.vm.network "forwarded_port", guest: 7443, host: 7443
    worker1_config.vm.network "forwarded_port", guest: 7611, host: 7611
    worker1_config.vm.network "forwarded_port", guest: 7711, host: 7711
    worker1_config.vm.network "forwarded_port", guest: 9611, host: 9611
    worker1_config.vm.network "forwarded_port", guest: 9711, host: 9711
    worker1_config.vm.network "forwarded_port", guest: 9893, host: 9893
    worker1_config.vm.provider "virtuaapimox" do |vb|
      vb.memory = "1024"
    end
    worker1_config.vm.provision :shell, path: "bootstrap-mgmt.sh"
  end

  # create analytics worker 2
  config.vm.define :worker2 do |worker2_config|
    worker2_config.vm.box = "wasilak/amazon-linux-2"
    worker2_config.vm.hostname = "apim-analytics-worker-2"
    worker2_config.vm.network :private_network, ip: "10.0.15.12", virtualbox__intnet: true
     # Enable ssh forward agent
    worker2_config.ssh.forward_agent = true
    worker2_config.vm.network "forwarded_port", guest: 9443, host: 9444
    worker2_config.vm.network "forwarded_port", guest: 9090, host: 9091
    worker2_config.vm.network "forwarded_port", guest: 7070, host: 7071
    worker2_config.vm.network "forwarded_port", guest: 7443, host: 7444
    worker2_config.vm.network "forwarded_port", guest: 7611, host: 7612
    worker2_config.vm.network "forwarded_port", guest: 7711, host: 7712
    worker2_config.vm.network "forwarded_port", guest: 9611, host: 9612
    worker2_config.vm.network "forwarded_port", guest: 9711, host: 9712
    worker2_config.vm.network "forwarded_port", guest: 9893, host: 9894
    worker2_config.vm.provider "virtuaapimox" do |vb|
      vb.memory = "1024"
    end
    worker2_config.vm.provision :shell, path: "bootstrap-mgmt.sh"
  end

  # create apim 1
    config.vm.define :apim1 do |apim1_config|
      apim1_config.vm.box = "wasilak/amazon-linux-2"
      apim1_config.vm.hostname = "apim-1"
      apim1_config.vm.network :private_network, ip: "10.0.15.13", virtualbox__intnet: true
       # Enable ssh forward agent
      apim1_config.ssh.forward_agent = true
      apim1_config.vm.network "forwarded_port", guest: 9443, host: 9445
      apim1_config.vm.network "forwarded_port", guest: 7611, host: 7613
      apim1_config.vm.network "forwarded_port", guest: 7711, host: 7713
      apim1_config.vm.network "forwarded_port", guest: 9611, host: 9613
      apim1_config.vm.network "forwarded_port", guest: 9711, host: 9713
      apim1_config.vm.network "forwarded_port", guest: 8243, host: 8243
      apim1_config.vm.network "forwarded_port", guest: 8280, host: 8280
      apim1_config.vm.provider "virtuaapimox" do |vb|
        vb.memory = "1024"
      end
      apim1_config.vm.provision :shell, path: "bootstrap-mgmt.sh"
    end

    # create apim 2
    config.vm.define :apim2 do |apim2_config|
      apim2_config.vm.box = "wasilak/amazon-linux-2"
      apim2_config.vm.hostname = "apim-2"
      apim2_config.vm.network :private_network, ip: "10.0.15.14", virtualbox__intnet: true
       # Enable ssh forward agent
      apim2_config.ssh.forward_agent = true
      apim2_config.vm.network "forwarded_port", guest: 9443, host: 9446
      apim2_config.vm.network "forwarded_port", guest: 7611, host: 7614
      apim2_config.vm.network "forwarded_port", guest: 7711, host: 7714
      apim2_config.vm.network "forwarded_port", guest: 9611, host: 9614
      apim2_config.vm.network "forwarded_port", guest: 9711, host: 9714
      apim2_config.vm.network "forwarded_port", guest: 8243, host: 8244
      apim2_config.vm.network "forwarded_port", guest: 8280, host: 8281
      apim2_config.vm.provider "virtuaapimox" do |vb|
        vb.memory = "1024"
      end
      apim2_config.vm.provision :shell, path: "bootstrap-mgmt.sh"
    end

end
