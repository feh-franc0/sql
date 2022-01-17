/* Consultas avançadas com os joins, como fazer um SELECT em mais de uma tabela,os joins facilitamm muito as consultas em varias tabelas,mas para que eles sejam integros temos que criar o que aprendemos sobre chaves primarias e chaves estrangeiras.
para ficar mais simples temos que ter em mente que isso é usado quando ja temos uma tabela em ligação com a outra e na hora de saber o que liga cada tabela é bom usar o 'Modelo entidade relacionamento'
*/
--INNER JOIN = interseção,ou seja: traga dados de duas tabelas mas apenas os dados que se relacionam entre essas duas tabelas
--usamos esse 'a' e 'b' para ficar facil de usar depois,como : a.idpessoa = b.idpessoa; eles se conversão e ligamos eles por meio desse id que são os mesmos
--ON  podemos dizer que serve como nosso 'ONDE' , ou seja 'ONDE a.idpessoa = b.idpessoa'
SELECT * FROM tb_funcionarios a 
INNER JOIN tb_pessoas b ON a.idpessoa = b.idpessoa;

--PODEMOS USAR OUTRA FORMA JA DIZENDO O QUE ESTA LIGANDO AS DUAS:
--O unico detalhe é que usando o USING() as colunas dos dois tem que ter o mesmo nome nas duas tabelas
SELECT * FROM tb_funcionarios
INNER JOIN tb_pessoas USING(idpessoa)

--Como trazer todas as pessoas e se for pessoa quero saber o salario,se não for não tem problema.Queremos todas as pessoas independente da area que ela esta na empresa.iremos pegar a tabela "principal" do lado esquerdo e o que tiver ligação traga e adicione, o que n tiver ligação deixe mesmo assim 
SELECT * FROM tb_pessoas a
LEFT JOIN tb_funcionarios b ON a.idpessoa = b.idpessoa;

--Temos tambem o RIGHT JOIN, que nesse caso ira paracer muito o INNER JOIN,porque so temos um funcionario se ele existir primeiro em pessoa.Mas se tivessemos a tabela 2 com as pessoas e a tabela 1 com os funcionarios,iriamos usar o RIGHT JOIN para pegar os dados que temos das pessoas que sao ou nao funcionarios