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
	flipD=$((RANDOM%4))
	case $flipD in
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
	flipT=$((RANDOM%7))
	case $flipT in
		0) hhh=$(($hhh+1))
			;;
		1) hht=$(($hht+1))
			;;
		2) hth=$(($hth+1))
			;;
		3) htt=$(($htt+1))
			;;
		4) thh=$(($thh+1))
			;;
		5) tht=$(($tht+1))
			;;
		6) tth=$(($tth+1))
			;;
		7) ttt=$(($ttt+1))
			;;
		*) echo "something went wrong"
			;;
	esac
done
echo "Number of head win :" $heads
echo "Number of tail win :" $tails
echo "Number of hh combination " $hh
echo "Number of ht combination " $ht
echo "Number of th combination " $th
echo "Number of tt combination " $tt

echo "Number of hhh combination " $hhh
echo "Number of hht combination " $hht
echo "Number of hth combination " $hth
echo "Number of htt combination " $htt

echo "Number of thh combination " $thh
echo "Number of tht combination " $tht
echo "Number of tth combination " $tth
echo "Number of ttt combination " $ttt
