Q1
 3-c.
 Maximum Default Permissions
Files: 666 (read and write for all; no execute by default).
Directories: 777 (read, write, and execute for all).
***********************************************************
Q1
 6. 
Difference Between x for Files and Directories

**For Files:
x allows the file to be executed.
Without x, you cannot run the file.

**For Directories:
x allows to access to contents if you know file names.
Without x, you cannot access or list the directory contents.
************************************************************
Q2
 -7.
dola@sonic:/home/adly/Desktop/adly/AdminLinux_Task6/shared_dir$ ***rm filetest***
rm: remove write-protected regular empty file 'filetest'? y
rm: cannot remove 'filetest': *Operation not permitted*
--> This demonstrates the sticky bit prevents users from deleting or renaming files they don’t own, even    
    within a shared directory.
************************************************************

Q2
 -8.
adly@sonic:~/Desktop/adly/AdminLinux_Task6$ ls -l /usr/bin/passwd
-rwsr-xr-x 1 root root 64152 ماي 30  2024 /usr/bin/passwd
adly@sonic:~/Desktop/adly/AdminLinux_Task6$ 

Explanation:

The s in rws indicates the SetUID bit is set for the passwd command.
The SetUID bit allows the command to run with the permissions of its owner (in this case, root), regardless of who executes it.
This is necessary because passwd needs root privileges to modify the /etc/passwd and /etc/shadow files when a user updates their password.
************************************************************
