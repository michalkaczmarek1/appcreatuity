-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Lip 2019, 14:52
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `appcreatuity`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles`
--

CREATE TABLE `articles` (
  `id_article` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`) VALUES
(1, 'michal', '098f6bcd4621d373cade4e832627b4f6sdsads9aud0auda0du'),
(2, 'jan', '81dc9bdb52d04dc20036dbd8313ed055sdsads9aud0auda0du'),
(3, 'jan', '81dc9bdb52d04dc20036dbd8313ed055sdsads9aud0auda0du'),
(4, 'karol', '81dc9bdb52d04dc20036dbd8313ed055sdsads9aud0auda0du'),
(5, 'admin', '81dc9bdb52d04dc20036dbd8313ed055sdsads9aud0auda0du'),
(6, 'Jan Kowalski', '827ccb0eea8a706c4c34a16891f84e7bsdsads9aud0auda0du'),
(7, 'test', '16d7a4fca7442dda3ad93c9a726597e4sdsads9aud0auda0du'),
(8, 'test2', 'cad4f36606bfc73fef29028d63631c24sdsads9aud0auda0du'),
(9, 'dsads', 'e27a0cf503d07f7e58417600e7848f03sdsads9aud0auda0du'),
(10, 'admin3', '64250db7d40d0cb2761540f36e468aa2sdsads9aud0auda0du'),
(11, '', 'd41d8cd98f00b204e9800998ecf8427esdsads9aud0auda0du'),
(12, 'michalk', '207023ccb44feb4d7dadca005ce29a64sdsads9aud0auda0du');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_article`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `articles`
--
ALTER TABLE `articles`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
