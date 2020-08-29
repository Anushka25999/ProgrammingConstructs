#!/bin/bash -x
echo "Enter 1 for conversion from degC to degF";
echo "Enter 2 for conversion from degF to degC";
read -p "Enter : " ch;

#function to convert degC to degF
function degF() {
	F=`echo - | awk -v c=$C '{print (c*9/5)+32}'`;
	echo "$F deg F";
	}

#function to convert degF to degC
function degC() {
	C=`echo - | awk -v f=$F '{print (f-32)*5/9}'`;
	echo "$C deg C";
	}

case $ch in
	1)
		read -p "Enter unit to be converted between 0 to 100: " C;
		degF;
		;;
	2)
		read -p "Enter unit to be converted between 32 to 212: " F;
		degC;
		;;
	*)
		echo "Invalid choice";
		;;
esac
