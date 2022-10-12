#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)
git pull --dry-run https://anuteresa:$token@github.com/anuteresa/react_ci-cd
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



                 
    


