#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
#yum install -y ansible
amazon-linux-extras install ansible2

# copy examples into /home/vagrant (from inside the mgmt node)
chown -R vagrant:vagrant /home/vagrant

sed -i "s/^PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
systemctl restart sshd

mkdir -p /home/vagrant/.ssh
cat /vagrant/ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
chown vagrant:vagrant -R /home/vagrant/.ssh
chmod -R 755 /home/vagrant/.ssh
chmod -R 600 /home/vagrant/.ssh/*


# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<-END

# vagrant environment nodes
10.0.15.10  mgmt
10.0.15.11  apim-analytics-worker-1
10.0.15.12  apim-analytics-worker-2
10.0.15.13  apim-1
10.0.15.14  apim-2
END
