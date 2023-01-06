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
    id_genero       NUMERIC(2),<
    fecha_nacimiento DATE           NOT NULL,
    id_pais         NUMERIC(3),
    CONSTRAINT jugadores_fk1 FOREIGN KEY (id_genero) REFERENCES generos(id_genero),
    CONSTRAINT jugadores_fk2 FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);

CREATE TABLE partidos(
    id_partido      NUMERIC(4)      PRIMARY KEY,
    id_jugador1     NUMERIC(4)      NOT NULL,
    id_jugador2     NUMERIC(4)      NOT NULL,
    id_torneo       NUMERIC(3)      NOT NULL,
    n_seccion       NUMERIC(1)      NOT NULL,
    n_ronda         NUMERIC(1)      NOT NULL,
    fecha           DATE            NOT NULL,
    CONSTRAINT partidos_fk1 FOREIGN KEY (id_torneo,n_seccion,n_ronda)
        REFERENCES rondas(id_torneo, n_seccion, n_ronda),
    UNIQUE (id_torneo,n_seccion,n_ronda,id_jugador1,id_jugador2),
    CONSTRAINT partidos_fk2 FOREIGN KEY (id_jugador1) REFERENCES jugadores(id_jugador),
    CONSTRAINT partidos_fk3 FOREIGN KEY (id_jugador2) REFERENCES jugadores(id_jugador)
);

CREATE TABLE puntuaciones(
    id_partido      NUMERIC(4)      PRIMARY KEY,
    n_set           NUMERIC(1)      CHECK(n_set BETWEEN 1 AND 5)
                                    PRIMARY KEY,
    punt_jugador1   NUMERIC(4)      CHECK(punt_jugador1 > 0),
    punt_jugador2   NUMERIC(4)      CHECK(punt_jugador2 > 0),
    CONSTRAINT puntuaciones_fk1 FOREIGN KEY (id_partido) REFERENCES partidos(id_partido)
    CONSTRAINT puntuaciones_pk PRIMARY KEY (id_partido, n_set) REFERENCES partidos(id_partido)
);