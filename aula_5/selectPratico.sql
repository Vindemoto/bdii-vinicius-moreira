create database loja_virtual;
use loja_virtual;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT,
    fornecedor VARCHAR(100)
);

INSERT INTO produtos
(nome, categoria, preco, estoque, fornecedor) VALUES
('Notebook', 'Informática', 3500.00, 10, 'TechBrasil'),
('Mouse', 'Informática', 80.00, 50, 'InfoMax'),
('Teclado', 'Informática', 150.00, 30, 'InfoMax'),
('Cadeira', 'Móveis', 650.00, 8, 'Moveis Silva'),
('Mesa', 'Móveis', 900.00, 5, 'Moveis Silva'),
('Monitor', 'Informática', 1200.00, 12, 'TechBrasil'),
('Impressora', 'Periféricos', 750.00, 7, 'PrintMais'),
('Webcam', 'Periféricos', 180.00, 0, 'PrintMais'),
('Headset', 'Periféricos', 250.00, 15, NULL),
('Smartphone', 'Telefonia', 2200.00, 20, 'TechBrasil');

select * from produtos;

# Operador IN — Exiba os produtos das categorias Informática e Periféricos.
select nome, categoria
from produtos
where categoria in ('Informática', 'Periféricos');

# Operador BETWEEN — Exiba os produtos com preços entre R$ 200,00 e R$ 1.000,00, incluindo os limites.
select nome, preco, estoque
from produtos
where preco between 200.00 and 1000.00;

# Operador LIKE — Exiba os produtos cujos nomes começam com a letra M.
select nome, categoria, preco, estoque, fornecedor
from produtos
where nome like 'M%';

# Operador LIKE com % — Exiba os produtos cujos nomes terminam com a letra E.
select nome, categoria, preco, estoque, fornecedor
from produtos
where nome like '%E';

# Operador IS NULL — Exiba os produtos que não possuem fornecedor cadastrado.
select nome, categoria, fornecedor
from produtos
where fornecedor is null;

# Operador IS NOT NULL — Exiba os produtos que possuem fornecedor cadastrado.
select nome, categoria, fornecedor
from produtos
where fornecedor is not null;

# Operador AND — Exiba os produtos da categoria Informática com preço superior a R$ 100,00.
select nome, categoria, preco
from produtos
where categoria in ('Informática')
 and preco > 100.00;

# Operador OR — Exiba os produtos da categoria Móveis ou Telefonia.
select nome, categoria, preco
from produtos
where categoria in ('Móveis')
 or categoria in ('Telefonia');

# Operador NOT IN — Exiba os produtos que não pertencem às categorias Informática e Telefonia.
select nome, categoria, preco
from produtos
where categoria not in ('Informática', 'Telefonia');

# Operadores combinados — Exiba os produtos com estoque maior que zero e preço entre R$ 100,00 e R$ 1.000,00.
select nome, categoria, estoque, preco
from produtos
where estoque > 0
 and preco between 100.00 and 1000.00;