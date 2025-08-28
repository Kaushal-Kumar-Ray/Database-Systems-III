use lab_25_08_2025;
	
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



SELECT id, name, color, place AS attribute, 'animal' AS type   FROM animal
UNION
SELECT id, name, color, brand AS attribute, 'vehicle' AS type FROM vehicles;
