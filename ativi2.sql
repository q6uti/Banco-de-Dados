CREATE DATABASE Locadora;
USE Locadora;

CREATE TABLE Midia (
	id INT PRIMARY KEY NOT NULL,
     tipo VARCHAR (60)
);

CREATE TABLE Genero (
	id INT PRIMARY KEY NOT NULL,
    descricao VARCHAR (45)
);

CREATE TABLE ClassificacaoIndicativa (
	id INT PRIMARY KEY NOT NULL,
    descricao VARCHAR (45)
);

CREATE TABLE Filmes (
	id INT PRIMARY KEY NOT NULL,
	nome VARCHAR (60),
	anoLancamento INT,
    duracao INT,
    valorDiaria DOUBLE,
    valorVenda DOUBLE,
    Midia_id INT NOT NULL,
    Genero_id INT NOT NULL,
    FaixaEtaria_id INT NOT NULL,
    FOREIGN KEY (Midia_id) REFERENCES Midia (id),
    FOREIGN KEY (Genero_id) REFERENCES Genero (id),
    FOREIGN KEY (FaixaEtaria_id) REFERENCES ClassificacaoIndicativa (id)
);

-- DML
INSERT INTO Midia (id, tipo) VALUES (1, "DVD");
INSERT INTO Midia (id, tipo) VALUES (2, "Digital");
INSERT INTO Midia (id, tipo) VALUES (3, "Analógico");

INSERT INTO Genero (id, descricao) VALUES
(1, "Ação"),
(2, "Comédia"),
(3, "Animação"),
(4, "Drama"),
(5, "Terror");

INSERT INTO ClassificacaoIndicativa (id, descricao) VALUES
(1, "Livre (L)"),
(2, "06 anos"),
(3, "10 anos"),
(4, "12 anos"),
(5, "14 anos"),
(6, "16 anos"),
(7, "18 anos");

INSERT INTO Filmes
(id, nome, anoLancamento, duracao,
valorDiaria, valorVenda,
Midia_id, Genero_id, FaixaEtaria_id)
VALUES
(1, "Toy Story", 1995, 81, 5.00, 25.00, 1, 3, 1),
(2, "Vingadores", 2012, 143, 8.00, 40.00, 2, 1 , 3),
(3, "Divertida Mente", 2015, 95, 6.00, 30.00, 3, 3, 1),
(4, "Cyberpunk: Mercenários", 2022, 250, 25.90, 233.90, 2, 1, 6);

# USO DEMONSTRAÇÃO "SELECT":
SELECT * FROM Midia;
SELECT * FROM Genero;
SELECT * FROM ClassificacaoIndicativa;
SELECT * FROM Filmes;

-- ATUALIZAR VALOR DA TABELA:
UPDATE Filmes SET valorDiaria = 10.00 WHERE id = 1;

-- USO DO DELETE
DELETE FROM Filmes WHERE id = 3;