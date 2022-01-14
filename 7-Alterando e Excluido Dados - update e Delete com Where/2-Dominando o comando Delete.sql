--COMO O COMANDO DELETE É MT PERIGOSO, ENTÃO PODEMOS ULTILIZAR UMA TRASAÇÃO,USANDO O COMANDO: START TRANSACTION; e caso a gente queira voltar(usamos o comando: ROLLBACK;) ou confirmar o que foi feito(COMMIT;)

--ao usar o DELETE na tabela você deixara alguns resquícios , ex o autoincremente dos IDS ,pode ter apagado do 1º ao 9º id, quando for adicionar mais um mesma que antes tenha apagado tudo ira ser gerado o 10ºID

--Para realmente apagar os dados e seus resquícios zerando de fato tudo que tem na tabela,use o comando : TRUNCATE , assim ira tudo ser zerado,msm tendo 9 ids antes de ser aplicado,usando o truncate e gerando mais algum elemente esse id sera o 1 como se tivesse sido o primeiro da tabela,pq todos os dados da tabela inclusive o autoincremente foram deletados

DELETE FROM tb_funcionarios WHERE id = 1;

START TRANSACTION;

DELETE FROM tb_pessoas;
SELECT * FROM tb_pessoas;

ROLLBACK;
COMMIT;

INSERT INTO tb_pessoaS (sexo, nome) VALUES ('José', 'M');

TRUNCATE TABLE tb_pessoas;