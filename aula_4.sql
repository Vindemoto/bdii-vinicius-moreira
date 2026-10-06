CREATE DATABASE gestao_ecommerce;
use gestao_ecommerce;

CREATE TABLE produtos (
	  id INT PRIMARY KEY,
    nome VARCHAR(50),
    categoria VARCHAR(30),
    preco DECIMAL(10, 2),
    estoque INT,
    status VARCHAR(20)
);
INSERT INTO produtos (id, nome, categoria, preco, estoque, status) VALUES
(1, 'Smartphone X', 'Eletrônicos', 2500.00, 15, 'Ativo'),
(2, 'Notebook Gamer', 'Informática', 5500.00, 5, 'Ativo'),
(3, 'Mouse Sem Fio', 'Acessórios', 80.00, 50, 'Ativo'),
(4, 'Teclado Mecânico', 'Acessórios', 250.00, 0, 'Inativo'),
(5, 'Monitor 27"', 'Informática', 1200.00, 8, 'Ativo'),
(6, 'Fone Bluetooth Descontinuado', 'Acessórios', 150.00, 0, 'Descontinuado'),
(7, 'Cabo HDMI Antigo', 'Acessórios', 20.00, 0, 'Descontinuado');

SELECT * FROM produtos;

#Parte 1 - Update

#Atualize o preço de todos os produtos da categoria Informática com um aumento de 10%
UPDATE produtos
SET preco = preco * 1.10
WHERE categoria = 'Informática';
SELECT * FROM produtos;

#Atualize a quantidade em estoque de Teclados mecânicos para 20...
UPDATE produtos
SET estoque = estoque + 20
WHERE nome = 'Teclado Mecânico';
SELECT * FROM produtos;

#...e mude o seu status para 'Ativo'
UPDATE produtos
SET status = 'Ativo'
WHERE nome = 'Teclado Mecânico';
SELECT * FROM produtos;

#Produtos da categoria 'Acessórios' com preço abaixo de R$ 100,00 devem receber um desconto fixo de R$ 10,00
UPDATE produtos
SET preco = preco - 10
WHERE categoria = 'Acessórios' AND preco < 100;
SELECT * FROM produtos;

#Parte 2 - Delete

#Remova da tabela todos os produtos que estão marcados com o status 'Descontinuado'
DELETE FROM produtos WHERE status = 'Descontinuado';
SELECT * FROM produtos;

#Exclua os produtos da categoria 'Acessórios' que possuem estoque igual a 0
DELETE FROM produtos WHERE estoque = 0;
SELECT * FROM produtos;
