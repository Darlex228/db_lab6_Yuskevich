CREATE OR REPLACE FUNCTION film_data_changes()
RETURNS TRIGGER AS
$$
BEGIN
    RAISE NOTICE 'Було змінено рядок з назвою фільму. Last Name: %, Зміни: %', OLD.film_name, NEW.film_name;
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER data_breach_trigger
AFTER INSERT OR UPDATE
ON film
FOR EACH ROW
EXECUTE FUNCTION film_data_changes();

