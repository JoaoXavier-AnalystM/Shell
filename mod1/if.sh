#!/bin/bash


VAR=""
VAR2=""


if [[ "$VAR" = "$VAR2" ]]; then
    echo "São iguais."
fi

if [[ "$VAR" = "$VAR2" ]]
then
    echo "São iguais."
fi

if teste "$VAR" = "$VAR2"
then
    echo "São iguais."
fi

if [ "$VAR" = "$VAR2" ] 
then
    echo "São iguais."
fi

[ "$VAR" = "$VAR2" ] && echo "São iguais."