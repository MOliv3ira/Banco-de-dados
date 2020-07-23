create database db_farmacia_do_bem;

use db_farmacia_do_bem;

drop database db_farmacia_do_bem;

CREATE TABLE tb_categoria (
id_categoria INT(3) auto_increment  PRIMARY KEY,
categoria VARCHAR(50),
quantidade INT(3)
);

CREATE TABLE tb_produto (
id_prod INT(3) auto_increment  PRIMARY KEY,
nome VARCHAR(50),
valor FLOAT(7,2),
validade date,
id_cat INT(3),
FOREIGN KEY(id_cat) REFERENCES tb_categoria (id_categoria)
);

insert into tb_categoria(categoria,quantidade) value('DOR',50 );
insert into tb_categoria(categoria,quantidade) value("FEBRE",200 );
insert into tb_categoria(categoria,quantidade) value('GRIPE',13 );

select * from tb_categoria;

insert into tb_produto(nome,valor,id_cat) values ('Vitamina E',5,2);
insert into tb_produto(nome,valor,id_cat) values ('Vitamina D',29,3);
insert into tb_produto(nome,valor,id_cat) values ('Paracetamol',6,2);
insert into tb_produto(nome,valor,id_cat) values ('Cloroquina',200,3);
insert into tb_produto(nome,valor,id_cat) values ('Vitamina C',25,3);
insert into tb_produto(nome,valor,id_cat) values ('Dopamina',65,2);
insert into tb_produto(nome,valor,id_cat) values ('Vitamina B',30,1);
insert into tb_produto(nome,valor,id_cat) values ('Amoxicilina',22,1);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais. --
select nome as Remédio, valor as Preço from tb_produto
where valor > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais. --
select nome as Remédio, valor as Preço from tb_produto
where valor between 3 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra B. --
select nome, valor as Preço from tb_produto
where nome like '%B%';

-- Faça um um select com Inner join entre  tabela categoria e produto. --
select p.nome, p.valor, c.categoria, c.quantidade
from tb_produto p 
inner join tb_categoria c 
on p.id_cat = c.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos). --
select * from tb_produto p 
inner join tb_categoria c 
on p.id_cat = c.id_categoria
where c.categoria = "FEBRE";


