-- Conectando ao container do sqoop
docker exec -it namenode bash

-- Importando tabela de employees do MySQL
sqoop import --connect jdbc:mysql://database/employees \
--username "root" \
--password "secret" \
--table employees \
--target-dir /user/root/raw_zone/employees -m 1 \
--as-parquetfile