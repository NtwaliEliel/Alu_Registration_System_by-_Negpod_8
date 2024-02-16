#!/bin/bash

# Create a directory with the name negpod_id-q1
directory_name="negpod_id-q1"
mkdir "$directory_name"

# Move all four files created in Question 1 to the created directory
mv main.sh students-list_1023.txt select-emails.sh student-emails.txt "$directory_name"

echo "Files moved to $directory_name successfully."
