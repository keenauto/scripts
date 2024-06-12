apt install openjdk-17-jre-headless jsvc curl gnupg -y
curl -sSL http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1-1ubuntu2.1~18.04.23_amd64.deb -o libssl1.1.deb
sudo dpkg -i libssl1.1.deb
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo gpg --dearmour -o /usr/share/keyrings/mongo-org-4.4.gpg
echo "deb [ arch=amd64 signed-by=/usr/share/keyrings/mongodb-org-4.4.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
apt install mongodb-org -y
wget https://static.tp-link.com/upload/software/2024/202402/20240227/Omada_SDN_Controller_v5.13.30.8_linux_x64.deb

dpkg -i Omada_SDN_Controller_v5.13.30.8_linux_x64.deb