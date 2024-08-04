#!/bin/bash

source /etc/os-release

case $ID in

	debian) 	gpkg="apt" ;;
	arch) 		gpkg="pacman" ;;
	slackware)	gpkg="slackpkg" ;;
	fedora)		gpkg="dnf" ;;
esac


######MENU
echo "1) atualizar lista de repositorio"
echo "2) Remover pacote"
echo "3)  instalando programa/pacote"
read -p "Qual opcao: " opc

case $opc in
	1)
	 	if [[ "$gpkg" = "apt" ]]; then
			$gpkg update
		else
			$gpkg  -Rs
		fi
	;;
	2) read -p "Qual  nome do pacote? " pacote
		[[ -z  "$pacote" ]] && exit 1.
		if [[ "$gpkg" = "apt" ]]; then
			$gpkg  remove  $pacote

		else
			 $gpkg -Rs $pacote
		fi
	;;
	3) read -p "qual nome do programa / pacote deseja instalar?: " pacote
		[[ -z "$pacote" ]] && exit 1.
		if [[ "$gpkg" = "apt" ]]; then
			$gpkg install $pacote
		else
			$gpkp -Rs  $pacote
		fi
	;;
	*) echo "opcao invalida"
	exit 1
	;;
esac

