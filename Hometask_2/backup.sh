#!/bin/bash
searchFile=`find $1 -mtime -1`
folderDate=`date +%Y-%m-%d`
if [ ! -d $2/${folderDate} ]
then
	mkdir $2/${folderDate}
	chmod 777 $2/${folderDate}
fi
for each_file in ${searchFile}
do
	cp -r $each_file ${folderDate}
done
