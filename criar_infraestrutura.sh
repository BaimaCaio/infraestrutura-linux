#!/bin/bash

echo "Criando Diretórios"
mkdir /publico 
mkdir /adm 
mkdir /ven 
mkdir /sec

echo "Criando Grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários" 
useradd carlos -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd carlos -e 

useradd maria -m -c "Maria da Silva" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd maria -e

useradd joao -m -c "João da Silva" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd joao -e

useradd debora -m -c "Débora da Silva" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -m -c "Sebastiana da Silva" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -m -c "Roberto da Silva" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -m -c "Josefina da Silva" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -m -c "Amanda da Silva" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -m -c "Rogério da Silva" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd rogerio -e

echo "Alterando os grupos dos diretorios. O dono continua sendo o root"
chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec

echo "Alterando as permissões dos diretórios"
chmod 777 /publico

chmod 770 /adm

chmod 770 /sec

chmod 770 /ven

echo "Processo finalizado"
