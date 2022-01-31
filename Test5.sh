echo "Enter marks of 5 subjects"
read a b c d e
sum=$(expr $a + $b + $c + $d + $e)
avg=$(expr $sum / 5)
echo "Average = $avg"
if [ $avg -ge 60 ]
then
	echo "First Division"
else
	if [ $avg -ge 40 -a $avg -lt 60 ]
	then
		echo "Second Division"
	else
		if [ $avg -ge 30 -a $avg -lt 40 ]
		then
			echo "Third Division"
		else
			echo "Fail"
		fi
	fi
fi

