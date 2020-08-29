 #!/bin/bash -x
 
 #program to compute Factors of a number N using prime factorisation method.

read -p "Enter number: " n;
for (( i=2; i<=$n; i++ ));do
    while [ $(($n%$i)) == 0 ];do
        echo $i
        n=$(($n/$i))
    done
done
