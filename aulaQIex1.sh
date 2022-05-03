#!/bin/bash

# exercício shell scripting

#Adicionar novo usuário 
AdUsuario(){

	echo 'Informe o nome do novo usuário:'
	read newUser
	adduser $newUser
	
}
#Adicionar novo grupo
AdGrupo(){
	echo 'Informe o nome do novo grupo'
	read newGroup
	addgroup $newGroup
}
#Adicionar o usuário ao grupo
UserToGroup(){
	
	echo 'Informe  usuário a ser adicionado:'
	read userTo
	echo 'Informe o grupo destino do usuário:'
	read destGroup

	adduser $userTo $destGroup

}
#Remover usuário
RemoveOffGroup(){
	echo 'Informe  usuário a ser removido:'
	read userTo
	echo 'Informe de qual grupo remover o usuário:'
	read fromGroup

	deluser $userTo $fromGroup
}
#Remover grupo
DeleteGroup(){
	echo 'Informe o grupo a ser removido:'
	read groupToDel
	delgroup groupToDel
}
#Remover usuário e pasta
DeleteUser(){
	echo 'Informe o usuário a ser removido:'
	read userToDel
	deluser --remove-home $userToDel
}
#alterar senha de usuário
ChangePw(){
	echo 'Informe o usuário a ser trocada a senha:'
	read $userToChPw
	passwd $userToChPw
}
#Bloquear usuário
BlockUsr(){
	echo 'Informe o usuário a ser bloqueado:'
	read userToBlock
	usermod -L $userToBlock

}
#Desbloquear usuário
UnblockUser(){
	echo 'Informe o usuário a ser desbloqueado:'
	read userToUnblock
	usermod -L $userToUnblock
}
#menu
while [ $res -ne '10' ] do
	echo 'Selecione a opção desejada:'
	echo '[1]-Adicionar usuário'
	echo '[2]-Adicionar grupo'
	echo '[3]-Adicionar usuário a grupo'
	echo '[4]- Remover usuário do grupo'
	echo '[5]- Remover grupo'
	echo '[6]- Remover usuário do sistema'
	echo '[7]- Alterar senha de usuário'
	echo '[8]- Bloquear usuário'
	echo '[9]- Desbloquear usuário'
	echo '[10]- Sair'


	read res

done

if [ $res = '1' ];then
	AdUsuario
elif [ $res = '2' ];then
	AdGrupo
elif [ $res = '3' ];then
	UserToGroup
elif [ $res = '4' ];then
	RemoveOffGroup
elif [ $res = '5' ];then
	DeleteGroup
elif [ $res = '6' ];then
	DeleteUser
elif [ $res = '7' ];then
	ChangePw
elif [ $res = '8' ];then
	BlockUsr
elif [ $res = '9' ];then
	UnblockUser
else
	echo 'Opção inválida'
	echo 'Programa finalizado'
fi


