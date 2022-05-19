op=0
num1=0
num2=0
result=0
read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo -n " Choose what to do with 2 numbers: 
            1. Plus (+) 
            2. Minus (-) - larger minus smaller
            3. Multiple (*) 
            4. Divide (/) "
read op

if [[ $op = 1 ]]
then
    result=`expr $num2 + $num1`
    echo  "Sum of the 2 numbers is : $result "
    


elif [[ $op = 2 ]]
then
    result=`expr $num2 - $num1`
    echo "Result of the 2 numbers is : $result "

    
elif [[ $op = 3 ]]
then
    result=`expr $num2 \* $num1`
    echo  "Result of the 2 numbers is : $result "
    
elif [[ $op = 4 ]] 
then
    result=`expr $num1 % $num2`
    echo  "Result of the 2 numbers is : $result "
    
else
    echo  "invalid option "
fi 
