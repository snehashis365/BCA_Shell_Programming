echo "1. Create a blank file"
echo "2. Create a file with some initial content in multiple lines and display it"
echo "3. Concat the content of 4 files in a single file"
echo "4. Count total number of lines, words and characters in a file"
echo "5. Display all the lines from a file which contain a specific word"
echo "6. Count total number of users currently logged in"
echo "7. Display total number of unhidden files and directories in pwd"
echo "8. Display total number of hidden files and directories in pwd"
echo -n "Enter choice: "
read choice
case $choice in
	1) #Blank File
	echo -n "Enter file name: "
	read fName
	touch $fName
	echo "$fName created..."
	;;
	2) #Create File with content
	echo -n "Enter file name: "
	read fName
	echo "Enter File Content(Press ctrl + d to finish entering content): "
	cat > $fName
	echo "File: $fName; Has been created with the following content"
	cat $fName
	;;
	3) #Concat 4 files
	echo -n "Enter new file name: "
	read newFName
	echo "Enter 4 file names(separated by blank space)"
	read f1 f2 f3 f4
	cat $f1 $f2 $f3 $f4 > $newFName
	echo "File $newFName created with following content..."
	cat $newFName
	;;
	4) #Count lines, words and characters
	echo -n "Enter file name: "
	read fName
	lCount=$(wc -l $fName)
	wCount=$(wc -w $fName)
	cCount=$(wc -c $fName)
	echo "Line Count: $lCount"
	echo "Word Count: $wCount"
	echo "Character Count: $cCount"
	;;
	5) #Search a word in a file and display the line
	echo -n "Enter file name: "
	read fName
	echo -n "Enter word to search for: "
	read searchKey
	echo "Searching '$searchKey' in $fName..."
	grep $searchKey $fName
	;;
	6) #Show total users loggen in
	uCount=$(who | wc -l)
	echo "Total users loggen in: $uCount"
	;;
	7) #Display total number of unhidden files and directories
	uhCount=$(ls -1 | wc -l)
	echo "Total Count: $uhCount"
	;;
	8) #Display total number of hidden files and directories
	count=$(ls -ld .* | wc -l)
	hCount=$(expr $count - 2)
	echo "Total Count: $hCount"
	;;
esac
