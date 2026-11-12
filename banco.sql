-- Criacao do banco de dados
CREATE DATABASE IF NOT EXISTS loja_cavalos;
USE loja_cavalos;

-- 1. Entidade de Cadastro: CLIENTES (8 atributos)
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(255),
    data_nascimento DATE,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. Entidade de Cadastro: USUARIOS (8 atributos)
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    status_conta VARCHAR(20) DEFAULT 'Ativo',
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 3. Entidade de Cadastro: PRODUTOS (8 atributos)
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(150) NOT NULL,
    categoria VARCHAR(50) NOT NULL, -- Ex: Selaria, Alimentacao, Higiene, Medicamento
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL DEFAULT 0,
    marca VARCHAR(100),
    codigo_barras VARCHAR(50) UNIQUE,
    descricao TEXT
);

-- 4. Entidade de Cadastro: CAVALOS (8 atributos)
CREATE TABLE cavalos (
    id_cavalo INT AUTO_INCREMENT PRIMARY KEY,
    nome_cavalo VARCHAR(100) NOT NULL,
    raca VARCHAR(50) NOT NULL, -- Ex: Quarto de Milha, Mangalarga, Crioulo
    pelagem VARCHAR(50) NOT NULL, -- Ex: Alazao, Tordilho, Castanho
    sexo CHAR(1) NOT NULL, -- 'M' ou 'F'
    data_nascimento DATE,
    preco_venda DECIMAL(12, 2) NOT NULL,
    status_registro VARCHAR(30) DEFAULT 'Disponivel' -- Ex: Disponivel, Vendido, Em Tratamento
);
