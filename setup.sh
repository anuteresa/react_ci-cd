#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)
git pull --dry-run https://anuteresa:$token@github.com/anuteresa/react_ci-cd
NEW_HEAD=$(git rev-parse HEAD)
echo $NEW_HEAD
git diff --name-only $OLD_HEAD $NEW_HEAD | egrep 'setup.sh' |
while read name; do 
  echo "found"
done
if [ $OLD_HEAD = $NEW_HEAD ]
then 
 pwd;
 echo "happy";
 fi



                 
    


