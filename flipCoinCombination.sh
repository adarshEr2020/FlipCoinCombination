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
	flipp=$((RANDOM%4))
	case $flipp in
		0) hh=$(($hh+1))
			;;
		1) ht=$(($ht+1))
			;;
		2) th=$(($th+1))
			;;
		3) tt=$(($tt+1))
			;;
		*) echo "went wrong"
			;;
	esac
done
echo "Number of head win :" $heads
echo "Number of tail win :" $tails
echo "Number of hh combination " $hh
echo "Number of ht combination " $ht
echo "Number of th combination " $th
echo "Number of tt combination " $tt

