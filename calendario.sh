#!/bin/bash


###Calendario
dia_da_semana=$(date +%A)

echo "Hoje é $dia_da_semana. O que temos que fazer?"

case $dia_da_semana in
	Sunday)
		 echo "plantão"
	;;
	segunda)
		echo "Reunião"
	;;
	terça)
		echo "aula Arch Linux 20:00 horas"
	;;
	quarta)
		echo "Aula  BootCamp 20:00 horas"
	;;
	quinta)
		echo "aula Arch Linux 20:00 horas"
	;;
	sexta)
		echo "Aula  BootCamp 20:00 horas"
	;;
esac


