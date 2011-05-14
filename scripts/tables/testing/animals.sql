
\c :db_name

CREATE TABLE testing.animals
(
    animal_id serial NOT NULL,
    animal_name character varying(100) NOT NULL,
    CONSTRAINT animals_pk PRIMARY KEY (animal_id)
);

GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE testing.animals TO unsilo;

GRANT USAGE ON TABLE testing.animals_animal_id_seq TO unsilo;
