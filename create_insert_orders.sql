USE course_project_db;

-- Создание таблицы заказов с информацией о клиентах, билете и сотрудниках авиакассы

DROP TABLE IF EXISTS orders;

CREATE TABLE `orders` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `client_id` bigint(20) unsigned NOT NULL,
    `agent_id` bigint(20) unsigned NOT NULL,
    `accountant_id` bigint(20) unsigned NOT NULL,
    `ticket_id` bigint(20) unsigned NOT NULL,
    CONSTRAINT `fk_orders_clients` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
    CONSTRAINT `fk_orders_agents` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`),
    CONSTRAINT `fK_orders_accountants` FOREIGN KEY (`accountant_id`) REFERENCES `accountants` (`id`),
    CONSTRAINT `fk_orders_tickets` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Добавляем данные в таблицу orders с помощью процедуры (ПОСЛЕ СОЗДАНИЯ ТАБЛИЦЫ)

CALL sp_insert_orders_values();
DROP procedure IF EXISTS sp_insert_orders_values;


DELIMITER //
CREATE procedure sp_insert_orders_values()
	BEGIN 
    DECLARE i INT(10) DEFAULT 1;
    WHILE i < (SELECT COUNT(id) FROM tickets) DO
		INSERT INTO orders (`client_id`, `agent_id`, `accountant_id`, `ticket_id`) VALUES (
					(0 + CEIL(RAND() * (SELECT COUNT(id) FROM clients))),
                    (0 + CEIL(RAND() * (SELECT COUNT(id) FROM agents))),
                    (0 + CEIL(RAND() * (SELECT COUNT(id) FROM accountants))),
                    i);
		SET i = i + 1;
        END WHILE;
END//

DELIMITER ;
	
                    
		
		
	
    