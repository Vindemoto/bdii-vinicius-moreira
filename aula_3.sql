create database empresa2;
use empresa2;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    ativo BOOLEAN NOT NULL 
);
INSERT INTO funcionarios (nome, cargo, salario, departamento, ativo) VALUES
    -- Departamento de TI
    ('Fernando Silva', 'Desenvolvedor', 5500.00, 'TI', TRUE),
    ('Gabriela Rocha', 'Analista', 4800.00, 'TI', TRUE),
    ('Heitor Lima', 'Engenheiro de Software', 8500.00, 'TI', TRUE),
    ('Isabela Souza', 'Assistente', 2800.00, 'TI', FALSE),
    
    -- Departamento de Vendas
    ('João Pedro', 'Consultor de Vendas', 3200.00, 'Vendas', TRUE),
    ('Karen Ribeiro', 'Consultor de Vendas', 3500.00, 'Vendas', TRUE),
    ('Lucas Mendes', 'Gerente', 9500.00, 'Vendas', TRUE),
    ('Mariana Costa', 'Assistente', 2400.00, 'Vendas', FALSE),

    -- Departamento de RH
    ('Natan Alves', 'Coordenador', 7200.00, 'RH', TRUE),
    ('Olivia Martins', 'Assistente', 2600.00, 'RH', TRUE),
    ('Paulo Henrique', 'Analista', 5100.00, 'RH', FALSE),

    -- Departamento de Marketing
    ('Quésia Nunes', 'Especialista', 6200.00, 'Marketing', TRUE),
    ('Rafael Torres', 'Analista', 4300.00, 'Marketing', TRUE),
    ('Sabrina Dias', 'Assistente', 2300.00, 'Marketing', TRUE),
    ('Tiago Ramos', 'Gerente', 8800.00, 'Marketing', FALSE),

    -- Departamento de Financeiro
    ('Uriel Santos', 'Analista', 4900.00, 'Financeiro', TRUE),
    ('Vanessa Cruz', 'Coordenador', 7500.00, 'Financeiro', TRUE),
    ('Wagner Lopes', 'Assistente', 2700.00, 'Financeiro', FALSE),
    ('Xavier Freitas', 'Gerente', 10500.00, 'Financeiro', TRUE),
    ('Yasmin Cardoso', 'Estagiário', 1500.00, 'Financeiro', TRUE);
    
    select * from funcionarios;
    
    /*sintaxe do update
    UPDATE nome_da_tabela
SET
	coluna1 = valor1,
    coluna2 = valor2,
    coluna3 = valor3,
WHERE condicao;*/

#Aumentar em 10% o salário dos funcionários de TI que ganham menos que R$5.000,00
    UPDATE funcionarios
    SET salario = salario * 1.10
    WHERE departamento = 'TI' AND salario < 5000.00;
    
#Aumenta o salário em 5% para quem for Analista ou Assistente
	UPDATE funcionarios
    SET salario = salario * 1.05
    WHERE cargo = 'Analista' OR cargo = 'Assistente';
    
#Desativa funcionários que ganham R$8.000,00 E que não são do RH
	UPDATE funcionarios
    SET ativo = FALSE
    WHERE salario >= 8000.00 AND NOT (departamento = 'RH');
    
#Define um bônus para quem ganha entre R$3.000,00 E R$6.000,00 (inclusive), no setor de Vendas
	UPDATE funcionarios
    SET salario = salario + 500.00
    WHERE (salario >= 3000.00 AND salario <= 6000.00) AND departamento = 'Vendas';
	select * from funcionarios;
    
#Reativa funcionários inativos que ganham diferente de R$0,00 OU que pertençam ao setor de TI
	UPDATE funcionarios
    SET ativo = TRUE
    WHERE ativo = FALSE AND (salario <> 0.00 OR departamento = 'TI');
	select * from funcionarios;
