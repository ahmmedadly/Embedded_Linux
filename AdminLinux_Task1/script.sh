#!/bin/bash

# Step 1: Create a directory called "myDirectory" in your home folder
mkdir ~/myDirectory

# Step 2: Inside "myDirectory," create another directory named "secondDirectory"
mkdir ~/myDirectory/secondDirectory

# Step 3: Within "secondDirectory," create a file named "myNotePaper"
echo "This is my note paper." > ~/myDirectory/secondDirectory/myNotePaper

# Step 4: Copy "myNotePaper" from "secondDirectory" to "myDirectory"
cp ~/myDirectory/secondDirectory/myNotePaper ~/myDirectory/

# Step 5: Rename the copied file in "myDirectory" to "myOldNotePaper"
mv ~/myDirectory/myNotePaper ~/myDirectory/myOldNotePaper

echo "Script executed successfully!"
