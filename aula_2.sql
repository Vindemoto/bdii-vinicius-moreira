CREATE DATABASE teste4;
USE teste4;
CREATE TABLE cad (
	CODFUN INT NOT NULL PRIMARY KEY,
    NOME VARCHAR(40) NOT NULL,
    DEPTO CHAR(2) NOT NULL,
    FUNCAO CHAR(20),
    FILHOS INT,
    SALARIO DECIMAL(10, 2)
    );
DESC cad;

INSERT INTO cad VALUES(1, 'Marcos', 'rh', 'analista', 2, 2184.33); 
INSERT INTO cad VALUES(2, 'Andre', 'rh', null, 3, 2184.33);
INSERT INTO cad VALUES(3, 'Roberto', 'dp', 'analista', 0, 2000.00);

INSERT INTO cad VALUES
(4, 'Carlos', 'ti', 'analista', 2, 2000.00),
(5, 'Amaral', 'ti', 'DBA', 0, 5000.00),
(6, 'Souza', 'ti', 'DBA', 1, 5000.00);

SELECT * FROM cad;
