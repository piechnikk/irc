-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Gru 2021, 22:46
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `irc`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `irc`
--

CREATE TABLE `irc` (
  `id` int(11) NOT NULL,
  `time` time NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `nick` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `message` varchar(80) COLLATE utf8mb4_polish_ci NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `irc`
--

INSERT INTO `irc` (`id`, `time`, `color`, `nick`, `message`, `uid`) VALUES
(1, '12:28:18', '%23a11ebe', 'Maciej%20%3A)', 'df', 31);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tabela`
--

CREATE TABLE `tabela` (
  `nick` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `color` varchar(15) COLLATE utf8mb4_polish_ci NOT NULL,
  `date` time NOT NULL,
  `text` text COLLATE utf8mb4_polish_ci NOT NULL,
  `uid` int(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `tabela`
--

INSERT INTO `tabela` (`nick`, `color`, `date`, `text`, `uid`, `id`) VALUES
('lolz', '#e45377', '12:20:19', 'lols', 28, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `irc`
--
ALTER TABLE `irc`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tabela`
--
ALTER TABLE `tabela`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `irc`
--
ALTER TABLE `irc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `tabela`
--
ALTER TABLE `tabela`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
