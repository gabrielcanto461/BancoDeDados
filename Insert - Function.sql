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

select * from equipe

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
