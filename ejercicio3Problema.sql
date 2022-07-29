-- 3.a Seleccionar el auto mas caro
SELECT marca.nombreMarca as 'Nombre Marca', modelo.nombreModelo as 'Nombre Modelo', modelo.añoModelo as 'Año Modelo', MAX(modelo.valorModelo) as 'Valor Modelo'
FROM modelo
INNER JOIN marca on modelo.idMarca = marca.idMarca;

--3.b Seleccionar el auto mas viejo
SELECT marca.nombreMarca as 'Nombre Marca', modelo.nombreModelo as 'Nombre Modelo', MIN(modelo.añoModelo)  as 'Año Modelo',modelo.valorModelo as 'Valor Modelo'
FROM modelo
INNER JOIN marca on modelo.idMarca = marca.idMarca;

--3.c Los autos que tienen que comienza la patente con X valor
SELECT patente.idPatente as 'Numero Patente', modelo.nombreModelo as 'Nombre Modelo', marca.nombreMarca as 'Nombre Marca'
FROM patente
INNER JOIN modelo on patente.idModelo = modelo.idModelo
INNER JOIN marca on modelo.idMarca = marca.idMarca
WHERE patente.idPatente LIKE 'C%';

--3.d Los autos que superen determinado monto
SELECT marca.nombreMarca as 'Nombre Marca', modelo.nombreModelo as 'Nombre Modelo', modelo.añoModelo as 'Año Modelo',modelo.valorModelo as 'Valor Modelo'
FROM modelo
INNER JOIN marca on modelo.idMarca = marca.idMarca
WHERE modelo.valorModelo > 120000;

--3.e Los autos con seguro
SELECT patente.idPatente as 'Numero Patente', modelo.nombreModelo as 'Nombre Modelo', marca.nombreMarca as 'Nombre Marca', seguro.nombreSeguro as 'Nombre Seguro'
FROM patente
INNER JOIN modelo on patente.idModelo = modelo.idModelo
INNER JOIN marca on modelo.idMarca = marca.idMarca
INNER JOIN seguro on patente.idSeguro = seguro.idSeguro;