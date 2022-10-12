#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)
 { echo anuteresa }; { echo ${{ secrets.my_pat }}; | git pull 
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



                 
    


