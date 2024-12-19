#!/bin/bash

# Define the arithmetic function
arithmetic() {
    num1=$1
    num2=$2

    sum=$(($num1 + $num2))
    diff=$(($num1 - $num2))
    prod=$(($num1 * $num2))
    div=$(($num1 / $num2))

    echo "Sum: $sum"
    echo "Difference: $diff"
    echo "Product: $prod"
    echo "Division: $div"
}

# Check for command line arguments
if [ $# -eq 2 ]; then
    arithmetic $1 $2
else
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

    arithmetic $num1 $num2
fi

