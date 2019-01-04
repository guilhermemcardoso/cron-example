# Exemplo de um cronjob

Utilizando crontab para subir automaticamente um container docker caso ele tenha caído ao reiniciar a máquina

Para instalar o crontab, digite o comando:

```
sudo apt-get update
sudo apt-get install cron
```

Para editar o arquivo de configurações do crontab, digite no terminal:
```
crontab -e
```

Dentro do arquivo de configurações, podemos adicionar um novo *job*:

```
* * * * * /path/script.sh
```

Cada asterisco, significa respectivamente:

* minuto
* hora
* dia
* mes
* dia-da-semana
* linha-de-comando

E o resto da linha digitada seria o comando a ser executado dentro do intervalo de tempo. No caso, estaremos executando um *shell script*.

Este script irá verificar se um container específico está rodando na máquina e, caso não esteja, irá reiniciar o container em questão.
