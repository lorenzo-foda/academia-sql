create table alunos (
	id serial primary key,
	nome varchar(100) not null,
	email varchar(100) unique not null,
	cpf varchar(11) unique not null,
	telefone varchar(20) not null,
	data_cadastro timestamp default current_timestamp
)

create table planos (
	id serial primary key,
	nome varchar(100) unique not null,
	valor_mensal_base decimal(10,2) check(valor_mensal_base > 0.0) not null
)

create table modalidades (
	id serial primary key,
	plano_id int references planos(id),
	nome varchar(100) not null,
	sala varchar(100) not null,
	capacidade_maxima int check(capacidade_maxima > 0) not null,
	disponivel bool default true
)

create table matriculas (
	id serial primary key,
	aluno_id int references alunos(id),
	data_inicio timestamp default current_timestamp,
	status varchar(20) default 'Ativa' check(status in ('Ativa', 'Cancelada', 'Trancada')) 
)

create table itens_matriculas (
	id serial primary key,
	matricula_id int references matriculas(id),
	modalidade_id int references modalidades(id),
	duracao_meses int check(duracao_meses > 0) not null,
	valor_mensal_aplicado decimal(10,2) check(valor_mensal_aplicado > 0) not null,
	taxa_adesao decimal(10,2) check(taxa_adesao >= 0) default 0.0
)



