## Requirements

- FQDN - a domain name - MIMO needs a fully qualified domain, like wisp.services
- Linux server - see requirements below
- Working DNS 

## Hardware Requirements
 
- Singal or dual core CPU (dual core recommended)
- 1 GB RAM minimum (with swap)
- 64 bit Linux compatible with Docker
- 10 GB disk space minimum

## Create a new server

Instructions for each provider

## Update your DNS records

Find the public IP address for your newly created server. This needs to be the publicly available IP address.

Add the following A-records to your DNR records:

- api
- admin
- dashboard
- splash

For example, if your public IP address is 80.90.10.10 and your chosen domain is wifi.com you need the following records:

api.wifi.com - 80.90.10.10
admin.wifi.com - 80.90.10.10
dashboard.wifi.com - 80.90.10.10
splash.wifi.com - 80.90.10.10

Make sure these resolve *before* you start the installation.

## Login to your server

bla bla bla

Using your favourite shell, including putty or ssh, login to your newly created server:

```
ssh root@ip-address
```

If you're using Digital Ocean, you will need to update your password.

### Install Docker and Git

wget -qO- https://get.docker.com/ | sh

This installs docker & on your machine. You may need to install Git manually.

Check they were installed correctly. Git:

```
git version
git version 2.7.4
```

Docker:

```
docker --version
Docker version 18.05.0-ce, build f150324
```

The exact versions may differ.

If either failed, please re-install. The git installation guide can be found here:

https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

### Install MIMO

Create a new folder for your installation and clone the official MIMO images into it:

```
sudo -s
mkdir /var/mimo
git clone https://github.com/mimolabs/docker-compose.git /var/mimo
cd /var/mimo
./docker-install.sh
```

You must enter valid SMTP credentials otherwise your MIMO installation won't work.

After the installation has completed, you should receive a welcome message.
