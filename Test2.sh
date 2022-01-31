echo "Enter two numbers"
read a b
echo "a=$a, b=$b"
a=$(expr $a + $b)
b=$(expr $a - $b)
a=$(expr $a - $b)
echo "a=$a, b=$b"

