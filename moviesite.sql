-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 08 Cze 2020, 17:08
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `moviesite`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `stars` float UNSIGNED NOT NULL,
  `imgsrc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `movies`
--

INSERT INTO `movies` (`id`, `title`, `desc`, `stars`, `imgsrc`) VALUES
(1, 'Tron Legacy', 'desc tron legacy', 6.5, 'img/tron.jpg'),
(2, 'Tron (1982)', 'desc tron 1982', 9.2, 'img/tron1982.jpg'),
(3, 'Doctor Who', 'desc doctor who', 10, 'img/doctorwho.jpg'),
(4, 'Batman Dark Knight', 'desc', 6.5, 'img/batmandarkknight.jpg'),
(5, 'Rick and Morty', 'desc rick', 5, 'img/rickandmorty.jpg'),
(6, 'X-men Dark Phoenix', 'desc', 7.2, 'img/xmenphoenix.jpg'),
(7, 'Logan', 'desc', 10, 'img/logan.jpg'),
(8, 'Blade Runner 2049', 'desc', 8, 'img/bladerunner.jpg'),
(9, 'Avengers Endgame', 'desc', 10, 'img/avengersendgame.jpg'),
(10, 'Black Panther', 'desc', 6.7, 'img/blackpanther.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'root', '$2y$10$x5KF9RaZC8sL2v5JE31VxuuMk73NI03dqO8uo45LbgdC7j1zofPGW', 'root@root.com', '2020-06-06 15:57:30'),
(2, 'marek', '$2y$10$Dea4zaEGnU4Bxbw.uPnXLupu6jOpGbD3vhTrjmWw133NFmSEiWtPS', 'janek@gmail.com', '2020-06-08 12:38:30'),
(3, 'account', '$2y$10$M/5YqXdZpgEHrwJk58X52u/rmozYeHmA8rmFlrK3ezdY3YojbO87e', 'account@account.com', '2020-06-08 12:50:34');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
