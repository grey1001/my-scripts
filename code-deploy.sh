#!/bin/bash
sudo apt update
sudo apt install ruby-full -y
sudo apt install wget
wget https://aws-codedeploy-eu-west-3.s3.eu-west-3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status
sudo apt install apache2 -y
sudo systemctl status apache2
