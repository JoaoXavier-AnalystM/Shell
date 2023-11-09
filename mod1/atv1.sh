#!/bin/bash

if [ "$#" -lt 1 ]; then #Validação se foi passado parâmetro
    echo "O parâmetro não foi informado."
    exit 1
fi

parametro="$1"

if [ "$parametro" -gt 10 ]; then #Execução se valor maior que 10
    echo "Script: $0"
    echo "PID da execução: $$"
else
    echo "O primeiro parâmetro não é maior que 10."
fi
