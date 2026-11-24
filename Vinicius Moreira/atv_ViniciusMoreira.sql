create database analiseVendas;

use analiseVendas;

CREATE TABLE vendas (
    id_pedido INT PRIMARY KEY,
    cliente VARCHAR(50),
    categoria VARCHAR(30),
    valor DECIMAL(10, 2),
    quantidade INT,
    status VARCHAR(20),
    data_venda DATE
);

INSERT INTO vendas VALUES
(1, 'Ana Silva', 'Smartphones', 2500.00, 1, 'Concluido', '2026-01-10'),
(2, 'Carlos Souza', 'Acessórios', 150.00, 3, 'Concluído', '2026-01-12'),
(3, 'Ana Silva', 'Notebooks', 4800.00, 1, 'Concluído', '2026-01-15'),
(4, 'Beatriz Lima', 'Smartphones', 3200.00, 1, 'Cancelado', '2026-01-18'),
(5, 'João Pedro', 'Acessórios', 80.00, 2, 'Concluído', '2026-02-02'),
(6, 'Carlos Souza', 'Notebooks', 5100.00, 1, 'Concluído', '2026-02-05'),
(7, 'Mariana Costa', 'Smartphones', 2900.00, 2, 'Concluído', '2026-02-10'),
(8, 'João Pedro', 'Monitores', 1200.00, 1, 'Concluído', '2026-02-14'),
(9, 'Beatriz Lima', 'Acessórios', 220.00, 4, 'Concluído', '2026-02-20'),
(10, 'Ana Silva', 'Monitores', 1350.00, 1, 'Cancelado', '2026-02-25');

select * from vendas;

select
	count(*) as total_vendas
from vendas;

select
    sum(quantidade * valor) as total_faturamento,
    avg(valor) as preco_medio
from vendas;

select * from vendas
group by valor desc;

select * from vendas
having sum(quantidade * valor) > 3000;

select
	count(*) as total_vendas,
    avg(valor) as preco_medio,
    max(valor),
    min(valor),
    max(valor) - min(valor) as diferenca
from vendas;