CREATE DATABASE db_game;

CREATE TABLE tb_classes (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    habilidade VARCHAR(50),
    sexo VARCHAR(50)
);
CREATE TABLE tb_personagens (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    poder_ataque INT,
    poder_defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (id, nome, habilidade, sexo) VALUES
(1, 'Classe 1', 'Mago', 'Invisibilidade', 'masculino'),
(2, 'Classe 2', 'Arqueiro', 'velocidade', 'feminino'),
(3, 'Classe 3', 'Guerreiro', 'Força','feminino'),
(4, 'Classe 4', 'Fada', 'Voar','masculino'),
(5, 'Classe 5', 'Bruxa', 'Magia','feminino');

INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa, id_classe) VALUES
(1, 'Fred', 3000, 1500, 1),
(2, 'Lua', 2000, 1000, 2),
(3, 'Xena', 2500, 2000, 3),
(4, 'josé', 4000, 3000, 4),
(5, 'Ray', 1500, 5000, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;