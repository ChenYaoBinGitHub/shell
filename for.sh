#!/bin/bash

for i in `seq 1 15`  #使用的是反引号 
do 
	echo -e "\033[32mha$i\033[0m"
done

j=0

for ((i=1; i<=100; i++))
do
	j=`expr $i + $j`	#j=$(( $j + $i ))
done

echo $j

#批量解压当前文件夹下所有的.tar.gz文件
for i in ` ls ./*.sh`	#./*.tar.gz`
do
	echo "$i"
	touch test1
	echo "$i" >> /mnt/mntsdb1/linux/shell/test1
#	tar -zxvf $i >> ./test1
done
