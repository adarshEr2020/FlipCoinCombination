#!/bin/bash -x
echo "Welcome to Flip Coin Combination"
heads=0
tails=0
echo "Enter number of flip requried"
read n
for((i=0; i<n; i++))
do
	flip=$(($RANDOM%2))
	if [ $flip -eq 1 ]
	then
		heads=$(($heads+1))
	else
		tails=$(($tails+1))
	fi
done
echo "Number of head win :"$heads
echo "Number od tail win :"$tails
