#!/bin/bash
sudo apt update
sudo apt install ruby-full -y
sudo apt install wget
wget https://aws-codedeploy-eu-west-3.s3.eu-west-3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo apt install apache2 -y
sudo mkdir /var/www/html/"foldername"
echo"<!DOCTYPE html>
<html>
<head>
  <title>Registration Page</title>
</head>
<body>
  <h1>This is the registration page</h1>
  <p>You are accessing it on: <span id="ip-address"></span></p>
  <script>
    // JavaScript code to retrieve the IP address and update the span element
    fetch('https://api.ipify.org?format=json')
      .then(response => response.json())
      .then(data => {
        document.getElementById('ip-address').textContent = data.ip;
      });
  </script>
</body>
</html>">/var/www/html/"foldername"/index.html
