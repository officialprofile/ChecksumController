#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NORMAL='\033[0m'
IFS=' '
#echo "Enter the file name: "
#read VAR
while read line
do
   read -a data <<< "$line"
   md5=$(md5sum "${data[1]}")
   #echo ${data[0]} | cut -d ' ' -f 1 
   if [[ "$line" == "$md5" ]]; then
      printf "${GREEN}ZGODNOŚĆ${NORMAL} \t${data[1]}\n"
   else
      printf "${RED}\U02620 BŁĄD \U02620${NORMAL} \t${data[1]}\n"
   fi
#done < "$VAR"
done < example_files/verify.txt