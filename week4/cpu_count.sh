#!/bin/bash

#below command counts CPU
# grep searched for the string "processor " in the file /proc/cpuinfo 
# feed the output of grep into another command which
#count the number of lines (amount of processors)

#wc -l count the number of lines in its input
# wc -l = wordcount at the line level

#cnt is assigned the output of grep processor /proc/cpuinfo | wc -l
# do not forget '' arount the command

#if the cnt variabe is less than or equal to 2   -le
# -lt is less Than


cnt=`grep processor /proc/cpuinfo | wc -l`

if [ $cnt -le $1 ]; then

  echo "Not enough CPUS, exiting"

else

   echo "Enough CPUS"
fi
