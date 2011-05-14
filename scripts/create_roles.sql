-- This file is no longer used.  Database roles should be created and managed
-- separately (see documentation for command line examples).

\set ON_ERROR_STOP 0

-- Role: kestava
--DROP ROLE kestava;
CREATE ROLE kestava WITH LOGIN ENCRYPTED PASSWORD 'kestava123';

\set ON_ERROR_STOP 1
