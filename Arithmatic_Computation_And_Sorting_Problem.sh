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

result3=$(($a % $b + $c))
echo "Result:" $result3

arithmaticOpeartion[result1]=$result
arithmaticOperation[result2]=$result1
arithmaticOperation[result3]=$result2
arithmaticOpeartion[result4]=$result3

for((i=0; i<=${#arithmaticOperation[@]}; i++))
do
	array[i]=${arithmaticOperation[result$((i+1))]}
	
done
echo "${array[@]}"

function sortDescending()
{ 
     
for (( i=0 ; i < ${#array[@]}; i++ )) 
do
    for (( j=0 ; j < ${#array[@]}; j++ )) 
    do
      if [[ ${array[$j]} -lt  ${array[$i]} ]]
      then
        tmp=${array[$i]}
        numbers[$i]=${array[$j]}
        numbers[$j]=${tmp}
      fi
    done
done

for n in "${array[@]}"
do
    echo "$n"
done

}
sortDescending
