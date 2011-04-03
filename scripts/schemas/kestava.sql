
\c :db_name

CREATE SCHEMA kestava
    AUTHORIZATION postgres;
    
GRANT ALL ON SCHEMA kestava TO postgres;
GRANT ALL ON SCHEMA kestava TO public;
COMMENT ON SCHEMA kestava IS 'Kestava database objects';