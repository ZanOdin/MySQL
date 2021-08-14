USE course_project_db;

-- Создаем таблицу билеты с информацией о рейсе
DROP TABLE IF EXISTS tickets;

SELECT * FROM tickets;
 CREATE TABLE `tickets` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`flight_id` bigint(20) unsigned NOT NULL,
    `from` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
    `where` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
    `flight_time` time NOT NULL,
    -- `price` bigint(10) unsigned NOT NULL, -- Цена для билета зависит от времени полета
	CONSTRAINT `fk_tickets_flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE,
	PRIMARY KEY (`id`)
	 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP PROCEDURE IF EXISTS sp_insert_ticket_values;

-- После создания таблицы используем процедуру добавления значений
CALL sp_insert_ticket_values();

-- Процедура добавления значений в таблицу билетов
DELIMITER //    
CREATE PROCEDURE sp_insert_ticket_values()
BEGIN
	DECLARE i BIGINT(10) DEFAULT 1;
    DECLARE j BIGINT(10) DEFAULT 1;
    WHILE i < (SELECT COUNT(id) FROM flights) DO
		WHILE j < 46 DO
			INSERT INTO tickets (`flight_id`, `from`, `where`, `flight_time`) VALUES (i, 
							(SELECT CONCAT(airport_from, ' (', city_from, ')') FROM flights WHERE id=i), 
                            (SELECT CONCAT(airport_where, ' (', city_where, ')') FROM flights WHERE id=i),
                            (SELECT flight_time  FROM flights WHERE id=i)
                            );
			SET j = j + 1;
            END WHILE;
		SET i = i + 1;
        SET j = 1;
	END WHILE;
    CALL sp_update_ticket_value();
END //
DELIMITER ;

-- Процедура обновления таблицы о билетах
DROP PROCEDURE IF EXISTS sp_update_ticket_value;

DELIMITER //    

CREATE procedure sp_update_ticket_value()
BEGIN
    ALTER TABLE tickets ADD COLUMN price BIGINT(10);
    -- Исходя из времени, проведенного в пути, выставляем цену билета
    UPDATE tickets
	SET price = CASE
		WHEN flight_time BETWEEN '01:00:00' AND '02:59:59' THEN 300
        WHEN flight_time BETWEEN '03:00:00' AND '04:59:59' THEN 550
        WHEN flight_time BETWEEN '05:00:00' AND '06:59:59' THEN 680
        WHEN flight_time BETWEEN '07:00:00' AND '08:59:59' THEN 900
        WHEN flight_time BETWEEN '09:00:00' AND '11:59:59' THEN 1200
        ELSE 1500
	END;
    -- Удаляем колонку времени, так как данную информацию можно узнать из таблицы flights
	ALTER TABLE tickets DROP COLUMN flight_time;
END //

DELIMITER ;
