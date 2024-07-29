#!/bin/bash

# Fetch the current public IP address
current_ip=$(curl -s --max-time 10 https://api.ipify.org)

# Check if the IP address was successfully fetched
if [[ -z "$current_ip" ]]; then
  echo "Failed to retrieve IP address"
  exit 1
fi

# Compare the fetched IP address with a known IP address (optional)
# known_ip="45.143.82.208"
# if [[ "$current_ip" != "$known_ip" ]]; then
#   echo "IP address does not match the expected value"
#   exit 1
# fi

# If everything is fine, print the IP address and exit with status 0
echo "$current_ip"
exit 0
