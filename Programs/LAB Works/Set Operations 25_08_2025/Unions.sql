-- CREATE database set_operations;
-- use your database
USE set_operations;

-- create tables
CREATE TABLE animal (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    color VARCHAR(100),
    place VARCHAR(100)
);

CREATE TABLE vehicles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    color VARCHAR(100),
    brand VARCHAR(100)
);

-- insert animals
INSERT INTO animal (name, color, place) VALUES
('Tiger', 'Orange', 'India'),
('Elephant', 'Gray', 'Africa'),
('Peacock', 'Blue-Green', 'India'),
('Panda', 'Black & White', 'China'),
('Kangaroo', 'Brown', 'Australia'),
('Flamingo', 'Pink', 'South America'),
('Wolf', 'Gray', 'North America'),
('Polar Bear', 'White', 'Arctic'),
('Lion', 'Golden', 'Africa'),
('Zebra', 'Black & White', 'Savannah');

-- insert vehicles
INSERT INTO vehicles (name, color, brand) VALUES
('Model S', 'Red', 'Tesla'),
('Mustang', 'Blue', 'Ford'),
('Civic', 'White', 'Honda'),
('Corolla', 'Silver', 'Toyota'),
('Camaro', 'Yellow', 'Chevrolet'),
('Accord', 'Black', 'Honda'),
('Ranger', 'Gray', 'Ford'),
('Cybertruck', 'Steel', 'Tesla'),
('Swift', 'Red', 'Suzuki'),
('Aventador', 'Orange', 'Lamborghini');

------------------------------------------------
-- SET OPERATIONS
------------------------------------------------

-- 1. UNION (deduped)
SELECT id, name, color, place AS attribute, 'animal' AS type   
FROM animal
UNION
SELECT id, name, color, brand AS attribute, 'vehicle' AS type 
FROM vehicles;

-- 2. UNION ALL (keeps duplicates)
SELECT id, name, color, place AS attribute, 'animal' AS type   
FROM animal
UNION ALL
SELECT id, name, color, brand AS attribute, 'vehicle' AS type 
FROM vehicles;

-- 3. INTERSECTION (workaround using INNER JOIN)
-- rows that exist in both animal + vehicle tables based on name + color
-- SELECT a.id, a.name, a.color, a.place AS attribute, 'animal' AS type
-- FROM animal a
-- INNER JOIN vehicles v 
--     ON a.name = v.name
--     AND a.color = v.color;

SELECT id, name
from animal
where id IN (SELECT id from vehicles);

-- 4. EXCEPT (Animals not in Vehicles)
SELECT a.id, a.name, a.color, a.place AS attribute, 'animal' AS type
FROM animal a
LEFT JOIN vehicles v 
    ON a.name = v.name
    AND a.color = v.color
WHERE v.id IS NULL;

-- 5. EXCEPT (Vehicles not in Animals)
SELECT v.id, v.name, v.color, v.brand AS attribute, 'vehicle' AS type
FROM vehicles v
LEFT JOIN animal a 
    ON v.name = a.name
    AND v.color = a.color
WHERE a.id IS NULL;
