echo -n "Enter number: "
read num
i=1
fact=1 #Factorial of 0 is 1 so already defined
until [ $i -gt $num ] #Won't execute if num is 0
do
	fact=$(expr $fact \* $i)
	i=$(expr $i + 1)
done
echo "Factorial: $fact"

