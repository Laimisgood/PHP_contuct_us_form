-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 18 2022 г., 20:36
-- Версия сервера: 10.6.7-MariaDB-2ubuntu1.1
-- Версия PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `contactusform`
--

CREATE DATABASE contactusform;
USE contactusform;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `message` varchar(500) NOT NULL,
  `image` varchar(5000) NOT NULL,
  `feedback` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `gender`, `email`, `password`, `message`, `image`, `feedback`) VALUES
(1, 'Rick', 'Ross', 'm', 'rick.ross@gmail.com', '$2y$10$UgkTCraMviKRohjO.7OStePtqFqejmujPJX/dU/BxCS2gX1Zbks9C', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'v.p.jpg', 'v'),
(2, 'Bruce', 'Wayne', 'm', 'batman@gmail.com', '$2y$10$Gp8xYIyTCpd.zZS52LBGIe1ravxCDwGUS9o4sS0HsfhpLzBeLTrd6', 'Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', 'v.p.jpg', 't'),
(4, 'Alan', 'Walker', 'm', 'a.walker@gmail.com', '$2y$10$0Qc91W3sbmitqKZ2bdzfpev4eFqmazkuywoaY3J5itGO.FHd9PDoq', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.', '1.jpg', 'w'),
(5, 'Evan', 'Key', 'm', 'e.key@gmail.com', '$2y$10$7Js8gLcGnJifRUnfnjrpg.gwOXfdDbWjnqmUlcEpSnNwm26.QbOJG', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '1.jpg', 'v'),
(6, 'Jozef', 'Webb', 'm', 'j.web@gmail.com', '$2y$10$mLxfHjWTPLxYday0nfI1dO5J6XOx0Aj4MP7Ydkpp/ebtnz/mM1Du6', 'Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '1.jpg', 'w'),
(7, 'Christine', 'Alvarez', 'f', 'c.alvarez@gmail.com', '$2y$10$VW4vV0nmZtNKFVsicsCSluwIJtny91KTUY7T/15fS09OrpwnStevC', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2.jpg', 't'),
(8, 'Orla', 'Vaughn', 'f', 'o.vaughn@gmail.com', '$2y$10$VLG6QomJxZqk2TCsWwvrZ.t/OexEeFpXCIJefnM4TmwcynQcTPRhK', 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.', '1.jpg', 'v'),
(9, 'Simra', 'Harding', 'f', 's.harding@gmail.com', '$2y$10$rEFDYC0Guku2U3tQSdqhyelfxMU0EPsmyWFOcQ1l.W0a1tIJ1xyLy', 'The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2.jpg', 'w'),
(10, 'Ahmed', 'Winters', 'm', 'a.winters@gmail.com', '$2y$10$1t3o0VhR.QPQwPH2Wrh/MeU4nOt5L5flbv5ikvQcNCjOD1ZyYP1Ky', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2.jpg', 't');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
