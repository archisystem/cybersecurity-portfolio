#!/bin/bash

groupadd default_users
useradd -m -g default_users user

groupadd secret_users
useradd -m -g secret_users secret_agent
useradd -m -g secret_users secret_spy
useradd -m -g secret_users secret_boss


chown -R :secret_users /home/secret_agent
chown -R :secret_users /home/secret_spy
chown -R :secret_users /home/secret_boss

chmod 770 /home/secret_agent
chmod 770 /home/secret_spy
chmod 770 /home/secret_boss

chmod 777 /var

apt update
apt install -y apache2
systemctl is-active apache2

echo '%default_users ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/default_users
chmod 440 /etc/sudoers.d/default_users
