USE course_project_db;


-- Количество билетов и направления

SELECT `from`, `where`, 
		(SELECT flight_time FROM flights WHERE id=flight_id) AS Time, 
        (SELECT `departure_date` FROM flights WHERE id=flight_id) AS `Departure Date`,
        COUNT(flight_id) AS Tickets,
        `price`
FROM tickets
GROUP BY flight_id;


-- Информация о существующих рейсах

SELECT DISTINCT tickets.flight_id AS `ID Рейса`,
	tickets.from AS `Откуда`, 
	tickets.where AS `Куда`,
    flights.departure_date AS `Дата вылета`,
    flights.flight_time AS `Время полета`,
	tickets.price `Цена за билет`,
	planes.name AS `Самолет`, 
    planes.airline_name AS `Авиакомпания`
FROM tickets 
JOIN flights ON tickets.flight_id = flights.id
JOIN planes ON flights.plane_id = planes.id;


-- Информация о заказах авиакассы

SELECT orders.id AS `Номер заказа`, 
	(SELECT CONCAT(clients.first_name, ' ', clients.last_name)) AS `Имя клиента`, 
    (SELECT CONCAT(agents.first_name, ' ', agents.last_name)) AS `Оформил агент`, 
    (SELECT CONCAT(accountants.first_name, ' ', accountants.last_name)) AS `Провел бухгалтер`, 
    (SELECT `departure_date` FROM flights WHERE id=flight_id) AS `Дата вылета`,
    tickets.price AS `Цена за билет`,
    planes.airline_name AS `Авиалиния`,
    planes.name AS `Самолет`
FROM orders
JOIN clients ON orders.client_id = clients.id
JOIN agents ON orders.agent_id = agents.id
JOIN accountants ON orders.accountant_id = accountants.id
JOIN tickets ON orders.ticket_id = tickets.id
JOIN flights ON tickets.flight_id = flights.id
JOIN planes ON flights.plane_id = planes.id
GROUP BY `Номер заказа`
ORDER BY `Имя клиента`;