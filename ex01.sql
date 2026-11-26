create database TESTE;

use TESTE;

create table CLIENTES (
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nome_cliente VARCHAR(80),
    cpf_cliente VARCHAR(11),
    tel_cliente VARCHAR(12),
    end_cliente VARCHAR(80),
	PRIMARY KEY (id_cliente)
);

create table EMPRESA (
	id_empresa INT NOT NULL AUTO_INCREMENT,
	cnpj_empresa VARCHAR(11),
    end_empresa VARCHAR(80),
    tel_empresa VARCHAR(12),
	PRIMARY KEY (id_empresa)
);

create table CLIENTE_EMPRESA (
	id_empresa INT NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY (id_empresa, id_cliente),
    FOREIGN KEY (id_empresa) REFERENCES EMPRESA (id_empresa),
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES (id_cliente)
);

