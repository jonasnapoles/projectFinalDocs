-- APP EDITORA ---
-- Final Project --

CREATE DATABASE appEditora;

USE appEditora;


-- Criar primeiro as tabelas que não há FK.

CREATE TABLE Writer(ID INT NOT NULL AUTO_INCREMENT,
 Name VARCHAR(50) NOT NULL,
 Surname VARCHAR(70) NOT NULL,
 NIF VARCHAR(11) NOT NULL,
 PRIMARY KEY(ID));


------------

CREATE TABLE Bookbinding(ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(50),
PRIMARY KEY(ID));


-------------

CREATE TABLE Categories (ID INT NOT NULL AUTO_INCREMENT,
Name VARCHAR(50),
PRIMARY KEY(ID));

----------------------------------------------------------------------------

CREATE TABLE Book(ID INT NOT NULL AUTO_INCREMENT, Title VARCHAR (150) NOT NULL,
 bookRelease DATE NOT NULL, 
 ISBN VARCHAR(13) NOT NULL UNIQUE,
  EAN VARCHAR(14) NOT NULL UNIQUE,
  Photo VARCHAR(1000),
  Category_id INT, Bookbinding_id INT,
  PRIMARY KEY (ID), FOREIGN KEY(Category_id) REFERENCES Categories(ID),
  FOREIGN KEY(Bookbinding_id) REFERENCES Bookbinding(ID));
  
-- Media table
CREATE TABLE bookWriter(Writer_id INT, Book_id INT, 
FOREIGN KEY(Writer_id) REFERENCES Writer(ID),
FOREIGN KEY(Book_id) REFERENCES Book(ID));
  
  
