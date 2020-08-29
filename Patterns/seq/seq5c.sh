#!/bin/bash -x

#Calculate area of 25 such plots in acres

#Area of 1 rectangular plot in square feet
l=60;
b=40;
area=$(( $l*$b ));

#Area of 25 plots
totalarea=$(( $area*25 ));

#Area of 25 plots in acres
total=`echo - | awk -v var=$totalarea '{print var/43560}'`;
echo "Area in Acres = $total";
