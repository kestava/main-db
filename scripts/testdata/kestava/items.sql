
\c :db_name

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (1, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-88.005981 41.752190)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (2, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-86.226196 41.472916)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (3, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-122.102051 47.566643)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (4, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-120.893555 37.695412)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (5, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-110.698242 46.659491)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (6, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-82.045898 30.877083)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (7, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-77.299805 37.066866)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (8, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-74.223633 41.683852)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (9, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-74.926758 41.486634)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (10, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-84.067383 41.552441)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (11, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-118.344727 34.282940)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (12, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-122.673340 49.258245)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (13, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-113.972168 50.949199)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (14, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-104.587097 50.435350)'), 1);

INSERT INTO unsilo.items (item_id, title, additional_description, quantity, loc, ref_user_account_id)
VALUES (15, 'xyz', 'blah blah blah', 100, ST_GeographyFromText('POINT(-97.039490 49.854513)'), 1);

ALTER SEQUENCE unsilo.items_item_id_seq RESTART WITH 16;
