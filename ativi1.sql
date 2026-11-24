create database BLIBIOTECA;

use BLIBIOTECA;

create table Categoria (
	cod_cate int
    desc_cate varchar(40),
    primary key (cod_cate),
);

create table Autores (
	cod_autor int,
    nome_autor varchar(80),
    nacionalidade varchar(30),
    primary key (cod_autor)
);

create table Livros (
	ISBN int,
    titulo_livro varchar(100),
    ano int,
    editora varchar(50),
    primary key (ISBN)
);

create table Autor_livro (
	cod_autor int,
    ISBN double,
    primary key (cod_autor, ISBN),
	FOREIGN KEY (cod_autor) REFERENCES Autores (cod_autor),
    FOREIGN KEY (ISBN) REFERENCES Livros (ISBN)
);
	




