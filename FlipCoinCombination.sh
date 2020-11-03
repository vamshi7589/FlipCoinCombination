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
echo "${singlet[@]} | total = $((singlet[H] + singlet[T]))"
echo "H % = $(( (singlet[H] * 100 )/ (singlet[H] + singlet[T]) ))"
echo "T % = $(( (singlet[T] * 100 )/ (singlet[H] + singlet[T]) ))"
}

function doubletheadTailGenerate(){
echo "------Doublet Combination-------"
	while [ ${doublet[HH]} -ne 21 -a ${doublet[HT]} -ne 21 -a ${doublet[TH]} -ne 21 -a ${doublet[TT]} -ne 21 ]
	do
		rn1=$((RANDOM%2))
		rn2=$((RANDOM%2))
       		if [ $rn1 -eq 0 -a $rn2 -eq 0 ]
       		then
			doublet[TT]=$((doublet[TT] + 1))
       		elif [ $rn1 -eq 0 -a $rn2 -eq 1 ]
		then
			doublet[TH]=$((doublet[TH] + 1))
       		elif [ $rn1 -eq 1 -a $rn2 -eq 0 ]
		then
			doublet[HT]=$((doublet[HT] + 1))
       		elif [ $rn1 -eq 1 -a $rn2 -eq 1 ]
		then
			doublet[HH]=$((doublet[HH] + 1))
       		fi
	done
dtotal=$((doublet[HH] + doublet[HT] + doublet[TH] + doublet[TT]))
echo "${doublet[@]} | total = $dtotal"
echo "HH % = $(( (${doublet[HH]} * 100 ) / $dtotal ))"
echo "HT % = $(( (${doublet[HT]} * 100 ) / $dtotal))"
echo "TH % = $(( (${doublet[TH]} * 100 ) / $dtotal))"
echo "TT % = $(( (${doublet[TT]} * 100 ) / $dtotal))"
}
