create database atividadeCadLivro;
use atividadeCadLivro;

create table cadlivros (
    id int not null primary key,
    titulo varchar(255) not null,
    autor char(255) not null,
    idade int,
    ano_publicacao char(10)
);
desc cadlivros;

# 1. Renomear a tabela cadlivros para livros.
rename table cadlivros to livros;
desc livros;

# 2. Alterar a coluna ano_publicacao int.
alter table livros modify column ano_publicacao int;
desc livros;

# 3. Adicionar a coluna genero.
alter table livros add genero varchar(20);
desc livros;

# 4. Adicionar a coluna quant_disponivel.
alter table livros add quant_disponivel int;
desc livros;

# 5. Alterar a coluna titulo para varchar(50).
alter table livros modify column titulo varchar(50);
desc livros;

# 6. Apagar a coluna idade.
alter table livros drop column idade;
desc livros;

# 7. Mudar o nome da coluna ano_publicacao para anopubl.
alter table livros change column ano_publicacao anopubl int;
desc livros;

# 8. Mudar o nome da coluna quant_disponivel para quantdisp.
alter table livros change column quant_disponivel quantdisp int;
desc livros;

# 9. Alterar a coluna anopubl para not null.
alter table livros modify column anopubl int not null;
desc livros;

# 10. Adicionar a coluna editora varchar(50) not null.
alter table livros add editora varchar(50) not null;
desc livros;