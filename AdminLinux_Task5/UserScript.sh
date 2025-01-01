#!/bin/bash

# Prompt for user and group details
read -p "Enter the username to create: " USER_NAME
read -p "Enter the primary group name for the user: " GROUP_NAME

# Check if group exists; if not, create it
if getent group "$GROUP_NAME" > /dev/null; then
    echo "Group '$GROUP_NAME' already exists."
else
    groupadd "$GROUP_NAME"
    echo "Group '$GROUP_NAME' created successfully."
fi

# Check if user exists; if not, create them
if id "$USER_NAME" > /dev/null 2>&1; then
    echo "User '$USER_NAME' already exists."
else
    useradd -m -g "$GROUP_NAME" "$USER_NAME"
    echo "User '$USER_NAME' created and added to group '$GROUP_NAME'."
fi

# Display user and group information
echo "User Details:"
id "$USER_NAME"
echo "Group Details:"
getent group "$GROUP_NAME"
