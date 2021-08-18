-- My version

-- SELECT properties.id,
--   properties.title,
--   properties.cost_per_night,
--   reservations.start_date,
--   AVG(property_reviews.rating) AS average_rating
-- FROM reservations
-- JOIN users ON users.id = reservations.guest_id
-- JOIN properties ON properties.id = reservations.property_id
-- JOIN property_reviews ON properties.id = property_reviews.property_id
-- WHERE users.id = 1 AND reservations.end_date < NOW()::DATE
-- GROUP BY properties.id, properties.title, properties.cost_per_night, reservations.id
-- ORDER BY reservations.start_date
-- LIMIT 10;

-- LHL version

SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;

