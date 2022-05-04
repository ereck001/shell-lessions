#!/bin/bash

# exercício shell scripting

#Alterar permissões de usuário 
ChangeMod(){

    echo 'Informe o diretório ou arquivo a serem alteradas as permissões:'
	read targetToCh

    echo 'Permissões para o dono do diretóio ou arquivo:'
    echo 'Deseja que o dono do diretóio ou arquivo tenha permissão de leitura? (s / n)'
    read readPerO

    if [ readPerO = 's' ];then
        totRead = 4
    elif [ readPerO = 'n' ];then
        totRead = 0
    else
        echo 'opção inválida'
    fi

    echo 'Permissões para o grupo do dono do diretóio ou arquivo:'
    echo 'Deseja que o grupo tenha permissão de leitura? (s / n)'
    read readPerG

    if [ readPerG = 's' ];then
        totRead = 4
    elif [ readPerG = 'n' ];then
        totRead = 0
    else
        echo 'opção inválida'
    fi

    echo 'Permissões para todos os usuários:'
    echo 'Deseja que todos tenham permissão de leitura? (s / n)'
    read readPerA

    if [ readPerA = 's' ];then
        totRead = 4
    elif [ readPerA = 'n' ];then
        totRead = 0
    else
        echo 'opção inválida'
    fi

    


	
}
#Compactar arquivo
FileZ(){
    echo 'Informe o caminho do diretório a ser compactado:'
    read dirPathC
    echo 'Digite [1] para gzip e [2] para bz2:'
    read compTipe

    if [ $compTipe -eq 1 ];then
        tar -czvf $dirPathC'.tar.gz' $dirPathC
    elif [$compTipe -eq 2];then
        tar -cjvf $dirPathC'.tar.bz2' $dirPathC
    else
        echo 'opção inválida'
    fi

}
#Descompactar arquivo
FileUz(){
    echo 'Informe o caminho do arquivo a ser descompactado:'
    read dirPathX
    echo 'Digite [1] para gzip e [2] para bz2:'
    read compTipeX

    if [ $compTipeX -eq 1 ];then
        tar -xzvf $dirPathX'.tar.gz' 
    elif [$compTipeX -eq 2];then
        tar -xjvf $dirPathX'.tar.bz2' 
    else
        echo 'opção inválida'
    fi

}
#Montar dispositivo
DevMount(){
	echo 'Informe o caminho do dispositivo a ser montado:'
    read devToM
    echo 'Informe o caminho de onde montar o dispositivo:'
    read whereToM
    echo 'Digite [1] para vfat ou [2] para ntfs:'
    read sisTipe
    if [ $sisTipe -eq 1 ];then
        mount - t vfat $devToM $sisTipe 
    elif [$sisTipe -eq 2];then
        mount - t ntfs $devToM $sisTipe  
    else
        echo 'opção inválida'
    fi
}
#Desmontar dispositivo
DevUmount(){
	echo 'Informe o caminho do dispositivo a ser desmontado:'
    read devToU    
    umount $devToU
}
#Atualizar repositório
RepUpdate(){
	apt update
}
#Atualizar sistema
SisUpdate(){
	apt upgrade
}
# Instalar pacote
PkgInstall(){
	echo 'Informe o nome do pacote:'
    read pkgNameI
    apt install $pkgNameI

}
#Remover pacote
PkgUninstall(){
	echo 'Informe o nome do pacote:'
    read pkgNameU
    apt autoremove $pkgNameU
}
#menu

res=0
while [ $res -ne 10 ]; do
	echo 'Selecione a opção desejada:';
	echo '[1]-Alterar permissões de usuário';
	echo '[2]-Compactar arquivo';
	echo '[3]-Descompactar arquivo';
	echo '[4]- Montar dispositivo';
	echo '[5]- Desmontar dispositivo';
	echo '[6]- Atualizar repositório';
	echo '[7]- Atualizar sistema';
	echo '[8]- Instalar pacote';
	echo '[9]- Remover pacote';
	echo '[0]- Sair';


	read res



	if [ $res = '1' ];then
		ChangeMod
	elif [ $res = '2' ];then
		FileZ
	elif [ $res = '3' ];then
		FileUz
	elif [ $res = '4' ];then
		DevMount
	elif [ $res = '5' ];then
		DevUmount
	elif [ $res = '6' ];then
		RepUpdate
	elif [ $res = '7' ];then
		SisUpdate
	elif [ $res = '8' ];then
		PkgInstall
	elif [ $res = '9' ];then
		PkgUninstall
    elif [ $res = '0' ];then
		exit
	else
		echo 'Opção inválida'
		echo 'Programa finalizado'
	fi

done
