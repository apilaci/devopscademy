#! /bin/bash

echo "(Mate Ladislau) Tema 1"

echo "Data: "`date`
echo "Curent user: $USER"

echo "Working Dir: "`pwd`

#this work on my setup regular ubuntu server, not sure if folder structure is 100% identical on VM's
grep MemTotal /proc/meminfo

echo "Files/Folders from \"Working Dir\":"

ls -al

#to prevent the console from clogging up with gunk we output the results in to a file
#in docker this file will get deleted once container is closed/stopped
find | sed 's|[^/]*/|- |g' >> tree-list.txt
