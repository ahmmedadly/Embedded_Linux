#!/bin/bash

# Check if the .bashrc file exists
if [ -f "$HOME/.bashrc" ]; then
    echo "The .bashrc file exists in the home directory."

    # Append environment variable HELLO with value of HOSTNAME
    echo "export HELLO=\$HOSTNAME" >> "$HOME/.bashrc"

    # Append local variable LOCAL with the value of whoami
    echo "export LOCAL=$(whoami)" >> "$HOME/.bashrc"

    echo "Environment variables added to .bashrc."
else
    echo "The .bashrc file does not exist in the home directory."
fi

# Open a new terminal
gnome-terminal &

#to descripe what happens when the new terminal opens
echo "A new terminal window will open, and it will use the updated .bashrc settings."
