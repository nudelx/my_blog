#!/bin/bash 

function gitbranch(){

DIRECTORY='.git'

if [ -d "./$DIRECTORY" ]; then
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'



fi

}

function gitstat(){


if [ -d "./$DIRECTORY" ]; then
 
    git status  |grep modified |  sed 's/^.*\(modified\).*$/*/g'
fi

}

echo $(gitbranch)$(gitstat)

