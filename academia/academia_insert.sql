INSERT INTO planos (nome, valor_mensal_base) VALUES 
('VIP Premium', 220.00), 
('Fitness Standard', 140.00), 
('Basic Fit', 90.00);

INSERT INTO modalidades (plano_id, nome, sala, capacidade_maxima, disponivel) VALUES 
(1, 'Crossfit Pro', 'Arena 01', 15, TRUE),
(2, 'Pilates Avançado', 'Studio 02', 10, TRUE),
(3, 'Musculação Livre', 'Salão Principal', 50, TRUE);

INSERT INTO alunos (nome, email, cpf, telefone) VALUES 
('Carlos Silva', 'carlos@email.com', '11122233344', '11999990000'),
('Ana Lima', 'ana@email.com', '22233344455', '11988880000'),
('Beatriz Costa', 'bea@email.com', '33344455566', '11977770000');

INSERT INTO matriculas (aluno_id, status) VALUES 
(1, 'Ativa'), 
(1, 'Ativa'), 
(2, 'Ativa'), 
(3, 'Cancelada');

INSERT INTO itens_matricula (matricula_id, modalidade_id, duracao_meses, valor_mensal_aplicado, taxa_adesao) VALUES 
(9, 1, 6, 220.00, 50.00),
(10, 2, 3, 140.00, 30.00),
(11, 3, 12, 90.00, 0.00),
(12, 1, 1, 220.00, 50.00);
