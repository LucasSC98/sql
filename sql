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
