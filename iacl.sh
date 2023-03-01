#!/bin/bash

echo "Criando diretórios.."



mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usúarios.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários.."

useradd carlos -c "Carlos usuario" -m -s /bin/bash -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria usuario" -m -s /bin/bash -G GRP_ADM
passwd maria -e

useradd joao -c "Joao usuario" -m -s /bin/bash -G GRP_ADM
passwd joao -e

useradd debora -c "Debora usuario" -m -s /bin/bash -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana usuario" -m -s /bin/bash -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto usuario" -m -s /bin/bash -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina usuario" -m  -s /bin/bash -G GRP_SEC
passwd josefina -e


useradd amanda -c "Amanda usuario" -m -s /bin/bash -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio usuario" -m -s /bin/bash -G GRP_SEC
passwd rogerio -e

echo "Especificando permissões dos diretórios.."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /ven
chmod 770 /adm
chmod 770 /sec

echo "Fim.."
