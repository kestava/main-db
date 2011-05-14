/**
 * This script is used to "regenerate" the Unsilo database objects.  It is
 * useful as a faster alternative to complete.sql, since it doesn't drop
 * the database and doesn't create PostGIS objects.
 */
 
\set ON_ERROR_STOP 1
\set db_name 'unsilo'

\i schemas/drop_all.sql
\i schemas/all.sql
\i tables/kestava/all.sql
\i tables/testing/all.sql
\i functions/all.sql
\i testdata/kestava/all.sql
\i testdata/testing/all.sql
