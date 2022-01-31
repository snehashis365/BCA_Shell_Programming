echo "Enter 3 number"
read a b c
echo "a=$a, b=$b, c=$c"
if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		echo "a is greater"
	else
		echo "c is greater"
	fi
else
	if [ $b -gt $c ]
	then
		echo "b is greater"
	else
		echo "c is greater"
	fi
fi

