-- USER CRUD
SELECT * FROM User;
SELECT * FROM User WHERE is_admin = TRUE;

UPDATE User SET last_name = 'hacked' WHERE is_admin = FALSE;
UPDATE User SET is_admin = FALSE WHERE is_admin = TRUE;

DELETE FROM User WHERE last_name = 'hacked';
DELETE FROM User WHERE is_admin = TRUE;

-- Place CRUD
SELECT * FROM Place;
SELECT * FROM Place WHERE owner_id IN (SELECT id FROM User);

UPDATE Place SET title = 'Checked' WHERE owner_id IN (SELECT id FROM User);
UPDATE Place SET title = 'God Place' WHERE owner_id IN (SELECT id FROM User WHERE is_admin = TRUE);

DELETE FROM Place WHERE price > 500;
DELETE FROM Place WHERE owner_id IN (SELECT id FROM User WHERE is_admin = TRUE);

-- Review CRUD
SELECT * FROM Review;
SELECT * FROM Review WHERE rating >= 4;
SELECT * FROM Review WHERE user_id IN (SELECT id FROM User);

UPDATE Review SET rating = 2 WHERE LENGTH(TEXT) > 20;
UPDATE Review SET rating = 2 WHERE user_id IN (SELECT id FROM User);

DELETE FROM Review WHERE rating > 3;
DELETE FROM Review WHERE user_id IN (SELECT id FROM User WHERE is_admin = TRUE);

-- Amenity CRUD
SELECT * FROM Amenity;

UPDATE Amenity SET name = (SELECT title FROM Place WHERE title = 'Checked') WHERE name = 'WiFi';

DELETE FROM Amenity WHERE LENGTH(name) < 3;