-- Criação da Database no Hive
CREATE DATABASE igti;

-- Criação da tabela dos dados brutos no Hive
CREATE EXTERNAL TABLE igti.employees (emp_no int, first_name string, last_name string, gender string)  STORED AS PARQUET LOCATION '/user/root/employees';

SELECT * FROM igti.employees limit 10;

-- Criação da Tabela pós processamento
CREATE EXTERNAL TABLE igti.employees_aggregate (gender string, amount bigint) STORED AS PARQUET LOCATION '/user/root/processing-zone/employees';

SELECT * FROM igti.employees_aggregate;