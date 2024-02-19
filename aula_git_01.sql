CREATE TABLE PAIS ( COD_PAIS NUMBER PRIMARY KEY,
                    NOME VARCHAR2(30));

CREATE TABLE ESTADO(COD_ESTADO NUMBER PRIMARY KEY,
                    NOME_ESTADO VARCHAR2(30),
                    COD_PAIS NUMBER);
                    
ALTER TABLE ESTADO ADD CONSTRAINT 
FK_ESTADO FOREIGN KEY (COD_PAIS) REFERENCES PAIS (COD_PAIS);

CREATE TABLE CIDADE (COD_CIDADE NUMBER PRIMARY KEY,
                    NOME_CIDADE VARCHAR2(30),
                    COD_ESTADO NUMBER);
                    
ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE FOREIGN KEY (COD_ESTADO) REFERENCES ESTADO (COD_ESTADO);