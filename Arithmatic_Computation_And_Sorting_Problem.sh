echo Welcomes to Arithmatic Computation and Sorting
read -p "Enter first input :" a
read -p "Enter second input:" b
read -p "Enter third input :" c

result=$(($a + $b * $c))
echo "Result:" $result

result1=$(($a * $b + $c))
echo "Result:" $result1

result2=$(($c + $a / $b))
echo "Result:" $result2

