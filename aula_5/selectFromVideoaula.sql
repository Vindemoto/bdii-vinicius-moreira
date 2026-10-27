CREATE DATABASE IF NOT EXISTS empresa_db;
USE empresa_db;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(50),
    idade INT,
    desconto DECIMAL(5,2),
    telefone VARCHAR(20)
);

INSERT INTO clientes (nome, cidade, idade, desconto, telefone) VALUES
('Ana Silva', 'São Paulo', 28, 15.00, '11999991111'),
('Bruno Santos', 'Rio de Janeiro', 35, 10.00, '21999992222'),
('Carla Souza', 'Belo Horizonte', 22, 0.00, NULL),
('Daniel Oliveira', 'São Paulo', 42, 20.00, '11999993333'),
('Eduardo Lima', 'Curitiba', 19, 5.00, NULL),
('Fernanda Costa', 'Porto Alegre', 31, 12.50, '51999994444'),
('Gabriel Alves', 'São Paulo', 50, 0.00, '11999995555'),
('Helena Rocha', 'Salvador', 25, 8.00, NULL);

select * from clientes;

# Busca clientes com idade entre 20 e 35 anos, ordenando do mais novo para o mais velho
select nome, idade, cidade
from clientes
where idade between 20 and 35
order by cidade desc;

# Busca clientes que moram em São Paulo, Rio de Janeiro ou Curitiba
select nome, cidade
from clientes
where cidade in ('São Paulo', 'Rio de Janeiro', 'Curitiba')
order by cidade;

# Busca clientes que não possuem o número de telefone cadastrado
select nome, cidade, telefone
from clientes
where telefone is null;

# Busca clientes que não moram em São Paulo
select nome, cidade
from clientes
where not cidade = 'São Paulo'
order by nome;

# Busca clientes cujo nome começa com a letra 'A' ou contém o sobrenome 'Costa'
select nome, cidade
from clientes
where nome like 'A%' or nome like '%Costa%';

/* Têm idade entre 20 e 45 anos (BETWEEN)
Moram  em São Paulo ou Rio de Janeiro (IN)
Possuem telefone cadastrado (NOT + NOT NULL)
O nome começa com A, B, C, D ou E (LIKE)
Ordenados pelo desconto do maior para o menor (ORDER BY) */
select nome, cidade, idade, desconto, telefone
from clientes
where idade between 20 and 45
 and cidade in ('São Paulo', 'Rio de Janeiro')
 and telefone is not null
 and (nome like 'A%' or nome like 'B%' or nome like 'C%' or nome like 'D%' or nome like 'E%')
order by desconto desc;