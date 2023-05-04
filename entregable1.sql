CREATE TABLE users (
id serial primary key,
first_name varchar(30) NOT NULL,
last_name varchar(30) NOT NULL,
email varchar(50) UNIQUE NOT NULL
);

CREATE TABLE posts (
id serial primary key,
creator_id int NOT NULL,
title varchar(30) UNIQUE NOT NULL,
text varchar(200) NOT NULL,
date date
);

CREATE TABLE likes (
id serial primary key,
user_id int NOT NULL,
post_id int NOT NULL
);

ALTER TABLE posts ADD FOREIGN KEY (creator_id) REFERENCES users (id);
ALTER TABLE likes ADD FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE likes ADD FOREIGN KEY (post_id) REFERENCES posts (id);

INSERT INTO users (first_name, last_name, email) 
VALUES 
('Burub', 'Rojas', 'kjhdfs@gmail.com'), 
('Homero', 'Simpson', 'H_de_homero@gmail.com'), 
('Alex', 'Barrientos', 'barrientos@gmail.com');

INSERT INTO posts (creator_id, title, text, date) 
VALUES 
(1, 'Post 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis laoreet velit. Pell.', '2023-02-20'),
(3, 'Post 2', 'Lorem ipsum dolor sit amet, consectetur alum mattis ac orci vitae rhoncusa.', '2023-02-20'),
(2, 'Post 3', 'Lorem ipsukjhhgjk jhgljhh uygiyrdutate eu. Vestibulum mattis ac orci vitae rhoncusa.', '2023-04-02'),
(3, 'Post 4', 'Lorem jh usksdhf  ipsukjhhgjk jhglhgk ghgj khgkh kjhg jh j h dyd uyduyd uygdghslj dlska.', '2023-04-16'),
(1, 'Post 5', 'Lorem heie jh usksdhf ipsukjhhgjk jhgljhmentum ex vulputate eu. Vestibulum mattis a.', '2023-04-21');


INSERT INTO likes (user_id, post_id) 
VALUES 
(1,5),
(2,1),
(3,2),
(3,4),
(2,5);

SELECT * FROM posts INNER JOIN users on posts.creator_id = users.id;

SELECT * FROM likes INNER JOIN posts ON likes.post_id = posts.id INNER JOIN users ON likes.user_id = users.id;















