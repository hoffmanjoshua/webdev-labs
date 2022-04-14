-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name from users ORDER BY last_name



-- Exercise 4
select id, user_id, image_url from posts WHERE user_id = 26



-- Exercise 5
select id, user_id, image_url from posts WHERE user_id = 26 or user_id = 12



-- Exercise 6
select count(*) from posts



-- Exercise 7
select  user_id, count(*) from comments GROUP BY user_id order by count(*) DESC



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id, users.username, users.first_name, users.last_name from posts INNER JOIN users on posts.user_id = users.id WHERE users.id = 26 or users.id=12



-- Exercise 9
select posts.id, posts.pub_date, following.following_id from posts INNER JOIN following on posts.user_id = following.following_id where following.user_id = 26



-- Exercise 10
select posts.id, posts.pub_date, following.following_id, users.username from posts INNER JOIN following on posts.user_id = following.following_id INNER JOIN users on posts.user_id  = users.id where following.user_id = 26 ORDER BY pub_date DESC



-- Exercise 11
INSERT INTO bookmarks (user_id, post_id, timestamp) VALUES (26, 219, now());
INSERT INTO bookmarks (user_id, post_id, timestamp) VALUES (26, 220, now());
INSERT INTO bookmarks (user_id, post_id, timestamp) VALUES (26, 221, now());



-- Exercise 12
DELETE from bookmarks WHERE post_id = 219;
DELETE from bookmarks WHERE post_id = 220;
DELETE from bookmarks WHERE post_id = 221;



-- Exercise 13
UPDATE users SET email = 'knick2022@gmail.com' WHERE id = 26



-- Exercise 14
SELECT posts.id, posts.user_id, count(comments.user_id), posts.caption from posts INNER JOIN comments ON posts.id = comments.post_id WHERE posts.user_id = 26 GROUP BY posts.id ORDER BY count(comments.user_id) DESC