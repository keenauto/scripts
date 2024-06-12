echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
apt-get update && install libssl1.1 -y
sudo rm /etc/apt/sources.list.d/focal-security.list
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-4.4.gpg --dearmor
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
apt-get update
sudo apt-get install mongodb-org -y
#sudo systemctl start mongod
#sudo systemctl enable mongod
sudo apt-get install openjdk-11-jre-headless -y
sudo mkdir /usr/lib/jvm/java-11-openjdk-amd64/lib/amd64
sudo ln -s /usr/lib/jvm/java-11-openjdk-amd64/lib/server /usr/lib/jvm/java-11-openjdk-amd64/lib/amd64/
sudo apt-get install jsvc -y
wget https://static.tp-link.com/upload/software/2024/202402/20240227/Omada_SDN_Controller_v5.13.30.8_linux_x64.deb
dpkg -i Omada_SDN_Controller_v5.13.30.8_Linux_x64.deb