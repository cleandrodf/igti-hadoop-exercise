-- Conectando ao container do sqoop
docker exec -it namenode bash

-- Importando tabela de employees do MySQL
sqoop import --connect jdbc:mysql://database/employees \
--username "root" \
--password "secret" \
--table employees \
--as-parquetfile