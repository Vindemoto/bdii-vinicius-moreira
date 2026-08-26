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
delete from curso;

select * from curso;
