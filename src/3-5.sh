#!/bin/sh
myFunction() {
	echo "함수 안으로 들어왔음"
	str="ls"
	eval $str "$1"
	return
}
echo "프로그램을 시작합니다."
myFunction "$1"
echo "프로그램을 종료합니다."

