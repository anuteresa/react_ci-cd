#!/bin/bash

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

                 
    


