#/bin/bash

cd $1/pic
x=`date`.png
screencapture -xra "$x"
git add  "$x"
git commit -m "$x"
git push

