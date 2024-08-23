select * from produto;

insert into produto 
(id_produto,modelo,marca,cor,qt,vl_custo,vl_venda)

 
values 
(1 ,'iPhone 14 Pro Max 128GB' ,'APPLE','Space Black' ,10,6000,7600),
(2 ,'iPhone 14 Pro Max 256GB' ,'APPLE','Space Black' ,10,8000,9000),
(3 ,'iPhone 14 Pro Max 512GB' ,'APPLE','Space Black' ,10,8500,9000),
(4 ,'iPhone 14 Pro Max 128GB' ,'APPLE','Gold' ,10,6000,7600),
(5 ,'iPhone 14 Pro Max 256GB' ,'APPLE','Gold' ,10,8000,9000),
(6 ,'iPhone 14 Pro Max 512GB' ,'APPLE','Gold' ,10,8500,9000),
(7 ,'iPhone 15 128GB' ,'APPLE','Black' ,10,3000,4600),
(8 ,'iPhone 15 256GB' ,'APPLE','Black' ,10,5000,5669),
(9 ,'iPhone 15 512GB' ,'APPLE','Black' ,10,5000,6200),
(10 ,'iPhone 15 128GB' ,'APPLE','Blue' ,10,4000,4600),
(11 ,'iPhone 15 256GB' ,'APPLE','Blue' ,10,5000,5669),
(12 ,'iPhone 15 512GB' ,'APPLE','Blue' ,10,5000,6200),
(13 ,'iPhone 15 Pro Max 128GB' ,'APPLE','Titanium Black',10,5500,6900),
(14 ,'iPhone 15 Pro Max 256GB' ,'APPLE','Titanium Black',10,6000,7500),
(15 ,'iPhone 15 Pro Max 512GB' ,'APPLE','Titanium Black',10,7200,8200),
(16 ,'iPhone 15 Pro Max 128GB' ,'APPLE','Titanium White',10,6000,6900),
(17 ,'iPhone 15 Pro Max 256GB' ,'APPLE','Titanium White',10,6200,7500),
(18,'iPhone 15 Pro Max 512GB' ,'APPLE','Titanium White',10,7200,8200);







select * from forma_pgto;

insert into forma_pgto (id_forma,descricao,qt)
values (1, 'Pix',0),
(2, 'Pix',1),
(3, 'Pix',12);



select * from vendedor;

insert into vendedor (id_vendedor, nome)

values 
(1, 'Ana Iphone'),
(2, 'Marcelo');

select * from cliente;
insert into cliente (id_cliente, nome, dt_cadastro)
values
(1, 'Jose Silva', now()),
(2, 'Maria Silva', now()),
(3, 'Joao Carlos', now()),
(4, 'Claudia', now()),
(5, 'Faustao borracharia', now()),
(6, 'Burnes', now());





cod produto 12,15/01/2024, 1

select venda.id_venda, cliente.nome, dt_venda, vendedor.nome, forma_pgto.descricao,
itens_ordem.qt_venda,
itens_ordem.vl_venda,
itens_ordem.qt_venda * itens_ordem.vl_venda as 'total'
from venda
inner join vendedor on venda.id_vendedor = vendedor.id_vendedor
inner join cliente on venda.id_cliente = cliente.id_cliente 
inner join forma_pgto on venda.id_forma = forma_pgto.id_forma
inner join itens_ordem on itens_ordem.id_venda = venda.id_venda
inner join produto on produto.id_produto = itens_ordem.id_produto

insert into venda 
(id_venda, dt_venda, id_vendedor,id_cliente, id_forma)

values(1,'2024-01-15',2,1,1)

insert into itens_ordem (id_venda,id_produto, Qt_venda,vl_venda) 
values(1,12,1,6200);
















