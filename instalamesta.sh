#!/bin/bash
#
sudo apt-get update
#
# Instala VS code (el ejecutable está en ~/Downloads)
sudo apt install /home/diego/Downloads/code_1.64.2-1644445741_amd64.deb
# to unisntall : sudo apt autoremove code
#
# Instala git 
sudo apt install git-all
# Set up credentials 
git config --global user.email "diego_antonio_17@live.com.mx"
git config --global user.name "Perruchock	"
git config credential.helper store #To store credentials after first login 
# token : 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
# To unistall : sudo aprt autoremove git
# To check programs installed do something like : dpgk -l | grep <application>
# Set up dockers repository 
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
# Add docker's GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg    
# 
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# Instalation 
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
#To remove docker : sudo apt-get autoremove docker-ce docker-ce-cli containerd.io
#PYthon
sudo apt install software-properties-common #Allow ubuntu to add PPA repos
sudo add-apt-repository ppa:deadsnakes/ppa # Python-s PPA repo
sudo apt update
sudo apt install python3.8
#Sudo get autoremove python3
