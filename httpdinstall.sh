#!/bin/bash
#Author: Mititi Dan
#Mail: danmititi@gmail.com
yum install httpd -y
if [ $? -ne 0 ]; then  
 echo "Cannot install httpd Exiting..."
	exit 1
else
	echo "httpd has been installed."
fi
sudo systemctl start httpd.service
if[ $? -ne 0 ]; then
 echo "Cannot been start ...!"
 exit 1
else
 echo "Succes!"
fi
sudo systemctl enable httpd.service
if[ $? -ne 0 ]; then
 echo "Cannot been enable"
 exit 1
else
 echo "succes"
fi
