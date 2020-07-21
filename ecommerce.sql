create database  ecommerce;

use  ecommerce;

create table produtos(
codp int primary key auto_increment not null,
nome_prod varchar(50) not null,
qtd int(3) not null,
valor decimal(10,2) not null,
descricao varchar(100)
);

insert into produtos(nome_prod,qtd,valor) values('TV Led LG', 100, 3500);
insert into produtos(nome_prod,qtd,valor) values('TV Led samsung', 100, 3500);
insert into produtos(nome_prod,qtd,valor) values('TV Led philco', 100, 2500);
insert into produtos(nome_prod,qtd,valor) values('TV Led sony', 100, 5000);
insert into produtos(nome_prod,qtd,valor) values('TV Led toshiba', 100, 2000);
insert into produtos(nome_prod,qtd,valor) values('Notebook Dell', 100, 5500);
insert into produtos(nome_prod,qtd,valor) values('Notebook samsung', 100, 4500);
insert into produtos(nome_prod,qtd,valor) values('Notebook sony', 100, 5000);
insert into produtos(nome_prod,qtd,valor) values('Notebook lenovo', 100, 3500);
insert into produtos(nome_prod,qtd,valor) values('Notebook positivo', 100, 500);
insert into produtos(nome_prod,qtd,valor) values('SSD', 100, 100);
insert into produtos(nome_prod,qtd,valor) values('Processador AMD', 100, 350);
insert into produtos(nome_prod,qtd,valor) values('headset', 100, 200);
insert into produtos(nome_prod,qtd,valor) values('Teclado', 100, 150);
insert into produtos(nome_prod,qtd,valor) values('HD', 100, 90);

select * from produtos;

select Nome_prod, valor from produtos
where valor > 500;

select Nome_prod, valor, qtd from produtos
where valor < 500;

update produtos
set qtd = 200
where codp = 6;

select nome_prod, qtd from produtos 
where codp = 6;


