INSERT INTO film (title, rental_rate, rental_duration, language_id)
VALUES ('DEVIL WEARS PRADA', 4.99, 14, 1);
INSERT INTO actor (first_name, last_name)
VALUES ('ANNE', 'HATHAWAY'),
       ('MERYL', 'STREEP'),
       ('EMILY', 'BLUNT');
INSERT INTO film_actor (actor_id, film_id)
VALUES 
  ((SELECT actor_id FROM actor WHERE first_name = 'ANNE' AND last_name = 'HATHAWAY'), 
   (SELECT film_id FROM film WHERE title = 'DEVIL WEARS PRADA')),
  ((SELECT actor_id FROM actor WHERE first_name = 'MERYL' AND last_name = 'STREEP'), 
   (SELECT film_id FROM film WHERE title = 'DEVIL WEARS PRADA')),
  ((SELECT actor_id FROM actor WHERE first_name = 'EMILY' AND last_name = 'BLUNT'), 
   (SELECT film_id FROM film WHERE title = 'DEVIL WEARS PRADA'));

INSERT INTO inventory (film_id, store_id)
VALUES ((SELECT film_id FROM film WHERE title = 'DEVIL WEARS PRADA'), 1);