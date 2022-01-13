--WHERE: VAMOS APRENDER SOBRE OS OPERADORES DE BUSCA OS FAMOSOS 'LIKE', BETWEEN PARA DATA E VALORES, SOUNDEX BUSCA FONETICA

--SELECIONE TODOS EM TB_FUNCIONARIOS ONDE NOME TENHA A LETRA 'a' ENTRE A PRIMEIRA E ULTIMA LETRA.
/*LIKE:
LIKE '%a%' : que tenha 'a' não importa quem seja  a primeira ou ultima letra.

LIKE 'a%' : que tenha 'a' no começo e não importa as proximas letras

LIKE '%a' : que tenha 'a' como ultima letra e não importa as letras que veem anteriormente

LIKE '__r%' : nao sei a primeira nem a segunda letra, mas a terceira é o 'r' e o resto tmb não sei,usando '_' para por letras que n sabemos e depois por uma letra em um determinado lugar para contagem
FERNANDO
1-F,2-E,3-R,4-N,5-A,6-N,7-D,8-O

NOT LIKE 'a%' : TODOS OS NOMES QUE NAO COMECEM COM 'a'.E assim por diante com todas as operações sendo contrarias as de LIKE
*/
SELECT * FROM tb_funcionarios WHERE nome LIKE '%a%';

--BETWEEN.tmb temos o NOT BETWEEN
--SELECIONE TUDO EM TB_FUNCIONARIOS ONDE SALARIO ESTEJA ENTRE 1000 a 2000
SELECT * FROM tb_funcionarios WHERE salario BETWEEN 1000 AND 2000;


--SELECIONE TUDO EM TB_FUNCIONARIOS ONDE O SOM DO 'nome' SEJA IGUAL AO SOM FONETICO DE 'Luis'.
--IRA APARECER: 'luis' e 'luiz',talvez ate 'luix'
--SOUNDEX exige que a primeira letra seja a que voce quer procurar, entao se voce tiver 'katia' e 'catia' não tera como procurar usando o SOUNDEX,O SOUNDEX EXIGE A BUSCA PELA PRIMEIRA LETRA 
SELECT * FROM tb_funcionarios WHERE SOUNDEX(nome) = SOUNDEX('Luis');