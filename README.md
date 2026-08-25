# bdii-vinicius-moreira
Banco de Dados II

#comentarios
/* comentarios de mais\
de uma linha */

#CRIAR BANCO DE DADOS\
create database (nome do banco de dados)

#ACESSAR UM BANCO DE DADOS\
use (nome do banco de dados)

#CRIAR UMA TABELA\
create table (nome da tabela)

varchar(1 - 255) = ocupa apenas os espaços a qual foi dado\
Exemplo{\
nome varchar(15) not null\
Anteteguemon (12 letras)\
O nome tem 12 letras, os 3 espaços que sobraram vão ser apagados, economizando espaço\
}

char(1 - 255) = ocupa todos os espaços a qual foi dado\
Exemplo{\
nome char(30) not null\
Jane (4 letras)\
O nome tem 4 letras, os 26 espaços que sobraram vão continuar ocupando espaço mesmo vazias\
}

decimal(max - 15,13)

#VERIFICAR A ESTRUTURA DE UMA TABELA\
desc (nome da tabela)

Conjuntos dql\
select (campos) from (tabela)

#INSERT INTO\
insert into (nome da tabela) values (dados)

#INSERÇÃO POR LINHA\
inserto into (nome da tabela) values\
INSERT INTO cad VALUES(1, 'Marcos', 'rh', 'analista', 2, 2184.33);\
INSERT INTO cad VALUES(2, 'Andre', 'rh', null, 3, 2184.33);\
INSERT INTO cad VALUES(3, 'Roberto', 'dp', 'analista', 0, 2000.00);

#INSERÇÃO POR LOTE\
insert into (nome da tabela) values\
(4, 'Carlos', 'ti', 'analista', 2, 2000.00),\
(5, 'Amaral', 'ti', 'DBA', 0, 5000.00),\
(6, 'Souza', 'ti', 'DBA', 1, 5000.00);
