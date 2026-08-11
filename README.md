# bdii-vinicius-moreira
Banco de Dados II

# comentarios
/* comentarios de mais
de uma linha */

Criar banco de dados
create database -nome do banco de dados-

Acessar um banco de dados
use -nome do banco de dados-

Criar uma tabela
create table -nome da tabela-

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

Verificar a estrutura de uma tabela
desc -nome da tabela-

Conjuntos dql
select -campos- from -tabela-
