#!/bin/bash

states=('Nebraska' 'Hawaii' 'California' 'Texas')

for state in ${states[@]}

if [ $state = 'Hawaii' ];
  then
    echo "Hawaii is the best!"
  else
    echo "I'm not a fan of Hawaii."
  fi
done
