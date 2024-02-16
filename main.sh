#!/bin/bash

students_file="students-list_1023.txt"

while true; do
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record"
    echo "4. Update student record"
    echo "5. Exit"

    read -p "Choose an option (1-5): " choice

    case $choice in
        1)  # Create student record
            read -p "Enter student email: " email
            read -p "Enter student age: " age
            read -p "Enter student ID: " student_id

            echo "$email $age $student_id" >> "$students_file"
            echo "Student record created successfully."
            ;;
        2)  # View all students
            echo "List of all students:"
            cat "$students_file"
            ;;
        3)  # Delete student record
            read -p "Enter student ID to delete: " delete_id
            sed -i "/$delete_id/d" "$students_file"
            echo "Student record deleted successfully."
            ;;
        4)  # Update student record
            read -p "Enter student ID to update: " update_id
            read -p "Enter new email: " new_email
            read -p "Enter new age: " new_age

            sed -i "/$update_id/c\\$new_email $new_age $update_id" "$students_file"
            echo "Student record updated successfully."
            ;;
        5)  # Exit the application
            echo "Exiting application."
            exit 0
            ;;
        *)  # Invalid option
            echo "Invalid option. Please choose a number between 1 and 5."
            ;;
    esac
done
