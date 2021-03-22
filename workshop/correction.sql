CREATE DATABASE kaamelott;
SHOW DATABASES;

USE kaamelott;

CREATE TABLE knight (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(80) NOT NULL,
    age INT NOT NULL
);
SHOW TABLES;
DESCRIBE knight;

SELECT * FROM knight;

INSERT INTO knight (name, age)
VALUES ('Arthur', 40);

INSERT INTO knight (name, age)
VALUES ('Perceval', 35),
		('Lancelot', 38)
;


UPDATE knight
SET age = 36
WHERE id = 2;


SELECT *
FROM knight
WHERE age > 37;

ALTER TABLE knight
	ADD COLUMN is_dubbed BOOLEAN NULL;
    
    
UPDATE knight SET is_dubbed = true WHERE id = 1;
UPDATE knight SET is_dubbed = false WHERE id = 2;
UPDATE knight SET is_dubbed = true WHERE id = 3;

DELETE FROM knight WHERE id = 3;

TRUNCATE TABLE knight;

DROP TABLE knight;



