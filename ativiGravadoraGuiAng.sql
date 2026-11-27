CREATE DATABASE Gravadora;
USE Gravadora;

CREATE TABLE Autor (
    Cod_Autor INT PRIMARY KEY,
    Nome_Autor VARCHAR (60),
    cod_status INT  -- não tem no modelo, porem é exigido no exercício 22 (4. Alteração dos registros (DML - UPDATE))
);

CREATE TABLE Musica (
    Cod_Musica INT PRIMARY KEY,
    Nome_Musica VARCHAR (60),
    Duracao NUMERIC (6,2)
);

CREATE TABLE Gravadora (
    Cod_Gravadora INT PRIMARY KEY,
    Nome_Gravadora VARCHAR (60),
    End_Gravadora VARCHAR (60),
    Tel_Gravadora VARCHAR (20),
    Contato VARCHAR (20),
    URL VARCHAR (80)
);

CREATE TABLE CD (
    Cod_CD INT PRIMARY KEY,
    Cod_Gravadora INT,
    Nome_CD VARCHAR (60),
    Preco_Venda NUMERIC (14,2),
    Data_Lancamento DATETIME,
    CD_Indicado INT,
    FOREIGN KEY (Cod_Gravadora) REFERENCES Gravadora(Cod_Gravadora),
    FOREIGN KEY (CD_Indicado) REFERENCES CD(Cod_CD)
);

CREATE TABLE Musica_Autor (
    Cod_Musica INT,
    Cod_Autor INT,
    PRIMARY KEY (Cod_Musica, Cod_Autor),
    FOREIGN KEY (Cod_Musica) REFERENCES Musica(Cod_Musica),
    FOREIGN KEY (Cod_Autor) REFERENCES Autor(Cod_Autor)
);

CREATE TABLE Faixa (
    Cod_Musica INT,
    Cod_CD INT,
    Num_Faixa INT,
    PRIMARY KEY (Cod_Musica, Cod_CD),
    FOREIGN KEY (Cod_Musica) REFERENCES Musica(Cod_Musica),
    FOREIGN KEY (Cod_CD) REFERENCES CD(Cod_CD)
);


INSERT INTO Autor (Cod_Autor, Nome_Autor) VALUES
(1, "Vinicius de Moraes"),
(2, "Nirvana"),
(3, "Foo Fighters"),
(4, "Weezer"),
(5, "Radiohead");

INSERT INTO Musica (Cod_Musica, Nome_Musica, Duracao) VALUES
(1, "Garota de Ipanema", 3.45),
(2, "About A Girl", 2.48),
(3, "Everlong", 4.10),
(4, "Buddy Holly", 2.39),
(5, "Jigsaw Falling Into Place", 4.08),
(6, "Breed", 3.04);

INSERT INTO Gravadora (Cod_Gravadora, Nome_Gravadora, End_Gravadora, Tel_Gravadora, Contato, URL) VALUES
(1, "Elenco", "Rua da Música, 100 - Rio de Janeiro", "(21) 3333-1111", "Roberto Menescal", "https://gravadoraelenco.com.br"),
(2, "Geffen Records", "Sunset Blvd, 2220 - Los Angeles", "(310) 555-2222", "David Geffen", "https://geffen.com"),
(3, "RCA Records", "Madison Ave, 550 - New York", "(212) 555-3333", "Peter Edge", "https://rcarecords.com");

INSERT INTO CD (Cod_CD, Cod_Gravadora, Nome_CD, Preco_Venda, Data_Lancamento) VALUES
(1, 1, "Vinicius & Odette Lara", 49.90, "1963-05-10 00:00:00"),
(2, 2, "Nevermind (Remastered)", 59.90, "2011-09-27 00:00:00"),
(3, 3, "The Colour and the Shape", 64.50, "1997-05-20 00:00:00"),
(4, 2, "Weezer (Blue Album)", 54.90, "1994-05-10 00:00:00"),
(5, 3, "In Rainbows", 58.90, "2007-10-10 00:00:00");

INSERT INTO Musica_Autor (Cod_Musica, Cod_Autor) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(4, 4),
(5, 5),
(6, 2);

INSERT INTO Faixa (Cod_Musica, Cod_CD, Num_Faixa) VALUES
(1, 1, 1),
(2, 2, 1),
(6, 2, 4),
(3, 3, 11),
(4, 4, 4),
(5, 5, 9),
(2, 3, 2),
(6, 4, 5);


UPDATE Musica SET Duracao = 4.30 WHERE Cod_Musica = 1;
UPDATE Autor SET Nome_Autor = "Carlos Silva" WHERE Cod_Autor = 2;
UPDATE CD SET Preco_Venda = 60.00 WHERE Cod_CD = 1;
UPDATE Autor SET cod_status = 1;

DELETE FROM Musica_Autor WHERE Cod_Musica = 1 AND Cod_Autor = 1;
DELETE FROM Faixa WHERE Cod_Musica = 1 AND Cod_CD = 1;
DELETE FROM Musica_Autor;

SELECT * FROM Musica;
SELECT Nome_Autor FROM Autor
