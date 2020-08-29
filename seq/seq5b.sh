#!/bin/bash -x

#Rectangular Plot of 60 feet * 40 feet in meters
echo "1 foot = 0.3048 metre"; 
l=`echo - | awk '{print 60*0.3048}'`;
b=`echo - | awk '{print 40*0.3048}'`;
echo "Rectangular plot of 60 feet * 40 feet in metres = $l meters * $b meters";
