echo "****welcome to flip coin combination**********"
#!/bin/bash
hcount=0
tcount=0
declare -A singlet
declare -A doublet
declare -A triplet
singlet=([H]=0 [T]=0)
doublet=([HH]=0 [HT]=0 [TH]=0 [TT]=0)
triplet=([HHH]=0 [HHT]=0 [HTH]=0 [THH]=0 [TTH]=0 [THT]=0 [HTT]=0 [TTT]=0)
echo "Welcome to FlipCoin Combination Program"

function singletheadTailGenerate(){
echo "------Singlet Combination-------"
	while [ ${singlet[H]} -ne 21 -a ${singlet[H]} -ne 21 ]
	do
		rn=$((RANDOM%2))
       		if [ $rn -eq 0 ]
       		then
			singlet[T]=$((singlet[T] + 1))
       		else
			singlet[H]=$((singlet[H] + 1))
       		fi
	done
