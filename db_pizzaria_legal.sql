create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id int(3) primary key auto_increment,
categoria varchar(50) not null,
qtd int(3) not null
);

create table tb_pizza(
id_pizza int(3) primary key auto_increment, 
nome varchar(50) not null,
valor float(7,2) not null,
descricao varchar(100),
id_cat int(3),
foreign key(id_cat)references tb_categoria(id)
);

-- Popule esta tabela Categoria com até 3 dados. --
insert into tb_categoria(categoria,qtd) values('SALGADA',200);
insert into tb_categoria(categoria,qtd) values('DOCE',100);
insert into tb_categoria(categoria,qtd) values('PREMIUM',150);

-- Popule esta tabela pizza com até 8 dados. --
insert into tb_pizza(nome,valor,descricao,id_cat) values('3 Queijos',30 ,'Mussarela - requeijão - oregano e parmesão ralado.',1);
insert into tb_pizza(nome,valor,descricao,id_cat) values('Frango com requeijão',35, 'Frango desfiado - cebola - oregano e requeijão.',3);
insert into tb_pizza(nome,valor,descricao,id_cat) values('Bauru',37,'Mussarela - presunto - requeijão - oregano e tomate.',3);
insert into tb_pizza(nome,valor,descricao,id_cat) values('Calabresa',29 , 'Mussarela - calabresa e cebola - oregano.',1);
insert into tb_pizza(nome,valor,descricao,id_cat) values('América',55 ,'Mussarela - pepperoni - champignon - cebola - oregano e pimentão verde.',1);
insert into tb_pizza(nome,valor,descricao,id_cat) values('Extravaganzza', 75, 'Mussarela - pepperoni - presunto - azeitona preta - champignon - cebola - oregano e pimentão verde.',1);
insert into tb_pizza(nome,valor,descricao,id_cat) values('Búfala La Bianca', 69, 'Mussarela - mussarela de búfala - requeijão - parmesão ralado - oregano e manjericão.',3);
insert into tb_pizza(nome,valor,descricao,id_cat) values('BANANA C/ CANELA', 47, 'Banana - Canela - Açúcar e Mussarela.',3);
insert into tb_pizza(nome,valor,descricao,id_cat) values('BRIGADEIRO', 47, 'Chocolate ao Leite - Chocolate Granulado e Mussarela.',2);
insert into tb_pizza(nome,valor,descricao,id_cat) values('PRESTÍGIO', 47, 'Chocolate ao Leite - Côco - Leite Condensado e Mussarela.',2);
insert into tb_pizza(nome,valor,descricao,id_cat) values('CONFETE CHOCOLATE AO LEITE', 47, 'Chocolate ao Leite - Confeitos e Mussarela.',2);

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais. --

select nome as Pizzas, valor as Preços from tb_pizza
where valor > 45;
-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais. --

select nome as Pizzas, valor as Preços from tb_pizza
where valor between 29 and 60;
-- Faça um select  utilizando LIKE buscando os Produtos com a letra C. --

select nome as Pizzas from tb_pizza
where nome like 'C%';
-- Faça um um select com Inner join entre  tabela categoria e pizza. --

select * from tb_pizza p 
inner join tb_categoria c 
on p.id_cat = c.id;
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce). --

select * from tb_pizza p 
inner join tb_categoria c 
on p.id_cat = c.id
where categoria = 'DOCE';