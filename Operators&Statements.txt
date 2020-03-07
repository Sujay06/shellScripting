#! /bin/bash

echo Hello World
echo -n  Printing text without new line 
echo -e  "\nprinting  \t with \t tabs \t in \t between\n"

((sum = 10+10))
echo "the sum  is: "$sum

((area = 5*5))
echo  "the area is:" $area

((result = $sum + $area))
echo "the result is: "$result

i=1
while [ $i -le 5 ]
do
echo num= $i
((i++))
done

for ((counter = 1; counter<=10; counter++))
do
echo -n "$counter"
done

echo -e "\n"

for ((counter = 1; counter <= 10; counter ++))
do
echo -n "$counter"
((counter++))
done

echo -e "\n"

for((counter=0;counter<=10;counter++))
do 
echo -n "$counter"
((counter++))
done









