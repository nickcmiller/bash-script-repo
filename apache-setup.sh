#!/bin/bash
#Update the server
apt -y update
#Install Apache
apt -y install apache2
#Insert custom HTML into index web page of Apache
echo "<html><body>Welcome to my web page</body></html>" > /var/www/html/index.html
