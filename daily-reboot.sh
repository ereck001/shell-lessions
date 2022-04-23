#!/bin/bash
date +%H > hora.txt
hora=`cat hora.txt`

testehorario(){
    if[ $hora = 16 ];
    then
    echo 'reiniciando...'
    fi
}

for i in {1..24}
do
testehorario
sleep 5
done