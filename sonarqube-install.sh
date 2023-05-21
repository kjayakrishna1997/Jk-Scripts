#!/bin/bash
#This script is Automation installation of tools
#Purpose	: To install Java-v.1.8.0, SonarQube.
#Created date	: 22 May 2023
#Modified date	: 22 May 2023
#Author		: Jai Krishna


## JAVA 1.8.0 ##
echo "Installing Java-v.1.8.0"
sleep 3

sudo yum install -y java-1.8.0-openjdk-devel.x86_64
echo
echo
echo "Java-v.1.8.0 installed Successfully"
sleep 3
## SonarQube ##
echo
echo
echo "Installing SonarQube"
sleep 3

sudo wget -O /etc/yum.repos.d/sonar.repo http://downloads.sourceforge.net/project/sonar-pkg/rpm/sonar.repo

sudo yum install sonar -y
echo
echo
echo "SonarQube installed Successfully"
sleep 3

## Starting SonarQube Service ##
echo
echo
echo "Starting SonarQube Service"
sleep 3

service sonar start
echo
echo
echo "SonarQube Service Started Successfully"
echo
echo "Now All set, You can open SonarQube Dashboard"
echo
echo



