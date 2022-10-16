#/bin/bash

cd $1/pic
i=1
while [ $i -le 2 ]
do
x=`date`.png
screencapture -xra "$x"
git add  "$x"
git commit -m "$x"
let i++
sleep 5
done
git push

