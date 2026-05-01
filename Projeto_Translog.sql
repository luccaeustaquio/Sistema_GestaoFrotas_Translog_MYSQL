
USE translog;
SELECT * FROM motoristas;
SELECT * FROM Veiculos;
SELECT * FROM Viagens;


CREATE TABLE Veiculos(
ID_Veiculo INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
Numero_Chassi_Veiculo CHAR(17) NOT NULL UNIQUE,
Modelo_Veiculo VARCHAR(70) NOT NULL,
Marca_Veiculo VARCHAR(45) NOT NULL,
Ano_Fabricacao_Veiculo DATE NOT NULL,
Placa_Veiculo VARCHAR(7) NOT NULL UNIQUE);

CREATE TABLE Viagens(
ID_Viagem INT PRIMARY KEY AUTO_INCREMENT  NOT NULL UNIQUE,
Data_Inicio_Viagem TIMESTAMP NOT NULL,
Data_Termino_Viagem TIMESTAMP NOT NULL,
FK_Motorista INT NOT NULL,
FK_Veiculo INT NOT NULL,
FOREIGN KEY ( FK_Motorista ) REFERENCES Motoristas (ID_Motorista),
FOREIGN KEY ( FK_Veiculo ) REFERENCES Veiculos ( ID_Veiculo ));




INSERT INTO Motoristas(
Nome_Completo_Motorista,
CPF_Motorista,
Numero_CNH_Motorista,
Validade_Licenca_Motorista)
VALUES( 
('Antônio Carlos Jobim', '11223344556', '12121212121', '2027-02-10'),
('Beatriz Regina Lopes', '22334455667', '23232323232', '2028-09-22'),
('Caio Castro Oliveira', '33445566778', '34343434343', '2026-11-05'),
('Daniela Mercury Pontes', '44556677889', '45454545454', '2029-01-15'),
('Eduardo Costa Silva', '55667788990', '56565656565', '2025-12-30'),
('Fabiana Karla Souza', '66778899001', '67676767676', '2027-08-19'),
('Gabriel Pensador Lima', '77889900112', '78787878787', '2026-05-12'),
('Heloísa Perissé Melo', '88990011223', '89898989898', '2028-03-25'),
('Igor Rickli Moraes', '99001122334', '90909090909', '2029-10-10'),
('Jessica Ellen Gomes', '00112233445', '01010101010', '2025-07-07'),
('Klebber Toledo Santos', '11223344511', '12121212122', '2027-04-14'),
('Larissa Manoela Taques', '22334455622', '23232323233', '2028-11-20'),
('Murilo Benício Ribeiro', '33445566733', '34343434344', '2026-06-18'),
('Nathalia Dill Orrico', '44556677844', '45454545455', '2029-02-28'),
('Otávio Müller Filho', '55667788955', '56565656566', '2025-09-09'),
('Paolla Oliveira Caselli', '66778899066', '67676767677', '2027-12-05'),
('Quitéria Chagas Silva', '77889900177', '78787878788', '2026-01-22'),
('Rafael Cardoso Almeida', '88990011288', '89898989899', '2028-07-13'),
('Sabrina Sato Rahal', '99001122399', '90909090901', '2029-05-30'),
('Tiago Leifert Magalhães', '00112233400', '01010101012', '2025-11-11'),
('Ursula Corona Santos', '11223344522', '12121212123', '2027-03-03'),
('Vitor Kley Souza', '22334455633', '23232323234', '2028-10-10'),
('Wagner Moura Rocha', '33445566744', '34343434345', '2026-08-15'),
('Xuxa Meneghel Abrantes', '44556677855', '45454545456', '2029-04-20'),
('Yasmim Brunet Oliveira', '55667788966', '56565656567', '2025-06-25'),
('Zeca Pagodinho Silva', '66778899077', '67676767678', '2027-01-12'),
('Adriana Esteves Aguiar', '77889900188', '78787878789', '2026-09-30'),
('Bruno Gagliasso Marques', '88990011299', '89898989801', '2028-05-18'),
('Camila Queiroz Toledo', '99001122301', '90909090902', '2029-12-12'),
('Dira Paes Oliveira', '00112233402', '01010101013', '2025-02-14'),
('Emílio Dantas Silveira', '11223344533', '12121212124', '2027-06-21'),
('Flávia Alessandra Costa', '22334455644', '23232323235', '2028-02-10'),
('Giovanna Antonelli Prado', '33445566755', '34343434346', '2026-12-01'),
('Humberto Carrão Guimarães', '44556677866', '45454545457', '2029-08-08'),
('Isis Valverde Nable', '55667788977', '56565656568', '2025-04-04'),
('José Loreto Duarte', '66778899088', '67676767679', '2027-10-31'),
('Katiuscia Canoro Lima', '77889900199', '78787878790', '2026-07-25'),
('Lázaro Ramos Passos', '88990011201', '89898989802', '2028-01-01'),
('Marieta Severo Costa', '99001122302', '90909090903', '2029-03-03'),
('Nanda Costa Santos', '00112233403', '01010101014', '2025-09-17'));



INSERT INTO veiculos(
Numero_Chassi_Veiculo,
Modelo_Veiculo,
Marca_Veiculo,
Ano_Fabricacao_Veiculo,
Placa_Veiculo)
VALUES 
('9BWZZZ377VT000001', 'Constellation 24.280', 'Volkswagen', '2022-01-01', 'ABC1D23'),
('9BWZZZ377VT000002', 'Actros 2651', 'Mercedes-Benz', '2023-01-01', 'EFG2H34'),
('9BWZZZ377VT000003', 'FH 540', 'Volvo', '2021-01-01', 'IJK3L45'),
('9BWZZZ377VT000004', 'R 450', 'Scania', '2022-01-01', 'MNO4P56'),
('9BWZZZ377VT000005', 'Iveco Hi-Way', 'Iveco', '2020-01-01', 'QRS5T67'),
('9BWZZZ377VT000006', 'Meteor 28.460', 'Volkswagen', '2023-01-01', 'UVW6X78'),
('9BWZZZ377VT000007', 'Axor 2544', 'Mercedes-Benz', '2019-01-01', 'YZA7B89'),
('9BWZZZ377VT000008', 'FM 380', 'Volvo', '2021-01-01', 'CDE8F90'),
('9BWZZZ377VT000009', 'G 420', 'Scania', '2018-01-01', 'GHI9J01'),
('9BWZZZ377VT000010', 'Tector 240E28', 'Iveco', '2022-01-01', 'KLM0N12'),
('9BWZZZ377VT000011', 'Delivery 11.180', 'Volkswagen', '2023-01-01', 'OPQ1R23'),
('9BWZZZ377VT000012', 'Accelo 1016', 'Mercedes-Benz', '2021-01-01', 'STU2V34'),
('9BWZZZ377VT000013', 'VM 270', 'Volvo', '2020-01-01', 'WXY3Z45'),
('9BWZZZ377VT000014', 'P 360', 'Scania', '2022-01-01', 'ABC4D56'),
('9BWZZZ377VT000015', 'Daily 35S14', 'Iveco', '2023-01-01', 'EFG5H67'),
('9BWZZZ377VT000016', 'Sprinter 415', 'Mercedes-Benz', '2019-01-01', 'IJK6L78'),
('9BWZZZ377VT000017', 'F-4000', 'Ford', '2018-01-01', 'MNO7P89'),
('9BWZZZ377VT000018', 'Cargo 2429', 'Ford', '2019-01-01', 'QRS8T90'),
('9BWZZZ377VT000019', 'Stralis 600', 'Iveco', '2021-01-01', 'UVW9X01'),
('9BWZZZ377VT000020', 'TGX 28.440', 'MAN', '2020-01-01', 'YZA0B12'),
('9BWZZZ377VT000021', 'Constellation 17.190', 'Volkswagen', '2022-01-01', 'CDE1F23'),
('9BWZZZ377VT000022', 'Atego 2426', 'Mercedes-Benz', '2021-01-01', 'GHI2J34'),
('9BWZZZ377VT000023', 'FH 460', 'Volvo', '2023-01-01', 'KLM3N45'),
('9BWZZZ377VT000024', 'R 500', 'Scania', '2022-01-01', 'OPQ4R56'),
('9BWZZZ377VT000025', 'Hi-Road 360', 'Iveco', '2022-01-01', 'STU5V67'),
('9BWZZZ377VT000026', 'Delivery 9.170', 'Volkswagen', '2021-01-01', 'WXY6Z78'),
('9BWZZZ377VT000027', 'Accelo 815', 'Mercedes-Benz', '2020-01-01', 'ABC7D89'),
('9BWZZZ377VT000028', 'VM 330', 'Volvo', '2022-01-01', 'EFG8H90'),
('9BWZZZ377VT000029', 'S 500', 'Scania', '2023-01-01', 'IJK9L01'),
('9BWZZZ377VT000030', 'Vertis 130V19', 'Iveco', '2018-01-01', 'MNO0P12'),
('9BWZZZ377VT000031', 'F-350', 'Ford', '2017-01-01', 'QRS1T23'),
('9BWZZZ377VT000032', 'Cargo 1119', 'Ford', '2020-01-01', 'UVW2X34'),
('9BWZZZ377VT000033', 'Meteor 29.520', 'Volkswagen', '2023-01-01', 'YZA3B45'),
('9BWZZZ377VT000034', 'Actros 2548', 'Mercedes-Benz', '2022-01-01', 'CDE4F56'),
('9BWZZZ377VT000035', 'FMX 500', 'Volvo', '2021-01-01', 'GHI5J67'),
('9BWZZZ377VT000036', 'G 450', 'Scania', '2022-01-01', 'KLM6N78'),
('9BWZZZ377VT000037', 'Daily 55C17', 'Iveco', '2019-01-01', 'OPQ7R89'),
('9BWZZZ377VT000038', 'Atron 2324', 'Mercedes-Benz', '2018-01-01', 'STU8V90'),
('9BWZZZ377VT000039', 'F-1000', 'Ford', '1998-01-01', 'WXY9X01'),
('9BWZZZ377VT000040', 'Constellation 31.330', 'Volkswagen', '2021-01-01', 'ABC0B12');



INSERT INTO Viagens(
Data_Inicio_Viagem,
Data_Termino_Viagem,
FK_Motorista,
FK_Veiculo)
VALUES
('2024-01-01 08:00:00', '2024-01-01 18:00:00', 1, 1),
('2024-01-02 07:30:00', '2024-01-02 16:45:00', 2, 2),
('2024-01-03 09:00:00', '2024-01-03 21:00:00', 3, 3),
('2024-01-04 05:00:00', '2024-01-04 14:00:00', 4, 4),
('2024-01-05 22:00:00', '2024-01-06 06:00:00', 5, 5),
('2024-01-06 10:00:00', '2024-01-06 19:30:00', 6, 6),
('2024-01-07 14:00:00', '2024-01-08 02:00:00', 7, 7),
('2024-01-08 08:15:00', '2024-01-08 17:45:00', 8, 8),
('2024-01-09 11:00:00', '2024-01-09 23:30:00', 9, 9),
('2024-01-10 06:00:00', '2024-01-10 15:00:00', 10, 10),
('2024-01-11 13:00:00', '2024-01-11 22:00:00', 11, 11),
('2024-01-12 04:30:00', '2024-01-12 12:00:00', 12, 12),
('2024-01-13 09:45:00', '2024-01-13 18:15:00', 13, 13),
('2024-01-14 20:00:00', '2024-01-15 04:00:00', 14, 14),
('2024-01-15 07:00:00', '2024-01-15 16:00:00', 15, 15),
('2024-01-16 12:00:00', '2024-01-16 21:30:00', 16, 16),
('2024-01-17 05:20:00', '2024-01-17 14:50:00', 17, 17),
('2024-01-18 23:00:00', '2024-01-19 08:00:00', 18, 18),
('2024-01-19 10:30:00', '2024-01-19 19:45:00', 19, 19),
('2024-01-20 08:00:00', '2024-01-20 17:00:00', 20, 20),
('2024-01-21 15:00:00', '2024-01-22 01:00:00', 21, 21),
('2024-01-22 06:40:00', '2024-01-22 15:20:00', 22, 22),
('2024-01-23 09:10:00', '2024-01-23 20:30:00', 23, 23),
('2024-01-24 11:00:00', '2024-01-24 22:15:00', 24, 24),
('2024-01-25 04:00:00', '2024-01-25 13:00:00', 25, 25),
('2024-01-26 21:00:00', '2024-01-27 05:45:00', 26, 26),
('2024-01-27 08:30:00', '2024-01-27 17:10:00', 27, 27),
('2024-01-28 13:20:00', '2024-01-29 00:00:00', 28, 28),
('2024-01-29 07:15:00', '2024-01-29 16:45:00', 29, 29),
('2024-01-30 10:00:00', '2024-01-30 23:00:00', 30, 30),
('2024-01-31 05:00:00', '2024-01-31 14:30:00', 31, 31),
('2024-02-01 22:30:00', '2024-02-02 06:15:00', 32, 32),
('2024-02-02 09:00:00', '2024-02-02 18:40:00', 33, 33),
('2024-02-03 14:45:00', '2024-02-04 02:20:00', 34, 34),
('2024-02-04 08:00:00', '2024-02-04 17:30:00', 35, 35),
('2024-02-05 11:15:00', '2024-02-05 23:45:00', 36, 36),
('2024-02-06 06:00:00', '2024-02-06 15:50:00', 37, 37),
('2024-02-07 13:00:00', '2024-02-07 22:10:00', 38, 38),
('2024-02-08 04:30:00', '2024-02-08 12:45:00', 39, 39),
('2024-02-09 20:00:00', '2024-02-10 04:15:00', 40, 40);