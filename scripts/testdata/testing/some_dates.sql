
\c :db_name

TRUNCATE testing.some_dates;

INSERT INTO testing.some_dates (with_tz, without_tz) VALUES (null, '2011-02-10T16:54:01');
INSERT INTO testing.some_dates (with_tz, without_tz) VALUES ('2011-01-20T00:00:00-8:00', null);
INSERT INTO testing.some_dates (with_tz, without_tz) VALUES ('2011-02-10T16:54:01-8:00', '2011-02-10T16:54:01-8:00');
