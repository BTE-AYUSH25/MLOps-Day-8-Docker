#!/bin/bash

# Create logs directory if it doesn't exist
mkdir -p logs

# Get container ID
CONTAINER_ID=$(docker ps -q --filter "ancestor=mlops-day8-app")

if [ -z "$CONTAINER_ID" ]; then
    echo "No running container found for mlops-day8-app"
    exit 1
fi

# Save logs with timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOG_FILE="logs/container_logs_${TIMESTAMP}.txt"

echo "Saving logs from container: $CONTAINER_ID"
echo "Log file: $LOG_FILE"

docker logs $CONTAINER_ID > $LOG_FILE 2>&1

echo "Logs saved successfully!"
echo "Total lines in log file: $(wc -l < $LOG_FILE)"