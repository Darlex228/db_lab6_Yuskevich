CREATE OR REPLACE PROCEDURE get_top5_imdbrating_films()
LANGUAGE plpgsql
AS $$
DECLARE
    top5_films RECORD;
    film_count INT := 0;
BEGIN
    FOR top5_films IN (
        SELECT film_name, imdb_rating
        FROM film
        ORDER BY imdb_rating DESC
        LIMIT 5
    ) 
    LOOP
        film_count := film_count + 1;
        RAISE NOTICE 'Найкращий фільм %: % (Рейтинг: %)', film_count, top5_films.film_name, top5_films.imdb_rating;
    END LOOP;
END;
$$;

CALL get_top5_imdbrating_films();