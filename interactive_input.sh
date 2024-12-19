#!/bin/bash

#Script 3: interactive_input.sh

# Prompt the user for two integers
echo "Please enter two integers:"
read num1
read num2

# Verify that the input is integers
while ! [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$ ]]; do
    echo "Invalid input. Please enter two integers:"
    read num1
    read num2
done

# Calculate sum, difference, product, and division
sum=$(($num1 + $num2))
diff=$(($num1 - $num2))
prod=$(($num1 * $num2))
div=$(($num1 / $num2))

# Print out the results
echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $prod"
echo "Division: $div"

