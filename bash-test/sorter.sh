#!/bin/bash
flac="\.flac"
mp3="\.mp3"
jpg="\.jpg"
png="\.png"
log="\.log"

mkdir ./Music
mkdir ./Images
read line
#    echo "$line"

files=$(echo $line | tr ":" "\n")

for filename in $files
do
    if echo $filename | grep $flac; then
	echo "Moving $filename to ./Music"
	mv $filename ./Music
    fi 
    if echo $filename | grep $mp3; then
	echo "Moving $filename to ./Music"
	mv $filename ./Music
    fi 
    if echo $filename | grep $jpg; then
	echo "Moving $filename to ./Images"
	mv $filename ./Images
    fi 
    if echo $filename | grep $png; then
	echo "Moving $filename to ./Images"
	mv $filename ./Images
    fi 
    if echo $filename | grep $log; then
	echo "Removing $filename"
	rm ./$filename
    fi 
done
