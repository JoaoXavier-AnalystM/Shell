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
#   v1.0 08/11/2023, João:
#     Armazenar saída de comandos em variáveis
#      - Criar opções de linha de comando
#      - Trabalhar com Chaves (flags)
#      - Criar case (condicional) para validação dos parâmetros de0 linha de comando
#      - Combinar os parâmetros com o comando shift na variável $1
# ------------------------------------------------------------------------ #
# ------------------------------------------------------------------------ #
# Testado em:
#   bash version 5.1.16(1)-release
# ------------------------------------------------------------------------ #


# ------------------------------- VARIÁVEIS ----------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

      -h - Menu 
      -v - Versão do programa
      -s - Ordernar a saída
      -m - Coloca em maiúsculo
"
VERSAO="v1.0"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
GRUPOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

      -h - Menu de ajuda
      -v - Versão do programa
      -s - Ordernar a saída
      -m - Coloca em maiúsculo
      -u - Grupo do usuário
"
VERSAO="v1.3"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
CHAVE_USUARIO=0
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #
#echo "$GRUPOS"
#cat /etc/group | egrep 1000 | cut -d : -f 1
# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
while test -n "$1"
do
  case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0               ;;
    -v) echo "$VERSAO" && exit 0                     ;;
    -s) CHAVE_ORDENA=1                               ;;
    -m) CHAVE_MAIUSCULO=1                            ;;
    -u) CHAVE_USUARIO=1                              ;;
     *) echo "Opção inválida, valie o -h." && exit 1 ;;
  esac
  shift
done

[ $CHAVE_ORDENA -eq 1 ]    && GRUPOS=$(echo "$GRUPOS" | sort)
[ $CHAVE_MAIUSCULO -eq 1 ] && GRUPOS=$(echo "$GRUPOS" | tr [a-z] [A-Z])
[ $CHAVE_USUARIO -eq 1 ] && GRUPOS=$(cat /etc/group | egrep 1000 | cut -d : -f 1)

echo "$GRUPOS"
# ------------------------------------------------------------------------ #
# ------------------------------------------------------------------------ #