#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;31m'
NORMAL='\033[0m'

cat test.txt | while read line 
do
   printf "${RED} $line\n"
done
