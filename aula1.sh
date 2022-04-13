#!/bin/bash

#echo 'digite o seu nome:'

#read nome
#res='ereck'

#if [ $nome == $res ];
#then 
#echo 'bem vindo, '$nome
#else
#echo 'usuario desconhecido!'
#fi
vararray=('tomate' 'cenoura' 'laranja' 'cebola')

echo "${vararray[*]}"

vararray[1]='alho'

echo "${vararray[*]}"

unset vararray[2]

echo "${vararray[*]}"

vararray[4]='pimentao'

echo "${vararray[*]}"