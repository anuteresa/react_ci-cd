#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)
git pull git pull https://anuteresa:Attikal123@github.com/anuteresa/react_ci-cd
NEW_HEAD=$(git rev-parse HEAD)
echo $NEW_HEAD
result=$(ls | egrep 'setup.sh') 

if [ "$result" = "setup.sh" ]
then
  echo 'found and be happy'
else 
echo 'not found and anu'
fi  

if [ $OLD_HEAD = $NEW_HEAD ]
then 
 pwd;
 echo "happy";
 fi



                 
    


