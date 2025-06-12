CREATE DATABASE stekia;
USE stekia;

CREATE TABLE usuario_login (
    id_login BIGINT PRIMARY KEY AUTO_INCREMENT,
    email_login VARCHAR(320) NOT NULL,
    senha_login VARCHAR(60) NOT NULL
);

CREATE TABLE checkpoint_mapa (
    id_checpoint INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome_checkpoint VARCHAR(20),
    descricao_checpoint VARCHAR(100)
);

CREATE TABLE jogador (
    id_jogador BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_loginFK BIGINT NOT NULL,
    checkpoint_jagadorFK INT(4) NOT NULL,
    nome_jogador VARCHAR(20) NOT NULL,
    status_conta_jogador VARCHAR(10),
    ultimo_login_jogador SMALLDATETIME,
    FOREIGN KEY (checkpoint_jagadorFK) REFERENCES checpoint_mapa(id_checpoint),
    FOREIGN KEY (id_loginFK) REFERENCES usuario_login(id_login)
);

--max de 99999 de itens diferentes
CREATE TABLE item (
    id_item INT (5) PRIMARY KEY AUTO_INCREMENT,
    descricao_item VARCHAR(100)
)

-- max dde 999 racas
CREATE TABLE raca (
    id_raca INT(3) PRIMARY KEY AUTO_INCREMENT,
    nome_raca VARCHAR(20),
    descricao_raca VARCHAR(100)
);

--max de 999 classes
CREATE TABLE classe (
    id_classe INT(3) PRIMARY KEY AUTO_INCREMENT,
    nome_classe VARCHAR(20),
    descricao_classe VARCHAR(100)
);

--max de 999 habilidades
CREATE TABLE habilidade (
    id_habilidade INT(3) PRIMARY KEY AUTO_INCREMENT,
    nome_habilidade VARCHAR(30),
    descricao_classe VARCHAR(100)
);

CREATE TABLE atributo_jogador (
    id_atributo_jogador BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_jogadorFK BIGINT,
    id_racaFK INT(3),
    id_classeFK INT(3),
    id_habilidadeFK INT(3),
    hp_jogador INT(7),
    xp_jogador INT,
    forca_jogador INT(3),
    foco_jogador INT(3),
    reflexo_jogador INT(3),
    mente_jogador INT(3),
    FOREIGN KEY (id_jogadorFK) REFERENCES jogador(id_jogador),
    FOREIGN KEY (id_racaFK) REFERENCES raca(id_raca),
    FOREIGN KEY (id_classeFK) REFERENCES classe(id_classe),
    FOREIGN KEY (id_habilidadeFK) REFERENCES habilidade(id_habilidade)
);

--max de 999 slots de inventario
CREATE TABLE inventario (
    id_inventario BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_jogadorFK BIGINT NOT NULL,
    id_itemFK INT(5),
    slot_inventario INT(3),
    FOREIGN KEY (id_jogadorFK) REFERENCES jogador(id_jogador),
    FOREIGN KEY (id_itemFK) REFERENCES item(id_item)
);

--max de 9999 NPCs
CREATE TABLE npc (
    id_npc INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome_npc VARCHAR(20),
    descricao_npc VARCHAR(100)
);

--max de 99999 pontos de amizade
--modelo da PK, ex: "1122334455667788990-1111" feito com o id do jogador e do npc
CREATE TABLE amizade_jogador (
    id_amizade_NPC VARCHAR(24) PRIMARY KEY AUTO_INCREMENT,
    id_jogadorFK BIGINT,
    id_npcFK INT(4),
    pontos_amizade INT(5)
);


/*
https://docs.google.com/document/d/1E0A-FJHErcz_sHSzqO6JAmdunl-YpohUC_fhxepxqM0/edit?tab=t.0
*/