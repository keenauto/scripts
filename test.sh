#Install MongoDB(V7)
apt-get install gnupg curl -y

#Import the MongoDB public GPG key
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor

#Create the list file /etc/apt/sources.list.d/mongodb-org-7.0.list for your version of Ubuntu
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

#Reload local package database
apt-get update

#Install latest stable verison
apt-get install mongodb-org -y

#Install java 17
apt-get install openjdk-17-jre-headless -y

#Create directory that Omada requires
mkdir /usr/lib/jvm/java-17-openjdk-amd64/lib/amd64

#Link the default directory to new directory
ln -s /usr/lib/jvm/java-17-openjdk-amd64/lib/server /usr/lib/jvm/java-17-openjdk-amd64/lib/amd64/

#Install JSVC
apt-get install jsvc -y

wget https://static.tp-link.com/upload/software/2024/202402/20240227/Omada_SDN_Controller_v5.13.30.8_linux_x64.deb

dpkg -i Omada_SDN_Controller_v5.13.30.8_linux_x64.deb
