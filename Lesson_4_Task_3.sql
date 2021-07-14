USE vk;

SELECT * FROM media_types;
INSERT INTO media_types 
VALUES (DEFAULT, 'видео')

UPDATE media_types 
SET name = 'video'
WHERE id = 4;

UPDATE media_types
SET name = 'audio'
WHERE id = 2;

UPDATE media_types
SET name = 'image'
WHERE id = 1;

UPDATE media_types
SET name = 'document'
WHERE id = 3;

SELECT * FROM media_types;

DELETE FROM friend_requests 
WHERE (from_user_id = to_user_id);

