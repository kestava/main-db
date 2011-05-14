DROP DATABASE IF EXISTS :db_name;

CREATE DATABASE :db_name
  WITH TEMPLATE = template0
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.utf8'
       LC_CTYPE = 'en_US.utf8'
       CONNECTION LIMIT = -1;
COMMENT ON DATABASE :db_name IS 'Where Unsilo data lives';
