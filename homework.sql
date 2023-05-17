CREATE TABLE customer(
customer_id SERIAL PRIMARY KEY,
full_name VARCHAR,
phone_num VARCHAR(50),
customer_address VARCHAR
);
CREATE TABLE tickets(
ticket_id SERIAL PRIMARY KEY,
ticket_seat_num INTEGER,
seat_aisle VARCHAR,
anme_of_movie VARCHAR
);
CREATE TABLE consession(
consession_id SERIAL PRIMARY KEY,
food_type VARCHAR,
drink_type VARCHAR,
candy_type VARCHAR
);
CREATE TABLE movies(
  movie_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  ticket_id INTEGER,
  consession_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id),
  FOREIGN KEY (consession_id) REFERENCES consession(consession_id)
);
SELECT *
FROM customer;

INSERT INTO customer(
  full_name,
  customer_address,
  phone_num
) VALUES (
  'Bat-man',
  '894 Gothmam',
  '555-555-5556'
), (
  'Asta',
  '568 Black Clover Kingdom',
  '555-555-5557'
), (
 'super-man',
  '788 Krypton',
  '555-555-5558'
);
INSERT INTO tickets(
  ticket_seat_num,
  seat_aisle,
  anme_of_movie
) VALUES (
  '40',
  'F',
  'The Super Mario Bros. Movie'
);
SELECT * 
FROM tickets;

INSERT INTO consession(
  food_type,
  drink_type,
  candy_type
) VALUES (
 'pop-corn',
 'sprite',
 'butterfingers'
),(
  'hotdog',
  'coca-cola',
  'snickers'
),(
  'hamburger',
  'water',
  'sugar_free_candy'
);
SELECT *
FROM consession;