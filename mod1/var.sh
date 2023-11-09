#!/bin/bash

NOME="Joao Xavier"

echo $NOME

NUM_1=56
NUM_2=25

TOTAL=$(($NUM_1+$NUM_2))


echo $TOTAL


SAIDA_CAT="$(cat /etc/passwd | grep joaox)" #Entre "" por ser uma string

echo "$SAIDA_CAT"


echo "----------------------------" 

echo "Parametro 1: $1"
echo "Parametro 2: $2"


echo "Todos os parametros: $*" #lista todos os parametros

echo "Counts os parametros: $#" #realiza um count

echo "Saida ultimo comando: $?" #saida ultimo comando 0 = OK / 1 = ERRO

echo "PID: $$" #num processo 

echo $0

