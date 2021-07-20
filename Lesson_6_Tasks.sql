USE vk;

-- Task_2 - Find the user who communicated with user_id = 7 the most
-- 7 юзер был выбран не случайно: было обнаружено более 1 сообщения с другими пользователями

SELECT from_user_id, 
		to_user_id,
		(SELECT COUNT(*) to_user_id FROM messages WHERE from_user_id = 7 GROUP BY to_user_id ORDER BY COUNT(*) DESC LIMIT 1) AS count,
		(SELECT CONCAT(first_name," ", last_name) AS name FROM users WHERE id = (SELECT to_user_id FROM messages WHERE from_user_id = 7 GROUP BY to_user_id ORDER BY COUNT(*) DESC LIMIT 1)) AS to_user_name
FROM messages 
WHERE from_user_id = 7 GROUP BY to_user_id ORDER BY COUNT(*) DESC LIMIT 1;

SELECT * FROM profiles;

-- Task_3 Selection all likes for users who younger than all
SELECT user_id, 
	(FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday)) / 365.25)) AS age,
	(SELECT COUNT(user_id) FROM posts_likes WHERE user_id IN (91,19,43,92,44,9,63,16,51,45)) AS like_counts_for_all
FROM profiles
ORDER BY birthday DESC LIMIT 10;

SELECT * FROM posts_likes ;
SELECT * FROM profiles;

-- Task 4 Selection and comparison all likes from male and female users
SELECT COUNT(user_id) AS female_likes,
		(SELECT COUNT(user_id) FROM posts_likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm')) AS male_likes
FROM posts_likes
WHERE user_id IN (
	SELECT user_id FROM profiles WHERE gender = 'f'
);

SELECT * FROM messages;

-- Task 5 Selection of the most passive users (TOP 10)
-- Пользователи, отправляющие меньше всего сообщений 
SELECT from_user_id, 
	COUNT(from_user_id) AS messages
	FROM messages 
	GROUP BY from_user_id ORDER BY messages LIMIT 10;

-- Пользователи, публикующие меньше все постов (TOP 10)

SELECT user_id,
	COUNT(user_id) AS posts
	FROM posts
	GROUP BY user_id ORDER BY posts LIMIT 10;

-- Пользователи с наименьшим количеством медиафайлов

SELECT user_id,
	COUNT(user_id) AS media_count,
	file_size 
	FROM media
	GROUP BY user_id ORDER BY media_count, file_size LIMIT 10;
	
