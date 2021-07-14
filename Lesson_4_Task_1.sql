
USE vk;


ALTER TABLE friend_requests 
ADD CONSTRAINT sender_not_reciever_check
CHECK (from_user_id != to_user_id);


SELECT * FROM friend_requests;

ALTER TABLE users 
ADD CONSTRAINT phone_check
CHECK (REGEXP_LIKE(phone, '^[0-9]{11}$'));


ALTER TABLE profiles 
ADD CONSTRAINT fk_profiles_media
FOREIGN KEY (photo_id) REFERENCES media (id);


INSERT INTO users (id, first_name, last_name, email, phone, password_hash)
VALUES (DEFAULT, 'Alex', 'Stepanov', 'alex@mail.com', '89213546566', 'aaa');

SELECT * FROM users;


INSERT IGNORE INTO users (id, first_name, last_name, email, phone, password_hash)
VALUES (DEFAULT, 'Alex', 'Stepanov', 'alex@mail.com', '89213546566', 'aaa');

INSERT users (first_name, last_name, email, phone)
VALUES ('Lena', 'Stepanova', 'lena@mail.com', '89213546568');


INSERT users 
VALUES (DEFAULT, 'Chris', 'Ivanov', 'chris@mail.com', '89213546560', DEFAULT, DEFAULT);


INSERT INTO users (id, first_name, last_name, email, phone)
VALUES (55, 'Jane', 'Kvanov', 'jane@mail.com', '89293546560');


INSERT INTO users (id, first_name, last_name, email, phone) VALUES 
(45, 'Jane', 'Night', 'jane_n@mail.com', '89293946560');


INSERT INTO users (first_name, last_name, email, phone)
VALUES ('Igor', 'Petrov', 'igor@mail.com', '89213549560'),
		('Oksana', 'Petrova', 'oksana@mail.com', '89213549561');


INSERT INTO users 
SET first_name = 'Iren',
	last_name = 'Sidorova',
	email = 'iren@mail.com',
	phone  = '89213541560';

SHOW CREATE TABLE users;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(145) NOT NULL,
  `last_name` varchar(145) NOT NULL,
  `email` varchar(145) NOT NULL,
  `phone` char(11) NOT NULL,
  `password_hash` char(65) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `phone` (`phone`),
  KEY `email_2` (`email`)
);

USE test2;


INSERT INTO users (first_name, last_name, email, phone)
VALUES ('Alina', 'Kobrina', 'alina@mail.com', '89210549561');


USE vk;

INSERT users (first_name, last_name, email, phone)
SELECT first_name, last_name, email, phone FROM test2.users;


SELECT 'hello!';

SELECT 1+10;

SELECT * FROM users;

SELECT first_name FROM users;

SELECT DISTINCT first_name FROM users;

SELECT * FROM users WHERE last_name = 'Petrov';

SELECT * FROM users WHERE id <= 10;

SELECT * FROM users WHERE id BETWEEN 3 AND 7;

SELECT * FROM users WHERE password_hash IS NULL;

SELECT * FROM users WHERE password_hash IS NOT NULL;

SELECT * FROM users Limit 4;

SELECT * FROM users ORDER BY id DESC Limit 4;

SELECT * FROM users ORDER BY id LIMIT 1 OFFSET 3;

SELECT * FROM users ORDER BY id LIMIT 3,1;

INSERT INTO messages (from_user_id, to_user_id, txt)
VALUES (45, 55, 'Hi!');

INSERT INTO messages (from_user_id, to_user_id, txt)
VALUES (45, 55, 'I hate you!');

SELECT * FROM messages;

UPDATE messages 
SET is_delivered = TRUE;

UPDATE messages 
SET txt = 'I love you'
WHERE id = 5;

DELETE FROM users WHERE last_name = 'Stepanov';

DELETE FROM messages;

TRUNCATE TABLE messages;

TRUNCATE TABLE users;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE users;
SELECT * FROM users;

SET FOREIGN_KEY_CHECKS = 1;
