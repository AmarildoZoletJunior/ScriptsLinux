#!/bin/bash

echo "Atualizando o servidor"

apt-get update -y
apt-get upgrade -y


echo "Instalando apache"

apt-get install apache2 -y


apt-get install unzip -y

cd /tmp

wget https://github.com/AmarildoZoletJunior/AmarildoZoletJunior.github.io/archive/refs/heads/main.zip

unzip main.zip

cd AmarildoZoletJunior.github.io-main

cp -R * /var/www/html/




