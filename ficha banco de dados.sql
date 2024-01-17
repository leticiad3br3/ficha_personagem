-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS ficha_personagem;

-- Utilização do banco de dados
USE ficha_personagem;

-- Criação da tabela Origem
CREATE TABLE IF NOT EXISTS Origem (
    OrigemID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL
);

-- Criação da tabela OrigemPericiasTreinadas
CREATE TABLE IF NOT EXISTS OrigemPericiasTreinadas (
    OrigemPericiasTreinadasID INT AUTO_INCREMENT PRIMARY KEY,
    OrigemID INT,
    NomePericia VARCHAR(50) NOT NULL,
    FOREIGN KEY (OrigemID) REFERENCES Origem(OrigemID)
);

-- Criação da tabela OrigemHabilidadesTreinadas
CREATE TABLE IF NOT EXISTS OrigemHabilidadesTreinadas (
    OrigemHabilidadesTreinadasID INT AUTO_INCREMENT PRIMARY KEY,
    OrigemID INT,
    NomeHabilidade VARCHAR(50) NOT NULL,
    FOREIGN KEY (OrigemID) REFERENCES Origem(OrigemID)
);

-- Inserção de informações sobre Origens
INSERT INTO Origem (Nome) VALUES 
    ('Ratos da Cidade'),
    ('Gatos da Cidade'),
    ('Gatos Selvagens'),
    ('Ratos de Esgoto'),
    ('Ratos de Laboratório'),
    ('Gatos de Laboratório');

-- Inserção de informações sobre Perícias Treinadas para cada Origem
-- Ratos da Cidade
INSERT INTO OrigemPericiasTreinadas (OrigemID, NomePericia) VALUES 
    (1, 'Furtividade'),
    (1, 'Inteligência de Rua'),
    (1, 'Sobrevivência Urbana');

-- Gatos da Cidade
INSERT INTO OrigemPericiasTreinadas (OrigemID, NomePericia) VALUES 
    (2, 'Esquiva'),
    (2, 'Atuação'),
    (2, 'Vigilância');

-- Gatos Selvagens
INSERT INTO OrigemPericiasTreinadas (OrigemID, NomePericia) VALUES 
    (3, 'Força'),
    (3, 'Rastreamento'),
    (3, 'Vigilância');

-- Ratos de Esgoto
INSERT INTO OrigemPericiasTreinadas (OrigemID, NomePericia) VALUES 
    (4, 'Furtividade'),
    (4, 'Rastreamento'),
    (4, 'Sobrevivência Urbana');

-- Ratos de Laboratório
INSERT INTO OrigemPericiasTreinadas (OrigemID, NomePericia) VALUES 
    (5, 'Medicina de Rua'),
    (5, 'Negociação'),
    (5, 'Conhecimento de Gangues');

-- Gatos de Laboratório
INSERT INTO OrigemPericiasTreinadas (OrigemID, NomePericia) VALUES 
    (6, 'Esgrima'),
    (6, 'Mira'),
    (6, 'Forja de Itens');

-- Criação da tabela Raca
CREATE TABLE IF NOT EXISTS Raca (
    RacaID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    TipoAnimal VARCHAR(10)
);

-- Criação da tabela RacaPericiasTreinadas
CREATE TABLE IF NOT EXISTS RacaPericiasTreinadas (
    RacaPericiasTreinadasID INT AUTO_INCREMENT PRIMARY KEY,
    RacaID INT,
    NomePericia VARCHAR(50) NOT NULL,
    FOREIGN KEY (RacaID) REFERENCES Raca(RacaID)
);

-- Criação da tabela RacaHabilidadesEspeciais
CREATE TABLE IF NOT EXISTS RacaHabilidadesEspeciais (
    RacaHabilidadesEspeciaisID INT AUTO_INCREMENT PRIMARY KEY,
    RacaID INT,
    HabilidadeEspecial VARCHAR(50) NOT NULL,
    Fraqueza VARCHAR(100) NOT NULL,
    FOREIGN KEY (RacaID) REFERENCES Raca(RacaID)
);

-- Inserção de raças de gatos e suas habilidades especiais
INSERT INTO Raca (Nome, TipoAnimal) VALUES
    ('Persa', 'Gato'),
    ('Siamês', 'Gato'),
    ('Bengal', 'Gato'),
    ('Maine Coon', 'Gato'),
    ('Sphynx', 'Gato'),
    ('Ragdoll', 'Gato'),
    ('Abissínio', 'Gato'),
    ('British Shorthair', 'Gato'),
    ('Scottish Fold', 'Gato'),
    ('Burmese', 'Gato'),
    ('Siamês Oriental', 'Gato'),
    ('Russian Blue', 'Gato'),
    ('Manx', 'Gato'),
    ('Angorá', 'Gato'),
    ('Bombay', 'Gato'),
    ('Cornish Rex', 'Gato'),
    ('Devon Rex', 'Gato'),
    ('Exótico', 'Gato'),
    ('Tonquinês', 'Gato'),
    ('Nebelung', 'Gato'),
    ('Munchkin', 'Gato'),
    ('Norwegian Forest', 'Gato'),
    ('Turkish Van', 'Gato'),
    ('Balinês', 'Gato'),
    ('Chartreux', 'Gato');

-- Inserção de habilidades especiais para raças de gatos
INSERT INTO RacaHabilidadesEspeciais (RacaID, HabilidadeEspecial, Fraqueza) VALUES
    (1, 'Visão Noturna Aprimorada', 'Hipersensibilidade a Odores Fortes'),
    (2, 'Canto Encantador', 'Vulnerabilidade ao Frio'),
    (3, 'Camuflagem Urbana', 'Propensão a Comportamento Irritadiço'),
    (4, 'Garras Poderosas', 'Dificuldade em Escalar Estruturas Delicadas'),
    (5, 'Tato Sensível', 'Vulnerabilidade à Luz Solar Direta'),
    (6, 'Relaxamento Instantâneo', 'Dificuldade em Manter-se Alerta'),
    (7, 'Salto Gracioso', 'Tendência a Ignorar Ameaças'),
    (8, 'Resistência à Fome', 'Dificuldade em Manobras Rápidas'),
    (9, 'Audição Aguçada', 'Sensibilidade a Ruídos Altos'),
    (10, 'Carisma Felino', 'Dificuldade em Permanecer Invisível'),
    (11, 'Olhar Penetrante', 'Tendência a Ser Desafiador'),
    (12, 'Pelagem Isolante', 'Dificuldade em Interagir com Outros'),
    (13, 'Agilidade de Cauda Curta', 'Desafios em Terrenos Irregulares'),
    (14, 'Pelagem Longa', 'Cuidado Exigente com a Pelagem'),
    (15, 'Furtividade Noturna', 'Tendência a Ficar Solitário'),
    (16, 'Agilidade Leve', 'Vulnerabilidade a Correntes de Ar'),
    (17, 'Salto Acrobático', 'Tendência a Se Distrair Facilmente'),
    (18, 'Carinho Terapêutico', 'Suscetibilidade a Mudanças de Ambiente'),
    (19, 'Comunicação Silenciosa', 'Dificuldade em Comunicar Necessidades'),
    (20, 'Cauda Peluda', 'Tendência a Se Isolar'),
    (21, 'Baixa Estatura Ágil', 'Desafios em Terrenos Elevados'),
    (22, 'Resistência a Temperaturas Baixas', 'Dificuldade em Lidar com Calor Extremo'),
    (23, 'Natação Natural', 'Aversão a Ambientes Aquáticos'),
    (24, 'Mira Afiada', 'Tendência a Impulsividade'),
    (25, 'Resistência Mental', 'Dificuldade em Aceitar Mudanças');

-- Inserção de raças de ratos
INSERT INTO Raca (Nome, TipoAnimal) VALUES
    ('Rato Preto', 'Rato'),
    ('Rato Marrom', 'Rato'),
    ('Rato Albino', 'Rato'),
    ('Rato de Laboratório', 'Rato'),
    ('Rato Dumbo', 'Rato'),
    ('Rato Anão Russo', 'Rato'),
    ('Rato Hairless', 'Rato'),
    ('Rato Azul', 'Rato'),
    ('Rato Siamês', 'Rato'),
    ('Rato Topo Gigio', 'Rato'),
    ('Rato Himalaio', 'Rato'),
    ('Rato Marten', 'Rato'),
    ('Rato Argente', 'Rato'),
    ('Rato Chocolate', 'Rato'),
    ('Rato Bico de Pato', 'Rato'),
    ('Rato Satin', 'Rato'),
    ('Rato Champagne', 'Rato'),
    ('Rato Zibelina', 'Rato'),
    ('Rato Merle', 'Rato'),
    ('Rato Hooded', 'Rato'),
    ('Rato Rex', 'Rato'),
    ('Rato Manchado', 'Rato'),
    ('Rato Canela', 'Rato'),
    ('Rato Agouti', 'Rato');

-- Inserção de habilidades especiais para raças de ratos
INSERT INTO RacaHabilidadesEspeciais (RacaID, HabilidadeEspecial, Fraqueza) VALUES
    (26, 'Olfato Aguçado', 'Tendência a Ser Curioso Demais'),
    (27, 'Agilidade Rápida', 'Dificuldade em Resistir a Comida Saborosa'),
    (28, 'Cavar Instintiva', 'Desafios em Superfícies Duras'),
    (29, 'Audição Sutil', 'Sensibilidade a Sons Repentinos'),
    (30, 'Pelagem Dupla', 'Necessidade de Limpeza Frequente'),
    (31, 'Rastreamento Habilidoso', 'Curiosidade Perigosa'),
    (32, 'Resistência a Doenças', 'Vulnerabilidade a Ambientes Poluídos'),
    (33, 'Salto Ágil', 'Impulsividade em Alturas'),
    (34, 'Inteligência Astuta', 'Tendência a Roubar Brilhantes'),
    (35, 'Natação Natural', 'Desafios em Águas Turbulentas'),
    (36, 'Velocidade Veloz', 'Tendência a Ignorar Perigos'),
    (37, 'Habilidades Acrobáticas', 'Dificuldade em Resistir a Desafios'),
    (38, 'Pelagem Macia', 'Necessidade de Manutenção Constante'),
    (39, 'Cauda Equilibrada', 'Tendência a Enroscar em Coisas'),
    (40, 'Visão Noturna', 'Suscetibilidade a Luz Forte'),
    (41, 'Elasticidade Corporal', 'Propensão a Exagerar em Saltos'),
    (42, 'Furtividade Silenciosa', 'Tendência a Esconder-se'),
    (43, 'Focinho Sensível', 'Dificuldade em Resistir a Cheiros Atraentes'),
    (44, 'Comunicação Tátil', 'Vulnerabilidade a Toques Inesperados'),
    (45, 'Agilidade Escaladora', 'Desafios em Superfícies Escorregadias');

-- Exiba as tabelas para verificar se os dados foram inseridos corretamente
-- Criação da tabela HabilidadesIniciais
CREATE TABLE IF NOT EXISTS HabilidadesIniciais (
    HabilidadeID INT AUTO_INCREMENT PRIMARY KEY,
    NomeHabilidade VARCHAR(50) NOT NULL
);

-- Inserção das habilidades iniciais
INSERT INTO HabilidadesIniciais (NomeHabilidade) VALUES 
    ('Investida Feroz'),
    ('Agilidade Felina'),
    ('Garras Afiadas'),
    ('Camuflagem Urbana'),
    ('Tática de Bando'),
    ('Fúria Selvagem'),
    ('Rastreamento de Presas'),
    ('Forrageamento Hábil'),
    ('Natação Ágil'),
    ('Cura Natural'),
    ('Visão Noturna'),
    ('Persuasão Felina'),
    ('Camuflagem de Odores'),
    ('Estrategista de Emboscadas'),
    ('Salto Acrobático'),
    ('Comunicação Silenciosa'),
    ('Sentidos Aguçados');
-- Criação da tabela Itens
CREATE TABLE IF NOT EXISTS Itens (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    NomeItem VARCHAR(50) NOT NULL
);

-- Criação da tabela PersonagemItens


-- Inserção de Itens de Combate e Sobrevivência
INSERT INTO Itens (NomeItem) VALUES 
    ('Garrafas de vidro quebradas'),
    ('Estilingues'),
    ('Vendaval'),
    ('Coleiras reforçadas com pregos'),
    ('Kits de primeiros socorros');

-- Inserção de Itens de Exploração e Navegação
INSERT INTO Itens (NomeItem) VALUES 
    ('Mapa da cidade'),
    ('Binóculos'),
    ('Lanterna de cabeça'),
    ('Corda resistente'),
    ('Ferramentas de arrombamento');

-- Inserção de Itens de Interação e Diplomacia
INSERT INTO Itens (NomeItem) VALUES 
    ('Comida de qualidade'),
    ('Jogos e entretenimento'),
    ('Troféus de caça'),
    ('Mediador de conflitos'),
    ('Alianças de defesa mútua');

-- Inserção de Itens Relacionados à Sobrevivência e Recursos
INSERT INTO Itens (NomeItem) VALUES 
    ('Filtros de água'),
    ('Estoques de comida enlatada'),
    ('Gerador portátil'),
    ('Sementes e fertilizantes'),
    ('Roupa de proteção contra intempéries');

-- Inserção de Itens para Cenários de Parques
INSERT INTO Itens (NomeItem) VALUES 
    ('Redes de Arvorismo'),
    ('Comedouros de Pássaros'),
    ('Fraldas de Pano'),
    ('Bicicletas Abandonadas'),
    ('Lagos e Fontes');

-- Inserção de Itens para Cenários de Esgotos
INSERT INTO Itens (NomeItem) VALUES 
    ('Lanternas Subaquáticas'),
    ('Pilhas de Lixo'),
    ('Máscaras de Gás'),
    ('Mapas Desgastados'),
    ('Dispositivos de Drenagem');

-- Inserção de Itens para Situações Climáticas Específicas
INSERT INTO Itens (NomeItem) VALUES 
    ('Capas de Chuva'),
    ('Patins de Gelo'),
    ('Protetor Solar'),
    ('Óculos de Visão Noturna'),
    ('Raquetes de Neve');

SELECT * FROM Itens;


