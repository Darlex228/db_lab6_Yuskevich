DROP FUNCTION IF EXISTS delete_drama_films();
CREATE FUNCTION delete_drama_films()
RETURNS VOID AS
$$
BEGIN 
    -- Прибирає стовпець де жанр фільму або драма або кримінальне
    UPDATE film
    SET film_name = ' '
    WHERE film.film_id IN (SELECT film_id FROM genre WHERE genre = 'Drama' OR genre = 'Crime');
END;
$$
LANGUAGE plpgsql;