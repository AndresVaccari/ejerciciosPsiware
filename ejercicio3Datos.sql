INSERT INTO marca (nombreMarca)
VALUES
	('Ford'),
	('Fiat'),
	('Hyundai')
;

INSERT INTO modelo (nombreModelo, añoModelo, valorModelo, idMarca)
VALUES
	('Focus', '2000', 50000, 1),
	('Focus', '2020', 140000, 1),
	('Kuga', '2010', 100000, 1),
	('Cronos', '2019', 120000, 2),
	('Toro', '2016', 110000, 2),
	('Toro', '2017', 125000, 2),
	('i40', '2020', 150000, 3),
	('i40', '2021', 160000, 3),
	('i40', '2022', 200000, 3)
;


INSERT INTO seguro (nombreSeguro)
VALUES
	('La Segunda'),
	('Allianz Seguros'),
	('Santander Seguros')
;

INSERT INTO patente (idPatente, idModelo, idSeguro)
VALUES
	('A1C324', 1, 1),
	('B1B324', 1, 2),
	('J3C324', 1, NULL),
	('A1C344', 1, 3),
	('B1C324', 2, 1),
	('C1B324', 2, 2),
	('L3C324', 2, NULL),
	('B1C334', 2, 3),
	('C1C324', 3, 1),
	('D1B324', 3, 2),
	('M3C324', 3, NULL),
	('C1C384', 3, 3),
	('D1C324', 4, 1),
	('E1B324', 4, 2),
	('N3C324', 4, NULL),
	('C1C354', 4, 3),
	('E1C324', 5, 1),
	('F1B324', 5, 2),
	('O3C324', 5, NULL),
	('D1C326', 5, 3),
	('F1C324', 6, 1),
	('G1B324', 6, 2),
	('P3C324', 6, NULL),
	('E1C224', 6, 3),
	('G1C324', 7, 1),
	('H1B324', 7, 2),
	('I3C324', 7, NULL),
	('K1C324', 7, 3),
	('H1C324', 8, 1),
	('I1B324', 8, 2),
	('K3C324', 8, NULL),
	('L1C324', 8, 3),
	('I1C324', 9, 1),
	('J1B324', 9, 2),
	('L3C325', 9, NULL),
	('M1C324', 9, 3)
;