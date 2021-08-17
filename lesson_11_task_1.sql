----------------------------- Домашнее задание --------------------------------
-- Создадим таблицу logs

CREATE TABLE logs(
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    table_name VARCHAR(20) NOT NULL,
    item_id INT UNSIGNED,
    name VARCHAR(255) NOT NULL)
ENGINE=ARCHIVE;

-- Далее с помощью триггеров создаем записи в таблице logs

DROP TRIGGER IF EXISTS Users_INSERT;

DELIMITER //
CREATE TRIGGER Users_INSERT
AFTER INSERT ON shop.users
FOR EACH ROW
BEGIN
	INSERT INTO `logs`(table_name, item_id, name)
	SELECT 'users', users.id, users.name FROM users WHERE users.id = NEW.id;
END//

DELIMITER ;

INSERT INTO users (name, birthday_at) VALUES
  ('Тимур', '1992-09-11');
SELECT * FROM logs;

DROP TRIGGER IF EXISTS Catalogs_INSERT;
DELIMITER //

CREATE TRIGGER Catalogs_INSERT
AFTER INSERT ON shop.catalogs
FOR EACH ROW
BEGIN
	INSERT INTO `logs`(table_name, item_id, name)
	SELECT 'catalogs', catalogs.id, 
    catalogs.name FROM catalogs WHERE catalogs.id = NEW.id;
END//
DELIMITER ;

INSERT INTO catalogs VALUES
  (NULL, 'Куллеры');
SELECT * FROM logs;

DROP TRIGGER IF EXISTS Products_INSERT;
DELIMITER //

CREATE TRIGGER Products_INSERT
AFTER INSERT ON shop.products
FOR EACH ROW
BEGIN
	INSERT INTO `logs`(table_name, item_id, name)
	SELECT 'catalogs', products.id, 
    products.name FROM products WHERE products.id = NEW.id;
END//
DELIMITER ;

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('NVIDIA GeForce RTX 3070', 'Графический процессор', 9200.00, 2);

SELECT * FROM logs;
