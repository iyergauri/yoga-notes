#!/bin/sh
printf "%s\n" "commit the markdown to master first!"
git checkout deploy 
cd ..
mkdir temp
mv yoga-notes/* temp 
mv temp/site/* yoga-notes
cd yoga-notes
git add .
git commit -m "deploy site"
git push origin deploy
git checkout master
git pull origin master