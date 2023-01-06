USE tenis;

INSERT INTO paises VALUES(1,'España');
INSERT INTO paises VALUES(2,'Francia');
INSERT INTO paises VALUES(3,'Serbia');
INSERT INTO paises VALUES(4,'Alemania');
INSERT INTO paises VALUES(5,'Noruega');
INSERT INTO paises VALUES(6,'Dinamarca');
INSERT INTO paises VALUES(7,'Rusia');
INSERT INTO paises VALUES(8,'Croacia');


INSERT INTO generos VALUES(1,'hombre');
INSERT INTO generos VALUES(2,'mujer');



INSERT INTO jugadores(id_jugador, nombre, apellido, id_genero, fecha_nacimiento, id_pais)
VALUES(1,'Novak','Djokovic',1,STR_TO_DATE('1-1-1980','%d-%m-%Y'),3);
INSERT INTO jugadores(id_jugador, nombre, apellido, id_genero, fecha_nacimiento, id_pais)
VALUES(2,'Rafael','Nadal',1,STR_TO_DATE('1-1-1980','%d-%m-%Y'),1);
INSERT INTO jugadores(id_jugador, nombre, apellido, id_genero, fecha_nacimiento, id_pais)
VALUES(3,'Alexander','Zverev',1,STR_TO_DATE('1-1-1980','%d-%m-%Y'),4);
INSERT INTO jugadores(id_jugador, nombre, apellido, id_genero, fecha_nacimiento, id_pais)
VALUES(4,'Carlos','Alcaraz',1,STR_TO_DATE('1-1-1980','%d-%m-%Y'),1);
INSERT INTO jugadores(id_jugador, nombre, apellido, id_genero, fecha_nacimiento, id_pais)
VALUES(5,'Casper','Ruud',1,STR_TO_DATE('1-1-1980','%d-%m-%Y'),5);
INSERT INTO jugadores(id_jugador, nombre, apellido, id_genero, fecha_nacimiento, id_pais)
VALUES(6,'Holger','Rune',1,STR_TO_DATE('1-1-1980','%d-%m-%Y'),6);
INSERT INTO jugadores(id_jugador, nombre, apellido, id_genero, fecha_nacimiento, id_pais)
VALUES(7,'Andrey','Rublev',1,STR_TO_DATE('1-1-1980','%d-%m-%Y'),7);
INSERT INTO jugadores(id_jugador, nombre, apellido, id_genero, fecha_nacimiento, id_pais)
VALUES(8,'Marin','Cilic',1,STR_TO_DATE('1-1-1980','%d-%m-%Y'),8);
# Cuartos de final
INSERT INTO partidos(id_partido, id_jugador1, id_jugador2, n_seccion, n_ronda, fecha)
VALUES(1,1,2,0,1,STR_TO_DATE('1-1-1980','%d-%m-%Y'));
INSERT INTO partidos(id_partido, id_jugador1, id_jugador2, n_seccion, n_ronda, fecha)
VALUES(2,3,4,0,1,STR_TO_DATE('1-1-1980','%d-%m-%Y'));
INSERT INTO partidos(id_partido, id_jugador1, id_jugador2, n_seccion, n_ronda, fecha)
VALUES(3,5,6,0,1,STR_TO_DATE('1-1-1980','%d-%m-%Y'));
INSERT INTO partidos(id_partido, id_jugador1, id_jugador2, n_seccion, n_ronda, fecha)
VALUES(4,7,8,0,1,STR_TO_DATE('1-1-1980','%d-%m-%Y'));
# Semifinales
INSERT INTO partidos(id_partido, id_jugador1, id_jugador2, n_seccion, n_ronda, fecha)
VALUES(5,2,3,0,2,STR_TO_DATE('1-1-1980','%d-%m-%Y'));
INSERT INTO partidos(id_partido, id_jugador1, id_jugador2, n_seccion, n_ronda, fecha)
VALUES(6,5,8,0,2,STR_TO_DATE('1-1-1980','%d-%m-%Y'));
# Final
INSERT INTO partidos(id_partido, id_jugador1, id_jugador2, n_seccion, n_ronda, fecha)
VALUES(7,2,5,0,3,STR_TO_DATE('1-1-1980','%d-%m-%Y'));


# Puntuaciones de la final
INSERT INTO puntuaciones(id_partido,n_set,punt_jugador1,punt_jugador2)
VALUES(7,1,6,3);
INSERT INTO puntuaciones(id_partido,n_set,punt_jugador1,punt_jugador2)
VALUES(7,2,6,3);
INSERT INTO puntuaciones(id_partido,n_set,punt_jugador1,punt_jugador2)
VALUES(7,3,6,0);
