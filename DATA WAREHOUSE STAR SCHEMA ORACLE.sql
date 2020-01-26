-- CRIAR E INSERIR NA DIMENSÃO LIVROS
CREATE TABLE DIMLIVRO(
	Livro_ID		NUMERIC(4) PRIMARY KEY NOT NULL,
	Titulo			VARCHAR(120) NOT NULL,
	Situacao		VARCHAR(60) NOT NULL,
	Nome_Autor		VARCHAR(60) NOT NULL
);

INSERT INTO DIMLIVRO(Livro_ID, Titulo, Situacao, Nome_Autor)
SELECT DISTINCT l.Livro_ID, l.Titulo, l.Situacao, a.Nome_Autor
	   FROM Livro l, AUTORES a WHERE
	   l.Autor_ID = a.Autor_ID
	   and l.Situacao like 'E%';
       
-- CRIAR E INSERIR NA DIMENSÃO CLIENTES
CREATE TABLE DIMCLIENTE(
	CPF		NUMERIC(11) NOT NULL PRIMARY KEY,
	Nome	VARCHAR(60) NOT NULL
);

INSERT INTO DIMCLIENTE (CPF, Nome) SELECT c.CPF, c.Nome FROM CLIENTE c  
WHERE EXISTS(SELECT 'x' FROM ITEMDACOMPRA it,Compra cm WHERE c.CPF = it.CPF AND it.Compra_ID = cm.Compra_Id);

-- CRIAR E INSERIR NA DIMENSÃO EDITORAS
CREATE TABLE DIMEDITORA(
	Editora_ID		NUMERIC(6) PRIMARY KEY NOT NULL,
	Nome_Editora	VARCHAR(60) NOT NULL,
	Nome_Pais		VARCHAR(60)
);

INSERT INTO DIMEDITORA (Editora_ID, Nome_Editora, Nome_Pais)
SELECT e.Editora_ID, e.Nome_Editora, p.Nome_Pais
	   FROM Editora  e LEFT JOIN PaisEditora p on
	   e.Pais_ID = p.Pais_ID;

-- CRIAR E INSERIR NA DIMENSÃO DATAS
CREATE TABLE DIMDATA(
	ID_Mes		NUMERIC(2) PRIMARY KEY NOT NULL,
	Mes			VARCHAR(10) NOT NULL
);

INSERT INTO DIMDATA(ID_Mes, Mes) 
SELECT  m.ID_Mes, m.Mes
FROM MES m 
WHERE EXISTS(SELECT 'x' FROM Compra c WHERE c.ID_Mes = m.ID_Mes);

-- CRIAR E INSERIR DADOS NA TABELA FATO

CREATE TABLE VENDAFATO(
	CPF					NUMERIC(11) NOT NULL,
	Livro_ID			NUMERIC(4) NOT NULL,
	Editora_ID			NUMERIC(6) NOT NULL,
	Valor				DECIMAL(5,2) NOT NULL,
	Custo				DECIMAL(5,2) NOT NULL,
	ID_Mes				NUMERIC(2) NOT NULL,
	Ano_ID				NUMERIC(4) NOT NULL,
	Quantidade			NUMERIC(4) NOT NULL,
	MargemDeLucro		NUMERIC(8,2) NOT NULL,
	Faturamento			NUMERIC(8,2) NOT NULL,
	PercentualDeLucro	NUMERIC(5,2) NOT NULL,
	FOREIGN KEY (CPF) REFERENCES DIMCLIENTE (CPF),
	FOREIGN KEY (Livro_ID) REFERENCES DIMLIVRO (Livro_ID),
	FOREIGN KEY (Editora_ID) REFERENCES DIMEDITORA (Editora_ID),
	FOREIGN KEY (ID_Mes) REFERENCES DIMDATA (ID_Mes)
);

INSERT INTO VENDAFATO (CPF, Livro_ID, Editora_ID, Valor, Custo, ID_Mes, Ano_ID,
				  Quantidade, MargemDeLucro, Faturamento, PercentualDeLucro)
SELECT DISTINCT 
	    c.CPF					as VendaCodCliente, 
	    l.Livro_ID				as VendaCodLivro,
	    e.Editora_ID				as VendaCodEditora, 
	    cm.Valor					as VendaValor, 
	    cm.Custo					as VendaCusto,
	    m.ID_Mes					as VendaMes, 
	    an.Ano_ID				as VendaAno,
	    count(l.livro_ID)		as Quantidade, 
	    sum(cm.Valor - cm.Custo)	as MargemDeLucro,
	    sum(cm.Valor)			as Faturamento,
	    sum(cm.Valor - cm.Custo)
	    /sum(cm.Valor)		as PercentualDeLucro
	FROM 
	   Cliente c
    INNER JOIN ItemDaCompra i ON c .CPF = i .CPF
    INNER JOIN Compra cm ON i . Compra_ID = cm. Compra_Id
    INNER JOIN Livro l ON cm. Livro_ID = l . Livro_ID
    INNER JOIN Editora e ON l . Editora_ID = e.Editora_ID
    INNER JOIN PaisEditora p ON e.Pais_ID = p.Pais_ID
    INNER JOIN Mes m ON cm. ID_Mes = m. ID_Mes
    INNER JOIN Ano an ON cm. Ano_ID = an . Ano_ID
    INNER JOIN Autores au ON l.Autor_ID = au.Autor_ID
WHERE
    m. ID_Mes IS NOT NULL
    GROUP BY c.CPF, l. Livro_ID, e.Editora_ID,
    cm.Valor, cm.Custo, m.ID_Mes, an.Ano_ID;
