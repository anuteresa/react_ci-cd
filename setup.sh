#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)
git pull
NEW_HEAD=$(git rev-parse HEAD)
echo $NEW_HEAD
result=$(ls | egrep 'anu.sh') 

if [ "$result" = "anu.sh" ]
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



                 
    


