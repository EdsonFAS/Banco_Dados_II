CREATE DATABASE sitesimulado;
USE sitesimulado;

CREATE TABLE usuario(
id_usuario INT PRIMARY KEY NOT NULL auto_increment,
email_usu VARCHAR(200) NOT NULL UNIQUE,
nome_usu VARCHAR(200) NOT NULL,

data_cadastro DATE NOT NULL

 );
 create table diSciplina (
 id_disciplina INT PRIMARY KEY NOT NULL auto_increment,
 nome_disc VARCHAR(30) NOT NULL);
 
 create table assunto(
 id_assunto INT PRIMARY KEY NOT NULL auto_increment,
 text_assunto TEXT,
 fk_disc INT NOT NULL,
 FOREIGN KEY (fk_disc) references  disciplina(id_disciplina) );
 CREATE TABLE professor(
 id_professor INT NOT NULL PRIMARY KEY auto_increment,
 nome_prof VARCHAR(80) NOT NULL,
 telefone_prof VARCHAR(20) NOT NULL,
 email_prof VARCHAR(30) NOT NULL UNIQUE
 );
 CREATE TABLE banca(
 id_banca INT NOT NULL PRIMARY KEY auto_increment,
 nome_banca VARCHAR(30) NOT NULL,
 sigla_ban VARCHAR(5) NOT NULL);
 
 CREATE TABLE questao (
 id_questao INT NOT NULL PRIMARY KEY auto_increment,
 enuciado VARCHAR(30) NOT NULL,
 modalidade VARCHAR(20) NOT NULL,
 nivel VARCHAR(15),
 fk_banca INT NOT NULL,
 fk_assunto INT NOT NULL,
 FOREIGN KEY (fk_banca) REFERENCES banca(id_banca),
 FOREIGN KEY (fk_assunto) REFERENCES assunto(id_assunto)
 );
 CREATE TABLE alternativa(
 id_alternativa INT NOT NULL PRIMARY KEY auto_increment,
 texto_alter TEXT NOT NULL,
 gabatiro_alter BOOL NOT NULL,
 fk_quest INT NOT NULL,
 FOREIGN KEY (fk_quest) REFERENCES questao(id_questao));
 
 CREATE TABLE usuario_quest(
 id_resposta INT NOT NULL PRIMARY KEY auto_increment,
 responta_use TEXT,
 resultado BOOL NOT NULL,
 data_res DATE NOT NULL,
 fk_usu INT,
 fk_quest INT,
 FOREIGN KEY (fk_usu) REFERENCES usuario(id_usuario),
 FOREIGN KEY (fk_quest) REFERENCES questao(id_questao));
 
 CREATE TABLE quest_prof(
 id_quest_prof INT NOT NULL PRIMARY KEY auto_increment,
 texto_com TEXT ,
 data_COM DATE,
 fk_prof INT,
 fk_quest INT,
 FOREIGN KEY (fk_quest) REFERENCES questao(id_questao),
 FOREIGN KEY (fk_prof) REFERENCES professor(id_professor));

 
ALTER TABLE usuario ADD ativo_usu BOOLEAN DEFAULT TRUE;
ALTER TABLE usuario ADD sexo_usu VARCHAR(1)  AFTER email_usu;
alter table usuario ADD data_nasc_usu date not null;
INSERT INTO usuario (id_usuario,nome_usu,email_usu,sexo_usu,data_cadastro,data_nasc_usu, ativo_usu)
VALUES 
	   (null, 'Lucas da Silva Guilherme','lucassguilherme159@gmail.com','M', '2023-09-13', '1994-04-10',TRUE),
	   (null, 'Ádrian Henrique Ferreira','adrianhenriqueferreiraopo@gmail.com','M', '2023-09-13', '2000-01-01',true),
	   (null, 'Rubens Gomes da Silva','rubinho_paraf@hotmail.com','M', '2023-09-13', '1977-05-07',TRUE),
       (null, 'Ana Beatriz Tomaz de Sá','anabeatrizts.12@gmail.com','F', '2023-09-13', '2003-12-12',FALSE),
       (null, 'Andressa Lorena de Moura Marinho','andressalorena09@gmail.com','F', '2023-09-13', '2001-04-02',TRUE),
       (null, 'Anny Stele Fernandes da Silva','annysfs@gmail.com', 'F','2023-09-13', '1994-05-20',TRUE),
       (null, 'Bruno Santos Ferreira','brunosfe.info@gmail.com', 'M','2023-09-13', '2003-06-29',TRUE),
       (null, 'Katielly Bordin Santos','katiellyscherbatsky@gmail.com','F', '2023-09-13', '2001-06-26',TRUE),
       (null, 'Cenilza da Silva Lanes','cenilza.lanes@estudante.ifro.edu.br','F', '2023-09-13', '1986-03-10',FALSE),
       (null, 'Douglas Melo Cutisque','douglaskutisque@gmail.com','M', '2023-09-13', '1986-05-12',TRUE),
       (null, 'Lhuany Thainara Motta Euzébio','lhuany.euzebio@estudante.ifro.edu.br','F', '2023-09-13', '2001-07-01',TRUE),
       (null, 'Maria Júlia Souza de Albuquerque Lins','majuhlins76@gmail.com','F', '2023-09-13', '2003-09-11',TRUE),
       (null, 'Eidy Naray Alves da Silva','eidyalves3@gmail.com','F', '2023-09-13', '2003-12-10',TRUE),
       (null, 'Raiane Alves de Macedo','raianealvesmacedo15@gmail.com','F', '2023-09-13', '2005-02-09',TRUE),
       (null, 'Fabiano Brito de Souza','fabianobrito99.fbs@gmail.com','M', '2023-09-13', '2000-09-09',TRUE),
       (null, 'Igor do Nascimento Mendes','igor.mendes.3939503@gmail.com','M', '2023-09-13', '1998-03-06',TRUE),
       (null, 'Jefferson Borges Saldanha','jeffersongege@hotmail.com.br','M', '2023-09-13', '1990-01-03',FALSE),
       (null, 'Amanda Teodoro Cunha','amandateodoro1408@gmail.com','F', '2023-09-13', '2003-09-02',true),
       (null, 'Leidervan Ortiz Francisqueti de Oliveira','leidervan1234@gmail.com','M', '2023-09-13', '2003-02-08',TRUE),
       (null, 'Leyukezer Cruz de Lima','leyukezer@gmail.com','M', '2023-09-13', '2002-06-21',TRUE),
       (null, 'Edson Fernando Souza Bezerra','ed.f3rn@gmail.com','M', '2023-09-13', '2001-06-08',TRUE),
       (null, 'Luan Mateus Teofilo de Lima','luanmateus2002@gmail.com', 'M', '2023-09-13', '2001-08-28',TRUE),
       (null, 'Lucas da Silva Nunes','lucas.silvaifro@gmail.com','M', '2023-09-13', '2002-09-13',TRUE),
       (null, 'Naiany Moreira França','naianymfranca@gmail.com','F', '2023-09-13', '2003-09-18',TRUE),
       (null, 'Luiz Fernando da Silva Ramos','Luiz11fernando@hotmail.com','M', '2023-09-13', '2000-11-16',TRUE),
       (null, 'Marcos Edson Anerio dos Santos','marcosedsonanerio@hotmail.com','M', '2023-09-13', '2002-10-01',TRUE),
       (null, 'Natália da Silva Fernandes','fernandesnataliadasilva454@gmail.com','F', '2023-09-13', '2003-05-28',TRUE),
       (null, 'Vitor dos Reis Eugenio','vitorreiseugenio@gmail.com','M', '2023-09-13', '2003-04-18',FALSE),
       (null, 'Sabrina Rodrigues dos Santos','sabrina.ifro@gmail.com','F', '2023-09-13', '2002-08-02',FALSE),
       (null, 'Thiago Apolinário Câmara Bráz','cartuchomais@hotmail.com','M', '2023-09-13', '1981-07-06',TRUE),
       (null, 'Vitor Viana Silva','vitorpoke01@gmail.com','M', '2023-09-13', '2001-09-16',TRUE),
		(null, 'Elias de Abreu Domingos da Silva','elias.silva@ifro.edu.br','M', '2023-09-13', '1992-07-22',TRUE)
;

SELECT *  FROM usuario where ativo_usu= true and sexo_usu= 'F';
desc usuario;
update usuario set ativo_usu = true where id_usuario = 29;
select * from usuario where nome_usu like '%A';
-- drop database sitesimulado;