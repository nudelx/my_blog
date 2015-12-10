#!/bin/bash 


DIRECTORY='.git'
echo \[\033[32m\] sss

if [ -d "./$DIRECTORY" ]; then
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'s
fi





