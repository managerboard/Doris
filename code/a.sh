#/bin/bash

cd ../pic
x=`date`.png
screencapture -xra "$x"
git add  "$x"
git commit -m "$x"
git push

