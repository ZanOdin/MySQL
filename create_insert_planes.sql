USE course_project_db;

-- Создание таблицы о самолетах и авиакомпаниях

DROP TABLE IF EXISTS planes;

CREATE TABLE `planes` (
	`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
	`created_at` date NOT NULL,
	`technical_maintenance` datetime NOT NULL DEFAULT current_timestamp(),
    `airline_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    CONSTRAINT `fk_planes_airlines` FOREIGN KEY (`airline_name`) REFERENCES `airlines` (`name`),
	 PRIMARY KEY (`id`)
	 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
     
-- Вставка данных в таблицу

insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Аэробус Airbus A310', '2018-07-30', '2021-03-07', 'Siberia Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A319 Extra Edition', '2016-07-06', '2018-07-29', 'Siberia Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Аэробус Airbus A310', '2018-04-29', '2020-06-27', 'Уральские Авиалинии');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Аэробус Airbus A320', '2018-10-02', '2019-10-27', 'Уральские Авиалинии');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A319 Extra Edition', '2015-02-17', '2019-02-22', 'Уральские Авиалинии');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Иркут МС-21', '2021-07-09', '2019-02-22', 'Siberia Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-8', '2019-08-04', '2020-11-11', 'Siberia Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Иркут МС-21', '2017-06-19', '2018-12-18', 'Уральские Авиалинии');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2012-05-03', '2021-02-06', 'Уральские Авиалинии');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2017-11-12', '2021-05-26', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2015-07-18', '2021-07-12', 'Аэрофлот');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A319 Extra Edition', '2020-06-11', '2021-03-21', 'Jin Air');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2012-08-26', '2021-04-04', 'Korean Air');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2015-12-23', '2020-01-18', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2017-11-20', '2020-06-28', 'Transaero');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2018-07-29', '2020-02-08', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2017-05-31', '2021-08-08', 'Asiana Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2017-03-01', '2019-09-26', 'Uzbekiston Havo Yullari');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-800', '2016-08-19', '2021-05-15', 'China Southern Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2015-02-01', '2020-02-14', 'Cathay Pacific');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A319 Extra Edition', '2020-03-27', '2020-09-01', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2019-04-06', '2020-12-19', 'Air Baltic');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2015-09-29', '2021-06-19', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A319 Extra Edition', '2019-07-20', '2021-10-10', 'Ukrain Intl Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2015-02-02', '2020-11-16', 'Аэрофлот');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A319 Extra Edition', '2013-03-30', '2021-02-24', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2014-11-02', '2021-03-05', 'Transaero');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2015-01-18', '2021-06-15', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2017-07-07', '2021-03-21', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Comac C919', '2015-02-04', '2020-08-15', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2019-12-13', '2021-01-30', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Comac C919', '2014-03-26', '2021-02-09', 'Asiana Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2015-07-26', '2021-04-19', 'Uzbekiston Havo Yullari');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2015-11-26', '2021-04-13', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2020-12-24', '2021-03-23', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Иркут МС-21', '2019-10-23', '2021-03-01', 'China Southern Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Bombardier Dash 8', '2018-05-11', '2020-05-08', 'Аэрофлот');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2019-02-22', '2021-05-28', 'Jin Air');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Bombardier Dash 8', '2021-07-26', '2020-07-17', 'Transaero');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2017-07-14', '2020-10-17', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2016-01-31', '2020-11-09', 'Uzbekiston Havo Yullari');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('CRAIC CR929', '2018-12-29', '2020-11-20', 'Cathay Pacific');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2016-05-09', '2021-02-26', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2020-09-25', '2020-11-01', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Иркут МС-21', '2019-02-12', '2021-03-06', 'Ukrain Intl Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('CRAIC CR929', '2017-06-26', '2021-08-05', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Bombardier Dash 8', '2017-05-23', '2021-03-02', 'Asiana Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2020-11-07', '2020-11-15', 'China Southern Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2021-03-25', '2021-05-19', 'Air Baltic');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Mitsubishi MRJ', '2017-03-07', '2021-04-29', 'Transaero');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Bombardier Dash 8', '2018-07-12', '2020-11-25', 'Ukrain Intl Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2019-03-20', '2021-03-27', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Bombardier Dash 8', '2020-07-31', '2021-03-28', 'Аэрофлот');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2020-08-23', '2021-07-31', 'Ukrain Intl Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-8', '2018-06-14', '2020-10-15', 'Korean Air');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Mitsubishi MRJ', '2018-11-07', '2021-07-13', 'Uzbekiston Havo Yullari');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2019-05-11', '2020-09-28', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2020-06-20', '2020-09-03', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2014-12-06', '2021-03-07', 'Asiana Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2018-07-21', '2020-09-04', 'China Southern Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-8', '2017-11-19', '2021-06-18', 'Cathay Pacific');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2018-03-19', '2020-10-27', 'Transaero');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Bombardier Dash 8', '2017-11-08', '2021-01-15', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2021-02-23', '2021-07-20', 'Jin Air');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('CRAIC CR929', '2016-02-06', '2021-01-20', 'Air Baltic');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('CRAIC CR929', '2019-11-07', '2021-01-01', 'Аэрофлот');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2018-08-23', '2021-09-29', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2018-04-05', '2020-10-19', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2020-04-28', '2021-02-15', 'Uzbekiston Havo Yullari');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Mitsubishi MRJ', '2018-04-17', '2021-06-13', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2020-03-02', '2021-03-10', 'Transaero');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2018-11-12', '2021-02-28', 'Asiana Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Comac C919', '2020-05-28', '2021-02-25', 'Cathay Pacific');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('CRAIC CR929', '2018-09-25', '2021-03-12', 'China Southern Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2019-12-04', '2021-06-04', 'Ukrain Intl Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Comac C919', '2020-12-23', '2021-06-14', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2018-02-10', '2021-07-18', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2017-06-09', '2021-06-26', 'Korean Air');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('CRAIC CR929', '2017-07-04', '2021-01-12', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2017-01-30', '2021-07-24', 'Аэрофлот');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Comac C919', '2018-08-11', '2021-04-02', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Comac C919', '2018-05-17', '2021-05-22', 'Air Baltic');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer ERJ', '2018-02-24', '2021-04-10', 'Uzbekiston Havo Yullari');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2019-04-03', '2021-06-24', 'Transaero');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2017-10-15', '2021-03-15', 'Asiana Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2017-10-14', '2021-08-21', 'China Southern Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2019-04-03', '2021-03-19', 'Jin Air');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2018-01-23', '2021-06-19', 'Cathay Pacific');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Comac C919 ', '2017-12-20', '2021-02-25', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2010-11-02', '2021-04-29', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Comac C919', '2014-07-16', '2021-06-25', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2017-09-10', '2020-12-15', 'Аэрофлот');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2019-01-25', '2020-12-30', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2019-01-03', '2021-07-26', 'Air Baltic');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Иркут МС-21', '2019-10-29', '2021-05-20', 'Ukrain Intl Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('CRAIC CR929', '2019-01-15', '2021-02-01', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2017-05-12', '2021-01-28', 'China Southern Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Иркут МС-21', '2017-06-26', '2021-01-06', 'Transaero');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-8', '2019-01-20', '2021-06-13', 'Korean Air');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2019-01-26', '2021-04-07', 'Uzbekiston Havo Yullari');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-8', '2020-01-08', '2020-12-16', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2018-03-09', '2021-04-14', 'Jin Air');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Иркут МС-21', '2019-04-29', '2021-02-16', 'Аэрофлот');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2016-01-07', '2020-09-23', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-8', '2016-02-14', '2020-11-18', 'Asiana Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A319 Extra Edition', '2012-06-12', '2021-06-25', 'Air Baltic');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-8', '2015-08-17', '2020-09-20', 'Cathay Pacific');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-800', '2017-05-29', '2021-05-01', 'Transaero');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A319 Extra Edition', '2015-02-12', '2021-01-05', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2014-01-15', '2021-06-27', 'Lufthanza');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Иркут МС-21', '2017-06-25', '2021-07-02', 'Air Baltic');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 777', '2019-05-30', '2021-01-03', 'Uzbekiston Havo Yullari');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2016-05-11', '2020-11-22', 'Аэрофлот');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A319 Extra Edition', '2018-03-23', '2021-01-11', 'Ukrain Intl Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-800', '2020-01-19', '2021-03-22', 'China Southern Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2019-12-08', '2021-06-07', 'Air Astana');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Embraer 170/190', '2018-11-09', '2020-12-27', 'Turkish Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Boeing 737-800', '2017-11-28', '2021-07-28', 'Asiana Airlines');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A321', '2019-07-22', '2021-04-06', 'Cathay Pacific');
insert into `planes` (name, created_at, technical_maintenance, airline_name) values ('Airbus A330', '2018-08-02', '2021-06-14', 'Transaero');
