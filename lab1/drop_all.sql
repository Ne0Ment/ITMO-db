DROP TABLE feelingcharacteristics, friendship, observings, people, senses, feelings, ability, knows CASCADE;

DO $$ DECLARE
    tabname RECORD;
BEGIN
    FOR tabname IN (SELECT tablename 
                    FROM pg_tables 
                    WHERE schemaname = current_schema()) 
LOOP
    EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(tabname.tablename) || ' CASCADE';
END LOOP;
END $$;