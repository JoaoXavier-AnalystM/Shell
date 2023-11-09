#!/usr/bin/env bash

#

# atv3.sh - Breve descrição

#

# Site:       https://seusite.com.br

# Autor:      Joao X

# Manutenção: Matheus

#

# ------------------------------------------------------------------------ #

#  Aqui você deve utilizar uma descrição mais detalhada sobre o seu programa,

#  explicando a forma de utilizar.

#

#  Exemplos:

#      $ ./atv3.sh -d 1

#      Neste exemplo o script será executado no modo debug nível 1.

# ------------------------------------------------------------------------ #

# Histórico:


# ------------------------------------------------------------------------ #

# Testado em:

#   bash 5.1.16(1)-release

# ------------------------------------------------------------------------ #

# Agradecimentos:

#


# ------------------------------------------------------------------------ #



# ------------------------------- VARIÁVEIS ----------------------------------------- #

COMEC0=0 # Número inicial

FIM=100 # Vai até?

# ------------------------------------------------------------------------ #



# ------------------------------- TESTES ----------------------------------------- #

# Começo maior que o fim? Inválido!

[ $COMECO -ge $FIM ] && exit 1

# ------------------------------------------------------------------------ #



# ------------------------------- EXECUÇÃO ----------------------------------------- #

for i in $(seq $COMECO $FIM) # Repete 100 vezes

do

for j in $(seq $i $FIM) # Repete de N vezes até 100 vezes

do

printf "*"

done

printf "\n" # Quebra linha

done

# ------------------------------------------------------------------------ #