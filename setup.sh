#!/bin/bash
OLD_HEAD=$(git rev-parse HEAD)
git pull 
NEW_HEAD=$(git rev-parse HEAD)
git diff --name-only $OLD_HEAD $NEW_HEAD |
  while read name; do
  if [ "$num" = "Pipfile.lock" ];
   then
       echo "good"
       else 
       echo "not goood"
                  
    fi;
    done  
                 
    


