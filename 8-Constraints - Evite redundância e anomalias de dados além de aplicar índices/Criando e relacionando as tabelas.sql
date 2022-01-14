--Como criar e relacionar as tabelas ultilizando as constraints que aprendemos nos temas anteriores
--Tipos de relacionamentos que existem em banco de dados: 
/*existem 3:
    1-UM PARA MUITOS: Podemos ter varios funcionarios que sao gerentes, entao sao funcionarios diferentes |tabela=funcionarios| que estao amarrados ao mesmo cargo na |tabela_cargos|.Entao nesse caso um cargo esta amarrado a muitos funcionarios.Esse é o relacionamento um para muitos
    2-UM PARA UM: Nao é tao comum,seria um tipo de situacao onde uma informacao que esta em uma tabela poderia estar nessa tabela mas por motivos de seguranca ou para separar informaçao voce desloca ela para uma segunda tabela, exemplo: um funcionario so vai ter um salario no final do mes,poderia estar na mesma tabela,mas a empresa quer os dados de salario totalmente separados para controlar privilegios ou qualquer coisa do tipo.
    3-MUITOS PARA MUITOS:exemplo uma plataforma de educação,udemy por exemplo,voce pode fazer diversos cursos,esses cursos podem ter diversos alunos, entao muitos para muitos. Nesse caso alem da tabela |alunos| e da tabela |cursos| vamos ter uma terceira tabela que é para associar qual é o aluno e qual curso ele fez/esta-fazendo.E nessa situação nos temos uma chave primaria composta,por exemplo: o FERNANDO vai fazer o curso de MYSQL,entao veja o codigo do fernando é uma chave primaria vira chave estrangeira na 3ºtabela e o codigo do curso mysql chave primaria la na tabbela de curso vira uma chave estrangeira na 3ºtabela,porem as duas juntas viram uma chave primaria composta das duas colunas, porque o fernando nao pode estar duas vezes no mesmo curso.
    

*/

--Modelo entidade relacionamento: 


CREATE TABLE tb_pessoas (
    idpessoa INT AUTO_INCREMENT NOT NULL,
    desnome VARCHAR(256) NOT NULL,
    dtcadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    CONSTRAINT PK_pessoas PRIMARY KEY (idpessoa)
)ENGINE = InnoDB;

CREATE TABLE tb_funcionarios (
    idfuncionario INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    vlsalario DECIMAL(10,2) NOT NULL DEFAULT 1000.00,
    dtadmissao DATE NOT NULL,
    CONSTRAINT PK_funcionarios PRIMARY KEY (idfuncionario),
    CONSTRAINT FK_funcionatios_pessoas FOREIGN KEY (idpessoa)
        REFERENCES tb_pessoas (idpessoa)
);

INSERT INTO tb_pessoas (desnome) VALUES ('Fernando');

SELECT * FROM tb_pessoas;

INSERT INTO tb_funcionarios (idpessoa, vlsalario, dtadmissao) VALUES (1, 5000, CURRENT_TIMESTAMP());--TORNANDO FERNANDO EM UM FUNCIONARIO

SELECT * FROM tb_funcionarios;