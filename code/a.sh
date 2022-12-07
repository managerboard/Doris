#/bin/bash
ps -Ael|grep a.sh >/tmp/tmp
x=`cat /tmp/tmp |grep a.sh |wc -l`
#x=`ps -Ael |grep a.sh |wc -l`
#debug start...
echo "==>",$x >>/tmp/a
cat /tmp/tmp >>/tmp/a
ps -Ael|grep a.sh >>/tmp/a
#debug end...
if [ $x -gt 2 ] ;then exit; fi

cd $1/pic
i=1
while [ $i -le 5 ]
do
x=`date`.png
/usr/sbin/screencapture -xra "$x"
git add  "$x"
git commit -m "$x"
let i++
sleep 60
done
git push

