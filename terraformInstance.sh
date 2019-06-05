#!/bin/bash 

# Esse script foi criado baseado na versão Oracle Linux 7.x

sudo yum -y update

#Instalação dos pacotes
sudo yum -y install terraform python-oci-cli git

#Criação de chave RSA
yes "y" | ssh-keygen -N "" -f ~/.ssh/id_rsa

#Criação de pasta para armazenar chaves de API
mkdir -p ~/.oci 

#Criação de chave privada
openssl genrsa -out ~/.oci/oci_api_key.pem 2048
chmod 0700 ~/.oci
chmod 0600 ~/.oci/oci_api_key.pem

#Criação de chave publica
openssl rsa -pubout -in ~/.oci/oci_api_key.pem -out ~/.oci/oci_api_key_public.pem

#Criação de arquivo com fingerprint
openssl rsa -in ~/.oci/oci_api_key.pem -pubout -outform DER 2>/dev/null | openssl md5 -c | awk '{print $2}' > ~/.oci/oci_api_key_fingerprint
chmod 0600 ~/.oci/oci_api_key_public.pem
chmod 0600 ~/.oci/oci_api_key_fingerprint

# Opcional
# git clone <seu repositorio com arquivos de terraform>

