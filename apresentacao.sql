select InsereContratante(1, 'Carlos', 123456789, 'carlos@ifsp.edu.br');
select InsereContratante(2, 'GPA', 123456, 'gpa@email.com');
select InsereContratante(3, 'ABC', 987655, 'abc@email.com');
select InsereContratante(4, 'MDS', 456789, 'mds@email.com');
select * from log_contratante;
select * from contratante;


select InsereProjeto(1, 'Service Desk', 1000.00, 1);
select InsereProjeto(2, 'Multivarejo', 1000000, 1);
select InsereProjeto(3, 'Pao de Acucar', 10000, 1);
select InsereProjeto(4, 'WallMart', 100000, 1);
select InsereProjeto(5, 'Ponto Frio', 200000, 2);
select InsereProjeto(6, 'Extra', 20000, 2);
select InsereProjeto(7, 'Magazine Luiza', 300000, 3);
select * from log_projeto;
select * from projeto;


select InsereEndereco(1,'Satelite Iris','Rua Pst. Samuel de C. Chiminazzo',
					  'Brasil',13059688,'Campinas','SP',1);
select InsereEndereco(2,'Jardim Paulista','Av. Brigadeiro Luís Antônio',
						'Brasil',01402001,'São Paulo','SP',2);
select InsereEndereco(3,'Vila do Golf','Av. Luiz Eduardo Toledo Prado',
						'Brasil',14027250,'Ribeirão Preto','SP',3);
select InsereEndereco(4,'São Bernardo','Rua Guarujá',
						'Brasil',13030670,'Campinas','SP',4);
select * from log_endereco;
select * from endereco;


select InsereFuncionario(1, 123456789, 'Antonio', 22000.00, 'M', '9700', 'Gerente', 1, null);
select * from log_funcionario;
select * from funcionario;


select InsereEquipe(1, 'Administrador de Banco de Dados', 1, 'PostgreeSQL');
select InsereEquipe(2, 'Analista de Dados', null, 'MySQL');
select InsereEquipe(3, 'Front End Developer', null, 'Figma');
select InsereEquipe(4, 'Back End Developer', null, 'Javascript');
select * from log_equipe;
select * from equipe;


select InsereProblema(1,'23/06/2022','24/06/2022','finalizado', 10, 'Computador não conecta na VPN.',
					  'Reiniciar a maquina', 1);
select * from log_problema;
select * from problema;


select inseremudanca(1,'12/02/2022','12/03/2022','finalizado',2,'Alteração do logotipo',
					 'Atualizar identidade visual', 1);
select * from log_mudanca;
select * from mudanca;


select InsereSolicitacao(1,'23/06/2022',null,'em aberto',2,'Criar nova database', 1);
select * from log_solicitacao;
select * from solicitacao;


select insereSquad(1, 1);
select insereSquad(2, 1);
select insereSquad(3, 4);
select insereSquad(4, 6);
select * from squad;


select * from RankingSolucionador;
