#!/bin/bash
#This script is Automation installation of tools
#Purpose	: To install Java-v.1.8.0, Tomcat.
#Created date	: 22 May 2023
#Modified date	: 22 May 2023
#Author		: Jai Krishna

## JAVA 1.8.8 ##
echo "Installing Java-v.1.8.0"
sleep 3

sudo yum install -y java-1.8.0-openjdk-devel.x86_64
echo
echo
echo "Java-v.1.8.0 installed Successfully"
sleep 3
## Tomcat-v.9 ##
echo
echo
echo "Installing Tomcat-v.9"
sleep 3

sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz

tar -xvf apache-tomcat-9.0.75.tar.gz
echo
echo
echo "Tomcat-v.9 installed Successfully"
sleep 3

## Tomcat-Setup ##
echo
echo
echo "add permissions to webapps"
sleep 3

cd apache-tomcat-9.0.75/
chmod 777 webapps
echo
echo
echo "Given 777 permision to all"
sleep 3

## edit context.sml ##

#value tag has Loopback address
#we need to remove remove value tag



## ADD user ##

#adding tomcat admin user in tomcat-user.xml



## Starting Tomcat service ##
echo
echo
#echo "Starting Tomcat service"
#sleep 3

#cd bin

#./startup.sh
echo
echo
#echo "Tomcat service started and all setup is done, Now You can open Tomcat Dashboard"
echo
echo

