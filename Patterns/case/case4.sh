#!/bin/bash -x

#program that takes user inputs and does unit conversion of different length units
read -p "Enter Unit: " unit;
echo "Enter Number for Conversion";
echo "1 for Feet to Inch";
echo "2 for Feet to Meter";
echo "3 for Inch to Feet";
echo "4 for Meter to Feet";
read -p "Enter your choice: " choice;
case $choice in
1)
        result=`echo - | awk -v var=$unit '{print var*12}'`
        echo "$result inches"
        ;;
2)
        result=`echo - | awk -v var=$unit '{print var*0.305}'`
        echo "$result meters"
        ;;
3)
        result=`echo - | awk -v var=$unit '{print var/12}'`
        echo "$result feet"
        ;;
4)
        result=`echo - | awk -v var=$unit '{print var/0.305}'`
        echo "$result feet"
        ;;
*)
        echo "Invalid choice"
        ;;
esac
