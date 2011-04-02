/**
 * This script is used to "regenerate" the kestava database objects.  It is
 * useful as a faster alternative to complete.sql, since it doesn't drop
 * the database and doesn't create PostGIS objects.
 */
 
\set ON_ERROR_STOP 1
\set db_name 'kestava'

\i schemas/drop_all.sql
\i schemas/all.sql
\i tables/all.sql
\i functions/all.sql
\i testdata/all.sql