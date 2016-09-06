#!/bin/sh
for dir in $(ls -d */); do
  ori=$(echo $dir | sed 's/bac_//')
  mkdir $ori
  echo $ori
  for file in $(ls -p $dir | grep -v / | tail -n 2); do
    cp $dir$file $ori
  done
done
