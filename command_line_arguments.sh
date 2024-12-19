#!/bin/bash

# Check for two command line arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 num1 num2"
    exit 1
fi

# Get the two numbers
num1=$1
num2=$2

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

