/*--------------------------Log Contratante-------------------------------------*/
create table log_contratante(
	id_log serial primary key,
	id_Contratante integer not null,
	dt_modif timestamp not null,
	constraint fk_contratante
		foreign key (id_Contratante)
			references contratante(id_Contratante)
);


create or replace function f_modifica_contratante()
returns trigger
as $$
begin
	insert into log_contratante(id_contratante, dt_modif)
		values(new.id_Contratante, now());
	return new;
end;
$$ language plpgsql;


create or replace trigger t_insere_contratante
after insert or update on contratante for each row
execute procedure f_modifica_contratante();


/*--------------------------Log Endereço-------------------------------------*/
create table log_endereco(
	id_log serial primary key,
	id_Endereco integer not null,
	dt_modif timestamp not null,
	constraint fk_endereco
		foreign key (id_Endereco)
			references endereco(id_Endereco)
);

create or replace function f_modifica_endereco()
returns trigger
as $$
begin
	insert into log_endereco(id_Endereco, dt_modif)
		values(new.id_Endereco, now());
	return new;
end;
$$ language plpgsql;


create or replace trigger t_insere_endereco
after insert or update on endereco for each row
execute procedure f_modifica_endereco();


/*--------------------------Log Projeto-------------------------------------*/
create table log_projeto(
	id_log serial primary key,
	id_Projeto integer not null,
	dt_modif timestamp not null,
	constraint fk_projeto
		foreign key (id_Projeto)
			references projeto(id_Projeto)
);


create or replace function f_modifica_projeto()
returns trigger
as $$
begin
	insert into log_projeto(id_Projeto, dt_modif)
		values(new.id_Projeto, now());
	return new;
end;
$$ language plpgsql;


create or replace trigger t_insere_projeto
after insert or update on projeto for each row
execute procedure f_modifica_projeto();


/*--------------------------Log Equipe-------------------------------------*/
create table log_equipe(
	id_log serial primary key,
	id_Equipe integer not null,
	dt_modif timestamp not null,
	constraint fk_equipe
		foreign key (id_Equipe)
			references equipe(id_Equipe)
);


create or replace function f_modifica_equipe()
returns trigger
as $$
begin
	insert into log_equipe(id_Equipe, dt_modif)
		values(new.id_Equipe, now());
	return new;
end;
$$ language plpgsql;


create or replace trigger t_insere_equipe
after insert or update on equipe for each row
execute procedure f_modifica_equipe();


/*--------------------------Log Funcionário-------------------------------------*/
create table log_funcionario(
	id_log serial primary key,
	id_Funcionario integer not null,
	dt_modif timestamp not null,
	constraint fk_funcionario
		foreign key (id_Funcionario)
			references funcionario(id_Funcionario)
);


create or replace function f_modifica_funcionario()
returns trigger
as $$
begin
	insert into log_funcionario(id_Funcionario, dt_modif)
		values(new.id_Funcionario, now());
	return new;
end;
$$ language plpgsql;


create or replace trigger t_insere_funcionario
after insert or update on funcionario for each row
execute procedure f_modifica_funcionario();


/*--------------------------Log Problema-------------------------------------*/
create table log_problema(
	id_log serial primary key,
	id_Problema integer not null,
	dt_modif timestamp not null,
	constraint fk_problema
		foreign key (id_Problema)
			references problema(id_Problema)
);


create or replace function f_modifica_problema()
returns trigger
as $$
begin
	insert into log_problema(id_Problema, dt_modif)
		values(new.id_Problema, now());
	return new;
end;
$$ language plpgsql;


create or replace trigger t_insere_problema
after insert or update on problema for each row
execute procedure f_modifica_problema();


/*--------------------------Log Mudança-------------------------------------*/
create table log_mudanca(
	id_log serial primary key,
	id_Mudanca integer not null,
	dt_modif timestamp not null,
	constraint fk_mudanca
		foreign key (id_Mudanca)
			references mudanca(id_Mudanca)
);


create or replace function f_modifica_mudanca()
returns trigger
as $$
begin
	insert into log_mudanca(id_Mudanca, dt_modif)
		values(new.id_Mudanca, now());
	return new;
end;
$$ language plpgsql;


create or replace trigger t_insere_mudanca
after insert or update on mudanca for each row
execute procedure f_modifica_mudanca();


/*--------------------------Log Solicitação-------------------------------------*/
create table log_solicitacao(
	id_log serial primary key,
	id_Solicitacao integer not null,
	dt_modif timestamp not null,
	constraint fk_solicitacao
		foreign key (id_Solicitacao)
			references solicitacao(id_Solicitacao)
);


create or replace function f_modifica_solicitacao()
returns trigger
as $$
begin
	insert into log_solicitacao(id_Solicitacao, dt_modif)
		values(new.id_Solicitacao, now());
	return new;
end;
$$ language plpgsql;


create or replace trigger t_insere_solicitacao
after insert or update on solicitacao for each row
execute procedure f_modifica_solicitacao();
