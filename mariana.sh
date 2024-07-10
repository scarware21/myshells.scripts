#!/bin/bash


####programa testar  idade Mariana
###############################################################

echo "Digite sua idade Mariana ?" \
                                   \

read idade \



[[ $idade -ge 18 ]] && echo "então pode ir para festa, vaiiii"

[[ $idade -lt 18 ]]  && echo "não pode ir para festa, de jeito nenhum"


echo    " __________________________________________________"

