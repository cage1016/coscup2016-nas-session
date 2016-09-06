#!/bin/sh
for dir in $(ls -d */); do
  mkdir bac_$dir
  echo bac_$dir
  for file in $(ls -p $dir | grep -v / | tail -n 2); do
  mv $dir$file bac_$dir
  done
done
