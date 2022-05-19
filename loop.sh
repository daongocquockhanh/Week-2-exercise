echo "Enter a integer number"
read n
a=1
gt=1
echo "Printing numbers:"
while [ $a -le $n ]
do 
echo "$a"
gt=$(($gt * $a))
a=`expr $a + 1`
done
echo "Printing giaithua:"
echo "$gt"


