# store day, month and year
dd=0
mm=0
yy=0
ff=0
 
# get day, month and year
echo -n "Enter day (dd) : "
read dd
 
echo -n "Enter month (mm) : "
read mm
 
echo -n "Enter year (yyyy) : "
read yy
 
# if month is negative (<0) or greater than 12 
if [ $dd -le 0 -o $dd -gt 31 ];
then
    echo "$dd day is invalid"
    exit 1
fi

if [ $mm -le 0 -o $mm -gt 12 ];
then
    echo "$mm is invalid month."
    exit 2
fi
 
# find out if it is a leap year or not
 
if [ $mm -eq 2 ]; # if it is feb month then only check of leap year
then
	if [ $dd -gt 29 ] ; then
	   echo "$dd day is invalid"
       exit 3
	fi
fi


 
# if no error that means date dd/mm/yyyy is valid one
echo "$dd/$mm/$yy is a vaild date"

echo "List of food:
        1. Pizza
        2. Pasta
        3. Sandwich "
echo -n "Enter number of your food (ff) : "
read ff
if [ $ff -le 0 -o $ff -gt 3 ];
then
    echo "Out of list"
    exit 4
fi
echo " Enjoy your food"
