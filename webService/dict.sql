-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 11:39 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dict`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_word`
--

CREATE TABLE `list_word` (
  `word` varchar(24) NOT NULL,
  `desc` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list_word`
--

INSERT INTO `list_word` (`word`, `desc`) VALUES
('やばい (yabai)', 'やばい can mean… anything. It covers everything from “terrible”, “r'),
('ウザい (uzai)', 'This is the short, slangy form of the adjective うるさい (urusai), w'),
('キモい (kimoi)', 'This one is short for 気持ち悪い (kimochi warui), which means somethi'),
('イケメン (ikemen)', 'イケメン is used to talk about good-looking men with a very specific'),
('マジ (maji)', 'マジ or マジで (maji de) is used as an exclamation of “Seriously?!” o'),
('リア充 (riajuu)', 'This is an interesting slang term because it acknowledges just h'),
('オッス！ (ossu!)', 'If you want a greeting closest to “What’s up, dude?” or “Yo, man'),
('半端ない (hanpa nai)', 'This one is used the same way やばい is. It means “insane,” “kickas'),
('ムカつく (mukatsuku)', 'This one comes from the Japanese onomatopoeia phrase, ムカムカする (mu'),
('それな！(sore na!)', 'This means, “That!” or “Exactly!” It’s used like English slang w'),
('おつ (otsu)', 'Short for お疲れ様でした (otsukaresama deshita), meaning “you worked ha'),
('ガチ (gachi)', 'Used the same way as マジ, it means “seriously” or “for real.”'),
('さいてい (saitei)', 'This translates as “the lowest.” But as a slang term, it’s used '),
('ずるい (zurui)', 'This one means “sly” or “sneaky,” but it can also be used as an '),
('微妙 (bimyou)', 'Bimyou means “questionable,” “iffy,” or even “kind of sucks.” It'),
('ウケる (ukeru)', 'It means “that’s funny” or “hilarious.” It’s actually a verb, bu'),
('ちょ (cho)', 'it\'s mean \"Very\", totally. Used like とても (totemo)'),
('すげー (suge-)', 'it\'s mean \"Amazing\". It’s the shortened, more masculine form of '),
('はずい (hazui)', 'it\'s mean  \"Embarrassing\". Short for 恥ずかしい (hazukashii).'),
('むずい (muzui)', 'it\'s mean \"Difficult\". Short for 難しい (muzukashii)'),
('うそ！ (uso!)', 'it\'s mean \"No way!\" ,\"You’re lying!\"'),
('めっちゃ (meccha)', 'The same as ちょ and とても, it means “very.”'),
('あほ (aho)', 'it\'s mean \"Idiot\"'),
(' ファボる (faboru)', 'Another Twitterverse term, it means “favorite” and is used as a '),
('W', 'Yes, just “w.” It’s the Japanese equivalent of “lol” in English '),
('ぐぐる (Guguru)', 'Like in English, “Google” has become a verb. To say you’re “goog'),
('ドンマイ (donmai)', 'This is another slangy phrase that comes from English, and it me'),
('KWSK', 'Another common shorthand, it means “I need the details!” or “Det'),
('WKTK', 'This is used everywhere. It’s the abbreviation for ワクワクテカテカ (wak'),
('555', 'Another one based on how it sounds read aloud in Japanese. The n'),
('くそ (kuso)', 'This is your most common, versatile curse word in Japanese. It m'),
('死ね! (shi’ne!)', 'This means “Die!” or “Go to hell!” It’s one that you’ve probably'),
('ちくしょう (chikushou)', '“Son of a bitch” in Japanese, although it can also be used as an');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
