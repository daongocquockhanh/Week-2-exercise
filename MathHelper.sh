

quadratic(){
echo a=:
read a
echo b=:
read b
echo c=:
read c
f=`echo "-($b)" |bc`
p=`expr 2 \* $a`
if [ $a -ne 0 ]
then
    d=`echo \( \( $b \* $b \) - \( 4 \* $a \* $c \) \) | bc`    
    if [ $d -lt 0 ]
    then
        x=`echo "-($d)" | bc`
        s=`echo "scale=2; sqrt ( $x )" | bc`
        echo The first solution is:
        echo "($f + $s i) / $p"
        echo The second solution is:
        echo "($f - $s i) / $p"
        
    elif [ $d -eq 0 ]
    then
        result=`expr $f / $p`
        echo The solution is: $result
    else
        s=`echo "scale=2; sqrt( $d )" | bc`
        result1=`echo "scale=2; ( $f + $s) / ( $p )"|bc`
        result2=`echo "scale=2; ( $f - $s) / ( $p )"|bc`
        echo The first root is: $result1
        echo The second root is: $result2
    fi
else
    echo invalid funtion.
fi
}

area(){
    echo  " r = " 
	read  r
	pi=3,14
	area=$[$pi*$r*$r]
    echo "Area of circle is : $area "
	
}

checkprime(){
    echo "n= "
	read n
	if [ $n -lt 2 ]
	then
 		echo "$n is not a prime number"
	else
 		s=0
 		for (( i=2;i <= $n;i++ ))
 		do
  			if [ $(($n % $i)) -eq 0 ]
  			then s=$(($s+1))
  			fi  
 		done
 			if [ $s -eq 1 ]
  			then echo "$n is a prime number"
 		else
  			echo "$n is not a prime number"
 		fi
	fi
}

echo -n " Choose what to do: 
            1. Quadratic equation
            2. Area of circle
            3. Check for prime number"
read opt

if [[ "$opt" == "1" ]]
then 
quadratic
elif [[ "$opt" = "2" ]]
then
area
elif [[ "$opt" == "3" ]]
then
checkprime
else 
echo "Invalid option"
fi