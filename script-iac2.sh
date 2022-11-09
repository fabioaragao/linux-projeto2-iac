#!/bin/bash

acho "Atualizando o Linux"

apt-get update
apt-get upgrade -y


echo "Instalando Apache"
apt-get install apache2 -y


echo "Istalando Unzip"
apt-get install unzip -y


echo "Baixando o WGET"
apt-get install wget -y

echo "Mudando para o diretorio TMP"
cd /tmp


echo "Baixando o site"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip


echo "Descompactando o arquivo do site"
unzip main.zip


echo "Acessando o diretorio do site descompactado"
cd linux-site-dio-main


echo "Copiando os arquivos para o diretorio Apache"
cp -R * /var/www/html/


