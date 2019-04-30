# apim-vagrant-ansible

This is a sample project where WSO2 APIM and WSO2 Analytics nodes are deployed via vagrant and ansible.

The sample automation has 4 nodes setup wtih 2 APIM and 2 Analytics nodes for version 2.6.0


1) Install either the VirtualBox,VMWare or any desired virtul machine managment tools.

2) Install the approporiate vagrant package. Further information can be found over here.
      https://www.vagrantup.com/intro/getting-started/install.html
      
3) Checkout this code and modify the Vagrant file to setup the environment.

4) Run the vagrant up/vagrant relaod/vagrant destroy commands to spawn and create the virtual boxes

5) Modify the bootstrap-mgmt.sh file to add the desired hostnames and corresponding IPs which eventually be added to the /etc/hosts
   file in the newly spwaned virtual machines.
   
6) 
      

