use olimpicos;

# 1. Consulta de Todos los Eventos en un Complejo Deportivo Específico.

SELECT * FROM evento_complejo_deportivo ecd
LEFT JOIN complejo_deportivo cd on ecd.id_complejo_deportivo = cd.id_complejo_deportivo
WHERE cd.id_complejo_deportivo = 3;

# 2. Consulta de Comisarios Asignados a un Evento en Particular.

SELECT * FROM comisario c
LEFT JOIN evento_comisario ec
on c.id_comisario = ec.id_comisario
WHERE ec.id_evento = 4;


# 3. Consulta de Todos los Eventos en un Rango de Fechas.

SELECT * FROM eventos WHERE fecha > '2023-10-20 10:00:00' AND fecha < '2024-10-20 10:00:00';

# 4. Consulta del Número Total de Comisarios Asignados a Eventos.

SELECT COUNT(c.id_comisario) FROM comisario c
INNER JOIN evento_comisario ec
on c.id_comisario = ec.id_comisario;

# 5. Consulta de Complejos Polideportivos con Área Total Ocupada Superior a un Valor Específico.

SELECT * FROM complejo_polideportivo cp LEFT JOIN info_complejo ic
on cp.id_info_complejo = ic.id_complejo WHERE ic.area_complejo > 50 

# 6. Consulta de Eventos con Número de Participantes Mayor que la Media.

SELECT * FROM eventos WHERE num_participantes > 50; 
SELECT * FROM evento_equipo ee 

# 7. Consulta de Equipamiento Necesario para un Evento Específico.

SELECT * FROM equipamiento e LEFT JOIN evento_equipo ee 
on e.id_equipamiento = ee.id_equipamiento WHERE ee.id_evento = 1

# 8. Consulta de Eventos Celebrados en Complejos Deportivos con Jefe de Organización Específico.

SELECT * from eventos e LEFT JOIN evento_complejo_deportivo ecd
on e.id_evento = ecd.id_evento LEFT JOIN complejo_deportivo cd
on ecd.id_complejo_deportivo = cd.id_complejo_deportivo LEFT JOIN
info_complejo ic on cd.id_info_complejo = ic.id_complejo WHERE ic.id_jefe = 1


# 9. Consulta de Complejos Polideportivos sin Eventos Celebrados.

SELECT * FROM complejo_polideportivo cp LEFT JOIN evento_complejo_poli ecp 
on cp.id_complejo_polideportivo = ecp.id_complejo_polideportivo
WHERE ecp.id_evento_complejo IS NULL;


# 10. Consulta de Comisarios que Actúan como Jueces en Todos los Eventos.

SELECT * FROM comisario c
INNER JOIN evento_comisario ec ON c.id_comisario = ec.id_comisario WHERE c.tipo = 'juez'






