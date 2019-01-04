#!/bin/bash

# Iremos verificar se o container está rodando, caso esteja seu ID será
# salvo na variável RESULT
RESULT=$(docker ps  --filter name=nginx --filter status=running -q)

# Caso a variável RESULT seja vazia, ou seja, não exista um container rodando,
# o script irá reiniciar o container e salvar o log disso dentro de um arquivo
# criado especificamente para logs, localizado num subdiretório junto do arquivo
# de script.
if [ "$RESULT" = "" ] ; then
	echo "Container parado." 2>&1 1>>logs/docker.log
	echo "Reiniciando Container: $(date)" 2>&1 1>>logs/docker.log
	docker start nginx
fi

# Caso a variável RESULT seja diferente de vazia, um container já está
# rodando na máquina, então nada precisará ser feito.
