#!/bin/bash
# Define an array of server IP addresses or hostnames
servers=("server1.example.com" "server2.example.com" "server3.example.com")

# Your SSH public key file (assuming it's ~/.ssh/id_rsa.pub)
public_key_file="~/.ssh/id_rsa.pub"

# Prompt for the SSH user's password
read -s -p "Enter your SSH password: " ssh_password
echo

# Loop through each server and copy the public key
for server in "${servers[@]}"; do
    echo "Copying public key to $server..."
    
    # Use sshpass to provide the password and copy the public key to the remote server
    sshpass -p "$ssh_password" ssh "$server" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys" < "$public_key_file"
    
    if [ $? -eq 0 ]; then
        echo "Public key copied to $server."
    else
        echo "Failed to copy public key to $server."
    fi
done

# Clear the password variable
unset ssh_password

echo "Script completed."