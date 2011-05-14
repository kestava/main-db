
\c :db_name

CREATE SCHEMA unsilo
    AUTHORIZATION postgres;
    
GRANT ALL ON SCHEMA unsilo TO postgres;
GRANT ALL ON SCHEMA unsilo TO public;
COMMENT ON SCHEMA unsilo IS 'Unsilo database objects';
