#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
#yum install -y ansible
amazon-linux-extras install ansible2

# copy examples into /home/vagrant (from inside the mgmt node)
chown -R vagrant:vagrant /home/vagrant

sed -i "s/^PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
systemctl restart sshd

mkdir -p /home/vagrant/.ssh
mkdir -p /opt/wso2
cp /vagrant/ssh/id_rsa* /home/vagrant/.ssh/
cat /vagrant/ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
chown vagrant:vagrant -R /home/vagrant/.ssh
chmod 755 /home/vagrant/.ssh
chmod 755 /opt/wso2
chmod -R 600 /home/vagrant/.ssh/*

#groupadd wso2 
#useradd -G wso2 wso2carbon

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<-END

# vagrant environment nodes
10.0.15.10  mgmt
10.0.15.11  apim-analytics-worker-1
10.0.15.12  apim-analytics-worker-2
10.0.15.13  apim-1
10.0.15.14  apim-2
END
