-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Ned 04. pro 2022, 19:40
-- Verze serveru: 10.4.22-MariaDB
-- Verze PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Databáze: `auth_db`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'admin - platinum'),
(2, 'Special user - gold'),
(3, 'Register user - silver');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type_id` int(11) DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `fname`, `gmail`, `password`, `type_id`) VALUES
(2, 'Marek S', 'stolzm@gmail.com', '$2y$10$FqcAaTX03CJhsU5yKSAcH.WMaIxZFj0rXEepxvwWNWiBT7JE3iwpO', 2),
(7, 'user', 'user@gmail.com', '$2y$10$qsDeLj6bRmZTEICmULK88OR7oxz.2VeP2DzNXC7LbjUa5/dMehHtO', 3),
(8, 'admin', 'admin@gmail.com', '$2y$10$LuTPqat/pSe.O./ueU4Rz..cKLHPURzeKYjwNDBECjQkJbrNcNhBq', 1),
(9, 'Random user', 'ruser@gmail.com', '$2y$10$qtj.ftZQMBU4oK/fS0dMRO.OTkFgX7OpFycuZEfcOBzF6g7K55co2', 3);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gmail` (`gmail`) USING BTREE;

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
