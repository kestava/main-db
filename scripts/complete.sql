\set ON_ERROR_STOP 1
\set db_name 'kestava'

\i create_database.sql
\i create_languages.sql
\i create_roles.sql
\i install_postgis.sql
\i schemas/all.sql

\i tables/kestava/all.sql
\i tables/testing/all.sql

\i functions/all.sql

\i testdata/kestava/all.sql
\i testdata/testing/all.sql