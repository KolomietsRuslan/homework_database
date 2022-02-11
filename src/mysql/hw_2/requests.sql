1. Одним запросом добавить сразу несколько записей в таблицу.
INSERT INTO `users` (`email`, `name`, `avatar`) 
VALUES 
('petr@mail.com', 'Петр', 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png'),
('kolya@mail.com', 'Николай', 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png')
2. Удалить одну конкретную запись из таблицы.
DELETE FROM `users` WHERE `id` = 6
3. Удалить все записи из таблицы.
DELETE FROM `works`
4. Вывести значения двух полей из таблицы.
SELECT `user_name`, `text` FROM `reviews`
5. Выбрать все записи из таблицы.
SELECT * FROM `news`
6. Обновить значение полей в нескольких записях по условию.
UPDATE `comments` SET `comment_text`='Красиво', `user_name`='Николай' WHERE `id`= 1
7. Выбрать записи соответсвующие заданному условию.
SELECT `email`, `name` FROM `users` WHERE `name` = 'Руслан'