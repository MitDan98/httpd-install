#!/bin/bash
#Author: Mititi Dan
#Mail: danmititi@gmail.com
yum install httpd
if [ $? -ne 0 ]; then  
 echo "Cannot install httpd Exiting..."
	exit 1
else
	echo "httpd has been installed."
fi
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
