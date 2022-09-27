#!/bin/bash

echo "Atualizando o Servidor..."
apt-get update
aptget upgrade -y
echo "Instalando o Apache..."
apt-get install apache2 -y
echo "Instalando o unzip..."
apt-get install unzip -y
cd /tmp
echo "Realizando download do projeto..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "descompactando o projeto..."
unzip main.zip
cd linux-site-dio-main
echo "Configurando o projeto..."
cp -R * /var/www/html/
