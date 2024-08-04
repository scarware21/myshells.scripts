#!/bin/bash


echo "Robozinho do futuro...."
read -p "fale alguma coisa: " usuario_entrada


case $usuario_entrada in
	oi|ola|hi)
		echo "Oi tudo bem como vai...?"
	;;
	"tudo bem"*)
	   echo "Tudo bem e com vc?"
	;;
esac


