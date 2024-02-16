#!/bin/bash

# Details about the remote server
remote_host="64293e56bc62.3a2627c1.alu-cod.online"
remote_username="64293e56bc62"
remote_password="328d3b338a4ced526c9a"
remote_location="/summative/1023-2024j"

# Create backup directory on the remote server
sshpass -p "$remote_password" ssh "$remote_username@$remote_host" "mkdir -p $remote_location/negpod_id-q1_backup"

# Copy the entire directory created in Question 2 to the remote server
scp -r negpod_id-q1 "$remote_username@$remote_host:$remote_location/negpod_id-q1_backup"

echo "Backup to remote server successful."
