#!/bin/bash

# run the script with one command line argument, which represents the input file name
# $./lab4 cs216roster.txt
# cs216roster.txt is the input file as the argument
# display the following menu to let the user choose an option:
# if option is 1, output file will sort the roster in dictionary order of students' firstname
# if option is 2, output file will sort the roster in reverse dictionary order of students' lastname
# if option is 3, output file will sort the roster in descending order of students' ID
# if option is other integer, display the message of invalid option
# Begin with checking whether the number of the command line arguments is exactly one

if [ $# -ne 1 ]
then
	echo "Warning: need exactly one command line argument."
	echo "Usage: ./lab6 <inputfile_name>."
	exit 1
fi



#display the menu for user to choose an option
echo "Sort the roster in one of three orders:"
echo "1. dictionary order of students' firstname"
echo "2. reverse dictionary order of students' lastname"
echo "3. descending order of students' ID"
echo
#ask the user to input the option and store it into variable use_option
echo "Please input your option: "
read usr_option
output_file1="FirstName_output"
output_file2="LastName_output"
output_file3="ID_output"
#write your if statements to complete the shell script
#generate output file named FirstName_output for option=1
#generate output file named LastName_output for option=2
#generate output file named ID_output for option=3
#no output file is generated when option is not valid
case $usr_option in
	2) cut -d$'\t' -f1 $1 | sort -r > $output_file1
           echo "Your choice is: "$usr_option". Please check the output file: $output_file2" ;;
	1) cut -d',' -f2 $1 | sort > $output_file2
	   echo "Your choice is: "$usr_option". Please check the output file: $output_file1" ;;
	3) echo "else choice";;
esac

  

