show databases;

/****************************************************************************/

create database exemplo2
DEFAULT CHARSET=utf8mb4;

use exemplo2;

/****************************************************************************/

CREATE TABLE IF NOT EXISTS pessoas (
pessoa_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
nome_pessoa VARCHAR(50) NOT NULL,
ocupacao VARCHAR(20),
PRIMARY KEY (pessoa_id)
);

CREATE TABLE IF NOT EXISTS dependentes (
dependente_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
nome_dependente VARCHAR(50) NOT NULL,
dt_nasc DATE,
pessoa_fk INT UNSIGNED NOT NULL,
PRIMARY KEY (dependente_id),
FOREIGN KEY (pessoa_fk) REFERENCES pessoas (pessoa_id)
);

/****************************************************************************/

INSERT INTO pessoas (
nome_pessoa, ocupacao)
VALUES ('Vini', 'Top'), ('Pitico', 'MaisTop');

ALTER TABLE pessoas
ADD column comeu_maca TINYINT AFTER nome_pessoa;

UPDATE pessoas SET comeu_maca= '1';

describe pessoas;

select * from pessoas;

/****************************************************************************/

ALTER TABLE dependentes
CHANGE nome_dependente nm_dependente VARCHAR(50) NOT NULL;

INSERT INTO dependentes VALUES 
(DEFAULT, 'Ai', '2005-06-23', 2),
(DEFAULT, 'Pre', '2006-07-24', 2),
(DEFAULT, 'To', NULL, 2);

INSERT INTO dependentes
VALUES (DEFAULT, 'AiPreto', '2007-08/25', 1);

UPDATE dependentes SET pessoa_fk=1 WHERE nm_dependente='Pre';

DELETE FROM dependentes WHERE dependente_id=4;

describe dependentes;

select * from dependentes;

/****************************************************************************/

show tables;




