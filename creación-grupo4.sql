#CREATE DATABASE tenis;
USE tenis;

CREATE TABLE paises(
    id_pais         NUMERIC(3)      PRIMARY KEY,
    nombre          VARCHAR(50)     UNIQUE NOT NULL
);

CREATE TABLE generos(
    id_genero       NUMERIC(2)      PRIMARY KEY,
    nombre          VARCHAR(50)     UNIQUE NOT NULL
);

CREATE TABLE jugadores(
    id_jugador      NUMERIC(4)      PRIMARY KEY,
    nombre          VARCHAR(50)     NOT NULL,
    apellido        VARCHAR(50)     NOT NULL,
    id_genero       NUMERIC(2)      NOT NULL,
    fecha_nacimiento DATE           NOT NULL,
    id_pais         NUMERIC(3)      NOT NULL,
    CONSTRAINT jugadores_fk1 FOREIGN KEY (id_genero) REFERENCES generos(id_genero),
    CONSTRAINT jugadores_fk2 FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);

CREATE TABLE partidos(
    id_partido      NUMERIC(4)      PRIMARY KEY,
    id_jugador1     NUMERIC(4)      NOT NULL,
    id_jugador2     NUMERIC(4)      NOT NULL,
    n_seccion       NUMERIC(1)      NOT NULL,
    n_ronda         NUMERIC(1)      NOT NULL,
    fecha           DATE            NOT NULL,
    UNIQUE (n_seccion,n_ronda,id_jugador1,id_jugador2),
    CONSTRAINT partidos_fk2 FOREIGN KEY (id_jugador1) REFERENCES jugadores(id_jugador),
    CONSTRAINT partidos_fk3 FOREIGN KEY (id_jugador2) REFERENCES jugadores(id_jugador),
    CHECK ( n_ronda BETWEEN 1 AND IF(n_seccion=0,3,4)),
    CHECK ( n_seccion BETWEEN 0 AND 8)
);

CREATE TABLE puntuaciones(
    id_partido      NUMERIC(4),
    n_set           NUMERIC(1)      CHECK ( n_set BETWEEN 1 AND 5 ),
    punt_jugador1   NUMERIC(1)      NOT NULL CHECK ( punt_jugador1 >= 0),
    punt_jugador2   NUMERIC(1)      NOT NULL CHECK ( punt_jugador2 >= 0),
    CONSTRAINT sets_fk1 FOREIGN KEY (id_partido) REFERENCES partidos(id_partido)
);