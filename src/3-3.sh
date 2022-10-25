#!/bin/sh
wgt="$1"
mtr="$2"
a=$( echo "scale=3; $mtr * $mtr / 10000" | bc )
BMI=$( echo  "scale=3; $wgt / $a" | bc )
echo "BMI = $BMI"
if [ `echo "$BMI < 18.5" | bc` -eq 1 ]; then
	echo "저체중입니다."
elif [ `echo "$BMI < 23.0" | bc` -eq 1 ]; then
	echo "정상체중입니다."
else
	echo "과체중입니다."
fi 
exit 0
