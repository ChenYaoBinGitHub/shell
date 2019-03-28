#!/bin/bash 

num1=100
num2=200

MKDIR_shell=/mnt/mntsdb1/linux/shell		#创建文件夹shell
TOUCH_case=/mnt/mntsdb1/linux/shell/mycase.sh	#创建文件mycase.sh

if [ $num1 -ge $num2 ];	#if语句中所有参数都要用空格隔开，-ge左右两边需要空格
then
	echo "num1 great num2"
else
	echo "num1 littel num2"
fi


if [ ! -d $MKDIR_shell ];	#如果目录不存在，则创建目录
then
	echo "$MKDIR_shell create successfully"
	mkdir -p $MKDIR_shell	#递归式的创建目录
else
	echo "the $MKDIR_shell is exist"
fi

if [ ! -f $TOUCH_case ];	#如果文件不存在
then
	cd /mnt/mntsdb1/linux 	#切换到此目录下
	touch mycase.sh		#创建文件mycase.sh
	touch $TOUCH_case	#在TOUCH_case路径下，创建mycase.sh
	echo "$TOUCH_case create successfully"
	ls
	pwd
else
	echo "the $TOUCH_case is exist"
fi




