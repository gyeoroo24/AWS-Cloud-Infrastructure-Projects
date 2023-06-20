#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
#yum update -y
#yum install -y httpd
#systemctl start httpd
#systemctl enable httpd
#echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html

#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install nginx1 -y
sudo systemctl enable nginx
sudo systemctl start nginx