Q4-->

a. cat filename1 | cat filename2

Will display contents of filename2 only
filename1 is effectively ignored
**************************************

b. ls | rm

DANGEROUS: Attempts to delete all filenames output by ls
Typically fails due to insufficient arguments

****************************

c. ls /etc/passwd | wc -l

Will output 1 (one file)

**************************************
Q--> 7 & 8
The Reason of failier?
Hard links must exist on the same filesystem.
/etc and /boot are likely on different partitions or filesystems. Hard links cannot span across filesystems.

