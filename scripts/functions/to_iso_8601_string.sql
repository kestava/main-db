
\c :db_name

CREATE OR REPLACE FUNCTION kestava.to_iso_8601_string (
    from_dt timestamp
) RETURNS varchar AS $$
BEGIN
    RETURN to_char(from_dt, 'YYYY-MM-DD')
        || 'T'
        || to_char(from_dt, 'HH24:MI:SS')
        || 'Z';
END;
$$ LANGUAGE plpgsql;