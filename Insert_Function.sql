-- Inserir Contratante

CREATE OR REPLACE FUNCTION InsereContratante(id_Contratante INTEGER,
nome VARCHAR(50), cnpj INTEGER, email VARCHAR(50))
      RETURNS void AS $$
      BEGIN
        INSERT INTO contratante
         VALUES (id_Contratante, nome, cnpj, email);
      END;
      $$ LANGUAGE 'plpgsql';

select InsereContratante(1, 'Carlos', 123456789, 'carlos@ifsp.edu.br')

select * from contratante

-- Inserir Projeto

CREATE OR REPLACE FUNCTION InsereProjeto(id_Projeto INTEGER,
nome VARCHAR(50), custo_Projeto float, id_Contratante INTEGER)
      RETURNS void AS $$
      BEGIN
        INSERT INTO projeto
         VALUES (id_Projeto, nome, custo_Projeto, id_Contratante);
      END;
      $$ LANGUAGE 'plpgsql';

select InsereProjeto(1, 'Service Desk', 1000.00, 1)

select * from projeto

-- Inserir Funcionário

CREATE OR REPLACE FUNCTION InsereFuncionario(id_Funcionario INTEGER, cpf INTEGER, nome VARCHAR(50), salario float, 
sexo VARCHAR(15), ramal INTEGER, cargo VARCHAR(50), id_Endereco INTEGER, idEquipe INTEGER)
      RETURNS void AS $$
      BEGIN
        INSERT INTO funcionario
         VALUES (id_Funcionario, cpf, nome, salario, sexo, ramal, cargo, id_Endereco, idEquipe);
      END;
      $$ LANGUAGE 'plpgsql';

select InsereFuncionario(1, 123456789, 'Antonio', 22000.00, 'M', '9700', 'Gerente', 1)

select * from funcionario

-- Inserir Equipe

CREATE OR REPLACE FUNCTION InsereEquipe(id_Equipe INTEGER,
nome VARCHAR(50), id_Gerente INTEGER, especializacao VARCHAR(30))
      RETURNS void AS $$
      BEGIN
        INSERT INTO equipe
         VALUES (id_Equipe, nome, id_Gerente, especializacao);
      END;
      $$ LANGUAGE 'plpgsql';

select InsereEquipe(1, 'Administrador de Banco de Dados', 1, 'PostgreeSQL')

select * from equipe

-- Inserir problema

CREATE OR REPLACE FUNCTION InsereProblema(id_problema INTEGER,
data_abertura DATE, data_fechamento DATE, status VARCHAR(15),
prioridade INTEGER , descricao VARCHAR(250), solucao VARCHAR(250), id_projeto INTEGER)

      RETURNS void AS $$
      BEGIN
        INSERT INTO problema
         VALUES (id_problema, data_abertura, data_fechamento,
				 status, prioridade, descricao, solucao,id_projeto);
      END;
      $$ LANGUAGE 'plpgsql';
	  
	  
select InsereProblema(0,'23/06/2022','24/06/2022','finalizado', 10, 'Computador não conecta na VPN.', 'Reiniciar a maquina', 1);

select * from problema;

-- Inserir endereco

CREATE OR REPLACE FUNCTION InsereEndereco(id_endereco INTEGER,
bairro VARCHAR(30), rua varchar(50), pais VARCHAR(25),
cep integer, cidade VARCHAR(50), uf VARCHAR(2), id_contratante INTEGER)

      RETURNS void AS $$
      BEGIN
        INSERT INTO endereco
         VALUES (id_endereco, bairro, rua, pais, cep, cidade, uf, id_contratante);
      END;
      $$ LANGUAGE 'plpgsql';
	  
	  
select InsereEndereco(
	0,'Satelite Iris','Rua Pst. Samuel de C. Chiminazzo', 'Brasil',13059688,'Campinas','SP',1
);

select * from endereco;

-- falta solicitacao,squad

--inserir mudanca

CREATE OR REPLACE FUNCTION InsereMudanca(id_mudanca INTEGER,
data_abertura DATE, data_fechamento DATE, status VARCHAR(15),
prioridade INTEGER , descricao VARCHAR(250), objetivo VARCHAR(250), id_projeto INTEGER)

      RETURNS void AS $$
      BEGIN
        INSERT INTO mudanca
         VALUES (id_mudanca, data_abertura, data_fechamento, status, prioridade, descricao, objetivo, id_projeto);
      END;
      $$ LANGUAGE 'plpgsql';
	  
Select inseremudanca(0,'12/02/2022','12/03/2022','finalizado',2,'Alteração do logotipo', 
					 'Atualizar identidade visual', 1);

select * from mudanca;

-- inserir solicitacao

CREATE OR REPLACE FUNCTION InsereSolicitacao(id_solicitacao INTEGER,
data_abertura DATE, data_fechamento DATE, status VARCHAR(15),
prioridade INTEGER , descricao VARCHAR(250), id_projeto INTEGER)

      RETURNS void AS $$
      BEGIN
        INSERT INTO solicitacao
         VALUES (id_solicitacao, data_abertura, data_fechamento, status, prioridade, descricao, id_projeto);
      END;
      $$ LANGUAGE 'plpgsql';
	  
Select InsereSolicitacao(0,'23/06/2022',null,'em aberto',2,'Criar nova database', 1);

select * from solicitacao;

-- inserir squad

CREATE OR REPLACE FUNCTION InsereSquad(id_equipe INTEGER, id_projeto INTEGER)

      RETURNS void AS $$
      BEGIN
        INSERT INTO squad
         VALUES (id_equipe, id_projeto);
      END;
      $$ LANGUAGE 'plpgsql';
	 
SELECT insereSquad(1,1);

select * from squad;
