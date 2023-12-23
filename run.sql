
SELECT * FROM film;
SELECT delete_drama_films();
SELECT * FROM film;

CALL get_top5_imdbrating_films();


INSERT INTO film(runtime, publish_date, film_id, film_name, imdb_rating, director_id) VALUES (148, '1999-07-21', 251, 'coconut', 5, 9);

UPDATE film SET film_name = 'coconut' WHERE publish_date = '2001-12-19';
