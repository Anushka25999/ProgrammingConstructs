#!/bin/bash -x
echo "1 ft = 12 in";
var=`echo - | awk '{print 42.0/12.0}'`;
echo "42 in = $var ft";
