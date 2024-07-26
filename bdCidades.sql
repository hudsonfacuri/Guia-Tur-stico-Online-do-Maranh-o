create database cidades;
use cidades;
CREATE TABLE Cidade (
    ID_Cidade INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Estado VARCHAR(100),
    População INT,
    Descrição TEXT,
    PontosTuristicos TEXT,
    ImagemURL LONGBLOB
);

use cidades;
CREATE TABLE Pesquisa (
    ID_Pesquisa INT AUTO_INCREMENT PRIMARY KEY,
    Data_Pesquisa DATE,
    Resultado VARCHAR(255),  -- Aqui pode ser VARCHAR com o nome da cidade escolhida
    ID_Cidade INT,
    FOREIGN KEY (ID_Cidade) REFERENCES Cidade(ID_Cidade)
);
INSERT INTO Cidade (Nome, Estado, População, Descrição, PontosTuristicos, ImagemURL) VALUES 
('Carutapera', 'Maranhão', 23000, 'Descrição de Carutapera', 'Ponto turístico 1, Ponto turístico 2', 'URL_da_imagem_Carutaperaz'),
('Imperatriz', 'Maranhão', 258000, 'Descrição de Imperatriz', 'Ponto turístico 1, Ponto turístico 2', 'URL_da_imagem_Imperatriz'),
('São Luís', 'Maranhão', 1100000, 'Descrição de São Luís', 'Ponto turístico 1, Ponto turístico 2', 'URL_da_imagem_Sao_Luiz');

INSERT INTO Pesquisa (Data_Pesquisa, Resultado, ID_Cidade) VALUES 
('2024-07-24', 'Carutapera', 1),
('2024-07-25', 'Imperatriz', 2),
('2024-07-26', 'São Luís', 3);

