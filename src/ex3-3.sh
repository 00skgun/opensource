#!/bin/sh

hm = $( echo "scale = 1; $2 / 100" | bc )
bmi = $( echo "scale = 1; $1 / $hm / $hm " | bc )
if [ 1 -eq "$(echo "$BMI < 18.5" | bc)"  ]
then
	echo "저체중입니다."

elif [ 1 -eq "$(echo "$BMI >= 18.5" | bc)" ] && [ 1 -eq "$(echo "$BMI < 23" | bc)"  ]
then
	echo "과체중입니다."
else
	echo "정상체중입니다."
fi

exit 0