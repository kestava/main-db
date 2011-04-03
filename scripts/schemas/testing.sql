
\c :db_name

CREATE SCHEMA testing
    AUTHORIZATION postgres;
    
GRANT ALL ON SCHEMA testing TO postgres;
GRANT ALL ON SCHEMA testing TO public;
COMMENT ON SCHEMA testing IS 'Ad hoc experimentation';