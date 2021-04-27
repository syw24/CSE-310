# Insert blueberry to the list
USE fruit;
INSERT fruits VALUES
	(DEFAULT, 'blueberry', 'blue', 6, @berries);

# modify the value
USE fruit;
UPDATE fruits
SET color = 'red'
WHERE name = 'apple';

# delete the value
USE fruit;
DELETE 
FROM fruits
WHERE name = 'lemon';

# discount price (20% off)
USE fruit;
SELECT name, price, (price * 0.8) AS 'Discount Price'
FROM fruits
ORDER BY price DESC;

# Show the 'yellow' fruits 
USE fruit;
SELECT name
FROM fruits
WHERE color = 'yellow';

# Find out what's the fruit types
USE fruit;
SELECT name, type
FROM fruit_type JOIN fruits
ON fruit_type.id = fruits.fruit_type_id
ORDER BY type;

# Find out how many fruits in each type
USE fruit;
SELECT type, COUNT(type) AS 'fruits'
FROM fruit_type JOIN fruits
ON fruit_type.id = fruits.fruit_type_id
GROUP BY type;




