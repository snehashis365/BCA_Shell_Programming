echo "Choose an option from below:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo -n "Enter Choice: "
read choice
case $choice in
	1) #Addition
	echo "Enter 2 numbers"
	read a b
	echo "Sum = $(expr $a + $b)"
	;;
	2) #Subtraction
	echo "Enter 2 numbers"
	read a b
	echo "Difference = $(expr $a - $b)"
	;;
	3) #Multiplication
	echo "Enter 2 numbers"
	read a b
	echo "Product = $(expr $a \* $b)"
	;;
	4) # Division
	echo "Enter 2 numbers"
	read a b
	echo "Quotient = $(expr $a / $b)"
	;;
	*) #Default
	echo "Wrong Input!!"
	;;
esac

