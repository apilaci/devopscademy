#! /bin/bash

echo "(Mate Ladislau) Tema 1"

echo "Data: "`date`
echo "Utilizatorul curent: $USER"

echo "Working Dir: "`pwd`

echo "Fisierele/Folderele din \"Working Dir\":"

ls -al

#un arbore recursiv ce face output la working dir sa nu umple consola :)
#/devopsacademy/ e folder pt git repo sa fie tot ce tine de devops academy in acest folder si pus pe GIT
find | sed 's|[^/]*/|- |g' >> devopscademy/tree-list.txt
