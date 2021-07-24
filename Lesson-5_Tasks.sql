DROP DATABASE IF EXISTS test_users;

CREATE DATABASE test_users;

USE test_users;

------------------------------------------------------------------------------------------------------------
-- Task 1: Update created_at and updated_at columns
------------------------------------------------------------------------------------------------------------

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` char(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime,
  `updated_at` datetime,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx` (`email`),
  UNIQUE KEY `phone_idx` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES ('1', 'Walton', 'Koss', 'estella55@example.net', '336067162');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES ('2', 'Volan', 'de Morte', 'without_nose@example.net', '336067462');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES ('3', 'Harry', 'Potter', 'scarface@example.net', '3360671262');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES ('6', 'Liam', 'Hamsword', 'sufferer@example.net', '23360671262');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES ('7', 'Natasha', 'Romanov', 'black_widow@example.net', '89162343059');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES ('8', 'Bruce', 'Benner', 'green_hulk@example.net', '19162343043');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES ('9', 'Clint', 'Barton', 'hawkeye@example.net', '22162343053');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES ('10', 'Wanda', 'Maximoff', 'scarlet_witch@example.net', '3892032331');




SELECT * FROM users;

-- Добавляем значение в поля, ранее пропущенные (created_at / updated_at)

UPDATE users
SET created_at = current_timestamp(), updated_at = current_timestamp();

SELECT * FROM users;


------------------------------------------------------------------------------------------------------------
-- Task 2: Change type of columns (updated_at and created_at)
------------------------------------------------------------------------------------------------------------

CREATE TABLE `new_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` char(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` VARCHAR(100),
  `updated_at` VARCHAR(100),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx` (`email`),
  UNIQUE KEY `phone_idx` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `new_users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('4', 'Peter', 'Parker', 'spider_man@example.net', '156067162', '2007-04-17 01:20:42', '2007-04-17 01:20:42');
INSERT INTO `new_users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('5', 'Tony', 'Stark', 'iron_man@example.net', '336057462', '2007-04-17 01:20:42', '2007-04-17 01:20:42');
INSERT INTO `new_users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('6', 'Steve', 'Roggers', 'captain_america@example.net', '1560671262', '2007-04-17 01:20:42', '2007-04-17 01:20:42');
INSERT INTO `new_users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('7', 'Wade', 'Wilson', 'deadpool@example.net', '4363671561', '2007-04-17 01:20:42', '2007-04-17 01:20:42');
INSERT INTO `new_users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('8', 'Chris', 'Hamsword', 'thor_odinsond@example.net', '7360671252', '2007-04-17 01:20:42', '2007-04-17 01:20:42');

SELECT * FROM new_users;
DESCRIBE test_users.new_users;

-- Меняем тип колонки created_at и updated_at на datetime

ALTER TABLE new_users MODIFY created_at datetime;
ALTER TABLE new_users MODIFY updated_at datetime;

DESCRIBE test_users.new_users;


------------------------------------------------------------------------------------------------------------
-- Task 3: Selection values from storehouses_products
------------------------------------------------------------------------------------------------------------

DROP TABLE `storehouse_products`;

CREATE TABLE `storehouse_products` (
	`name` varchar(100) NOT NULL,
	`value` bigint(10) NOT NULL
);

INSERT INTO storehouse_products VALUES ('Scaner', '88');
INSERT INTO storehouse_products VALUES ('Printer', '0');
INSERT INTO storehouse_products VALUES ('Computer-1', '15');
INSERT INTO storehouse_products VALUES ('Computer-2', '23');
INSERT INTO storehouse_products VALUES ('Xerox', '56');
INSERT INTO storehouse_products VALUES ('Computer-3', '0');
INSERT INTO storehouse_products VALUES ('Pen', '2234');
INSERT INTO storehouse_products VALUES ('Desk', '456');



SELECT * FROM storehouse_products;

-- Сортировка данных по количеству

SELECT value FROM storehouse_products ORDER BY value=0, value ASC;



------------------------------------------------------------------------------------------------------------
------------------------------------------------ АГРЕГАЦИЯ ДАННЫХ ------------------------------------------
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
-- Task 1: Average age of users
------------------------------------------------------------------------------------------------------------

-- Add new column to users
ALTER TABLE users ADD COLUMN birthday DATETIME;

-- Set random values around 45 years
UPDATE users
SET birthday = CURRENT_DATE - INTERVAL FLOOR(RAND() * 45) YEAR;

SELECT * FROM users;

-- Средний возраст пользователей в таблице users

SELECT AVG(TIMESTAMPDIFF(YEAR, birthday, CURDATE())) AS `Average` FROM users WHERE birthday IS NOT NULL;


------------------------------------------------------------------------------------------------------------
-- Task 2: Weekday birthday count
------------------------------------------------------------------------------------------------------------

-- Количество дней рождений по номеру дня недели

SELECT WEEKDAY(birthday) AS weekday,
	COUNT(id) AS counts
	FROM users
	GROUP BY weekday ORDER BY weekday;



