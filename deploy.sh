#!/bin/sh
printf "%s\n" "commit the markdown to master first!"
cd ..
mkdir temp
mv yoga-notes/* temp 
mv temp/site/* yoga-notes
cd yoga-notes
git add .
git checkout deploy 
git commit -m "deploy site"
git push origin deploy
cd ..
rm -rf temp
cd yoga-notes
git checkout master
git pull origin master