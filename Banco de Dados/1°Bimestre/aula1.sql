
create database aula1;
use aula1;

/****************************************************************/

drop table empregado;
create table empregado(
empregado_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
nome_empregado VARCHAR(25) NOT NULL,
cargo_empregado VARCHAR(20),
PRIMARY KEY (empregado_id)
);

/****************************************************************/

describe empregado;

insert into empregado(
nome_empregado)
values ('Vini Aiii');

select * from empregado;
