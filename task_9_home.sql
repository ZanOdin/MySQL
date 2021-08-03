
						-- Task 1 --
SELECT * FROM users;
START TRANSACTION;
INSERT INTO sample.users (SELECT * FROM shop.users WHERE id = 1);
COMMIT;
						-- Task 2 --
CREATE VIEW product_name (id, name, catalog)
AS SELECT id, name,
(SELECT name FROM catalogs WHERE id = catalog_id) AS 'catalog'
FROM products;

	-- Процедуры и триггеры -- 
													-- Task 1 --
                                                    
DELIMITER $$
DROP FUNCTION IF EXISTS hello;
CREATE FUNCTION hello() 
RETURNS TEXT DETERMINISTIC
BEGIN 
	DECLARE time_text VARCHAR(30);
    
    IF curtime() BETWEEN '06:00:00' AND '12:00:00' THEN
		SET time_text = 'Good Morning';
	ELSEIF curtime() BETWEEN '12:00:00' AND '18:00:00' THEN
		SET time_text = 'Good Afternoon';
	ELSEIF curtime() BETWEEN '18:00:00' AND '00:00:00' THEN
		SET time_text = 'Good Evening';
	ELSE 
		SET time_text = 'Good Night';
	END IF;
    RETURN time_text;
END$$
DELIMITER ;

SELECT hello();

													-- Task 2 --
DELIMITER //
CREATE TRIGGER check_values_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	DECLARE new_name VARCHAR(30);
    DECLARE new_description VARCHAR(150);
    SELECT name INTO new_name FROM products;
    SET NEW.name = COALENSE(NEW.name, new_name);
    SELECT description INTO new_description FROM products;
    SET NEW.description = COALENSE(NEW.description, new_description);
END//
DELIMITER ;
