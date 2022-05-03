#!/bin/bash

# script aula QI

date +%d > .dia_hj.txt
date +%m > .mes_hj.txt
date +%Y > .ano_hj.txt

diaHJ=`cat .dia_hj.txt`
mesHJ=`cat .mes_hj.txt`
anoHJ=`cat .ano_hj.txt`





clear

echo "Informe o seu nome:"

read nome

clear

echo "Informe o ano que você nasceu:"

read ano

clear

echo "Informe o mês que você nasceu:"

read mes

clear

echo "Informe o dia que você nasceu:"

read dia

clear

idade=$(($anoHJ-$ano))

if [ $mesHJ -eq $(($mes)) ] && [ $diaHJ -ge $(($dia+1)) ];
then
	echo $nome", Você tem "$idade" anos!"$mes
	
elif [ $mesHJ -ge $(($mes+1)) ];

then
	echo $nome", Você tem "$idade" anos"

else

	echo $nome", Você tem "$(($idade-1))" anos"
fi
