#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)
git pull --dry-run https://anuteresa:$token@github.com/anuteresa/react_ci-cd
NEW_HEAD=$(git rev-parse HEAD)
echo $NEW_HEAD
if [ $OLD_HEAD = $NEW_HEAD ] | ls -la
while read name; do
  if [ "$name" = "setup.sh" ];
   then
       echo "good"
       pwd
  else 
       echo "not goood";
       pwd
                  
  fi;
done  
fi


                 
    


