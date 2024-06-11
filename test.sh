apt-get install openjdk-8-jre-headless jsvc curl -y

wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1-1ubuntu2.1~18.04.23_amd64.deb

dpkg -i libssl1.1_1.1.1-1ubuntu2.1~18.04.23_amd64.deb

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

apt-get install mongodb-org -y

wget https://static.tp-link.com/upload/software/2024/202402/20240227/Omada_SDN_Controller_v5.13.30.8_linux_x64.deb

dpkg -i Omada_SDN_Controller_v5.13.30.8_Linux_x64.deb



