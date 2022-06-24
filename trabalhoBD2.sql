modelo_Fisico.sql
Quem pode acessar

Propriedades do sistema
Tipo
SQL
Tamanho
4 KB
Armazenamento usado
5 KB
Local
BD2
Proprietário
Raphael Siqueira
Modificado
16 de mai. de 2022 por GABRIEL CERDAN OSTE DE MOURA
Aberto
19:58 por mim
Criado em
16 de mai. de 2022
Adicionar uma descrição
Os leitores podem fazer o download
/*
Modelagem Física - Sistema de Chamados

Integrantes:

Raphael Azevedo - HT3006379
Lucas Reuel - HT3010201
Gabriel Cerdan - HT3005992
Gabriel Augusto - HT3010911
*/

create table contratante(
	id_Contratante integer,
	nome varchar(50) not null,
	cnpj integer not null,
	email varchar(50) not null
);

create table endereco(
	id_Endereco integer,
	bairro varchar(30),
	rua varchar(50),
	pais varchar(25),
	cep integer not null,
	cidade varchar(50),
	uf varchar(2) not null,
	id_Contratante integer
);

create table projeto(
	id_Projeto integer,
	nome varchar(50),
	custo_Projeto float not null,
	id_Contratante integer not null
);

create table equipe(
	id_Equipe integer,
	nome varchar(50) not null,
	id_Gerente integer not null,
	especializacao varchar(30)
);

create table funcionario(
	id_Funcionario integer,
	cpf integer not null,
	nome varchar(50) not null,
	salario float not null,
	sexo varchar(15) not null,
	ramal integer not null,
	cargo varchar(50) not null,
	id_Endereco integer not null,
	id_Equipe integer not null
);

create table problema(
	id_Problema integer,
	data_Abertura date not null,
	data_Fechamento date,
	status varchar(15) not null,
	prioridade integer not null,
	descricao varchar(250) not null,
	solucao varchar(250),
	id_Projeto integer not null
);

create table mudanca(
	id_Mudanca integer,
	data_Abertura date not null,
	data_Fechamento date,
	status varchar(15) not null,
	prioridade integer not null,
	descricao varchar(250) not null,
	objetivo varchar(250) not null,
	id_Projeto integer not null
);

create table solicitacao(
	id_Solicitacao integer,
	data_Abertura date not null,
	data_Fechamento date,
	status varchar(15) not null,
	prioridade integer not null,
	descricao varchar(250),
	id_Projeto integer not null
);

create table squad(
	id_Equipe integer not null,
	id_Projeto integer not null
);

alter table contratante add constraint PK_Contratante
	primary key (id_Contratante);
alter table endereco add constraint PK_Endereco
	primary key (id_Endereco);
alter table projeto add constraint PK_Projeto
	primary key (id_Projeto);
alter table equipe add constraint PK_Equipe
	primary key (id_Equipe);
alter table funcionario add constraint PK_Funcionario
	primary key (id_Funcionario);
alter table problema add constraint PK_Problema
	primary key (id_Problema);
alter table mudanca add constraint PK_Mudanca
	primary key (id_Mudanca);
alter table solicitacao add constraint PK_Solicitacao
	primary key (id_Solicitacao);
alter table squad add constraint PK_Squad
	primary key (id_Equipe, id_Projeto);

alter table endereco add constraint FK_End_Contratante
	foreign key (id_Contratante) references contratante(id_Contratante);
alter table projeto add constraint FK_Proj_Contratante
	foreign key (id_Contratante) references contratante(id_Contratante);
alter table squad add constraint FK_Squad_Projeto
	foreign key (id_Projeto) references projeto(id_Projeto);
alter table squad add constraint FK_Squad_Equipe
	foreign key (id_Equipe) references equipe(id_Equipe);
alter table equipe add constraint FK_Gerente
	foreign key (id_Gerente) references funcionario(id_Funcionario);
alter table funcionario add constraint FK_Func_Endereco
	foreign key (id_Endereco) references endereco(id_Endereco);
alter table funcionario add constraint FK_Func_Equipe
	foreign key (id_Equipe) references equipe(id_Equipe);
alter table problema add constraint FK_Problema
	foreign key (id_Projeto) references projeto(id_Projeto);
alter table mudanca add constraint FK_Mudanca
	foreign key (id_Projeto) references projeto(id_Projeto);
alter table problema add constraint FK_Solicitacao
	foreign key (id_Projeto) references projeto(id_Projeto);