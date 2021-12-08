#!/usr/bin/awk -f
FS=":"
#Prints first name of the Tooks followed by their total campaign contributions.
# We have a similar  example in the awk assignment that states this problem.
#Question Number 8 first part of the assignment. Instead of Sacharissa I took the name of Tooks. Then I procceed to change the form of the expression to add the value or the sum of them. I know the last 3 fields are contributions.Thus we have the answer of our first question in the script. We could type something there to make it more organazided. For example contribution. 
/Tooks/ {print "$" $3+ $4 + $5}

# Print Bullroarer's contribution.
#Same as the past one. I put the name between // and then I proceed to print their contributions. To add them we write a dollar sign “$“. If we do not add the field separator expression, it will only print a dollar sign for only one field. So, we need to use it as this /{print “$”$3, “$”$4, “$”$5’}. This expression means, to print a string $ for the all this fields. 
/Bullroarer/ {print "$"$3,"$"$4,"$"$5} 

#Prints all those who contributed over $175 for their last contribution.

# I know the last contribution is in field 5. I gonna try to do it like problem number 2 of the second part of the awk assignemnt. Field $5 Represents the last month. If the is a number bigger or equal than 175. It is going to print the value. 

$5>=175{print $5}


