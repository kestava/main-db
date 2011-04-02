\set ON_ERROR_STOP 1
\set db_name 'kestava'

\i create_database.sql
\i create_languages.sql
\i create_roles.sql
\i install_postgis.sql
\i schemas/all.sql
\i tables/all.sql
\i functions/all.sql
\i testdata/all.sql