create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id int(3) primary key auto_increment,
categoria varchar(50),
qtd int(3)
);

create table tb_produto(
codp int(3) primary key auto_increment,
nome varchar(50),
valor float(6,2),
descricao varchar(50),
validade datetime,
id_cat int(3),
foreign key(id_cat) references tb_categoria(id)
);


insert into tb_categoria(categoria, qtd) values('Carne de Primeira', 100);
insert into tb_categoria(categoria, qtd) values('Carne de Segunda', 300);
insert into tb_categoria(categoria, qtd) values('Carne de Porco', 500);
insert into tb_categoria(categoria, qtd) values('Carne de Frango', 150);

insert into tb_produto(nome,valor,descricao,id_cat) values('Contra Filé',28,'Carne do churras!',2);
insert into tb_produto(nome,valor,descricao,id_cat) values('Picanha Uruguaia',105,'$Só podemos olhar$!',1);
insert into tb_produto(nome,valor,descricao,id_cat) values('Alcatra',22,'Carne do churras!',2);
insert into tb_produto(nome,valor,descricao,id_cat) values('Maminha',75,'$Só podemos olhar$!',1);
insert into tb_produto(nome,valor,descricao,id_cat) values('Asas',20,'Carne do churras!',4);
insert into tb_produto(nome,valor,descricao,id_cat) values('Sobrecoxa',18,'Carne do churras!',4);
insert into tb_produto(nome,valor,descricao,id_cat) values('Linguiça de frango',10,'Carne do churras!',4);
insert into tb_produto(nome,valor,descricao,id_cat) values('Linguiça',15,'Carne do churras!',3);
insert into tb_produto(nome,valor,descricao,id_cat) values('Bisteca',12,'Carne do Almoço!',3);
insert into tb_produto(nome,valor,descricao,id_cat) values('Costela',19,'Carne do churras!',3);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais. --

select nome as Produto, valor as Preço from tb_produto
where valor > 50;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais. --

select nome as Produto, valor as Preço from tb_produto
where valor between 3 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C. --

select nome as Produtos 
from tb_produto
where nome like 'C%';

-- Faça um um select com Inner join entre tabela categoria e produto. --

select p.nome as Produtos, c.categoria as Categorias 
from tb_produto p 
inner join tb_categoria c 
on p.id_cat = c.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos). --

select p.nome as Produtos, c.categoria as Categorias 
from tb_produto p 
inner join tb_categoria c 
on p.id_cat = c.id
where categoria = 'Carne de Primeira';