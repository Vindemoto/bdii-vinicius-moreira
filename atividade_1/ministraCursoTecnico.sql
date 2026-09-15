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

insert into instrutores values(1, 'Hellena', 'Rua Muito Real Nº 67', 11 96761-3919, 'Analise de Sistemas');
insert into instrutores values(2, 'Sibílio', 'Rua Mais Real Nº 212', 11 93215-8912, 'Analise de Sistemas');
insert into instrutores values(3, '', 'Rua Existente Nº 90', 11 96761-3919, 'Analise de Sistemas');
insert into instrutores values(4, '', 'Rua Muito Real Nº 78', 11 96761-3919, 'Nutrição');
insert into instrutores values(5, '', 'Rua Muito Real Nº 3234', 11 96761-3919, 'Nutrição');
insert into instrutores values(6, '', 'Rua Muito Real Nº 12', 11 96761-3919, 'Nutrição');
insert into instrutores values(7, 'Maria Hassuni', 'Rua  Nº 39', 11 96761-3919, 'Manutenção de Hardware');
insert into instrutores values(8, '', 'Rua Muito Real Nº 5466', 11 96761-3919, 'Manutenção de Hardware');



select * from curso;
