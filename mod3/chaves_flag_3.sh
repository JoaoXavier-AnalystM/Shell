#!/bin/bash
#
# listauser.sh - Extrai user do /etc/passwd
#
# Site:       
# Autor:        João Xavier
# Manutenção: #########
#
# ------------------------------------------------------------------------ #
#  Ira extrair user do /etc/passwd, havendo possibilidade de colocar em 
#  maiusculo e em ordem alfabética
#
#  Exemplos:
#      $ ./listauser.sh  -s -m
#      Neste exemplo o script ficara em maiúscolo e em ordem alfabetica.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 08/11/2023, João:
#       - Adicionando -h,-v,-s
#   v1.1 08/11/2023, João:
#       - Adicionando -h,-v,-s
# ------------------------------------------------------------------------ #
# Testado em:
#   bash version 5.1.16(1)-release
# ------------------------------------------------------------------------ #

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

        -h - Menu de ajuda
        -v - Versão
        -s - Ordernar a saída
        -m - Coloca em Maiúsculo
"
VERSAO="v1.1"
CHAVE_ORDENA=0
CHAVE_MASC=0
# ------------------------------------------------------------------------ #


# ------------------------------- EXECUÇÃO ----------------------------------------- #

case "$1" in
-h) echo "$MENSAGEM_USO" && exit 0  ;;
-v) echo "$VERSAO" && exit 0        ;;
-s) CHAVE_ORDENA=1                  ;;
-m) CHAVE_MASC=1                    ;;
 *) echo "$USUARIOS"                ;;

esac

[ CHAVE_ORDENA -eq 1 ] && echo "$USUARIOS" | sort
[ CHAVE_MASC -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z]
# ------------------------------------------------------------------------ #
