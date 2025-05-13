CREATE DATABASE stekia;
USE stekia;

CREATE TABLE usuario_login (
    id_login BIGINT PRIMARY KEY AUTO_INCREMENT,
    email_login VARCHAR,
    senha_login VARCHAR
)