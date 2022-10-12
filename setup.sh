#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)


echo "Type the username, followed by [ENTER]:"

read username
echo "username is $ username"

echo "Type the password, followed by [ENTER]:"

read -s password
echo "password is $ password"

NEW_HEAD=$(git rev-parse HEAD)
echo $NEW_HEAD
ls -la | egrep 'anu.sh' |
while read name; do 
  echo "found"
done
if [ $OLD_HEAD = $NEW_HEAD ]
then 
 pwd;
 echo "happy";
 fi



                 
    


