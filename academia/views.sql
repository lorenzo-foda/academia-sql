create view vw_modalidades_custo_estimado as
select
	m.nome as modalidade,
	m.sala,
	p.nome as plano,
	round(p.valor_mensal_base * 1.10, 2) as mensalidade_com_taxa
from modalidades m
join planos p on m.plano_id = p.id
order by mensalidade_com_taxa desc;


create view vw_matriculas_ativas as
select
	a.nome as aluno,
	a.cpf,
	m.nome as modalidade,
	m.sala,
	i.duracao_meses,
	mt.data_inicio
from matriculas mt
join alunos a 
	on mt.aluno_id = a.id
join itens_matriculas i 
	on mt.id = i.matricula_id
join modalidades m 
	on i.modalidade_id = m.id
where mt.status = 'Ativa';
--"as" é um apelido na view--



