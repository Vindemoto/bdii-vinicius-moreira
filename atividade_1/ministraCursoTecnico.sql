NÃO CONCLUÍDU!!!

create database ministraCursoTecnico;

use ministraCursoTecnico;

#comando ddl
create table curso (
	codigo int not null primary key,
    nome varchar(40) not null,
    preco decimal(10,2),
    duracao varchar(20)
    );
desc curso;

#comando ddl
create table instrutores (
	codigo int not null primary key,
    nome varchar(40) not null,
    endereco varchar(50) not null, 
    telefone int not null,
    modulos int not null
    );
desc instrutores;

#comando ddl
create table alunos (
	codigo int not null primary key,
    nome varchar(40) not null,
    endereco varchar(50) not null,
    telefone int not null,
    cursos int
    );
desc alunos;

#comando dql, inserindo valores na tabela cursos
insert into curso values(1, 'Analise de Sistemas', '149.99', '10 noites');
insert into curso values(2, 'Nutrição', '67.99', '5 dias');
insert into curso values(3, 'Administração', '99.99', '4 sábados');
insert into curso values(4, 'Manutenção de Hardware', '119.99', '10 noites');

insert into instrutores values(1, 'Hellena', 'Rua Muito Real Nº 67', 11 967613919, 'Analise de Sistemas');
insert into instrutores values(2, 'Sibílio', 'Rua Mais Real Nº 212', 11 932158912, 'Analise de Sistemas');
insert into instrutores values(3, 'Abraão', 'Rua Existente Nº 90', 11 967613919, 'Analise de Sistemas');
insert into instrutores values(4, 'Eva', 'Rua Muito Real Nº 78', 11 967613919, 'Nutrição');
insert into instrutores values(5, 'Alessandro', 'Rua Muito Real Nº 3234', 11 967613919, 'Nutrição');
insert into instrutores values(6, 'Ruan', 'Rua Muito Real Nº 12', 11 967613919, 'Nutrição');
insert into instrutores values(7, 'Maria Hassuni', 'Rua  Nº 39', 11 967613919, 'Manutenção de Hardware');
insert into instrutores values(8, 'Chico Lopes', 'Rua Muito Real Nº 5466', 11 967613919, 'Manutenção de Hardware');

insert alunos values
(1, 'Carlito', 'Rua Dali Nº 40', 964521928, 'Analise de Sistemas'),
(2, 'Lindsey', 'Rua Dali Nº 421', 912219890, 'Nutrição'),
(3, 'Wesley', 'Rua Existente Nº 107', 985743252, 'Manutenção de Hardware'),
(4, 'Pedro', 'Rua Muito Real Nº 2019', 905743819, 'Nutrição'),
(5, 'Fernando', 'Rua Dali Nº 21', 984638121, 'Analise de Sistemas'),
(6, 'Vitoria', 'Rua Existente Nº 12', 978646746, 'Analise de Sistemas'),
(7, 'Helen', 'Rua Existente Nº 578', 934210932, 'Nutrição'),
(8, 'Joana', 'Rua Muito Real Nº 82', 943291921, 'Analise de Sistemas');

select * from curso;
select * from instrutores;
select * from alunos;
