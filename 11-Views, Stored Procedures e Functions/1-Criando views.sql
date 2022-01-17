/*VIEWS : viu é um atalho de um SELECT,uma view é um comando compilado dentro do banco de dados que dentro dela so pode existir comandos SELECT. Uma viu é muito interessante para reduzir a quantidade de comandos SQL quando estivermos trabalhando com BACK-END
*/

--O nome da nossa VIEW representa todo esse SELECT que esta dentro dele
CREATE VIEW v_pedidostotais
AS
SELECT b.desnome,
SUM(a.vlpedido) AS total,
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
CONVERT(MIN(a.vlpedido), DEC(10,2)) AS 'menor valor',
CONVERT(MAX(a.vlpedido), DEC(10,2)) AS 'maior valor',
COUNT(*) AS 'total de pedidos'
FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa) GROUP BY b.idpessoa ORDER BY SUM(a.vlpedido);

--AGORA o v_pedidostotais é a representação do nosso SELECT feito acima:
SELECT * FROM v_pedidostotais WHERE total > 7000;

--VIEWS É MUITO IMPORTANTE PARA MANTER A SEGURANÇA E INTEGRIDADE DOS SEUS DADOS E DO SEU BANCO EM SI.E MESMO A PESSOA TENTANDO DAR UM DROP NÃO IRA CONSEGUIR