#!/bin/bash


progress_bar()
{
  local current=$1; local total=$2
  local now=$((current*100/total))
  local last=$(((current-1)*100/total))
  [[ $((last % 2)) -eq 1 ]]&&let last++
  local str=$(for i in `seq 1 $((last/2))`; do printf '#'; done)
  for ((i=$last;$i<=$now;i+=2));do printf "\r[%-50s]%d%%" "$str"  $i;sleep 0.02;str+='#';done
}


for  n in `seq 1 100`
  do
  progress_bar $n 100
  done
echo
