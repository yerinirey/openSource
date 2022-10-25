#!/bin/sh
makeFile() {
	for i in `seq 0 4`
	do
		touch file$i.txt
	done
	return
}
makeDirectory() {
	for i in `seq 0 4`
	do
		mkdir -p file$i
	done
	return
}
linking() {
	for i in `seq 0 4`
	do
		cd file$i
		ln -s file$i.txt file$i.txt
		cd ..
	done
	return
}
mkdir -p $1
cd $1
makeFile
makeDirectory
linking
exit 0

