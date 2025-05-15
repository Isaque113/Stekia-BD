CREATE DATABASE stekia;
USE stekia;

CREATE TABLE usuario_login (
    id_login BIGINT PRIMARY KEY AUTO_INCREMENT,
    email_login VARCHAR,
    senha_login VARCHAR
);

CREATE TABLE checkpoint_mapa (
    id_checpoint INT
);

CREATE TABLE jogador (
    id_jogador BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_login_FK BIGINT,
    checkpoint_jagador_FK INT,
    nome_jogador VARCHAR,
    status_conta_jogador VARCHAR,
    ultimo_login_jogador DATETIME,
    FOREIGN KEY (checkpoint_jagador_FK) REFERENCES checpoint_mapa(id_checpoint),
    FOREIGN KEY (id_login_FK) REFERENCES usuario_login(id_login)
);

CREATE TABLE atributo_jogador (
    id_atributo_jogador BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_jogador_FK BIGINT,
    id_raca_FK INT,
    id_classe_FK INT,
    habilidade_jogador VARCHAR,
    hp_jogador INT,
    xp_jogador BIGINT,
    forca_jogador INT,
    foco_jogador INT,
    reflexo_jogador INT,
    mente_jogador INT,
    FOREIGN KEY (id_jogador_FK) REFERENCES jogador(id_jogador),
    FOREIGN KEY (id_raca_FK) REFERENCES raca(id_raca),
    FOREIGN KEY (id_classe_FK) REFERENCES classe(id_classe)
);

CREATE TABLE raca (
    id_raca INT PRIMARY KEY AUTO_INCREMENT,
);

CREATE TABLE classe (
    id_classe BIGINT PRIMARY KEY AUTO_INCREMENT,
);

CREATE TABLE inventario (
    id_inventario BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_slot_inventario INT PRIMARY KEY AUTO_INCREMENT,
    id_jogador_FK BIGINT,
    id_item_FK INT,
    quantidade_total_do_slot INT
    FOREIGN KEY (id_jogador_FK) REFERENCES jogador(id_jogador),
    FOREIGN KEY (id_item_FK) REFERENCES item(id_item)
);

CREATE TABLE npc (
    id_npc INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE amizade_jogador (
    id_jogador_FK BIGINT,
    id_npc_FK INT,
    pontos_amizade INT
);

CREATE TABLE item (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    descricao_item VARCHAR
)

/*
https://docs.google.com/document/d/1E0A-FJHErcz_sHSzqO6JAmdunl-YpohUC_fhxepxqM0/edit?tab=t.0
*/