#!/bin/bash

echo "Criando os diretórios ..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Inserindo os grupos de usuários ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuários ..."

useradd carlos -m -c "Carlos Silva" -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_ADM
useradd maria -m -c "Maria Silva" -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_ADM
useradd joao -m -c "Joao Silva" -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_ADM

useradd debora -m -c "Debora Souza" -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_VEN
useradd sebastiao -m -c "Sebastiao Souza" -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_VEN
useradd roberto -m -c "Roberto Souza" -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_VEN

useradd joana -m -c "Joana Almeida" -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_SEC
useradd ana -m -c "Ana Almeida" -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_SEC
useradd jose -m -c "Jose Almeida" -s /bin/bash -p $(openssl passwd -crypt pass123) -G GRP_SEC

echo "Permissões dos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public
