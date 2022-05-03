#!/bin/bash

# exercício shell scripting

#Adicionar novo usuário 
adUsuario(){

	echo 'Informe o nome do novo usuário:'
	read newUser
	adduser $newUser
	
}
#Adicionar novo grupo
adGrupo(){
	echo 'Informe o nome do novo grupo'
	read newGroup
	addgroup $newGroup
}
#Adicionar o usuário ao grupo
userToGroup(){
	
	echo 'Informe  usuário a ser adicionado:'
	read userTo
	echo 'Informe o grupo destino do usuário:'
	read destGroup

	adduser $userTo $destGroup

}
#menu
echo 'Selecione a opção desejada:'
echo '[1]-Adicionar usuário'
echo '[2]-Adicionar grupo'
echo '[3]-Adicionar usuário a grupo'
echo '[4]- Sair'

read res

if [ $res = '1' ];then
	adUsuario
elif [ $res = '2' ];then
	adGrupo
elif [ $res = '3' ];then
	userToGroup
elif [ $res = '4' ];then
	exit
else
	echo 'Opção inválida'
	echo 'Programa finalizado'
	

fi

