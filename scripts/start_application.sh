#!/bin/bash

# Change to the directory where the application is located
cd /home/ec2-user/myapp/

# Start the Spring Boot application in the background (without blocking)
# You can change `myapp.jar` to match the actual JAR file name
java -jar course-service.jar > /home/ec2-user/myapp/application.log 2>&1 &

# Print status to indicate the app started
echo "Spring Boot application started successfully!"

