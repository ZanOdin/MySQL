USE course_project_db;
-- Создание таблицы с информацией о вылетах, аэропортах, самолетах и прочем

DROP TABLE IF EXISTS flights;

 CREATE TABLE `flights` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`airport_from` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
    `city_from` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
	`airport_where` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
    `city_where` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
	`departure_date` datetime NOT NULL,
	`flight_time` time NOT NULL,
	`plane_id` bigint(20) unsigned NOT NULL,
	CONSTRAINT `fk_flights_planes` FOREIGN KEY (`plane_id`) REFERENCES `planes` (`id`),
    CONSTRAINT `fk_flights_airports_from_name` FOREIGN KEY (`airport_from`) REFERENCES `airports` (`name`),
    CONSTRAINT `fk_flights_city_from_name` FOREIGN KEY (`city_from`) REFERENCES `airports` (`city`),
	CONSTRAINT `fk_flights_airports_where_name` FOREIGN KEY (`airport_where`) REFERENCES `airports` (`name`),
    CONSTRAINT `fk_flights_city_where_name` FOREIGN KEY (`city_where`) REFERENCES `airports` (`city`),
	PRIMARY KEY (`id`)
	 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
         

 -- Добавляем колонку в таблицу после создания
ALTER TABLE flights ADD COLUMN `arrival_time` DATETIME;

insert into flights (`airport_from`, `city_from`, `airport_where`, `city_where`, `departure_date`, `flight_time`, `plane_id`) 
						values((SELECT name FROM airports WHERE id=2),
							(SELECT city FROM airports WHERE id=2),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-09-15 3:00:00', '12:00:00', 3);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-08-21 12:00:00', '07:00:00', 15);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-10-16 07:30:00', '06:00:00', 24);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-08-26 06:40:00', '07:00:00', 111);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-28 02:10:00', '05:00:00', 114);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-11-20 22:45:00', '14:00:00', 16);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=2),
                            (SELECT city FROM airports WHERE id=2),
                            '2021-08-30 14:00:00', '03:00:00', 54);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-08-21 18:30:00', '04:00:00', 88);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-09-17 09:30:00', '10:00:00', 13);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-10-16 07:30:00', '07:15:00', 25);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-08-24 02:10:00', '06:00:00', 78);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=2),
							(SELECT city FROM airports WHERE id=2),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-17 14:00:00', '12:20:00', 76);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-08-26 06:40:00', '09:00:00', 94);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-12-09 18:50:00', '04:35:00', 12);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-08-20 17:00:00', '07:30:00', 64);
                
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-11-19 23:10:00', '05:40:00', 69);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=11),
							(SELECT city FROM airports WHERE id=11),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-08-28 02:10:00', '08:00:00', 70);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=28),
                            (SELECT city FROM airports WHERE id=28),
                            '2021-10-16 07:30:00', '05:50:00', 80);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-10-26 23:45:00', '06:30:00', 11);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-10-24 11:15:00', '03:40:00', 21);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-09-06 11:30:00', '06:20:00', 31);
                          
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-08-16 03:30:00', '04:00:00', 41);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-08-22 21:00:00', '05:00:00', 51);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=23),
                            (SELECT city FROM airports WHERE id=23),
                            '2021-12-01 22:00:00', '04:00:00', 61);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-10-16 07:30:00', '06:00:00', 71);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-09-13 16:40:00', '04:00:00', 81);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-09-20 08:10:00', '07:00:00', 91);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-08-25 12:00:00', '11:00:00', 101);                          
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-12-09 18:50:00', '03:15:00', 111);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-11-19 23:10:00', '02:00:00', 120);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-08-26 06:40:00', '05:20:00', 119);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-10-16 07:30:00', '07:00:00', 109);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=10),
							(SELECT city FROM airports WHERE id=10),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-08-17 14:00:00', '02:35:00', 99);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-10-24 11:15:00', '06:30:00', 89);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-09-10 14:25:00', '04:40:00', 79);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-28 02:10:00', '05:00:00', 69);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-09-14 18:00:00', '07:50:00', 59);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-11-20 22:45:00', '03:00:00', 49);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-10-16 07:30:00', '05:10:00', 19);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-09-20 08:10:00', '04:20:00', 19);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-09-15 3:00:00', '08:45:00', 105);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-08-21 12:00:00', '05:35:00', 115);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-08-20 17:00:00', '11:00:00', 116);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-09-25 01:00:00', '07:20:00', 106);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-21 18:30:00', '06:25:00', 96);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-12-16 02:50:00', '03:55:00', 86);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-16 03:30:00', '04:15:00', 76);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=10),
							(SELECT city FROM airports WHERE id=10),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-12-09 18:50:00', '03:00:00', 66);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=11),
							(SELECT city FROM airports WHERE id=11),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-10-16 07:30:00', '09:15:00', 56);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-08-26 06:40:00', '04:25:00', 46);  
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=23),
                            (SELECT city FROM airports WHERE id=23),
                            '2021-08-17 14:00:00', '08:45:00', 36);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-11-20 22:45:00', '06:20:00', 26);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-10-26 23:45:00', '03:55:00', 16);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-08-30 14:00:00', '05:15:00', 06);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-10-24 11:15:00', '08:45:00', 07);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=28),
                            (SELECT city FROM airports WHERE id=28),
                            '2021-11-19 23:10:00', '02:55:00', 17);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=19),
							(SELECT city FROM airports WHERE id=19),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-10-16 07:30:00', '04:45:00', 27);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-08-28 02:10:00', '07:25:00', 37);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-08-22 21:00:00', '03:35:00', 47);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-12-01 22:00:00', '05:40:00', 57);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-09-10 14:25:00', '05:15:00', 67);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-10-16 07:30:00', '03:45:00', 77);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-08-24 02:10:00', '04:45:00', 87);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-25 12:00:00', '04:20:00', 97);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-09-17 09:30:00', '08:25:00', 107);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-26 06:40:00', '05:50:00', 117);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=28),
							(SELECT city FROM airports WHERE id=28),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-09-14 18:00:00', '09:10:00', 118);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-12-16 02:50:00', '03:40:00', 108);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-10-24 11:15:00', '05:35:00', 98);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-10-16 07:30:00', '05:30:00', 88);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-08-17 14:00:00', '03:25:00', 78);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-09-20 08:10:00', '07:10:00', 68);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=10),
                            (SELECT city FROM airports WHERE id=10),
                            '2021-08-20 17:00:00', '06:20:00', 58);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-09-25 01:00:00', '05:15:00', 48);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-09-20 08:10:00', '04:30:00', 38);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=19),
							(SELECT city FROM airports WHERE id=19),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-08-30 14:00:00', '07:20:00', 28);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-09-06 11:30:00', '06:45:00', 18);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-12-09 18:50:00', '03:15:00', 08);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-10-16 07:30:00', '06:10:00', 09);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-08-28 02:10:00', '08:20:00', 19);                                                        
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=1),
							(SELECT city FROM airports WHERE id=1),
                            (SELECT name FROM airports WHERE id=28),
                            (SELECT city FROM airports WHERE id=28),
                            '2021-09-15 3:00:00', '12:00:00', 9);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=2),
							(SELECT city FROM airports WHERE id=2),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-08-21 12:00:00', '07:00:00', 15);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-10-26 23:45:00', '06:00:00', 24);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-08-21 18:30:00', '07:00:00', 111);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-09-10 14:25:00', '05:00:00', 114);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=23),
                            (SELECT city FROM airports WHERE id=23),
                            '2021-10-16 07:30:00', '14:00:00', 16);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-08-17 14:00:00', '03:00:00', 54);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-10-24 11:15:00', '04:00:00', 88);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-11-20 22:45:00', '10:00:00', 13);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-20 17:00:00', '07:15:00', 25);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-09-25 01:00:00', '06:00:00', 78);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=10),
							(SELECT city FROM airports WHERE id=10),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-25 12:00:00', '12:20:00', 76);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=11),
							(SELECT city FROM airports WHERE id=11),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-08-16 03:30:00', '09:00:00', 94);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-10-16 07:30:00', '04:35:00', 12);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-08-26 06:40:00', '07:30:00', 64);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-11-19 23:10:00', '05:40:00', 69);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-08-28 02:10:00', '08:00:00', 70);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-09-14 18:00:00', '05:50:00', 80);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=10),
                            (SELECT city FROM airports WHERE id=10),
                            '2021-09-17 09:30:00', '06:30:00', 11);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-12-09 18:50:00', '03:40:00', 66);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=19),
							(SELECT city FROM airports WHERE id=19),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-12-01 22:00:00', '06:20:00', 44);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-10-16 07:30:00', '04:00:00', 33);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-10-26 23:45:00', '05:00:00', 99);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-08-17 14:00:00', '04:00:00', 88);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-12-16 02:50:00', '06:00:00', 06);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-10-24 11:15:00', '04:00:00', 08);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=2),
                            (SELECT city FROM airports WHERE id=2),
                            '2021-08-22 21:00:00', '07:00:00', 03);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=1),
                            (SELECT city FROM airports WHERE id=1),
                            '2021-09-20 08:10:00', '11:00:00', 13);                  
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=2),
                            (SELECT city FROM airports WHERE id=2),
                            '2021-09-10 14:25:00', '03:15:00', 15);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=28),
							(SELECT city FROM airports WHERE id=28),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-08-21 18:30:00', '02:00:00', 20);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-10-16 07:30:00', '05:20:00', 37);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-08-30 14:00:00', '07:00:00', 71);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-09-25 01:00:00', '02:35:00', 76);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-08-26 06:40:00', '06:30:00', 59);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-10-16 07:30:00', '04:40:00', 79);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-08-28 02:10:00', '05:00:00', 64);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-12-09 18:50:00', '07:50:00', 28);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-08-20 17:00:00', '03:00:00', 14);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=19),
							(SELECT city FROM airports WHERE id=19),
                            (SELECT name FROM airports WHERE id=10),
                            (SELECT city FROM airports WHERE id=10),
                            '2021-10-16 07:30:00', '05:10:00', 55);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-08-25 12:00:00', '04:20:00', 78);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-09-15 3:00:00', '08:45:00', 55);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-08-21 12:00:00', '05:35:00', 04);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-10-16 07:30:00', '11:00:00', 12);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-09-14 18:00:00', '07:20:00', 22);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-16 03:30:00', '06:25:00', 32);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-08-17 14:00:00', '03:55:00', 42);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=11),
							(SELECT city FROM airports WHERE id=11),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-12-16 02:50:00', '04:15:00', 52);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=09),
							(SELECT city FROM airports WHERE id=09),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-09-17 09:30:00', '03:00:00', 62);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=08),
							(SELECT city FROM airports WHERE id=08),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-11-20 22:45:00', '09:15:00', 72);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=07),
							(SELECT city FROM airports WHERE id=07),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-10-16 07:30:00', '04:25:00', 82);  
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=06),
							(SELECT city FROM airports WHERE id=06),
                            (SELECT name FROM airports WHERE id=23),
                            (SELECT city FROM airports WHERE id=23),
                            '2021-09-06 11:30:00', '08:45:00', 92);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=05),
							(SELECT city FROM airports WHERE id=05),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-09-10 14:25:00', '06:20:00', 102);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=04),
							(SELECT city FROM airports WHERE id=04),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-08-28 02:10:00', '03:55:00', 103);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=03),
							(SELECT city FROM airports WHERE id=03),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-12-09 18:50:00', '05:15:00', 113);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=02),
							(SELECT city FROM airports WHERE id=02),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-11-19 23:10:00', '08:45:00', 103);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=01),
							(SELECT city FROM airports WHERE id=01),
                            (SELECT name FROM airports WHERE id=28),
                            (SELECT city FROM airports WHERE id=28),
                            '2021-10-26 23:45:00', '02:55:00', 93);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-10-16 07:30:00', '04:45:00', 83);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-08-20 17:00:00', '07:25:00', 73);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-08-24 02:10:00', '03:35:00', 63);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-12-16 02:50:00', '05:40:00', 53);                          
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-09-17 09:30:00', '05:15:00', 43);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-08-21 18:30:00', '03:45:00', 33);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-08-26 06:40:00', '04:45:00', 23);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-17 14:00:00', '04:20:00', 13);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-10-16 07:30:00', '08:25:00', 03);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-28 02:10:00', '05:50:00', 04);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-08-30 14:00:00', '09:10:00', 14);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-09-25 01:00:00', '03:40:00', 24);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-10-16 07:30:00', '05:35:00', 34);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-08-25 12:00:00', '05:30:00', 44);                   
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-09-14 18:00:00', '03:25:00', 54);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=28),
							(SELECT city FROM airports WHERE id=28),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-09-10 14:25:00', '07:10:00', 64);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-08-17 14:00:00', '06:20:00', 74);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=01),
							(SELECT city FROM airports WHERE id=01),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-10-16 07:30:00', '05:15:00', 84);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=02),
							(SELECT city FROM airports WHERE id=02),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-08-26 06:40:00', '04:30:00', 94);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=03),
							(SELECT city FROM airports WHERE id=03),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-12-01 6:00:00', '07:20:00', 104);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-09-15 4:00:00', '06:45:00', 114);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-08-28 02:10:00', '03:15:00', 110);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-10-24 11:15:00', '06:10:00', 120);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-10-16 07:30:00', '08:20:00', 115);                                                        
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=2),
							(SELECT city FROM airports WHERE id=2),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-09-15 3:00:00', '12:00:00', 3);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-08-21 12:00:00', '07:00:00', 15);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-10-16 07:30:00', '06:00:00', 24);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-08-26 06:40:00', '07:00:00', 111);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-28 02:10:00', '05:00:00', 114);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-11-20 22:45:00', '14:00:00', 16);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=2),
                            (SELECT city FROM airports WHERE id=2),
                            '2021-08-30 14:00:00', '03:00:00', 54);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-08-21 18:30:00', '04:00:00', 88);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-09-17 09:30:00', '10:00:00', 13);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-10-16 07:30:00', '07:15:00', 25);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-10-24 11:15:00', '06:00:00', 78);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=2),
							(SELECT city FROM airports WHERE id=2),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-17 14:00:00', '12:20:00', 76);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-09-06 11:30:00', '09:00:00', 94);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-12-09 18:50:00', '04:35:00', 12);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-08-20 17:00:00', '07:30:00', 64);
                
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-11-09 09:30:00', '05:40:00', 69);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=11),
							(SELECT city FROM airports WHERE id=11),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-10-03 12:15:00', '08:00:00', 70);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=28),
                            (SELECT city FROM airports WHERE id=28),
                            '2021-10-16 07:30:00', '05:50:00', 80);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-10-26 23:45:00', '06:30:00', 11);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-24 02:10:00', '03:40:00', 21);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-08-26 06:40:00', '06:20:00', 31);
                          
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-08-16 03:30:00', '04:00:00', 41);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-08-22 21:00:00', '05:00:00', 51);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=23),
                            (SELECT city FROM airports WHERE id=23),
                            '2021-12-01 22:00:00', '04:00:00', 61);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-10-16 07:30:00', '06:00:00', 71);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-09-13 16:40:00', '04:00:00', 81);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-09-20 08:10:00', '07:00:00', 91);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-08-25 12:00:00', '11:00:00', 101);                          
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-12-09 18:50:00', '03:15:00', 111);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-11-09 09:30:00', '02:00:00', 120);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-08-26 06:40:00', '05:20:00', 119);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-10-16 07:30:00', '07:00:00', 109);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=10),
							(SELECT city FROM airports WHERE id=10),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-08-17 14:00:00', '02:35:00', 99);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-10-24 11:15:00', '06:30:00', 89);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-09-10 14:25:00', '04:40:00', 79);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-10-03 12:15:00', '05:00:00', 69);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-09-14 18:00:00', '07:50:00', 59);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-11-20 22:45:00', '03:00:00', 49);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-10-16 07:30:00', '05:10:00', 19);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-09-20 08:10:00', '04:20:00', 19);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-09-15 3:00:00', '08:45:00', 105);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-08-21 12:00:00', '05:35:00', 115);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-08-20 17:00:00', '11:00:00', 116);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-09-25 01:00:00', '07:20:00', 106);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-21 18:30:00', '06:25:00', 96);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-12-16 02:50:00', '03:55:00', 86);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-16 03:30:00', '04:15:00', 76);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=10),
							(SELECT city FROM airports WHERE id=10),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-12-09 18:50:00', '03:00:00', 66);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=11),
							(SELECT city FROM airports WHERE id=11),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-10-16 07:30:00', '09:15:00', 56);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-08-26 06:40:00', '04:25:00', 46);  
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=23),
                            (SELECT city FROM airports WHERE id=23),
                            '2021-08-17 14:00:00', '08:45:00', 36);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-11-20 22:45:00', '06:20:00', 26);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-10-26 23:45:00', '03:55:00', 16);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-08-30 14:00:00', '05:15:00', 06);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-10-24 11:15:00', '08:45:00', 07);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=28),
                            (SELECT city FROM airports WHERE id=28),
                            '2021-11-09 09:30:00', '02:55:00', 17);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=19),
							(SELECT city FROM airports WHERE id=19),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-10-16 07:30:00', '04:45:00', 27);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-10-03 12:15:00', '07:25:00', 37);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-08-22 21:00:00', '03:35:00', 47);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-12-01 22:00:00', '05:40:00', 57);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-09-10 14:25:00', '05:15:00', 67);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-10-16 07:30:00', '03:45:00', 77);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-10-24 11:15:00', '04:45:00', 87);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-25 12:00:00', '04:20:00', 97);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-09-17 09:30:00', '08:25:00', 107);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-09-06 11:30:00', '05:50:00', 117);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=28),
							(SELECT city FROM airports WHERE id=28),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-09-14 18:00:00', '09:10:00', 118);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-12-16 02:50:00', '03:40:00', 108);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-08-24 02:10:00', '05:35:00', 98);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-10-16 07:30:00', '05:30:00', 88);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-08-17 14:00:00', '03:25:00', 78);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-09-20 08:10:00', '07:10:00', 68);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=10),
                            (SELECT city FROM airports WHERE id=10),
                            '2021-08-20 17:00:00', '06:20:00', 58);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-09-25 01:00:00', '05:15:00', 48);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-09-20 08:10:00', '04:30:00', 38);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=19),
							(SELECT city FROM airports WHERE id=19),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-08-30 14:00:00', '07:20:00', 28);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-08-26 06:40:00', '06:45:00', 18);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-12-09 18:50:00', '03:15:00', 08);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-10-16 07:30:00', '06:10:00', 09);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-10-03 12:15:00', '08:20:00', 19);                                                        
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=1),
							(SELECT city FROM airports WHERE id=1),
                            (SELECT name FROM airports WHERE id=28),
                            (SELECT city FROM airports WHERE id=28),
                            '2021-09-15 3:00:00', '12:00:00', 9);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=2),
							(SELECT city FROM airports WHERE id=2),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-08-21 12:00:00', '07:00:00', 15);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=3),
							(SELECT city FROM airports WHERE id=3),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-10-26 23:45:00', '06:00:00', 24);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-08-21 18:30:00', '07:00:00', 111);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-09-10 14:25:00', '05:00:00', 114);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=23),
                            (SELECT city FROM airports WHERE id=23),
                            '2021-10-16 07:30:00', '14:00:00', 16);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=5),
							(SELECT city FROM airports WHERE id=5),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-08-17 14:00:00', '03:00:00', 54);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=6),
							(SELECT city FROM airports WHERE id=6),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-10-24 11:15:00', '04:00:00', 88);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-11-20 22:45:00', '10:00:00', 13);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-20 17:00:00', '07:15:00', 25);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-09-25 01:00:00', '06:00:00', 78);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=10),
							(SELECT city FROM airports WHERE id=10),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-25 12:00:00', '12:20:00', 76);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=11),
							(SELECT city FROM airports WHERE id=11),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-08-16 03:30:00', '09:00:00', 94);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-10-16 07:30:00', '04:35:00', 12);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-08-26 06:40:00', '07:30:00', 64);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-11-09 09:30:00', '05:40:00', 69);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-10-03 12:15:00', '08:00:00', 70);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-09-14 18:00:00', '05:50:00', 80);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=10),
                            (SELECT city FROM airports WHERE id=10),
                            '2021-09-17 09:30:00', '06:30:00', 11);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-12-09 18:50:00', '03:40:00', 66);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=19),
							(SELECT city FROM airports WHERE id=19),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-12-01 22:00:00', '06:20:00', 44);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-10-16 07:30:00', '04:00:00', 33);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-10-26 23:45:00', '05:00:00', 99);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-08-17 14:00:00', '04:00:00', 88);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-12-16 02:50:00', '06:00:00', 06);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-10-24 11:15:00', '04:00:00', 08);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=2),
                            (SELECT city FROM airports WHERE id=2),
                            '2021-08-22 21:00:00', '07:00:00', 03);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=1),
                            (SELECT city FROM airports WHERE id=1),
                            '2021-09-20 08:10:00', '11:00:00', 13);                  
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=2),
                            (SELECT city FROM airports WHERE id=2),
                            '2021-09-10 14:25:00', '03:15:00', 15);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=28),
							(SELECT city FROM airports WHERE id=28),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-08-21 18:30:00', '02:00:00', 20);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-10-16 07:30:00', '05:20:00', 37);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-08-30 14:00:00', '07:00:00', 71);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-09-25 01:00:00', '02:35:00', 76);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-09-06 11:30:00', '06:30:00', 59);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-10-16 07:30:00', '04:40:00', 79);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-10-03 12:15:00', '05:00:00', 64);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-12-09 18:50:00', '07:50:00', 28);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=9),
                            (SELECT city FROM airports WHERE id=9),
                            '2021-08-20 17:00:00', '03:00:00', 14);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=19),
							(SELECT city FROM airports WHERE id=19),
                            (SELECT name FROM airports WHERE id=10),
                            (SELECT city FROM airports WHERE id=10),
                            '2021-10-16 07:30:00', '05:10:00', 55);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-08-25 12:00:00', '04:20:00', 78);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-09-15 3:00:00', '08:45:00', 55);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-08-21 12:00:00', '05:35:00', 04);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-10-16 07:30:00', '11:00:00', 12);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-09-14 18:00:00', '07:20:00', 22);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-08-16 03:30:00', '06:25:00', 32);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-08-17 14:00:00', '03:55:00', 42);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=11),
							(SELECT city FROM airports WHERE id=11),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-12-16 02:50:00', '04:15:00', 52);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=09),
							(SELECT city FROM airports WHERE id=09),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-09-17 09:30:00', '03:00:00', 62);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=08),
							(SELECT city FROM airports WHERE id=08),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-11-20 22:45:00', '09:15:00', 72);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=07),
							(SELECT city FROM airports WHERE id=07),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-10-16 07:30:00', '04:25:00', 82);  
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=06),
							(SELECT city FROM airports WHERE id=06),
                            (SELECT name FROM airports WHERE id=23),
                            (SELECT city FROM airports WHERE id=23),
                            '2021-08-26 06:40:00', '08:45:00', 92);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=05),
							(SELECT city FROM airports WHERE id=05),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-09-10 14:25:00', '06:20:00', 102);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=04),
							(SELECT city FROM airports WHERE id=04),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-10-03 12:15:00', '03:55:00', 103);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=03),
							(SELECT city FROM airports WHERE id=03),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-12-09 18:50:00', '05:15:00', 113);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=02),
							(SELECT city FROM airports WHERE id=02),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-11-09 09:30:00', '08:45:00', 103);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=01),
							(SELECT city FROM airports WHERE id=01),
                            (SELECT name FROM airports WHERE id=28),
                            (SELECT city FROM airports WHERE id=28),
                            '2021-10-26 23:45:00', '02:55:00', 93);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=12),
							(SELECT city FROM airports WHERE id=12),
                            (SELECT name FROM airports WHERE id=27),
                            (SELECT city FROM airports WHERE id=27),
                            '2021-10-16 07:30:00', '04:45:00', 83);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=13),
							(SELECT city FROM airports WHERE id=13),
                            (SELECT name FROM airports WHERE id=26),
                            (SELECT city FROM airports WHERE id=26),
                            '2021-08-20 17:00:00', '07:25:00', 73);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=14),
							(SELECT city FROM airports WHERE id=14),
                            (SELECT name FROM airports WHERE id=25),
                            (SELECT city FROM airports WHERE id=25),
                            '2021-08-24 02:10:00', '03:35:00', 63);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=15),
							(SELECT city FROM airports WHERE id=15),
                            (SELECT name FROM airports WHERE id=24),
                            (SELECT city FROM airports WHERE id=24),
                            '2021-12-16 02:50:00', '05:40:00', 53);                          
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=16),
							(SELECT city FROM airports WHERE id=16),
                            (SELECT name FROM airports WHERE id=22),
                            (SELECT city FROM airports WHERE id=22),
                            '2021-09-17 09:30:00', '05:15:00', 43);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=17),
							(SELECT city FROM airports WHERE id=17),
                            (SELECT name FROM airports WHERE id=21),
                            (SELECT city FROM airports WHERE id=21),
                            '2021-08-21 18:30:00', '03:45:00', 33);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=18),
							(SELECT city FROM airports WHERE id=18),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-09-06 11:30:00', '04:45:00', 23);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=20),
							(SELECT city FROM airports WHERE id=20),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-08-17 14:00:00', '04:20:00', 13);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=21),
							(SELECT city FROM airports WHERE id=21),
                            (SELECT name FROM airports WHERE id=18),
                            (SELECT city FROM airports WHERE id=18),
                            '2021-10-16 07:30:00', '08:25:00', 03);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=22),
							(SELECT city FROM airports WHERE id=22),
                            (SELECT name FROM airports WHERE id=17),
                            (SELECT city FROM airports WHERE id=17),
                            '2021-10-03 12:15:00', '05:50:00', 04);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=23),
							(SELECT city FROM airports WHERE id=23),
                            (SELECT name FROM airports WHERE id=16),
                            (SELECT city FROM airports WHERE id=16),
                            '2021-08-30 14:00:00', '09:10:00', 14);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=24),
							(SELECT city FROM airports WHERE id=24),
                            (SELECT name FROM airports WHERE id=15),
                            (SELECT city FROM airports WHERE id=15),
                            '2021-09-25 01:00:00', '03:40:00', 24);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=25),
							(SELECT city FROM airports WHERE id=25),
                            (SELECT name FROM airports WHERE id=14),
                            (SELECT city FROM airports WHERE id=14),
                            '2021-10-16 07:30:00', '05:35:00', 34);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=26),
							(SELECT city FROM airports WHERE id=26),
                            (SELECT name FROM airports WHERE id=13),
                            (SELECT city FROM airports WHERE id=13),
                            '2021-08-25 12:00:00', '05:30:00', 44);                   
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=12),
                            (SELECT city FROM airports WHERE id=12),
                            '2021-09-14 18:00:00', '03:25:00', 54);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=28),
							(SELECT city FROM airports WHERE id=28),
                            (SELECT name FROM airports WHERE id=11),
                            (SELECT city FROM airports WHERE id=11),
                            '2021-09-10 14:25:00', '07:10:00', 64);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=27),
							(SELECT city FROM airports WHERE id=27),
                            (SELECT name FROM airports WHERE id=20),
                            (SELECT city FROM airports WHERE id=20),
                            '2021-08-17 14:00:00', '06:20:00', 74);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=01),
							(SELECT city FROM airports WHERE id=01),
                            (SELECT name FROM airports WHERE id=19),
                            (SELECT city FROM airports WHERE id=19),
                            '2021-10-16 07:30:00', '05:15:00', 84);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=02),
							(SELECT city FROM airports WHERE id=02),
                            (SELECT name FROM airports WHERE id=8),
                            (SELECT city FROM airports WHERE id=8),
                            '2021-08-26 06:40:00', '04:30:00', 94);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=03),
							(SELECT city FROM airports WHERE id=03),
                            (SELECT name FROM airports WHERE id=7),
                            (SELECT city FROM airports WHERE id=7),
                            '2021-12-01 6:00:00', '07:20:00', 104);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=4),
							(SELECT city FROM airports WHERE id=4),
                            (SELECT name FROM airports WHERE id=6),
                            (SELECT city FROM airports WHERE id=6),
                            '2021-09-15 4:00:00', '06:45:00', 114);                            
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=9),
							(SELECT city FROM airports WHERE id=9),
                            (SELECT name FROM airports WHERE id=5),
                            (SELECT city FROM airports WHERE id=5),
                            '2021-10-03 12:15:00', '03:15:00', 103);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=8),
							(SELECT city FROM airports WHERE id=8),
                            (SELECT name FROM airports WHERE id=4),
                            (SELECT city FROM airports WHERE id=4),
                            '2021-08-24 02:10:00', '06:10:00', 120);
insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id) 
						values((SELECT name FROM airports WHERE id=7),
							(SELECT city FROM airports WHERE id=7),
                            (SELECT name FROM airports WHERE id=3),
                            (SELECT city FROM airports WHERE id=3),
                            '2021-10-16 07:30:00', '08:20:00', 115);      
                            
                            

insert into flights (airport_from, city_from, airport_where, city_where, departure_date, flight_time, plane_id)        values((SELECT name FROM airports WHERE id=04),        (SELECT city FROM airports WHERE id=04),                             (SELECT name FROM airports WHERE id=25),                             (SELECT city FROM airports WHERE id=25),                             '2021-08-28 02:10:00', '03:55:00', 15)
