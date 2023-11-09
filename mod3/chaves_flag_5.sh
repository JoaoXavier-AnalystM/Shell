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
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 08/11/2023, Mateus:
#     - Adicionado -s, -h & -v
#   v1.1 08/11/2023, Mateus:
#     - Trocamos IF pelo CASE
#     - Adicionamos basename
#   v1.2 08/11/2023, Mateus:
#     - Adicionado -m
#     - Adicionado 2 flags
#   v1.3 08/11/2023, Mateus:
#     - Adicionado while com shift e teste de variável
#     - Adicionado 2 flags
# ------------------------------------------------------------------------ #
# ------------------------------------------------------------------------ #
# Testado em:
#   bash version 5.1.16(1)-release
# ------------------------------------------------------------------------ #


# ------------------------------- VARIÁVEIS ----------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

      -h - Menu de ajuda
      -v - Versão do programa
      -s - Ordernar a saída
      -m - Coloca em maiúsculo
"
VERSAO="v1.3"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
while test -n "$1"
do
  case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0               ;;
    -v) echo "$VERSAO" && exit 0                     ;;
    -s) CHAVE_ORDENA=1                               ;;
    -m) CHAVE_MAIUSCULO=1                            ;;
     *) echo "Opção inválida, valie o -h." && exit 1 ;;
  esac
  shift
done

[ $CHAVE_ORDENA -eq 1 ]    && USUARIOS=$(echo "$USUARIOS" | sort)
[ $CHAVE_MAIUSCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"
# ------------------------------------------------------------------------ #
