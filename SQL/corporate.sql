-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 03 2018 г., 07:12
-- Версия сервера: 5.5.50-log
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `corporate`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `category_id` int(10) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `desc`, `alias`, `img`, `created_at`, `updated_at`, `user_id`, `category_id`, `keywords`, `meta_desc`) VALUES
(1, 'This is the title of the first article. Enjoy it', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>\n<p>Duis nulla purus, malesuada in gravida sed, viverra at elit. Praesent nec purus sem, non imperdiet quam. Praesent tincidunt tortor eu libero scelerisque quis consequat justo elementum. Maecenas aliquet facilisis ipsum, commodo eleifend odio ultrices et. Maecenas arcu arcu, luctus a laoreet et, fermentum vel lectus. Cras consectetur ipsum venenatis ligula aliquam hendrerit. Suspendisse rhoncus hendrerit fermentum. Ut eget rhoncus purus.</p>\n<p>Cras a tellus eu justo lobortis tristique et nec mauris. Etiam tincidunt tellus ut odio elementum adipiscing. Maecenas cursus dolor sit amet leo elementum ut semper velit lobortis. Pellentesque posue</p>'', ''Fusce nec accumsan eros. Aenean ac orci a magna vestibulum posuere quis nec nisi. Maecenas rutrum vehicula condimentum. Donec volutpat nisl ac mauris consectetur gravida.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel vulputate nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n\r\nIn facilisis ornare arcu, sodales facilisis neque blandit ac. Ut blandit ipsum quis arcu adipiscing sit amet semper sem feugiat. Nam sed dapibus arcu. Nullam eleifend molestie lectus. Nullam nec risus purus\r\n', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>', 'article-1', '{"mini":"003-55x55.jpg","max":"003-816x282.jpg ","path":"0081-700x345.jpg"}', '2016-07-17 18:00:00', NULL, 1, 2, 'Ключи', 'Краткое описание'),
(2, 'Nice & Clean. The best for your blog!\r\n', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>\n<p>Duis nulla purus, malesuada in gravida sed, viverra at elit. Praesent nec purus sem, non imperdiet quam. Praesent tincidunt tortor eu libero scelerisque quis consequat justo elementum. Maecenas aliquet facilisis ipsum, commodo eleifend odio ultrices et. Maecenas arcu arcu, luctus a laoreet et, fermentum vel lectus. Cras consectetur ipsum venenatis ligula aliquam hendrerit. Suspendisse rhoncus hendrerit fermentum. Ut eget rhoncus purus.</p>\n<p>Cras a tellus eu justo lobortis tristique et nec mauris. Etiam tincidunt tellus ut odio elementum adipiscing. Maecenas cursus dolor sit amet leo elementum ut semper velit lobortis. Pellentesque posue</p>'', ''Fusce nec accumsan eros. Aenean ac orci a magna vestibulum posuere quis nec nisi. Maecenas rutrum vehicula condimentum. Donec volutpat nisl ac mauris consectetur gravida.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel vulputate nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n\r\nIn facilisis ornare arcu, sodales facilisis neque blandit ac. Ut blandit ipsum quis arcu adipiscing sit amet semper sem feugiat. Nam sed dapibus arcu. Nullam eleifend molestie lectus. Nullam nec risus purus.\r\n', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>', 'article-2', '{"mini":"001-55x55.png ","max":"001-816x282.png ","path":"0081-700x345.jpg"}\n', '2016-07-16 18:00:00', NULL, 1, 2, '', ''),
(3, 'Section shortcodes & sticky posts!\r\n', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>\n<p>Duis nulla purus, malesuada in gravida sed, viverra at elit. Praesent nec purus sem, non imperdiet quam. Praesent tincidunt tortor eu libero scelerisque quis consequat justo elementum. Maecenas aliquet facilisis ipsum, commodo eleifend odio ultrices et. Maecenas arcu arcu, luctus a laoreet et, fermentum vel lectus. Cras consectetur ipsum venenatis ligula aliquam hendrerit. Suspendisse rhoncus hendrerit fermentum. Ut eget rhoncus purus.</p>\n<p>Cras a tellus eu justo lobortis tristique et nec mauris. Etiam tincidunt tellus ut odio elementum adipiscing. Maecenas cursus dolor sit amet leo elementum ut semper velit lobortis. Pellentesque posue</p>'', ''Fusce nec accumsan eros. Aenean ac orci a magna vestibulum posuere quis nec nisi. Maecenas rutrum vehicula condimentum. Donec volutpat nisl ac mauris consectetur gravida.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel vulputate nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\r\n\r\nIn facilisis ornare arcu, sodales facilisis neque blandit ac. Ut blandit ipsum quis arcu adipiscing sit amet semper sem feugiat. Nam sed dapibus arcu. Nullam eleifend molestie lectus. Nullam nec risus purus.\r\n\r\n', '<p>Fusce rutrum lectus id nibh ullamcorper aliquet. Pellentesque pretium mauris et augue fringilla non bibendum turpis iaculis. Donec sit amet nunc lorem. Sed fringilla vehicula est at pellentesque. Aenean imperdiet elementum arcu id facilisis. Mauris sed leo eros.</p>', 'article-3', '{"mini":"0037-55x55.jpg ","max":"00212-816x282.jpg ","path":"0081-700x345.jpg"}\r\n', '2016-07-16 18:00:00', NULL, 1, 3, '', ''),
(4, 'Новая статья', '<p>Прежде всего, курс на социально-ориентированный национальный проект однозначно определяет каждого участника как способного принимать собственные решения касаемо форм воздействия. Как уже неоднократно упомянуто, некоторые особенности внутренней политики будут рассмотрены исключительно в разрезе маркетинговых и финансовых предпосылок. Активно развивающиеся страны третьего мира, превозмогая сложившуюся непростую экономическую ситуацию, объявлены нарушающими общечеловеческие нормы этики и морали.</p>\r\n', '<p>Прежде всего, курс на социально-ориентированный национальный проект однозначно определяет каждого участника как способного принимать собственные решения касаемо форм воздействия. Как уже неоднократно упомянуто, некоторые особенности внутренней политики будут рассмотрены исключительно в разрезе маркетинговых и финансовых предпосылок. Активно развивающиеся страны третьего мира, превозмогая сложившуюся непростую экономическую ситуацию, объявлены нарушающими общечеловеческие нормы этики и морали.</p>\r\n', 'article-4', '{"mini":"ekggUXCM_mini.jpg","max":"ekggUXCM_max.jpg","path":"ekggUXCM_path.jpg"}', '2018-03-02 15:57:37', '2018-03-02 15:57:37', 1, 1, 'Новая статья', 'Новая статья'),
(7, 'тест7', '<p>новая статтья 7</p>\r\n', '<p>новая статтья 7</p>\r\n', 'тест7', '{"mini":"6Apei29g_mini.jpg","max":"6Apei29g_max.jpg","path":"6Apei29g_path.jpg"}', '2018-03-04 15:48:16', '2018-03-05 05:18:58', 1, 1, 'тест7', 'тест7'),
(8, 'тест8', '<p>новая статтья 8</p>\r\n', '<p>новая статтья 8</p>\r\n', 'тест8', '{"mini":"Wcvoj3xw_mini.jpg","max":"Wcvoj3xw_max.jpg","path":"Wcvoj3xw_path.jpg"}', '2018-03-04 15:48:57', '2018-03-05 05:18:27', 1, 1, 'тест8', 'тест8'),
(9, 'тест9', '<p>новая статтья 9</p>\r\n', '<p>новая статтья 9</p>\r\n', 'тест9', '{"mini":"D0lLT8i2_mini.jpg","max":"D0lLT8i2_max.jpg","path":"D0lLT8i2_path.jpg"}', '2018-03-04 15:50:31', '2018-03-05 05:17:55', 1, 1, 'тест9', 'тест9');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `alias`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Блог', 'blog', 0, NULL, NULL),
(2, 'Компьютеры', 'computers', 1, '2016-07-17 18:00:00', NULL),
(3, 'Интересное', 'iteresting', 1, '2016-07-17 18:00:00', NULL),
(4, 'Советы', 'soveti', 1, '2016-07-17 18:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `article_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `text`, `name`, `email`, `site`, `parent_id`, `created_at`, `updated_at`, `user_id`, `article_id`) VALUES
(1, 'Hello world!', 'name', 'email@mail.ru', 'http://site.ru', 0, '2016-07-21 18:00:00', NULL, 1, 1),
(2, 'Hello world!', '', '', '', 0, '2016-07-18 18:00:00', NULL, 1, 1),
(3, 'Привет Мир!!!', 'name', 'email@mail.ru', 'http://site.ru', 1, '2016-07-26 18:00:00', NULL, 1, 1),
(5, 'Привет!', 'Ben', 'bem@mail.ru', 'http://site.ru', 3, '2016-07-13 18:00:00', NULL, 1, 1),
(6, 'Hello world!', 'name', 'email@mail.ru', 'http://site.ru', 5, '2016-07-21 18:00:00', NULL, 1, 1),
(7, 'Коммент', 'name', 'email@mail.ru', 'http://site.ru', 1, '2016-07-26 18:00:00', NULL, 1, 1),
(8, 'Привет Мир!!!', 'name', 'email@mail.ru', 'http://site.ru', 2, '2016-07-26 18:00:00', NULL, 1, 1),
(9, 'Text', 'Name', 'email', '', 0, '2016-07-27 09:30:15', '2016-07-27 09:30:15', 1, 1),
(10, 'Text', 'Name', 'email', 'site', 1, '2016-07-27 09:33:05', '2016-07-27 09:33:05', 1, 1),
(11, 'Text', 'Name', 'email', 'site', 1, '2016-07-27 09:52:28', '2016-07-27 09:52:28', 1, 1),
(15, 'text11111111111111', 'Test 1', 'email', 'site', 3, '2016-07-27 10:29:49', '2016-07-27 10:29:49', 1, 1),
(16, 'fsdfsdf', 'sdfsd', 'fsdf', 'sdfsdfsd', 0, '2016-07-27 12:14:14', '2016-07-27 12:14:14', 1, 1),
(17, 'fsdfsdf', 'sdfsd', 'fsdf', 'sdfsdfsd', 0, '2016-07-27 12:15:10', '2016-07-27 12:15:10', 1, 1),
(18, 'fsdfsdf', 'sdfsd', 'fsdf', 'sdfsdfsd', 0, '2016-07-27 12:15:21', '2016-07-27 12:15:21', 1, 1),
(19, 'Текст', 'Имя', 'Почта', 'сайт', 0, '2016-07-27 12:51:34', '2016-07-27 12:51:34', 1, 2),
(20, 'ыыыыыыыыыыыыыыы', 'Андрей Сокирко', 'sorey14@rambler.ru', 'portfel.pe.hu', 0, '2018-02-23 13:45:03', '2018-02-23 13:45:03', NULL, 3),
(21, 'reply', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 20, '2018-02-23 13:45:43', '2018-02-23 13:45:43', NULL, 3),
(22, 'etst', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 20, '2018-02-23 16:55:21', '2018-02-23 16:55:21', NULL, 3),
(23, 'etst', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 20, '2018-02-23 16:55:38', '2018-02-23 16:55:38', NULL, 3),
(24, 'etst', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 20, '2018-02-23 17:02:54', '2018-02-23 17:02:54', NULL, 3),
(25, 'etst', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 20, '2018-02-23 17:02:59', '2018-02-23 17:02:59', NULL, 3),
(26, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'qqqqqqqq', 21, '2018-02-23 17:03:21', '2018-02-23 17:03:21', NULL, 3),
(27, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'qqqqqqqq', 21, '2018-02-23 17:05:26', '2018-02-23 17:05:26', NULL, 3),
(28, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'qqqqqqqq', 20, '2018-02-23 17:05:44', '2018-02-23 17:05:44', NULL, 3),
(29, 'qqqqqqqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'qqqqqqq', 26, '2018-02-23 17:05:57', '2018-02-23 17:05:57', NULL, 3),
(30, 'qqqqqqqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'qqqqqqq', 26, '2018-02-23 17:07:10', '2018-02-23 17:07:10', NULL, 3),
(31, 'wwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'wwwwwwwwwww', 29, '2018-02-23 17:07:22', '2018-02-23 17:07:22', NULL, 3),
(32, 'wwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'wwwwwwwwwww', 29, '2018-02-23 17:08:35', '2018-02-23 17:08:35', NULL, 3),
(33, 'qqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'wqq', 31, '2018-02-23 17:08:49', '2018-02-23 17:08:49', NULL, 3),
(34, 'qqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'wqq', 31, '2018-02-23 17:09:45', '2018-02-23 17:09:45', NULL, 3),
(35, 'qqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'wqq', 31, '2018-02-23 17:11:17', '2018-02-23 17:11:17', NULL, 3),
(36, 'qqqqqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-23 17:11:43', '2018-02-23 17:11:43', NULL, 3),
(37, 'qqqqqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-23 17:12:39', '2018-02-23 17:12:39', NULL, 3),
(38, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 32, '2018-02-23 17:59:59', '2018-02-23 17:59:59', NULL, 3),
(39, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 32, '2018-02-23 18:11:16', '2018-02-23 18:11:16', NULL, 3),
(40, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 32, '2018-02-23 18:11:39', '2018-02-23 18:11:39', NULL, 3),
(41, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 32, '2018-02-23 18:13:15', '2018-02-23 18:13:15', NULL, 3),
(42, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 32, '2018-02-23 18:18:26', '2018-02-23 18:18:26', NULL, 3),
(43, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 32, '2018-02-23 18:18:37', '2018-02-23 18:18:37', NULL, 3),
(44, 'qqqqqqqqqqqq', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 32, '2018-02-23 18:19:07', '2018-02-23 18:19:07', NULL, 3),
(45, 'test', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 04:29:03', '2018-02-26 04:29:03', NULL, 3),
(46, 'test', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 04:30:22', '2018-02-26 04:30:22', NULL, 3),
(47, 'test', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 04:31:16', '2018-02-26 04:31:16', NULL, 3),
(48, 'test', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 05:16:58', '2018-02-26 05:16:58', NULL, 3),
(49, 'wwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 07:46:35', '2018-02-26 07:46:35', NULL, 3),
(50, 'wwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 07:47:37', '2018-02-26 07:47:37', NULL, 3),
(51, 'wwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 07:48:06', '2018-02-26 07:48:06', NULL, 3),
(52, 'wwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 08:49:12', '2018-02-26 08:49:12', NULL, 3),
(53, 'wwwwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 10:14:13', '2018-02-26 10:14:13', NULL, 3),
(54, 'wwwwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 10:25:51', '2018-02-26 10:25:51', NULL, 3),
(55, 'wwwwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 10:25:57', '2018-02-26 10:25:57', NULL, 3),
(56, 'wwwwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 10:26:24', '2018-02-26 10:26:24', NULL, 3),
(57, 'wwwwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 10:28:51', '2018-02-26 10:28:51', NULL, 3),
(58, 'wwwwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 10:28:54', '2018-02-26 10:28:54', NULL, 3),
(59, 'wwwwwwwwwwww', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 21, '2018-02-26 10:41:40', '2018-02-26 10:41:40', NULL, 3),
(60, 'test', 'Андрей Сокирко', 'sorey14@rambler.ru', 'site.new.com', 26, '2018-02-26 12:42:46', '2018-02-26 12:42:46', NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `filters`
--

CREATE TABLE IF NOT EXISTS `filters` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `filters`
--

INSERT INTO `filters` (`id`, `title`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Brand Identity', 'brand-identity', '2016-07-10 18:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `title`, `path`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Главная', 'http://corporate.loc', 0, NULL, NULL),
(3, 'Блог', 'http://corporate.loc/articles', 0, NULL, NULL),
(4, 'Компьютеры', 'http://corporate.loc/articles/cat/computers', 3, NULL, NULL),
(5, 'Интересное', 'http://corporate.loc/articles/cat/iteresting', 3, NULL, NULL),
(6, 'Советы', 'http://corporate.loc/articles/cat/soveti\r\n', 3, NULL, NULL),
(7, 'Портфолио', 'http://corporate.loc/portfolios\r\n', 0, NULL, NULL),
(8, 'Контакты', 'http://corporate.loc/contacts\r\n', 0, NULL, NULL),
(43, 'Google', 'http:://google.com', 0, '2018-03-10 12:40:06', '2018-03-10 12:40:06');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_22_071154_CreateArticlesTable', 1),
(4, '2018_01_22_071654_CreatePortfoliosTable', 1),
(5, '2018_01_22_072106_CreateFiltersTable', 1),
(6, '2018_01_22_072309_CreateCommentsTable', 1),
(7, '2018_01_22_072849_CreateSlidersTable', 1),
(8, '2018_01_22_073133_CreateMenusTable', 1),
(9, '2018_01_22_073403_CreateCategoriesTable', 1),
(10, '2018_01_22_080210_ChangeArticlesTable', 2),
(11, '2018_01_22_080905_ChangeCommentsTable', 2),
(12, '2018_01_22_083153_ChangeArticlesTable', 3),
(13, '2018_01_22_084615_ChangePortfoliosTable', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'VIEW_ADMIN', NULL, NULL),
(2, 'ADD_ARTICLES', NULL, NULL),
(3, 'UPDATE_ARTICLES', NULL, NULL),
(4, 'DELETE_ARTICLES', NULL, NULL),
(5, 'ADMIN_USERS', NULL, NULL),
(6, 'VIEW_ADMIN_ARTICLES', NULL, NULL),
(7, 'EDIT_USERS', NULL, NULL),
(8, 'VIEW_ADMIN_MENU', NULL, NULL),
(9, 'EDIT_MENU', NULL, NULL),
(10, 'CREATE_USERS', NULL, NULL),
(11, 'EDIT_USERS', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) unsigned NOT NULL DEFAULT '1',
  `permission_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`id`, `created_at`, `updated_at`, `role_id`, `permission_id`) VALUES
(1, NULL, NULL, 1, 1),
(2, NULL, NULL, 1, 2),
(3, NULL, NULL, 1, 3),
(4, NULL, NULL, 1, 4),
(5, NULL, NULL, 1, 5),
(6, NULL, NULL, 1, 6),
(7, NULL, NULL, 1, 7),
(8, NULL, NULL, 1, 8),
(9, NULL, NULL, 3, 2),
(10, NULL, NULL, 3, 3),
(11, NULL, NULL, 2, 3),
(12, NULL, NULL, 2, 4),
(13, NULL, NULL, 2, 5),
(14, NULL, NULL, 3, 7),
(15, NULL, NULL, 1, 9),
(17, NULL, NULL, 1, 10),
(19, NULL, NULL, 1, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolios`
--

CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `customer` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `filter_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `text`, `customer`, `alias`, `img`, `created_at`, `updated_at`, `filter_alias`, `keywords`, `meta_desc`) VALUES
(1, 'Steep This!', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate \r\n', 'Steep This!', 'project1', '{"mini":"0061-175x175.jpg","max":"0061-770x368.jpg","path":"0061.jpg"}', '2016-07-15 18:00:00', NULL, 'brand-identity', '', ''),
(2, 'Kineda', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate\r\n', 'customer\r\n', 'project2', '{"mini":"009-175x175.jpg","max":"009-770x368.jpg","path":"009.jpg"}\r\n', '2016-07-16 18:00:00', NULL, 'brand-identity', '', ''),
(3, 'Love', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate\r\n', '', 'project3', '{"mini":"0011-175x175.jpg","max":"0043-770x368.jpg","path":"0043.jpg"}\r\n', '2016-07-16 18:00:00', NULL, 'brand-identity', '', ''),
(4, 'Guanacos', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate\r\n', 'Steep This!', 'project4', '{"mini":"0027-175x175.jpg","max":"0027-770x368.jpg","path":"0027.jpg"}\r\n', '2016-07-16 18:00:00', NULL, 'brand-identity', '', ''),
(5, 'Miller Bob', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate\r\n', 'customer', 'project5', '{"mini":"0071-175x175.jpg","max":"0071-770x368.jpg","path":"0071.jpg"}\r\n', '2016-07-16 18:00:00', NULL, 'brand-identity', '', ''),
(6, 'Nili Studios', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate\r\n', '', 'project6', '{"mini":"0052-175x175.jpg","max":"0052-770x368.jpg","path":"0052.jpg"}\r\n', '2016-07-16 18:00:00', NULL, 'brand-identity', '', ''),
(7, 'VItale Premium', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate\r\n', 'Steep This!', 'project7', '{"mini":"0081-175x175.jpg","max":"0081-770x368.jpg","path":"0081.jpg"}\r\n', '2016-07-16 18:00:00', NULL, 'brand-identity', '', ''),
(8, 'Digitpool Medien', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate\r\n', 'customer', 'project8', '{"mini":"0071-175x175.jpg","max":"0071.jpg","path":"0071-770x368.jpg"}\r\n', '2016-07-16 18:00:00', NULL, 'brand-identity', '', ''),
(9, 'Octopus', 'Nullam volutpat, mauris scelerisque iaculis semper, justo odio rutrum urna, at cursus urna nisl et ipsum. Donec dapibus lacus nec sapien faucibus eget suscipit lorem mattis.\\r\\n\\r\\nDonec non mauris ac nulla consectetur pretium sit amet rhoncus neque. Maecenas aliquet, diam sed rhoncus vestibulum, sem lacus ultrices est, eu hendrerit tortor nulla in dui. Suspendisse enim purus, euismod interdum viverra eget, ultricies eu est. Maecenas dignissim mauris id est semper suscipit. Suspendisse venenatis vestibulum quam, quis porttitor arcu vestibulum et.\\r\\n\\r\\nSed porttitor eros ut purus elementum a consectetur purus vulputate\r\n', '', 'project9', '{"mini":"0081-175x175.jpg","max":"0081.jpg","path":"0081-770x368.jpg"}\r\n', '2016-07-16 18:00:00', NULL, 'brand-identity', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Moderator', NULL, NULL),
(3, 'Guest', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `role_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`id`, `created_at`, `updated_at`, `user_id`, `role_id`) VALUES
(1, NULL, NULL, 1, 1),
(2, NULL, NULL, 2, 1),
(5, NULL, NULL, 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) unsigned NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `img`, `description`, `title`, `created_at`, `updated_at`) VALUES
(1, 'xx.jpg', 'Nam id quam a odio euismod pellentesque. Etiam congue rutrum risus non vestibulum. Quisque a diam at ligula blandit consequat. Mauris ac mi velit, a tempor neque\r\n\r\n', '<h2 style="color:#fff">CORPORATE, MULTIPURPOSE.. <br /><span>PINK RIO</span></h2>\r\n', NULL, NULL),
(2, '00314.jpg', 'Nam id quam a odio euismod pellentesque. Etiam congue rutrum risus non vestibulum. Quisque a diam at ligula blandit consequat. Mauris ac mi velit, a tempor neque\r\n', '<h2 style="color:#fff">PINKRIO. <span>STRONG AND POWERFUL.</span></h2>\r\n', NULL, NULL),
(3, 'dd.jpg', 'Nam id quam a odio euismod pellentesque. Etiam congue rutrum risus non vestibulum. Quisque a diam at ligula blandit consequat. Mauris ac mi velit, a tempor neque\r\n', '<h2 style="color:#fff">PINKRIO. <span>STRONG AND POWERFUL.</span></h2>\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `login`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@mail.ru', 'user', '$2y$10$WGH9LJAqL4Ma.9nrrb/mreS08IiCQXD8dzfCvv4qx.7T9bmOxmrtS', NULL, '2018-01-22 06:54:21', '2018-01-22 06:54:21'),
(2, 'user1', 'user1@mail.ru', NULL, '$2y$10$V4OczmHmmT67cincQwuM/.NsulM9gdiUVmyzdEEZH05dNCaKW3Sza', NULL, '2018-03-10 12:54:02', '2018-03-10 12:54:02'),
(5, 'user2', 'user2@mail.ru', 'user2', '$2y$10$EGdtwYyFTwaMDYgVI2l2wu8Nx08gCnJimhGirEtl.mEbKiNCJhcYG', NULL, '2018-03-10 13:26:00', '2018-03-10 13:26:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_alias_unique` (`alias`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_alias_unique` (`alias`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

--
-- Индексы таблицы `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filters_alias_unique` (`alias`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Индексы таблицы `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_alias_unique` (`alias`),
  ADD KEY `portfolios_filter_alias_foreign` (`filter_alias`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT для таблицы `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_filter_alias_foreign` FOREIGN KEY (`filter_alias`) REFERENCES `filters` (`alias`);

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
