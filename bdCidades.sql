CREATE DATABASE cidades;
USE cidades;

CREATE TABLE Cidade (
    ID_Cidade INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    População INT,
    Descrição TEXT
);

CREATE TABLE PontoTuristico (
    ID_PontoTuristico INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Descrição TEXT,
    ImagemURL LONGBLOB,
    ID_Cidade INT,
    FOREIGN KEY (ID_Cidade) REFERENCES Cidade(ID_Cidade)
);

CREATE TABLE Pesquisa (
    ID_Pesquisa INT AUTO_INCREMENT PRIMARY KEY,
    Data_Pesquisa DATE,
    Resultado VARCHAR(255),  -- Aqui pode ser VARCHAR com o nome da cidade escolhida
    ID_Cidade INT,
    FOREIGN KEY (ID_Cidade) REFERENCES Cidade(ID_Cidade)
);
SHOW VARIABLES LIKE 'secure_file_priv';

-- Inserção de cidades
INSERT INTO Cidade (Nome, População, Descrição) VALUES 
('Carutapera', 23000, 'Carutapera está localizada a 578 km de São Luís. Anualmente, nesta cidade ocorre a festa de seu padroeiro, o São Sebastião. Nesta festa, ocorre muitas comemorações, além de missas e diversas caravanas que chegam a Carutapera para participar das festividades. No mês de junho são realizadas as comemorações de São João, que são marcadas pela presença de grupos folclóricos tradicionais da cidade. A atual cidade de Carutapera teve origem em 1861, quando Firmino Pantoja e sua mulher D. Faustina Pantoja, adquiriram de Manoel Rodrigues Leite Chaves uma pose de terras de 600 braças em quadro, à margem direita do rio Arapiranga, doando-a para criação de um povoado. Após passar para a condição de distrito, Carutapera teve um grande desenvolvimento econômico. As principais atividades econômicas da cidade são a pesca do camarão e lagosta, que são destinadas à exportação. Em Carutapera ainda se destaca na indústria moveleira e nas fábricas de Gelo. Na pecuária, a cidade registra um rebanho leiteiro que serve de subsistência.'),
('Imperatriz', 273110, 'Imperatriz, também conhecida como a cidade "Portal da Amazônia", constitui-se de uma riqueza evidente nas mais variadas áreas: comércio, lazer, educação e indústria então, por isso, é reconhecida atualmente com a 2ª capital do Maranhão. Dessa forma, é possível descrevê-la como uma potência no estado, sendo essencial para a economia da região sul e cidades fronteiras. Além disso, para os visitantes, possui uma diversidade de atrações turísticas indispensáveis para conhecer melhor sobre a cultura e beleza do interior maranhense. Assim, veja alguns exemplos abaixo: Nome dos pontos turísticos: Beira Rio, Panelódromo e Praia do Meio. Fonte das imagens: GOOGLE.'),
('São Luís', 1109000, 'São Luís é uma cidade no nordeste do Brasil, na ilha de São Luís, no Oceano Atlântico. No centro histórico da cidade encontra-se o bairro de Praia Grande, na área circundante da rua de Portugal, marcado por edifícios coloniais com azulejos distintos e varandas em ferro fundido. O Palácio dos Leões, onde reside o governador do estado, exibe arte e mobiliário franceses. Nas proximidades, encontra-se o grande Palácio La Ravardière, do século XVII. São Luís cheia de atrações turísticas indispensáveis para conhecer melhor sobre a cultura e beleza do interior maranhense.');

-- Inserção de pontos turísticos e suas imagens (use LOAD_FILE para carregar as imagens)
INSERT INTO PontoTuristico (Nome, ImagemURL, ID_Cidade) VALUES 
('Basílica de São Sebastião', LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/imagem1_carutapera.jpg'), 1),
('Praia de São Pedro', LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/imagem2_carutapera.jpg'), 1),
('Beira Rio', LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/imagem1_imperatriz.jpg'), 2),
('Panelódromo', LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/imagem2_imperatriz.jpg'), 2),
('Praia do Meio', LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/imagem3_imperatriz.jpg'), 2),
('Litorânea', LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/imagem1_sao_luis.jpg'), 3),
('Teatro Arthur Azevedo', LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/imagem2_sao_luis.jpg'), 3),
('Igreja da Sé - Centro Histórico', LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/imagem3_sao_luis.jpg'), 3);

-- Inserção de pesquisas
INSERT INTO Pesquisa (Data_Pesquisa, Resultado, ID_Cidade) VALUES 
('2024-07-24', 'Carutapera', 1),
('2024-07-25', 'Imperatriz', 2),
('2024-07-26', 'São Luís', 3);



