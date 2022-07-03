create materialized view RankingSolucionador as

	select
		e.nome as "Equipe",
		count(pb.status) as "Problemas Resolvidos",
		pj.nome as "Projeto",
		c.nome as "Contratante"
	from Equipe e
		inner join Squad s on e.id_Equipe = s.id_Equipe
		inner join Projeto pj on s.id_Projeto = pj.id_Projeto
		inner join Problema pb on pj.id_Projeto = pb.id_Projeto
		inner join Contratante c on pj.id_Contratante = c.id_Contratante
			where (pb.status like 'finalizado')
	group by "Equipe", "Projeto", "Contratante"
	order by "Problemas Resolvidos" desc

with data;

select * from RankingSolucionador;


create materialized view ProblemaMudanca as
		select s.id_projeto
		from squad s
		intersect
		select p.id_projeto
		from problema p
		INTERSECT
		select m.id_mudanca
		from mudanca m
with data;

select * from ProblemaMudanca;


create materialized view ContratanteSemProjeto as
		select id_Contratante from contratante
		except
		select id_Contratante from projeto
with data;

select * from ContratanteSemProjeto;


create materialized view EquipeEmSquad as
		select id_Equipe from equipe
		union
		select id_Equipe from squad
with data;

select * from EquipeEmSquad


insert into equipe(id_Equipe, nome, id_gerente) values
	(1, 'Proxxi', ),
	(2, 'IBM', "Ciclano"),
	(3, 'Kyndryl', 'Deltrano');
insert into contratante(id_contratante, nome, cnpj, email) values
	(1, 'GPA', 12345678901, 'gpa@email.com'),
	(2, 'ABC', 98765432110, 'abc@email.com'),
	(3, 'MDS', 45678912399, 'mds@email.com');
insert into projeto(id_projeto, nome, custo_Projeto, id_Contratante) values
	(1, 'Multivarejo', 1000000, 1),
	(2, 'Pao de Acucar', 10000, 1),
	(3, 'WallMart', 100000, 1),
	(4, 'Ponto Frio', 200000, 2),
	(5, 'Extra', 20000, 2),
	(6, 'Magazine Luiza', 300000, 3);
insert into squad(id_Equipe, id_Projeto) values
	(1, 1),	(1, 2),	(1, 3),	(1, 4),	(1, 5),	(1, 6),
	(2, 1),	(2, 2),	(2, 3),	(2, 4),	(2, 5),	(2, 6),
	(3, 1),	(3, 2),	(3, 3),	(3, 4),	(3, 5),	(3, 6);
insert into problema(id_Problema, data_Abertura, status, prioridade, descricao, id_Projeto) values
	(1, '2022-01-01', 'finalizado', 1, 'A', 1),
	(2, '2022-01-02', 'finalizado', 1, 'B', 1),
	(3, '2022-01-03', 'finalizado', 1, 'C', 1),
	(4, '2022-01-04', 'finalizado', 2, 'D', 2),
	(5, '2022-01-05', 'finalizado', 2, 'E', 2),
	(6, '2022-01-06', 'finalizado', 2, 'F', 2),
	(7, '2022-01-07', 'finalizado', 2, 'G', 3),
	(8, '2022-01-08', 'finalizado', 3, 'H', 3),
	(9, '2022-01-09', 'finalizado', 3, 'I', 3),
	(10, '2022-01-10', 'finalizado', 3, 'J', 4),
	(11, '2022-01-11', 'finalizado', 4, 'K', 4),
	(12, '2022-01-12', 'finalizado', 5, 'L', 4),
	(13, '2022-01-13', 'finalizado', 5, 'M', 5),
	(14, '2022-01-14', 'finalizado', 5, 'N', 5),
	(15, '2022-01-15', 'finalizado', 5, 'O', 5),
	(16, '2022-01-16', 'finalizado', 1, 'P', 6),
	(17, '2022-01-17', 'finalizado', 2, 'Q', 6),
	(18, '2022-01-18', 'finalizado', 3, 'R', 6);
