echo "Enter first integer number"
read a
echo "Enter second integer number"
read b

sum=$(( $a + $b ))
 echo "Sum is: $sum"

minus=$(( $a - $b ))
echo "Minus: $minus"

mul=$(( $a * $b ))
echo "Multiple: $mul"

div=$(( $a / $b ))
echo "Division: $div"

remain=$(( $a % $b ))
echo "Remain: $remain"