CREATE DATABASE course_project_db;

USE course_project_db;


DROP TABLE IF exists cities;

CREATE TABLE `cities` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `airports_count` int(10) unsigned NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `name_idx` (`name`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS clients;

CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx` (`email`),
  UNIQUE KEY `phone_idx` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF exists agents;

CREATE TABLE `agents` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`first_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
	`last_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `got_job` datetime NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`id`),
    UNIQUE KEY `phone_idx` (`phone`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
    

DROP TABLE IF exists accountants;

CREATE TABLE `accountants` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`first_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
	`last_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
    `phone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
    `got_job` datetime NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`id`),
    UNIQUE KEY `phone_idx` (`phone`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
   
   
DROP TABLE IF EXISTS airports;

CREATE TABLE `airports` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
    `terminal_count` bigint(10) unsigned,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_airports_cities` FOREIGN KEY (`city`) REFERENCES `cities` (`name`),
    UNIQUE KEY `name_idx` (`name`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS airlines;

SELECT * FROM airlines;
CREATE TABLE `airlines` (
    `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` date NOT NULL, 
    UNIQUE KEY `name_idx` (`name`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




    
    
