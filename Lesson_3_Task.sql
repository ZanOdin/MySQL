
------------------------------------------------------------- Домашнее задание ------------------------------------------------------------- 

-- Добавить таблицу для создания постов со своим уникальным идентификатором и прикреплением к пользователю
CREATE TABLE user_posts (
	id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	post_text TEXT NOT NULL,
	INDEX user_idx (user_id),
	CONSTRAINT user_posts_fk FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO user_posts VALUES (DEFAULT, 1, DEFAULT, "Hello world!");
INSERT INTO user_posts VALUES (DEFAULT, 2, DEFAULT, "No, Hello Python!");

SELECT * FROM user_posts;

-- Лайки для медиафайлов пользователей
CREATE TABLE media_likes(
	user_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (user_id, media_id),
	INDEX user_idx (user_id),
	INDEX media_idx (media_id),
	CONSTRAINT users_media_likes_fk FOREIGN KEY (user_id) REFERENCES users (id),
	CONSTRAINT media_likes_fk FOREIGN KEY (media_id) REFERENCES media (id)
);

INSERT INTO media_likes VALUES (1, 1);
INSERT INTO media_likes VALUES (1, 2);
INSERT INTO media_likes VALUES (2, 1);

SELECT * FROM media_likes;

-- Лайки для постов пользователей
CREATE TABLE post_likes(
	user_id BIGINT UNSIGNED NOT NULL,
	post_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (user_id, post_id),
	INDEX user_idx (user_id),
	INDEX posts_idx (post_id),
	CONSTRAINT users_posts_likes_fk FOREIGN KEY (user_id) REFERENCES users (id),
	CONSTRAINT posts_likes_fk FOREIGN KEY (post_id) REFERENCES media (id)
);

INSERT INTO post_likes VALUES (1, 1);
INSERT INTO post_likes VALUES (2, 2);

SELECT * FROM post_likes;
