#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)
git pull
NEW_HEAD=$(git rev-parse HEAD)
echo $NEW_HEAD
result=$(ls | egrep 'setup.sh') 

if [ "$result" = "setup.sh" ]
then
  echo 'found'
else 
echo 'not found'
fi  

if [ $OLD_HEAD = $NEW_HEAD ]
then 
 pwd;
 echo "happy";
 fi



                 
    


