#!/usr/bin/env bash

# Agenda telefonica que puxa informação
#de um banco de dados CSV.
# 1 - Vamos armazenar o usuário ao banco de dados.

#====Variaveis Globais===================#
banco_de_dados="banco-de-dados.txt"
#====cores
vermelho="\033[31;1m"
fecha_cor="\033[m"

#==========TESTES INICIAL================#

[[ ! -e "$banco_de_dados" ]] && > "$banco_de_dados"
(($UID==0)) && { echo "Root não!!"; exit 1 ;}

#==========Funções=======================#
function adicionar(){
	for dados in "Nome" "DDD" "Telefone"; do
			read -p "${dados[@]}: " "${dados[@]}"
			[[ -z "${conferencia}" ]] && { echo -e "${vermelho} ENTRE COM DADO VÁLIDO${fecha_cor}";
adicionar ;}
		done
	done
	echo "O nome é: ${Nome}, ${DDD}"
}


#=========Menu de entrada================#
case $1 in
	-a|--adcionar) adicionar ;; #Chamada função adicionar.
esac

