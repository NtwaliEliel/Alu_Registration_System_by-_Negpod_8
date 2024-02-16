#!/bin/bash

students_file="students-list_1023.txt"
output_file="student-emails.txt"

# Select emails and save them in a file
cut -d ' ' -f 1 "$students_file" > "$output_file"

echo "Emails successfully extracted and saved in $output_file."
