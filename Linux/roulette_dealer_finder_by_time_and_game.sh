case $4 in
	Blackjack) grep $1 $3*| grep $2 | awk '{print $1,$2,$3,$4}';;
	Roulette) grep $1 $3*| grep $2 | awk '{print $1,$2,$5,$6}';;
	TexasHoldEM)grep $1 $3*| grep $2 | awk '{print $1,$2,$7,$8}';;
esac


