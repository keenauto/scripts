# Install base needs and java 17
sudo apt-get update && sudo apt-get install openjdk-8-jdk jsvc gpg -y

curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor


# Download the latest TP-Link Omada software controller
sudo wget https://static.tp-link.com/upload/software/2024/202402/20240227/Omada_SDN_Controller_v5.13.30.8_linux_x64.tar.gz


tar xvf Omada_SDN_Controller_v5.13.30.8_linux_x64.tar.gz
cd Omada_SDN_Controller_v5.13.30.8_linux_x64
./install.sh -y