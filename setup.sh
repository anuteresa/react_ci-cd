#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)
git pull https://anuteresa:${{secrets.my_pat}}@github.com/anuteresa/react_ci-cd
NEW_HEAD=$(git rev-parse HEAD)
echo $NEW_HEAD
git diff --name-only $OLD_HEAD $NEW_HEAD |
while read name; do
  if [ "$num" = "Pipfile.lock" ];
   then
       echo "good"
  else 
       echo "not goood"
                  
  fi;
done  
if [ $OLD_HEAD = $NEW_HEAD ];
then 
echo "no changes"
fi

                 
    


