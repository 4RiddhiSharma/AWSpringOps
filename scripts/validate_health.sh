#!/bin/bash

# URL of the health check endpoint (change if necessary)
HEALTH_CHECK_URL="http://localhost:8080/actuator/health"

# Check if the health endpoint is accessible
HTTP_RESPONSE=$(curl --write-out "%{http_code}" --silent --output /dev/null "$HEALTH_CHECK_URL")

# Check if the response code is 200 (OK)
if [ "$HTTP_RESPONSE" -eq 200 ]; then
    echo "Application is healthy!"
    exit 0
else
    echo "Application is not healthy. HTTP status code: $HTTP_RESPONSE"
    exit 1
fi

