CREATE TABLE jugadores(
    id_jugador      NUMERIC(3)       CONSTRAINT jugadores_pk PRIMARY KEY,
    nombre          VARCHAR(50)     CONSTRAINT jugadores_nn1 NOT NULL,
    genero          CHAR(1)         CONSTRAINT jugadores_ck1 CHECK ( genero in ('M','F') ),
    fecha_nac       DATE            CONSTRAINT jugadores_nn2 NOT NULL,
    pais            VARCHAR(50),
    clasificado     CHAR(1)         CONSTRAINT jugadores_ck2 CHECK ( clasificado in ('Si','No') )
);

CREATE TABLE torneos(
    id_torneo       NUMERIC(3)      CONSTRAINT torneos_pk PRIMARY KEY,
    nombre          VARCHAR(50)     CONSTRAINT torneos_uk1 UNIQUE
                                    CONSTRAINT torneos_nn1 NOT NULL,
    genero          CHAR(1)         CONSTRAINT torneos_ck1 CHECK ( genero in ('M','F') )
);

CREATE TABLE secciones(
    id_torneo       NUMERIC(3)      CONSTRAINT secciones_fk1 REFERENCES torneos,
    n_seccion       NUMERIC(1)      CONSTRAINT secciones_ck1 CHECK ( n_seccion BETWEEN 1 AND 8),
    CONSTRAINT secciones_pk PRIMARY KEY (id_torneo, n_seccion)
);

CREATE TABLE rondas(
    id_torneo       NUMERIC(3),
    n_seccion       NUMERIC(1)      CONSTRAINT rondas_ck1 CHECK ( n_seccion BETWEEN 1 AND 8),
    n_ronda         NUMERIC(1)      CONSTRAINT rondas_ck2 CHECK ( n_ronda BETWEEN 1 AND 4),
    CONSTRAINT rondas_pk PRIMARY KEY (id_torneo,n_seccion,n_ronda)
);

CREATE TABLE partidos(
    id_jugador1
)