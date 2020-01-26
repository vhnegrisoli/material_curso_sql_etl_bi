-- Banco de Dados: Conceitos Básicos e Modelagem
-- Aula 03: Comandos DML: INSERT, UPDATE e DELETE.
-- Professores: Victor Hugo Negrisoli, Rafael Nonino Filho

CREATE TABLE CLIENTE (
	CPF				NUMBER(11),
	Nome			VARCHAR2(60),
	Endereco		VARCHAR2(120),
	Email			VARCHAR2(60),
	Telefone		VARCHAR2(11),
	CONSTRAINT CPF PRIMARY KEY (CPF)
);

CREATE TABLE AUTORES(
	Autor_ID		NUMBER(6),
	Nome_autor		VARCHAR2(60),
	CONSTRAINT Autor_ID PRIMARY KEY (Autor_ID)
);

CREATE TABLE ACABAMENTO(
	Acabamento_ID	NUMBER(6),
	Papel			VARCHAR2(20),
	Capa			VARCHAR2(20),
	CONSTRAINT Acabamento_ID PRIMARY KEY (Acabamento_ID)
);

CREATE TABLE PAISEDITORA(
	Pais_ID			NUMBER(6),
	Nome_Pais		VARCHAR2(60),
	CONSTRAINT Pais_ID PRIMARY KEY (Pais_ID)
);

CREATE TABLE EDITORA(
	Editora_ID			NUMBER(6),
	Nome_Editora		VARCHAR2(60),
	Pais_ID				NUMBER(6),
	FOREIGN KEY (Pais_ID) REFERENCES PAISEDITORA (Pais_ID),
	CONSTRAINT Editora_ID PRIMARY KEY (Editora_ID)
);

CREATE TABLE LIVRO(
	Livro_ID		                    NUMBER(4),
	Titulo			                    VARCHAR2(120),
	Situacao		                    VARCHAR2(60),
	Editora_ID		                    NUMBER(6),
	FOREIGN KEY (Editora_ID) 
    REFERENCES EDITORA (Editora_ID),
	Autor_ID		                    NUMBER(6),
	FOREIGN KEY (Autor_ID) 
    REFERENCES AUTORES (Autor_ID),
	Acabamento_ID	                    NUMBER(6),
	FOREIGN KEY (Acabamento_ID) 
    REFERENCES ACABAMENTO (Acabamento_ID),
	AnoPub			                    NUMBER(4) NOT NULL,
	CONSTRAINT Livro_ID 
    PRIMARY KEY (Livro_ID)
);

CREATE TABLE ANO(
    Ano_ID          NUMBER(4) PRIMARY KEY
);

CREATE TABLE MES(
    ID_Mes          NUMBER(2) PRIMARY KEY,
    Mes             VARCHAR2(12)
);

CREATE TABLE COMPRA (
	Compra_Id		                    NUMBER(6),
	Livro_ID		                    NUMBER(4),
	Ano_ID								NUMBER(4),
	ID_Mes								NUMBER(2),
	Valor								DECIMAL(5,2),
	Custo								DECIMAL(5,2)
	FOREIGN KEY (Livro_ID) 
    REFERENCES LIVRO (Livro_ID),
	CONSTRAINT Compra_ID PRIMARY KEY (Compra_ID)
);

CREATE TABLE TROCA (
	Troca_ID		NUMBER(6),
	Motivo			VARCHAR2(120),
	Livro_ID		NUMBER(4),
	FOREIGN KEY (Livro_ID) REFERENCES LIVRO (Livro_ID),
	CONSTRAINT Troca_ID PRIMARY KEY (Troca_ID)
);

CREATE TABLE ITEMDATROCA (
	Troca_ID		NUMBER(6),
	FOREIGN KEY (Troca_ID) REFERENCES TROCA (Troca_ID),
	CPF				NUMBER(11),
	FOREIGN KEY (CPF) REFERENCES CLIENTE (CPF)
);

CREATE TABLE ITEMDACOMPRA (
	Compra_ID		NUMBER(6),
	FOREIGN KEY (Compra_ID) REFERENCES COMPRA (Compra_ID),
	CPF				NUMBER(11),
	FOREIGN KEY (CPF) REFERENCES CLIENTE (CPF)
);
