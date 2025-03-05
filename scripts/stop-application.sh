#!/bin/bash

# Find the process running the Spring Boot application (based on the JAR name)
# Replace "myapp.jar" with your actual JAR filename if necessary
PID=$(ps aux | grep 'course-service.jar' | grep -v grep | awk '{print $2}')

# If the process is found, kill it
if [ -n "$PID" ]; then
    kill -9 $PID
    echo "Spring Boot application stopped successfully!"
else
    echo "No running application found to stop."
fi

