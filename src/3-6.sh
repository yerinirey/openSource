#!/bin/sh
makeFile() {
	for i in `seq 0 4`
	do
		touch file$i.txt
	done
	return
}

if [ -d "$1" ]; then
	echo "$1 is already exists."
else
	mkdir -p $1
	cd $1
	makeFile
	cd ..
	tar -cvf $1.tar $1 
	mv $1.tar ./$1
	cd $1
	tar -xvf $1.tar
	mv $1.tar ./$1
fi
exit 0
