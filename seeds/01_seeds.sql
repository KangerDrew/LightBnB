-- *****************************************************************************
-- ********************** Yea I like video games so what? **********************
-- *****************************************************************************

INSERT INTO users (name, email, password)
VALUES ('Commander Shephard', 'favourite_store@citadel.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Geralt of Rivia', 'damn_candles@corvobianco.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Kratos', 'thor_is_next@boi.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Elisabet Sobeck', 'robot_tamer@noratribe.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Peter Parker', 'friendly_neighbourhood@pizzatime.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Normandy SR2', 'Ship used to defeat the reapers.', 'https://wallpapersafari.com/w/Xxmnuo', 'https://gizmodo.com/in-mass-effect-theres-no-place-like-home-1846686283', 1000, 1, 1, 1, 'United States', '4800 Oak Grove Dr', 'Pasadena', 'CA', '91109', TRUE),
(2, 'Kaer Morhen', 'Castle used in defence against the Wild Hunt.', 'https://static.wikia.nocookie.net/witcher/images/e/ec/Tw3_Kaer_Morhen_valley.jpg/revision/latest?cb=20160911152956', 'https://static.wikia.nocookie.net/witcher/images/4/4a/Tw3_Kaer_Morhen_promo.jpg/revision/latest?cb=20160825155717', 1000, 1, 1, 1, 'Canada', '1177 W Hastings St #1600', 'Vancouver', 'BC', 'V6E 2K3', TRUE),
(3, 'Mount Olympus', 'Why would you stay here?', 'https://static.wikia.nocookie.net/godofwar/images/1/19/Helios_head.jpg/revision/latest?cb=20190126044643', 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Destruction_of_Pompeii_and_Herculaneum.jpg', 0, 0, 0, 0, 'Canada', '688 W Hastings St', 'Vancouver', 'BC', 'V6B 1P1', FALSE);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2023-04-23', '2023-05-02', 1, 2),
('2014-10-21', '2014-10-21', 2, 5),
('2015-09-13', '2015-09-30', 3, 4);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (2, 1, 1, 4, 'Nice ship.'),
(5, 2, 2, 5, 'Nice castle.'),
(4, 3, 3, 1, 'Bruh wtf?');
