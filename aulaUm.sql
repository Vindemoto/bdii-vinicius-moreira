create database introducao;
use introducao;
create table cadastro(
idcad int not null primary key,
nome varchar(50) not null,
depto char(4) not null,
funcao char(20),
filhos int,
salario decimal(10,2));