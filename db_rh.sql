create database db_rh;
use db_rh;

create table tb_cargo(
id int(3) auto_increment primary key not null,
funcao varchar(100),
departamento varchar(100)
);

create table tb_funcionarios(
id int(3) auto_increment primary key not null,
nome varchar(60),
cpf varchar(60),
sexo char(1),
salario float(7.2),
id_cargo int(3),
FOREIGN KEY (id_cargo) REFERENCES tb_cargo (id)
);

insert into tb_cargo(funcao,departamento) values('Desenvolvedor Jr', 'T.I');
insert into tb_cargo(funcao,departamento) values('DBA', 'T.I');
insert into tb_cargo(funcao,departamento) values('Desenvolvedor Pleno', 'T.I');
insert into tb_cargo(funcao,departamento) values('AD', 'T.I');
insert into tb_cargo(funcao,departamento) values('Desenvolvedor Jr', 'T.I');
insert into tb_cargo(funcao,departamento) values('DBA Jr', 'T.I');
insert into tb_cargo(funcao,departamento) values('Scrum Master', 'T.I');
insert into tb_cargo(funcao,departamento) values('Estagiário', 'Financeiro');
insert into tb_cargo(funcao,departamento) values('Contador', 'Financeiro');
insert into tb_cargo(funcao,departamento) values('Estagiário', 'RH');

insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('Caio', '778.996.882-55',  'M', 4500,1);
insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('Maria', '778.996.882-55',  'F', 10500,2);
insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('Luana', '778.996.882-55',  'F', 8500,3);
insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('Antonia', '778.996.882-55',  'F', 4500,4);
insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('Juliana', '778.996.882-55',  'F', 8500,5);
insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('Paulo', '778.996.882-55',  'M', 5700,6);
insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('João', '778.996.882-55',  'M', 6200,7);
insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('Rafael', '778.996.882-55',  'M', 1500,8);
insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('Paulo', '778.996.882-55',  'F', 2000,9);
insert into tb_funcionarios(nome,cpf,sexo,salario,id_cargo) values ('Beto', '778.996.882-55',  'M', 1450,10);

show tables;

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario between 1000 and 2000;

select * from tb_funcionarios where nome like 'c%';

select f.nome, c.funcao 
from tb_funcionarios f
inner join tb_cargo c
on f.id_cargo = c.id;

select f.nome,c.funcao 
from tb_funcionarios f 
inner join tb_cargo c 
on f.id_cargo = c.id 
where c.funcao = 'Desenvolvedor Jr';
