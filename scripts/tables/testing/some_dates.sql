
\c :db_name

CREATE TABLE testing.some_dates
(
    with_tz timestamp with time zone,
    without_tz timestamp without time zone
);

GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE testing.some_dates TO unsilo;
