
\set ON_ERROR_STOP 0

-- Role: kestava
--DROP ROLE kestava;
CREATE ROLE kestava WITH LOGIN ENCRYPTED PASSWORD 'kestava123';

\set ON_ERROR_STOP 1