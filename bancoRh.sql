create database bancoRh;

use BancoRh;

create table funcionario(
codf int(3) primary key auto_increment not null,
nome varchar(50) not null,
funcao varchar(30) not null,
sexo char(1),
salario decimal(10,2) not null,
cpf varchar(20) not null,
endereco varchar(50) not null,
telefone varchar(15)
);

insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Marcus','Programador','M',4500 ,'999.666.888-77', 'Rua Ângelo Romano, 186 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Paulo','Programador','M',4000 ,'999.666.888-77', 'Rua Itu, 1.120','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('João','Programador','M',5000 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Luan','Programador','M',3000 ,'999.666.888-77', 'Rua Itu, 1.120 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Fabio','Programador','M',5500 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Caio','Programador','M',2500 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Beto','Estagiario','M',1500 ,'999.666.888-77', 'Rua Itu, 1.120 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Felipe','Programador','M',3600 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Luana','Programadora','F',5000 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Ana','Programadora','F',2400 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Lais','DBA','F',10000 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Beatriz','Programadora','F',7000 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Juliana','DBA','F',10000 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('João Paulo','Estagiario','M',1500 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');
insert into funcionario(nome,funcao,sexo,salario,cpf,endereco,telefone) 
values ('Lucas','Estagiario','M',1500 ,'999.666.888-77', 'Rua Cruz e Souza, 3.100 ','3622-4437');

select * from funcionario;

SELECT nome, funcao, salario FROM funcionario
WHERE salario > 2000;

SELECT nome, funcao, salario FROM funcionario
WHERE salario < 2000;

UPDATE funcionario
SET nome = 'Marcus Vinícius'
WHERE codf = 1;

select * from funcionario;






