USE course_project_db;

SELECT * FROM tickets;
SELECT * FROM flights;

-- Создадим представление о количестве заказов каждого клиента и их сумме
DROP VIEW IF EXISTS CLIENTS_ORDERS_VIEW;

CREATE VIEW CLIENTS_ORDERS_VIEW AS
	SELECT orders.client_id,
	(SELECT CONCAT(first_name, ' ', last_name) FROM clients WHERE id=client_id) AS `Имя клиента`, 
	COUNT(client_id) AS `Количество заказов`,
	sum(tickets.price) AS `Итого на сумму`
	FROM orders
    INNER JOIN tickets ON tickets.id = orders.ticket_id
    GROUP BY client_id
    ORDER BY `Итого на сумму` DESC;

SELECT * FROM CLIENTS_ORDERS_VIEW;


-- Создадим представление о самых популярных самолетах
DROP VIEW IF EXISTS PLANES_POPULAR_VIEW;

CREATE VIEW PLANES_POPULAR_VIEW AS 
	SELECT flights.plane_id AS `id`, 
    (SELECT `name` FROM planes WHERE id=plane_id) AS `Название самолета`,
	COUNT(plane_id) AS `Количество рейсов`,
    (SELECT airline_name FROM planes WHERE id=plane_id) AS `Авиакомпания`
    FROM flights
    GROUP BY flights.plane_id
    ORDER BY `Количество рейсов` DESC;
    
SELECT * FROM PLANES_POPULAR_VIEW;

-- Триггер для добавления значения в поле прилета в таблице flights

DROP TRIGGER IF EXISTS flight_arrival_time_update;

DELIMITER //
CREATE TRIGGER flight_arrival_time_update BEFORE INSERT ON course_project_db.flights
	FOR EACH ROW BEGIN
		SET NEW.`arrival_time` = (SELECT NEW.departure_date + NEW.flight_time);
END//
DELIMITER ;

insert into flights (`airport_from`, `city_from`, `airport_where`, `city_where`, `departure_date`, `flight_time`, `plane_id`) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-09-15 2:00:00', '5:00:00', 112);

SELECT * FROM flights ORDER BY id DESC;

    


    

