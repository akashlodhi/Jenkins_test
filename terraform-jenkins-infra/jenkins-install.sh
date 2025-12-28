#!/bin/bash
set -e

# Update system
apt-get update -y

# Install Java
apt-get install -y openjdk-17-jdk

# Add Jenkins key and repo
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Install Jenkins
apt-get update -y
apt-get install -y jenkins

# Start Jenkins
systemctl start jenkins
systemctl enable jenkins
