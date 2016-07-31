#!/bin/bash

for i in *.gz 
do
    /Users/damoncrockett/med2image/med2image.py -i "$i" -d "${i:0:11}" -o image.jpg -s -1
done