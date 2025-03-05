#!/bin/bash

# Update the system
sudo yum update -y

# Install Java (OpenJDK 11)
sudo yum install -y java-11-openjdk-devel

# Install Maven
sudo yum install -y maven

# Install PostgreSQL client (if your Spring Boot app uses PostgreSQL)
# Uncomment if your Spring Boot app uses PostgreSQL
# sudo yum install -y postgresql

# Install Redis client (if your Spring Boot app uses Redis)
# Uncomment if your Spring Boot app uses Redis
# sudo yum install -y redis

# Install any other dependencies as needed (e.g., MySQL, Elasticsearch, etc.)
# Example for MySQL
# sudo yum install -y mysql

# Start Nginx (if needed as a reverse proxy)
# Uncomment if using Nginx
# sudo amazon-linux-extras install -y nginx1
# sudo systemctl start nginx
# sudo systemctl enable nginx

# Verify installations
java -version
mvn -version

echo "Dependencies installed successfully!"

