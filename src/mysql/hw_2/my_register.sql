-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2022 г., 16:58
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `my_register`
--
CREATE DATABASE IF NOT EXISTS `my_register` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my_register`;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `news_id` int NOT NULL,
  `comment_text` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `date_of_comment` timestamp NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `comment_text`, `user_id`, `date_of_comment`, `user_name`) VALUES
(1, 2, 'Хочу такой', 3, '2022-02-11 11:39:11', 'Руслан'),
(2, 4, 'Сделайте мне такой', 2, '2022-02-11 13:27:32', 'Дмитрий'),
(3, 1, 'Круто', 5, '2022-02-09 13:40:32', 'Василий'),
(4, 5, 'Красиво', 3, '2022-02-07 13:41:39', 'Руслан'),
(5, 2, 'Прикольно', 4, '2022-02-04 13:41:39', 'Иван');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `new_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `news_image` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `new_title`, `text`, `news_image`, `date`) VALUES
(1, '10 идей для новогоднего маникюра', 'Середина декабря — повод не только записаться на маникюр, но и собрать классные дизайны для мастера. Поскольку сейчас ритм жизни дошел до сверхзвуковых скоростей, мы это сделали за тебя — выбирай по вкусу! ', 'https://peopletalk.ru/wp-content/uploads/2021/12/allison-christine-0gtyprzxnho-unsplash-scaled-e1639573444599-640x442.jpg', '2022-02-10 13:33:13'),
(2, 'Звериный принт ', 'Наступает год тигра, почему бы не встретить его с узнаваемым «кошачьим» принтом на ногтях? ', 'https://peopletalk.ru/wp-content/uploads/2021/12/255208034_470142391064587_8385946607346674552_n.jpg', '2021-12-29 13:35:34'),
(3, 'Обратный френч', 'Френч во всех проявлениях — тренд на века. Но в Новый год лучше попробовать что-то новое, например, обратный френч в зеленом хвойном цвете.', 'https://peopletalk.ru/wp-content/uploads/2021/12/254957321_621082425714653_75472680234979437_n-844x1024.jpg', '2022-02-02 13:35:34'),
(4, 'Уютный свитер', 'Только на ногтях. Выпуклый дизайн, напоминающий шерстяную вязку, станет отличным компаньоном для встречи Нового года за городом.', 'https://peopletalk.ru/wp-content/uploads/2021/12/244497772_512239990163424_500999979760934113_n.jpg', '2022-02-10 13:37:06'),
(5, 'Кислотный арт', 'Если на Новый год хочется «не как у всех», а классика надоела, выбирай яркие кислотные цвета и веселые рисунки. Кстати, тигр там тоже может быть.', 'https://peopletalk.ru/wp-content/uploads/2021/12/240108310_2389681637828493_632043929903959362_n-1024x1024.jpg', '2022-02-11 13:37:06');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `text` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_publish` timestamp NOT NULL,
  `review_image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `user_name`, `text`, `date_of_publish`, `review_image`) VALUES
(1, 2, 'Дмитрий', 'Мне очень нравится', '2022-02-08 13:23:04', 'https://cdn.fashion-woman.com/gallery/manikyur-s-cvetami-idei-risunkov-na-nogtyah/manikyur-s-cvetami-idei-risunkov-na-nogtyah_990746L8.jpg'),
(2, 1, 'Руслан', 'Мне очень нравится', '2022-02-09 11:41:04', 'https://cdn.fashion-woman.com/gallery/manikyur-s-cvetami-idei-risunkov-na-nogtyah/manikyur-s-cvetami-idei-risunkov-na-nogtyah_990746L8.jpg'),
(3, 4, 'Иван', 'Мне очень нравится', '2022-02-07 07:29:36', 'https://cdn.fashion-woman.com/gallery/manikyur-s-cvetami-idei-risunkov-na-nogtyah/manikyur-s-cvetami-idei-risunkov-na-nogtyah_990746L8.jpg'),
(4, 5, 'Василий', 'Мне очень нравится', '2022-02-05 07:39:30', 'https://cdn.fashion-woman.com/gallery/manikyur-s-cvetami-idei-risunkov-na-nogtyah/manikyur-s-cvetami-idei-risunkov-na-nogtyah_990746L8.jpg'),
(5, 3, 'Руслан', 'Мне очень нравится', '2022-02-10 16:42:14', 'https://cdn.fashion-woman.com/gallery/manikyur-s-cvetami-idei-risunkov-na-nogtyah/manikyur-s-cvetami-idei-risunkov-na-nogtyah_990746L8.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `avatar`) VALUES
(1, 'rusd.1994@gmail.com', 'Руслан', 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png'),
(2, 'anakin.lev2308@gmail.com', 'Дмитрий', 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png'),
(3, 'r.kolomiets@skyeng.ru', 'Руслан', 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png'),
(4, 'rusich@mail.com', 'Иван', 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png'),
(5, 'test@mail.com', 'Василий', 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png');

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `works_image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`, `works_image`) VALUES
(1, 'Классический обрезной маникюр', 'https://1001sovety.ru/wp-content/uploads/2017/06/nezhnyy-manikyur-novinki_-91.jpg'),
(2, 'Европейский маникюр (необрезной)', 'https://1001sovety.ru/wp-content/uploads/2017/06/nezhnyy-manikyur-novinki_-91.jpg'),
(3, 'Аппаратный маникюр', 'https://1001sovety.ru/wp-content/uploads/2017/06/nezhnyy-manikyur-novinki_-91.jpg'),
(4, 'Японский маникюр', 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png'),
(5, 'Руффиан маникюр', 'https://1001sovety.ru/wp-content/uploads/2017/06/nezhnyy-manikyur-novinki_-91.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `news_id` (`news_id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
