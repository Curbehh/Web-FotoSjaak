-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 25 nov 2013 om 14:08
-- Serverversie: 5.6.12-log
-- PHP-versie: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `am1a`
--
CREATE DATABASE IF NOT EXISTS `am1a-fotosjaak` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `am1a-fotosjaak`;Spam


-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question_english` text NOT NULL,
  `question_dutch` text NOT NULL,
  `answer_english` text NOT NULL,
  `answer_dutch` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Gegevens worden uitgevoerd voor tabel `faq`
--

INSERT INTO `faq` (`id`, `question_english`, `question_dutch`, `answer_english`, `answer_dutch`) VALUES
(1, 'Is this game hard to play?', 'Is dit een moeilijk spel om te spelen?', 'Yes, this game is very hard to play', 'Ja, dit spel is zeer moeilijk te bespelen'),
(2, 'When is this game completed?', 'Wanneer is dit spel voltooid?', 'The game is a never ending experience.\r\nFull of joy and never ending pleasure.', 'Dit spel gaat oneindig lang door.\r\nHet zit vol met plezier en oneindige vermaak.'),
(3, 'How can I download this game?', 'Hoe download ik het spel?', 'When your logged on you can go to the download page and download the game', 'Als je bent ingelogd kan je naar de downloads pagina gaan en het spel downloade'),
(4, 'How can I install this game?', 'Hoe installeer ik dit spel?', 'You open up the rar file and open the .exe file', 'Je pakt het rar bestand uit en opent het .exe bestand'),
(5, 'Is there a story behind this game?', 'Zit er een verhaal achter dit spel?', 'No there is not, you can just keep playing this till you die', 'Nee die is er niet, je kan gewoon doorspelen tot je doodgaat'),
(6, 'How can i report a bug?', 'Hoe rapporteer ik een bug?', 'You can email me', 'je kan mij emailen'),
(7, 'Is this the full game or just a part of it?', 'Is dit het gehele spel of een gedeelte ervan?', 'For now this is the full game but there might be patches or expansions in the future', 'Voor nu is dit het gehele spel maar in de toekomst zullen er misschien patches of uitbreidingen zijn.'),
(8, 'Is there going to be another game in the future?', 'Komt er een ander spel in de toekomst?', 'Probably yes', 'Waarschijnlijk wel'),
(9, 'Where did you learn how to make this game? ', 'Waar heb je geleerd hoe je dit spel maakt?', 'In school from my game teacher mr. De Ruijter', 'Op school van mijn game leraar Meneer de Ruijter'),
(10, 'What can I do if a have a question about the game which is not answerd in the FAQ?', 'Wat doe ik als ik een vraag heb die niet in de FAQ wordt beantwoord?', 'You can just email me if you have a question', 'Je kan me gewoon emailen als je een vraag hebt');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `infix` varchar(20) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `residence` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `housenumber` int(11) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `date_of_birth` date NOT NULL,
  `sex` varchar(5) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `genre_favorite_game` varchar(20) NOT NULL,
  `favoritegame` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userrole` enum('admin','root','customer') NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Gegevens worden uitgevoerd voor tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `infix`, `surname`, `residence`, `street`, `housenumber`, `zipcode`, `date_of_birth`, `sex`, `marital_status`, `genre_favorite_game`, `favoritegame`, `email`, `password`, `userrole`) VALUES
(19, 'Mitchell', '''t', 'Lam', 'Schoonrewoerd', 'Prinsbernhard straat', 5, '4145kn', '0000-00-00', 'male', 'not maried', 'Shooter', 'Call of duty Modern Warfare 2', 'mitchelltlam@hotmail.com', 'geheim', 'customer'),
(20, 'Kevin', '', 'Kentie', 'Nieuwegein', 'Frans Coenenhove', 33, '3438HJ', '0000-00-00', 'male', 'not maried', 'Avontuur', 'Guitar Hero', 'kevin-Kentie@hotmail.com', 'geheim', 'customer'),
(21, 'Erwin', 'van', 'Tilburg', 'Huizen', 'Edisonstraat', 40, '1276GC', '0000-00-00', 'male', 'not maried', 'FPS', 'Battlefield 3', 'erwin.van.tilburg@hotmail.com', 'geheim', 'customer'),
(22, '', '', '', '', '', 0, '', '0000-00-00', '', '', '', '', '', '', 'customer'),
(23, 'k', 'k', 'k', 'k', 'k', 0, 'k', '0000-00-00', 'male', 'not maried', 'k', 'k', 'k', 'k', 'customer'),
(24, 'Mitchell', '''t', 'Lam', 'Schoonrewoerd', 'Prinsbernhard straat', 5, '4145KN', '0000-00-00', 'male', 'not maried', 'FPS', 'Call of Duty Modern Warfare 2', 'mitchelltlam@hotmail.com', 'geheim', 'customer'),
(25, 'Bas', 'de', 'Bakker', 'Bakkerdam', 'Bakkerstraat', 17, '1901cb', '0000-00-00', 'male', 'maried', 'Avontuur', 'Viva Pinata', 'Basdebakker@hotmail.com', 'geheim01', 'customer'),
(26, 'Mitchell', '''t', 'Lam', 'Schoonrewoerd', 'Prinsbernhard straat', 5, '4145KN', '0000-00-00', 'male', 'not maried', 'FPS', 'Call of Duty Modern Warfare 2', 'mitchelltlam@hotmail.com', 'mitchell46', 'customer'),
(27, 'admin', 'de', 'admin', 'adminland', 'adminstraat', 666, '4145KN', '0000-00-00', 'male', 'maried', 'FPS', 'BF4', 'yolo@swag.rolo', 'roloyolo', 'admin'),
(28, 'root', 'de', 'root', 'rootland', 'rootstraat', 5, '4145KN', '0000-00-00', 'male', 'not maried', 'MMO', 'POEP', 'yoloswag@roloyolo.net', 'roloyolo', 'root'),
(29, 'a', 'a', 'a', 'a', 'a', 5, '4143PS', '0000-00-00', 'male', 'not maried', 'fps', 'bf4', 'lalalala@gmail.com', 'geheim1', 'customer'),
(30, 'a', 'a', 'a', 'a', 'a', 2, '4143ks', '0000-00-00', 'male', 'not maried', 'fps', 'wow', 'blablabla@gmail.com', 'geheim01', 'customer'),
(31, 'Henk', 'de', 'steen', 'Utrecht', 'Dorpsweg', 5, '4143ks', '0000-00-00', 'male', 'not maried', 'FPS', 'BF4', 'Henkdesteen@hotmail.com', 'geheim01', 'customer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
