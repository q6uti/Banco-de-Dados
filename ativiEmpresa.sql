CREATE DATABASE Biblioteca;
USE Biblioteca;
 
CREATE TABLE Categoria (
    cod_cat INT PRIMARY KEY,
    desc_cat VARCHAR(40)
);
 
CREATE TABLE Autor (
    cod_autor INT PRIMARY KEY,
    nacionalidade VARCHAR(30),
    nome_autor VARCHAR(60)
);
 
CREATE TABLE Livro (
    ISBN DOUBLE PRIMARY KEY,
    titulo_livro VARCHAR(100),
    editora VARCHAR(50),
    ano INT,
    cod_cat INT,
    FOREIGN KEY (cod_cat) REFERENCES Categoria(cod_cat)
);
 
CREATE TABLE Autor_Livro (
    cod_autor INT,
    ISBN DOUBLE,
    PRIMARY KEY (cod_autor, ISBN),
    FOREIGN KEY (cod_autor) REFERENCES Autor(cod_autor),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);
 