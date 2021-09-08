-- Conectando ao container do Mysql
docker exec -it database bash

-- Conexão com a CLI do Mysql
mysql -u root -p

-- Coloque a senha para autenticar
secret

-- Exibindo todas as databases
show databases;

-- Selecionando database do exercício
use employees;

-- Visualizando a amostra dos dados
select * from employees limit 10;