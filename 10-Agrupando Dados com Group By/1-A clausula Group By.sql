/*clausula Group By:
Uma clausula que gera totalização de dados,significa "agrupado por" e é muito ultilizado no comando SELECT.
Toda vez que voce quer executar uma consulta e quer gerar o subtotal  ou um total geral a clausula Group By vai ser muito util nesse caso

vamos usar a tabela tb_pessoas que ja temos criado, e em cima disso vamos criar uma outra tabela de pedidos imaginando que essas pessoas compraram alguma coisa
*/

--Criando a tabela tb_pedidos
CREATE TABLE tb_pedidos (
    idpedido INT auto_increment NOT NULL,
    idpessoa INT NOT NULL,
    dtpedido DATETIME NOT NULL,
    vlpedido DEC(10,2),
    constraint PK_pedidos PRIMARY KEY(idpedido),
    constraint FK_pedidos_pessoas foreign key (idpessoa) references tb_pessoas (idpessoa)
);

--INSERINDO PEDIDOS DOS CLIENTES
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido) VALUES (1, CURRENT_DATE(), 22000.00);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido) VALUES (1, CURRENT_DATE(), 5000);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido) VALUES (1, CURRENT_DATE(), 10000);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido) VALUES (1, CURRENT_DATE(), 1000);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido) VALUES (1, CURRENT_DATE(), 3000);


INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido) VALUES (2, CURRENT_DATE(), 1999.90);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido) VALUES (2, CURRENT_DATE(), 2000);
INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido) VALUES (2, CURRENT_DATE(), 123.45);


INSERT INTO tb_pedidos (idpessoa,dtpedido,vlpedido) VALUES (3, CURRENT_DATE(), 40000;

--Totalizando(somando) todas as compras
SELECT b.desnome, SUM(a.vlpedido) AS total FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa) GROUP BY b.idpessoa;


--Ver a soma de todos os pedidos, ver o valor medio gasto por pessoa, ver a compra de menor valor de cada pessoa, ver a compra de maior valor de cada pessoa e ver o total de pedidos que a pessoa fez
SELECT b.desnome,
SUM(a.vlpedido) AS total,
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
CONVERT(MIN(a.vlpedido), DEC(10,2)) AS 'menor valor',
CONVERT(MAX(a.vlpedido), DEC(10,2)) AS 'maior valor',
COUNT(*) AS 'total de pedidos'
FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa) GROUP BY b.idpessoa 
ORDER BY SUM(a.vlpedido);
