#!/bin/bash

echo "Removendo users preexistentes..."

userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando users do grupo GRP_ADM..."

useradd carlos -m -c "Carlos" -G GRP_ADM -p $(openssl passwd -6 Senha123) -s /bin/bash
passwd -e carlos
useradd maria -m -c "Maria" -G GRP_ADM -p $(openssl passwd -6 Senha123) -s /bin/bash
passwd -e maria
useradd joao -m -c "Joao" -G GRP_ADM -p $(openssl passwd -6 Senha123) -s /bin/bash
passwd -e joao

echo "Criado users do grupo GRP_VEN"

useradd debora -m -c "Debora" -G GRP_VEN -p $(openssl passwd -6 Senha123) -s /bin/bash
passwd -e debora
useradd sebastiana -m -c "Sebastiana" -G GRP_VEN -p $(openssl passwd -6 Senha123) -s /bin/bash
passwd -e sebastiana
useradd roberto -m -c "Roberto" -G GRP_VEN -p $(openssl passwd -6 Senha123) -s /bin/bash
passwd -e roberto

echo "Criando users do grupo GRP_SEC..."

useradd josefina -m -c "Josefina" -G GRP_SEC -p $(openssl passwd -6 Senha123) -s /bin/bash
passwd -e josefina
useradd amanda -m -c "Amanda" -G GRP_SEC -p $(openssl passwd -6 Senha123) -s /bin/bash
passwd -e amanda
useradd rogerio -m -c "Rogerio" -G GRP_SEC -p $(openssl passwd -6 Senha123) -s /bin/bash
passwd -e rogerio

echo "Criando diretórios..."
mkdir -p /publico
chmod -R 777 /publico
mkdir -p /adm
chown root:GRP_ADM /adm
chmod -R 770 /adm
mkdir -p /ven
chown root:GRP_VEN /ven
chmod -R 770 /ven
mkdir -p /sec
chown root:GRP_SEC /sec
chmod -R 770 /sec

