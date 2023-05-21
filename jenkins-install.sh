#!/bin/bash
#This script is Automation installation of tools
#Purpose	: To install Java-v.11, Git, maven, Jenkins,...
#Created date	: 22 May 2023
#Modified date	: 22 May 2023
#Author		: Jai Krishna


## JAVA 11 ##
echo "Installing Java-v.11"
sleep 3

sudo amazon-linux-extras install java-openjdk11 -y
echo
echo
echo "Java-v.11 installed Successfully"
sleep 3
## GIT ##
echo
echo
echo "Installing Git"
sleep 3

yum install -y git
echo
echo
echo "Git installed Successfully"
sleep 3

## MAVEN ##
echo
echo
echo "Installing Maven"
sleep 3

sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo

sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo

sudo yum install -y apache-maven
echo
echo
echo "Maven installed Successfully"
sleep 3

## JENKINS ##
echo
echo
echo "Installing Jenkins"
sleep 3

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum install jenkins -y
echo
echo
echo "Jenkins installed Successfully"
sleep 3
echo
echo "Starting Jenkins Service, Go to browser and check jenkins dashboard with pub-ip:port-no"
sleep 3
echo
service jenkins start
echo
echo
echo "Authentication Key for jenkins Dashboard"
sleep 5
echo
echo
echo
cat /var/lib/jenkins/secrets/initialAdminPassword
echo
echo
echo "Set as Java-v.11 to Default"
echo
echo
update-alternatives --config java
echo
echo
echo "Installed All Dependencies for Jenkins(Java-v.11, Git, Maven) with Jenkins"
echo
echo


