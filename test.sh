apt-get install autoconf make gcc openjdk-11-jdk-headless gnupg curl -y

wget https://archive.apache.org/dist/commons/daemon/source/commons-daemon-1.3.4-src.tar.gz

tar zxvf commons-daemon-1.3.4-src.tar.gz

cd commons-daemon-1.3.4-src/src/native/unix

sh support/buildconf.sh

./configure --with-java=/usr/lib/jvm/java-11-openjdk-amd64

make

ln -s ~/commons-daemon-1.2.4-src/src/native/unix/jsvc /usr/bin/

curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

apt-get install mongodb-org mongodb-org-database mongodb-org-server mongodb-mongosh mongodb-org-mongos mongodb-org-tools -y

wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1-1ubuntu2.1~18.04.23_amd64.deb

dpkg -i libssl1.1_1.1.1-1ubuntu2.1~18.04.23_amd64.deb

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

apt-get install mongodb-org -y


