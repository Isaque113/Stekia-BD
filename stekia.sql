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
    id_login_FK BIGINT.
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
    habilidade_jogador_FK 
    hp_jogador INT,
    xp_jogador BIGINT,
    forca_jogador
    foco_jogador
    reflexo_jogador
    mente_jogador
    FOREIGN KEY (id_jogador_FK) REFERENCES jogador(id_jogador),
    FOREIGN KEY (id_raca_FK) REFERENCES raca(id_raca),
    FOREIGN KEY (id_classe_FK) REFERENCES classe(id_classe)
);

CREATE TABLE raca (
    id_raca
);

CREATE TABLE classe (
    id_classe
);

CREATE TABLE inventario (
    id_inventario PK
    id_jogador FK
    id_slot_inventario PK
    id_item FK
    quantidade_total_do_slot
);

CREATE TABLE npc (
    id_npc PK
    amizade_npc
);

CREATE TABLE item (
    id_item PK
    descricao_item
);
/*
https://docs.google.com/document/d/1E0A-FJHErcz_sHSzqO6JAmdunl-YpohUC_fhxepxqM0/edit?tab=t.0
*/