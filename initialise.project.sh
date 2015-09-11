#!/bin/bash

for i in data doc R figs output python proposal scratch
do
mkdir $i
echo "#Readme" > $i/Readme.md
git add $i/Readme.md
done

#Anything in scratch needs to be ignored.
echo "[^.]*" > scratch/.gitignore
git add scratch/.gitignore

git commit -m 'Created project'
git push origin master





