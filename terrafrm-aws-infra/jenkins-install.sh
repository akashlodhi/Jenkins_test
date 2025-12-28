#!/bin/bash
yum update -y

# Install Java
amazon-linux-extras install java-openjdk11 -y

# Add Jenkins repo
wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Install Jenkins
yum install jenkins -y

# Start Jenkins
systemctl start jenkins
systemctl enable jenkins
