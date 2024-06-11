#! /bin/bash

# Install base needs and java 17
sudo apt-get update && sudo apt-get install ca-certificates apt-transport-https openjdk-17-jre-headless jsvc gpg -y

# Add Ubiquiti & Mongo to the sources
echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

# Add trust for Ubiquiti and Mongo sources
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg

# Download the latest TP-Link Omada software controller
sudo wget https://static.tp-link.com/upload/software/2024/202402/20240227/Omada_SDN_Controller_v5.13.30.8_linux_x64.tar.gz

# Install the UniFi controller
sudo apt-get update && sudo apt-get install unifi -y