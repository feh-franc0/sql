/*HAVING : é um complemento do Group By,significa "tendo" e é utilizado para colocar condição.
DIFERENÇA ENTRE WHERE E HAVING:
WHERE => coloca condição na linha da tabela
HAVING => condição que na maioria das vezes pega o valor total de uma certa tabela secundaria,usando então não apenas a condição de linha,mas uma condição mais do todo
*/

--Ira trazer apenas aqueles cuja a soma total dos pedidos sejam acima de 6200
--PODEMOS DIZER QUE O HAVING É O WHERE DO GROUP BY,A UNICA DIFERENCA É QUE ELE COLACA A CONDIÇAO DEPOIS.
--O HAVING SO PODE SER UTILIZADO COM O GROUP BY
SELECT b.desnome,
SUM(a.vlpedido) AS total,
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
CONVERT(MIN(a.vlpedido), DEC(10,2)) AS 'menor valor',
CONVERT(MAX(a.vlpedido), DEC(10,2)) AS 'maior valor',
COUNT(*) AS 'total de pedidos'
FROM tb_pedidos a INNER JOIN tb_pessoas b USING(idpessoa) 
GROUP BY b.idpessoa 
HAVING SUM(a.vlpedido) > 6200
ORDER BY SUM(a.vlpedido);