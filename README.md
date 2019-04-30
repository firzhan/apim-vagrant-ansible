# apim-vagrant-ansible

This repository contains the required Ansible templates and the Vagrant setup file to automate a simple APIM and Analytics setup.

The sample automation has 4 nodes setup wtih 2 APIM and 2 Analytics nodes for version 2.6.0.

Please follow the following steps to establish the setup.

1) Install either the VirtualBox,VMWare or any desired virtual machine managment tools.

2) Install the approporiate vagrant package. Further information can be found over here.
      https://www.vagrantup.com/intro/getting-started/install.html
      
3) Install the ansible and ansible-playbook into the host machine      
      
4) Checkout this code and modify the Vagrantfile to setup the environment. The Vagrantfile can be found at the base location 
   of the checked out directory.

5) The bootstrap-mgmt.sh file dynamically generates the necessary contents of /etc/hosts for each and every spawned guest 
    machines. In our scenario, following entries have to be added to the host machine's and guest machines /etc/hosts file.
    
      # vagrant environment nodes
      10.0.15.10  mgmt
      10.0.15.11  apim-analytics-worker-1
      10.0.15.12  apim-analytics-worker-2
      10.0.15.13  apim-1
      10.0.15.14  apim-2

6) From the base directory, either one of the command can be used to either spawn a new host machine or destroy and create a 
   new one.
      1 - vagrant destroy.
      2 - vagrant up.
      3 - vagrant reload.

7) The vagrant inherently has a bug where when it spawns a new hostmachine, it adds a new entry as the first entry in the 
   /etc/hosts file pointing the FQDN to the localhost's loopback address. 
   
   This issue can be found over here ( https://github.com/hashicorp/vagrant/issues/7263 ).
   
   
8) Therefore, as a work around, I used a shell script to remove the first entry from the guest machine's /etc/hosts file. 
   This shell script is added while executing the ansible-playbook.
   
9) Aftermath of successful execution of the commands mentioned in #5, we have to log into the mgmt node. 
   Following command can be used to log into the mgmt node.   
    
    vagrant ssh mgmt
    
10) The relevant ansible scripts can be found at the following folder location in the mgmt node ( /vagrant/ansible-apim ). 
    From the above location, execute the following command
   
    ansible-playbook -i dev/ site.yml
   
11) The reamining nodes can be accessed by using following ssh commands. For an example, if any of the gues machine is 
    operating under the port-forwarding option of 2200, we can use the command  ssh -p 2200 vagrant@127.0.0.1 to access the 
    guest machine.

    

