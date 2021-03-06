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


select InsereFuncionario(1, 123456789, 'Antonio', 22000.00, 'M', '9700', 'Gerente', 1, 1);
select * from log_funcionario;
select * from funcionario;


select InsereEquipe(1, 'Administrador de Banco de Dados', 1, 'PostgreeSQL');
select InsereEquipe(2, 'Analista de Dados', 'MySQL');
select InsereEquipe(3, 'Front End Developer', 'Figma');
select InsereEquipe(4, 'Back End Developer', 'Javascript');
select * from log_equipe;
select * from equipe;


select InsereProblema(1,'23/06/2022','24/06/2022','finalizado', 10, 'Computador não conecta na VPN.',
					  'Reiniciar a maquina', 1);
select InsereProblema(2, '2022-01-02', 'finalizado', 1, 'B', 1);
select InsereProblema(3, '2022-01-03', 'finalizado', 1, 'C', 1);
select InsereProblema(4, '2022-01-04', 'finalizado', 2, 'D', 2);
select InsereProblema(5, '2022-01-05', 'finalizado', 2, 'E', 2);
select InsereProblema(6, '2022-01-06', 'finalizado', 2, 'F', 2);
select InsereProblema(7, '2022-01-07', 'finalizado', 2, 'G', 3);
select InsereProblema(8, '2022-01-08', 'finalizado', 3, 'H', 3);
select InsereProblema(9, '2022-01-09', 'finalizado', 3, 'I', 3);
select InsereProblema(10, '2022-01-10', 'finalizado', 3, 'J', 4);
select InsereProblema(11, '2022-01-11', 'finalizado', 4, 'K', 4);
select InsereProblema(12, '2022-01-12', 'finalizado', 5, 'L', 4);
select InsereProblema(13, '2022-01-13', 'finalizado', 5, 'M', 5);
select InsereProblema(14, '2022-01-14', 'finalizado', 5, 'N', 5);
select InsereProblema(15, '2022-01-15', 'finalizado', 5, 'O', 5);
select InsereProblema(16, '2022-01-16', 'finalizado', 1, 'P', 6);
select InsereProblema(17, '2022-01-17', 'finalizado', 2, 'Q', 6);
select InsereProblema(18, '2022-01-18', 'finalizado', 3, 'R', 6);
select * from log_problema;
select * from problema;


select inseremudanca(1,'12/02/2022','12/03/2022','finalizado',2,'Alteração do logotipo',
					 'Atualizar identidade visual', 1);
select * from log_mudanca;
select * from mudanca;


select InsereSolicitacao(1,'23/06/2022',null,'em aberto',2,'Criar nova database', 1);
select * from log_solicitacao;
select * from solicitacao;


select insereSquad(1,1);
select insereSquad(1, 2);
select insereSquad(1, 3);
select insereSquad(1, 4);
select insereSquad(1, 5);
select insereSquad(1, 6);
select insereSquad(2, 1);
select insereSquad(2, 2);
select insereSquad(2, 3);
select insereSquad(2, 4);
select insereSquad(2, 5);
select insereSquad(2, 6);
select insereSquad(3, 1);
select insereSquad(3, 2);
select insereSquad(3, 3);
select insereSquad(3, 4);
select insereSquad(3, 5);
select insereSquad(3, 6);
select * from squad;


select * from RankingSolucionador;
