#!/bin/bash
#This script is Automation installation of tools
#Purpose	: To install Java-v.1.8.0, Nexus.
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

## Nexus Installation ##
echo
echo
echo "Installing Nexus"
sleep 3

cd /opt/

sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz

tar -xvf latest-unix.tar.gz
echo
echo
echo "Nexus Donloaded and extracted Successfully"
sleep 3

#Renaming Nexus file
echo
echo "Renameing nexus-3.53.1-02 as nexus3"
sleep 3

mv nexus-3.53.1-02 nexus3
echo
echo
echo "Nexus Renamed Successfully"
sleep 3

#Changing Ownership
echo
echo "Changing ownership as ec2-user"
sleep 3

chown -R ec2-user:ec2-user nexus3 sonatype-work
echo
echo
echo "Ownership changed to ec2-user Successfully"
sleep 3

#set default user
echo
#echo "Set Default user as ec2-user"
#sleep 3

#cd nexus3/bin

#vi nexus.rc
echo
echo
#echo "Default user set as ec2-user"
#sleep 3

#Generating Soft-link
echo
echo "Generating soft link of nexus"
sleep 3

ln -s /opt/nexus3/bin/nexus /etc/init.d/nexus
echo
echo
echo "Soft link generated Successfully"
sleep 3

#add nexus as service
echo
echo "Adding nexus as a service"
sleep 3

cd /etc/init.d/

chkconfig --add nexus

chkconfig nexus on
echo
echo
echo "Nexus added as a service now"
sleep 3

#starting nexus service
echo "starting nexus service"
sleep 3

sudo service nexus start
echo
echo
echo "Nexus service started Successfully"
echo
echo "Now all set, You can open Nexus Dashboard"
echo
echo "admin password to login Nexus Dashboard"
sleep 3

cat /opt/sonatype-work/nexus3/admin.password
echo
echo "Copy password key and pash in Nexus Dashboard"
echo
echo






