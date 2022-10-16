#/bin/bash
x=`ps -Ael |grep a.sh |wc -l`
if [ $x -gt 1 ] ;then exit; fi

cd $1/pic
i=1
while [ $i -le 5 ]
do
x=`date`.png
screencapture -xra "$x"
git add  "$x"
git commit -m "$x"
let i++
sleep 60
done
git push

