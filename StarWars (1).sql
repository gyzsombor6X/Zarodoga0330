-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 192.168.0.200
-- Létrehozás ideje: 2023. Már 30. 08:36
-- Kiszolgáló verziója: 10.5.17-MariaDB-log
-- PHP verzió: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `s66_db`
--
CREATE DATABASE IF NOT EXISTS `s66_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `s66_db`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `starwars`
--
-- Létrehozva: 2023. Feb 02. 08:57
-- Utolsó frissítés: 2023. Már 20. 17:54
--

DROP TABLE IF EXISTS `starwars`;
CREATE TABLE `starwars` (
  `id` int(5) NOT NULL COMMENT 'A szereplő azonosítója',
  `name` varchar(21) DEFAULT NULL COMMENT 'A szereplő neve',
  `side` varchar(25) DEFAULT NULL COMMENT 'A szereplő oldala, pl. jó és sötét',
  `birth_year` varchar(15) DEFAULT 'ismeretlen' COMMENT 'Születési év Yawini csata alapján',
  `birth_planet` varchar(50) DEFAULT 'ismeretlen' COMMENT 'A szereplő születési helye',
  `death_year` varchar(15) DEFAULT 'ismeretlen' COMMENT 'A szereplő halálának időpontja',
  `death_planet` varchar(50) DEFAULT 'ismeretlen' COMMENT 'A szereplő halálának helyszíne',
  `gender` varchar(13) DEFAULT NULL COMMENT 'A szereplő neme',
  `height` varchar(15) DEFAULT 'ismeretlen' COMMENT 'A szereplő magassága',
  `mass` varchar(15) DEFAULT 'ismeretlen' COMMENT 'A szereplő tömege',
  `eye_color` varchar(13) DEFAULT NULL COMMENT 'A szereplő szemének színe',
  `hair_color` varchar(13) DEFAULT NULL COMMENT 'A szereplő hajszíne',
  `skin_color` varchar(19) DEFAULT NULL COMMENT 'A szereplő bőrszíne',
  `homeworld` varchar(20) DEFAULT NULL COMMENT 'A szereplő lakhelye',
  `image` varchar(70) DEFAULT '''*.jpg''' COMMENT 'A szereplő képe',
  `WikipediaLink` varchar(60) NOT NULL COMMENT 'Szereplő Wikipédia linkje',
  `WookiepediaLink` varchar(60) NOT NULL COMMENT 'Szereplő Wookiepedia linkje',
  `KaminopediaLink` varchar(60) NOT NULL COMMENT 'Szereplő Kaminopedia linkje',
  `homeworld_url` varchar(31) DEFAULT NULL COMMENT 'A szereplő lakhelye (link)',
  `created` varchar(27) DEFAULT '2022-12-01T15:30:25.001985Z' COMMENT 'Készítés időpontja',
  `edited` varchar(27) DEFAULT '2022-12-08T12:30:25.001985Z' COMMENT 'Módosítás időpontja',
  `url` varchar(30) DEFAULT NULL COMMENT 'A szereplő képe (link)',
  `films/0` varchar(28) DEFAULT NULL COMMENT 'Filmek #1 (Link)',
  `films/1` varchar(28) DEFAULT NULL COMMENT 'Filmek #2 (Link)',
  `films/2` varchar(28) DEFAULT NULL COMMENT 'Filmek #3 (Link)',
  `films/3` varchar(28) DEFAULT NULL COMMENT 'Filmek #4 (Link)',
  `films/4` varchar(28) DEFAULT NULL COMMENT 'Filmek #5 (Link)',
  `films/5` varchar(28) DEFAULT NULL COMMENT 'Filmek #6 (Link)',
  `films/6` varchar(28) DEFAULT NULL COMMENT 'Filmek #7 (Link)',
  `species/0` varchar(31) DEFAULT NULL COMMENT 'Képességek (Link)',
  `vehicles/0` varchar(32) DEFAULT NULL COMMENT 'Járművek #1 (Link)',
  `vehicles/1` varchar(32) DEFAULT NULL COMMENT 'Járművek #2 (Link)',
  `starships/0` varchar(33) DEFAULT NULL COMMENT 'Űrhajók #1 (Link)',
  `starships/1` varchar(33) DEFAULT NULL COMMENT 'Űrhajók #2 (Link)',
  `starships/2` varchar(33) DEFAULT NULL COMMENT 'Űrhajók #3 (Link)',
  `starships/3` varchar(33) DEFAULT NULL COMMENT 'Űrhajók #4 (Link)',
  `starships/4` varchar(33) DEFAULT NULL COMMENT 'Űrhajók #5 (Link)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Star Wars';

--
-- TÁBLA KAPCSOLATAI `starwars`:
--

--
-- A tábla adatainak kiíratása `starwars`
--

INSERT INTO `starwars` (`id`, `name`, `side`, `birth_year`, `birth_planet`, `death_year`, `death_planet`, `gender`, `height`, `mass`, `eye_color`, `hair_color`, `skin_color`, `homeworld`, `image`, `WikipediaLink`, `WookiepediaLink`, `KaminopediaLink`, `homeworld_url`, `created`, `edited`, `url`, `films/0`, `films/1`, `films/2`, `films/3`, `films/4`, `films/5`, `films/6`, `species/0`, `vehicles/0`, `vehicles/1`, `starships/0`, `starships/1`, `starships/2`, `starships/3`, `starships/4`) VALUES
(1, 'Luke Skywalker', 'világos oldal', '19BBY', 'Polis Massa', '34ABY', 'Ahch-To', 'férfi', '172', '77', 'kék', 'szőkésbarna', 'világos', 'Tatuin', 'LukeSkywalker.jpg', 'https://hu.wikipedia.org/wiki/Luke_Skywalker', 'https://starwars.fandom.com/wiki/Luke_Skywalker', 'https://starwars.fandom.com/hu/wiki/Luke_Skywalker', 'http://swapi.co/api/planets/1/', '2014-12-09T13:50:51.644000Z', '2014-12-20T21:17:56.891000Z', 'http://swapi.co/api/people/1/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', 'http://swapi.co/api/films/1/', 'http://swapi.co/api/films/7/', '', '', 'http://swapi.co/api/species/1/', 'http://swapi.co/api/vehicles/14/', 'http://swapi.co/api/vehicles/30/', 'http://swapi.co/api/starships/12/', 'http://swapi.co/api/starships/22/', '', '', ''),
(2, 'C-3PO', 'világos oldal', '112BBY', 'Tatuin', 'nem halt meg', NULL, 'nincs', '167', '75', 'sárga', 'nincs', 'arany', 'Tatuin', 'C3PO.jpg', 'https://hu.wikipedia.org/wiki/C-3PO', 'https://starwars.fandom.com/wiki/C-3PO', 'https://starwars.fandom.com/hu/wiki/C-3PO', 'http://swapi.co/api/planets/1/', '2014-12-10T15:10:51.357000Z', '2014-12-20T21:17:50.309000Z', 'http://swapi.co/api/people/2/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', 'http://swapi.co/api/films/1/', 'Tatuin', 'http://swapi.co/api/species/2/', '', '', '', '', '', '', ''),
(3, 'R2-D2', 'világos oldal', '33BBY', 'Naboo', 'nem halt meg', NULL, 'nincs', '96', '32', 'piros', 'nincs', 'fehér, kék', 'Naboo', 'R2D2.jpg', 'https://hu.wikipedia.org/wiki/R2-D2', 'https://starwars.fandom.com/wiki/R2-D2', 'https://starwars.fandom.com/hu/wiki/R2-D2', 'http://swapi.co/api/planets/8/', '2014-12-10T15:11:50.376000Z', '2014-12-20T21:17:50.311000Z', 'http://swapi.co/api/people/3/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', 'http://swapi.co/api/films/1/', 'http://swapi.co/api/films/7/', 'http://swapi.co/api/species/2/', '', '', '', '', '', '', ''),
(4, 'Darth Vader', 'sötét oldal', '41.9BBY', 'Tatuin', '4ABY', 'DS-2 Halálcsillag, Endor rendszer', 'férfi', '202', '136', 'sárga', 'nincs', 'fehér', 'Tatuin', 'DarthVader.jpg', 'https://hu.wikipedia.org/wiki/Darth_Vader', 'https://starwars.fandom.com/wiki/Anakin_Skywalker', 'https://bit.ly/AnakinKpedia', 'http://swapi.co/api/planets/1/', '2014-12-10T15:18:20.704000Z', '2014-12-20T21:17:50.313000Z', 'http://swapi.co/api/people/4/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', 'http://swapi.co/api/films/1/', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/13/', '', '', '', ''),
(5, 'Leia Organa', 'világos oldal', '19BBY', 'Polis Massa', '35ABY', 'Ajan Kloss', 'nő', '150', '49', 'barna', 'barna', 'világos', 'Alderaan', 'LeiaOrgana.jpg', 'https://hu.wikipedia.org/wiki/Leia_Organa', 'https://bit.ly/LeiaOrganaWookiepedia', 'https://bit.ly/Leia_Kaminopedia', 'http://swapi.co/api/planets/2/', '2014-12-10T15:20:09.791000Z', '2014-12-20T21:17:50.315000Z', 'http://swapi.co/api/people/5/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', 'http://swapi.co/api/films/1/', 'http://swapi.co/api/films/7/', '', '', 'http://swapi.co/api/species/1/', 'http://swapi.co/api/vehicles/30/', '', '', '', '', '', ''),
(6, 'Owen Lars', 'világos oldal', '52BBY', 'Tatuin', '0BBY', 'Tatuin', 'férfi', '178', '120', 'kék', 'barna, szürke', 'világos', 'Tatuin', 'OwenLars.jpg', 'https://bit.ly/LarsFamilyKamino', 'https://starwars.fandom.com/wiki/Owen_Lars', 'https://bit.ly/LarsFamilyKamino', 'http://swapi.co/api/planets/1/', '2014-12-10T15:52:14.024000Z', '2014-12-20T21:17:50.317000Z', 'http://swapi.co/api/people/6/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/1/', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(7, 'Beru Whitesun Lars', 'világos oldal', '47BBY', 'Tatuin', '0BBY', 'Tatuin', 'nő', '165', '75', 'kék', 'barna', 'világos', 'Tatuin', 'BeruWhitesunLars.jpg', 'https://bit.ly/LarsFamilyKamino', 'https://bit.ly/BeruWookiepedia', 'https://bit.ly/LarsFamilyKamino', 'http://swapi.co/api/planets/1/', '2014-12-10T15:53:41.121000Z', '2014-12-20T21:17:50.319000Z', 'http://swapi.co/api/people/7/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/1/', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(8, 'R5-D4', 'világos oldal', 'ismeretlen', 'Tatuin', 'nem halt meg', '', 'nincs', '97', '32', 'piros', 'nincs', 'fehér, piros', 'Tatuin', 'R5D4.jpg', 'https://starwars.fandom.com/hu/wiki/R5-D4', 'https://starwars.fandom.com/wiki/R5-D4', 'https://starwars.fandom.com/hu/wiki/R5-D4', 'http://swapi.co/api/planets/1/', '2014-12-10T15:57:50.959000Z', '2014-12-20T21:17:50.321000Z', 'http://swapi.co/api/people/8/', 'http://swapi.co/api/films/1/', '', '', '', '', '', '', 'http://swapi.co/api/species/2/', '', '', '', '', '', '', ''),
(9, 'Biggs Darklighter', 'világos oldal', '24BBY', 'Tatuin', '0BBY', 'Yavin rendszer', 'férfi', '183', '84', 'barna', 'fekete', 'világos', 'Tatuin', 'BiggsDarklighter.jpg', 'https://hu.wikipedia.org/wiki/Biggs_Darklighter', 'https://bit.ly/BiggsWpedia', 'https://bit.ly/BiggsKpedia', 'http://swapi.co/api/planets/1/', '2014-12-10T15:59:50.509000Z', '2014-12-20T21:17:50.323000Z', 'http://swapi.co/api/people/9/', 'http://swapi.co/api/films/1/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/12/', '', '', '', ''),
(10, 'Obi-Wan Kenobi', 'világos oldal', '57BBY', 'Stewjon', '0BBY', 'Halálcsillag, Alderaan rendszer', 'férfi', '182', '77', 'kék, szürke', 'fehér, barna', 'világos', 'Stewjon', 'ObiWanKenobi.jpg', 'https://hu.wikipedia.org/wiki/Obi-Wan_Kenobi', 'https://starwars.fandom.com/wiki/Obi-Wan_Kenobi', 'https://starwars.fandom.com/hu/wiki/Ben_Kenobi', 'http://swapi.co/api/planets/20/', '2014-12-10T16:16:29.192000Z', '2014-12-20T21:17:50.325000Z', 'http://swapi.co/api/people/10/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', 'http://swapi.co/api/films/1/', '', 'http://swapi.co/api/species/1/', 'http://swapi.co/api/vehicles/38/', '', 'http://swapi.co/api/starships/48/', 'http://swapi.co/api/starships/59/', 'http://swapi.co/api/starships/64/', 'http://swapi.co/api/starships/65/', 'http://swapi.co/api/starships/74/'),
(11, 'Anakin Skywalker', 'világos oldal', '41.9BBY', 'Tatuin', '4ABY', 'DS-2 Halálcsillag, Endor rendszer', 'férfi', '188', '84', 'kék', 'barna', 'világos', 'Tatuin', 'AnakinSkywalker.jpg', 'https://hu.wikipedia.org/wiki/Darth_Vader', 'https://starwars.fandom.com/wiki/Anakin_Skywalker', 'https://starwars.fandom.com/hu/wiki/Anakin_Skywalker', 'http://swapi.co/api/planets/1/', '2014-12-10T16:20:44.310000Z', '2014-12-20T21:17:50.327000Z', 'http://swapi.co/api/people/11/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', 'http://swapi.co/api/species/1/', 'http://swapi.co/api/vehicles/44/', 'http://swapi.co/api/vehicles/46/', 'http://swapi.co/api/starships/39/', 'http://swapi.co/api/starships/59/', 'http://swapi.co/api/starships/65/', '', ''),
(12, 'Wilhuff Tarkin', 'sötét oldal', '64BBY', 'Eriadu', '0BBY', 'Halálcsillag, Yavin rendszer', 'férfi', '180', 'ismeretlen', 'kék', 'barna, szürke', 'világos', 'Eriadu', 'WilhuffTarkin.jpg', 'https://hu.wikipedia.org/wiki/Wilhuff_Tarkin', 'https://starwars.fandom.com/wiki/Wilhuff_Tarkin', 'https://starwars.fandom.com/hu/wiki/Wilhuff_Tarkin', 'http://swapi.co/api/planets/21/', '2014-12-10T16:26:56.138000Z', '2014-12-20T21:17:50.330000Z', 'http://swapi.co/api/people/12/', 'http://swapi.co/api/films/1/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(13, 'Chewbacca', 'világos oldal', '200BBY', 'Kashyyyk', 'nem halt meg', NULL, 'férfi', '228', '112', 'kék', 'barna', 'ismeretlen', 'Kashyyyk', 'Chewbacca.jpg', 'https://hu.wikipedia.org/wiki/Csubakka', 'https://starwars.fandom.com/wiki/Chewbacca', 'https://starwars.fandom.com/hu/wiki/Chewbacca', 'http://swapi.co/api/planets/14/', '2014-12-10T16:42:45.066000Z', '2014-12-20T21:17:50.332000Z', 'http://swapi.co/api/people/13/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', 'http://swapi.co/api/films/1/', 'http://swapi.co/api/films/7/', '', '', 'http://swapi.co/api/species/3/', 'http://swapi.co/api/vehicles/19/', '', 'http://swapi.co/api/starships/10/', 'http://swapi.co/api/starships/22/', '', '', ''),
(14, 'Han Solo', 'világos oldal', '32BBY', 'Corellia', '34ABY', 'Starkiller bázis, Ilum rendszer', 'férfi', '180', '80', 'barna', 'barna', 'világos', 'Corellia', 'HanSolo.jpg', 'https://hu.wikipedia.org/wiki/Han_Solo', 'https://starwars.fandom.com/wiki/Han_Solo', 'https://starwars.fandom.com/hu/wiki/Han_Solo', 'http://swapi.co/api/planets/22/', '2014-12-10T16:49:14.582000Z', '2014-12-20T21:17:50.334000Z', 'http://swapi.co/api/people/14/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', 'http://swapi.co/api/films/1/', 'http://swapi.co/api/films/7/', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/10/', 'http://swapi.co/api/starships/22/', '', '', ''),
(15, 'Greedo', 'világos oldal', '44BBY', 'Rodia', '0BBY', 'Tatuin', 'férfi', '173', '74', 'indigó', 'nincs', 'zöld', 'Rodia, Tatuin', 'Greedo.jpg', 'https://starwars.fandom.com/hu/wiki/Greedo', 'https://starwars.fandom.com/wiki/Greedo', 'https://starwars.fandom.com/hu/wiki/Greedo', 'http://swapi.co/api/planets/23/', '2014-12-10T17:03:30.334000Z', '2014-12-20T21:17:50.336000Z', 'http://swapi.co/api/people/15/', 'http://swapi.co/api/films/1/', '', '', '', '', '', '', 'http://swapi.co/api/species/4/', '', '', '', '', '', '', ''),
(16, 'Jabba Desilijic Tiure', 'világos oldal', '600BBY', 'Nal Hutta', '4ABY', 'Tatuin', 'hermafrodita', '175', '1,358', 'narancs', 'nincs', 'zöld, barna', 'Nal Hutta, Tatuin', 'JabbaDesilijicTiure.jpg', 'https://hu.wikipedia.org/wiki/Jabba,_a_hutt', 'https://starwars.fandom.com/wiki/Jabba_Desilijic_Tiure', 'https://starwars.fandom.com/hu/wiki/Jabba_Desilijic_Tiure', 'http://swapi.co/api/planets/24/', '2014-12-10T17:11:31.638000Z', '2014-12-20T21:17:50.338000Z', 'http://swapi.co/api/people/16/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/1/', '', '', '', '', 'http://swapi.co/api/species/5/', '', '', '', '', '', '', ''),
(18, 'Wedge Antilles', 'világos oldal', '21BBY', 'Corellia', 'nem halt meg', NULL, 'férfi', '170', '77', 'mogyoróbarna', 'barna', 'világos', 'Corellia', 'WedgeAntilles.jpg', 'https://hu.wikipedia.org/wiki/Wedge_Antilles', 'https://starwars.fandom.com/wiki/Wedge_Antilles', 'https://starwars.fandom.com/hu/wiki/Wedge_Antilles', 'http://swapi.co/api/planets/22/', '2014-12-12T11:08:06.469000Z', '2014-12-20T21:17:50.341000Z', 'http://swapi.co/api/people/18/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', 'http://swapi.co/api/films/1/', '', '', '', '', 'http://swapi.co/api/species/1/', 'http://swapi.co/api/vehicles/14/', '', 'http://swapi.co/api/starships/12/', '', '', '', ''),
(19, 'Jek Tono Porkins', 'világos oldal', 'ismeretlen', 'Bestine IV', '0BBY', 'Yavin rendszer', 'férfi', '180', '110', 'kék', 'barna', 'világos', 'Bestine IV', 'JekTonoPorkins.jpg', 'https://starwars.fandom.com/hu/wiki/Jek_Tono_Porkins', 'https://starwars.fandom.com/wiki/Jek_Tono_Porkins', 'https://starwars.fandom.com/hu/wiki/Jek_Tono_Porkins', 'http://swapi.co/api/planets/26/', '2014-12-12T11:16:56.569000Z', '2014-12-20T21:17:50.343000Z', 'http://swapi.co/api/people/19/', 'http://swapi.co/api/films/1/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/12/', '', '', '', ''),
(20, 'Yoda', 'világos oldal', '896BBY', 'ismeretlen', '4ABY', 'Dagobah', 'férfi', '66', '17', 'barna', 'fehér', 'zöld', 'Coruscant', 'Yoda.jpg', 'https://hu.wikipedia.org/wiki/Yoda', 'https://starwars.fandom.com/wiki/Yoda', 'https://starwars.fandom.com/hu/wiki/Yoda', 'http://swapi.co/api/planets/28/', '2014-12-15T12:26:01.042000Z', '2014-12-20T21:17:50.345000Z', 'http://swapi.co/api/people/20/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', '', '', 'http://swapi.co/api/species/6/', '', '', '', '', '', '', ''),
(21, 'Palpatine', 'sötét oldal', '82BBY, *4ABY', 'Naboo, *Exegol (klón)', '4ABY, *35ABY', 'Halálcsillag, Endor rendszer, *Exegol (klón)', 'férfi', '170', '75', 'sárga', 'szürke', 'sápadt', 'Coruscant', 'Palpatine.jpg', 'https://hu.wikipedia.org/wiki/Palpatine', 'https://starwars.fandom.com/wiki/Darth_Sidious', 'https://starwars.fandom.com/hu/wiki/Darth_Sidious', 'http://swapi.co/api/planets/8/', '2014-12-15T12:48:05.971000Z', '2014-12-20T21:17:50.347000Z', 'http://swapi.co/api/people/21/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(22, 'Boba Fett', 'sötét oldal', '31.5BBY', 'Kamino', 'nem halt meg', NULL, 'férfi', '183', '78.2', 'barna', 'fekete', 'világos', 'Kamino', 'BobaFett.jpg', 'https://hu.wikipedia.org/wiki/Boba_Fett', 'https://starwars.fandom.com/wiki/Boba_Fett', 'https://starwars.fandom.com/hu/wiki/Boba_Fett', 'http://swapi.co/api/planets/10/', '2014-12-15T12:49:32.457000Z', '2014-12-20T21:17:50.349000Z', 'http://swapi.co/api/people/22/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/21/', '', '', '', ''),
(23, 'IG-88', 'sötét oldal', '15BBY', 'Holowan', '3ABY', 'Bespin, Coruscant, Zee-Nine City Seven', 'nincs', '200', '140', 'piros', 'nincs', 'fém', 'Holowan', 'IG88.jpg', 'https://starwars.fandom.com/hu/wiki/IG-88', 'https://starwars.fandom.com/wiki/IG-88B', 'https://starwars.fandom.com/hu/wiki/IG-88', 'http://swapi.co/api/planets/28/', '2014-12-15T12:51:10.076000Z', '2014-12-20T21:17:50.351000Z', 'http://swapi.co/api/people/23/', 'http://swapi.co/api/films/2/', '', '', '', '', '', '', 'http://swapi.co/api/species/2/', '', '', '', '', '', '', ''),
(24, 'Bossk', 'sötét oldal', '53BBY', 'Trandosha', 'nem halt meg', NULL, 'férfi', '190', '113', 'piros', 'nincs', 'zöld', 'Trandosha', 'Bossk.jpg', 'https://starwars.fandom.com/hu/wiki/Bossk', 'https://starwars.fandom.com/wiki/Bossk', 'https://starwars.fandom.com/hu/wiki/Bossk', 'http://swapi.co/api/planets/29/', '2014-12-15T12:53:49.297000Z', '2014-12-20T21:17:50.355000Z', 'http://swapi.co/api/people/24/', 'http://swapi.co/api/films/2/', '', '', '', '', '', '', 'http://swapi.co/api/species/7/', '', '', '', '', '', '', ''),
(25, 'Lando Calrissian', 'világos oldal', '31BBY', 'Socorro', 'nem halt meg', NULL, 'férfi', '177', '79', 'barna', 'fekete', 'sötét', 'Socorro', 'LandoCalrissian.jpg', 'https://hu.wikipedia.org/wiki/Lando_Calrissian', 'https://starwars.fandom.com/wiki/Lando', 'https://starwars.fandom.com/hu/wiki/Lando', 'http://swapi.co/api/planets/30/', '2014-12-15T12:56:32.683000Z', '2014-12-20T21:17:50.357000Z', 'http://swapi.co/api/people/25/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/2/', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/10/', '', '', '', ''),
(26, 'Lobot', 'sötét oldal', '37BBY', 'Bespin', 'nem halt meg', NULL, 'férfi', '175', '79', 'kék', 'nincs', 'világos', 'Bespin', 'Lobot.jpg', 'https://starwars.fandom.com/hu/wiki/Lobot', 'https://starwars.fandom.com/wiki/Lobot', 'https://starwars.fandom.com/hu/wiki/Lobot', 'http://swapi.co/api/planets/6/', '2014-12-15T13:01:57.178000Z', '2014-12-20T21:17:50.359000Z', 'http://swapi.co/api/people/26/', 'http://swapi.co/api/films/2/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(27, 'Ackbar', 'világos oldal', '52BBY', 'Mon Cala', '34ABY', 'Raddus, Oetchi rendszer', 'férfi', '180', '83', 'narancs', 'nincs', 'barna foltos', 'Mon Cala', 'Ackbar.jpg', 'https://hu.wikipedia.org/wiki/Ackbar_admir%C3%A1lis', 'https://starwars.fandom.com/wiki/Gial_Ackbar', 'https://starwars.fandom.com/hu/wiki/Gial_Ackbar', 'http://swapi.co/api/planets/31/', '2014-12-18T11:07:50.584000Z', '2014-12-20T21:17:50.362000Z', 'http://swapi.co/api/people/27/', 'http://swapi.co/api/films/3/', 'http://swapi.co/api/films/7/', '', '', '', '', '', 'http://swapi.co/api/species/8/', '', '', '', '', '', '', ''),
(28, 'Mon Mothma', 'világos oldal', '48BBY', 'Chandrila', 'nem halt meg', NULL, 'nő', '150', 'ismeretlen', 'kék', 'aranybarna', 'világos', 'Chandrila', 'MonMothma.jpg', 'https://hu.wikipedia.org/wiki/Mon_Mothma', 'https://starwars.fandom.com/wiki/Mon_Mothma', 'https://starwars.fandom.com/hu/wiki/Mon_Mothma', 'http://swapi.co/api/planets/32/', '2014-12-18T11:12:38.895000Z', '2014-12-20T21:17:50.364000Z', 'http://swapi.co/api/people/28/', 'http://swapi.co/api/films/3/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(29, 'Arvel Crynyd', 'világos oldal', 'ismeretlen', 'Thyferra', '4ABY', 'Endor rendszer', 'férfi', 'ismeretlen', 'ismeretlen', 'barna', 'barna', 'világos', 'Thyferra', 'ArvelCrynyd.jpg', 'https://starwars.fandom.com/hu/wiki/Arvel_Crynyd', 'https://starwars.fandom.com/wiki/Arvel_Crynyd', 'https://starwars.fandom.com/hu/wiki/Arvel_Crynyd', 'http://swapi.co/api/planets/28/', '2014-12-18T11:16:33.020000Z', '2014-12-20T21:17:50.367000Z', 'http://swapi.co/api/people/29/', 'http://swapi.co/api/films/3/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/28/', '', '', '', ''),
(31, 'Nien Nunb', 'világos oldal', 'ismeretlen', 'Sullust', '35ABY', 'Tantive IV, Exegol', 'férfi', '160', '68', 'fekete', 'nincs', 'szürke', 'Sullust', 'NienNunb.jpg', 'https://starwars.fandom.com/hu/wiki/Nien_Nunb', 'https://starwars.fandom.com/wiki/Nien_Nunb', 'https://starwars.fandom.com/hu/wiki/Nien_Nunb', 'http://swapi.co/api/planets/33/', '2014-12-18T11:26:18.541000Z', '2014-12-20T21:17:50.371000Z', 'http://swapi.co/api/people/31/', 'http://swapi.co/api/films/3/', '', '', '', '', '', '', 'http://swapi.co/api/species/10/', '', '', 'http://swapi.co/api/starships/10/', '', '', '', ''),
(32, 'Qui-Gon Jinn', 'világos oldal', '80BBY', 'Coruscant', '32BBY', 'Naboo', 'férfi', '193', '89', 'kék', 'barna', 'világos', 'Coruscant', 'QuiGonJinn.jpg', 'https://hu.wikipedia.org/wiki/Qui-Gon_Jinn', 'https://starwars.fandom.com/wiki/Qui-Gon_Jinn', 'https://starwars.fandom.com/hu/wiki/Qui-Gon_Jinn', 'http://swapi.co/api/planets/28/', '2014-12-19T16:54:53.618000Z', '2014-12-20T21:17:50.375000Z', 'http://swapi.co/api/people/32/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', 'http://swapi.co/api/vehicles/38/', '', '', '', '', '', ''),
(33, 'Nute Gunray', 'világos oldal', 'ismeretlen', 'Neimoidia', '19BBY', 'Mustafar', 'férfi', '191', '90', 'piros', 'nincs', 'tarka zöld', 'Neimoidia', 'NuteGunray.jpg', 'https://hu.wikipedia.org/wiki/Nute_Gunray', 'https://starwars.fandom.com/wiki/Nute_Gunray', 'https://starwars.fandom.com/hu/wiki/Nute_Gunray', 'http://swapi.co/api/planets/18/', '2014-12-19T17:05:57.357000Z', '2014-12-20T21:17:50.377000Z', 'http://swapi.co/api/people/33/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', 'http://swapi.co/api/species/11/', '', '', '', '', '', '', ''),
(34, 'Finis Valorum', 'világos oldal', '91BBY', 'Coruscant', 'nem halt meg', NULL, 'férfi', '170', 'ismeretlen', 'kék', 'szőke', 'világos', 'Coruscant', 'FinisValorum.jpg', 'https://starwars.fandom.com/hu/wiki/Finis_Valorum', 'https://starwars.fandom.com/wiki/Finis_Valorum', 'https://starwars.fandom.com/hu/wiki/Finis_Valorum', 'http://swapi.co/api/planets/9/', '2014-12-19T17:21:45.915000Z', '2014-12-20T21:17:50.379000Z', 'http://swapi.co/api/people/34/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(35, 'Padmé Amidala', 'világos oldal', '46BBY', 'Naboo', '19BBY', 'Polis Massa', 'nő', '165', '45', 'barna', 'barna', 'világos', 'Naboo', 'PadmeAmidala.jpg', 'https://hu.wikipedia.org/wiki/Padm%C3%A9_Amidala', 'https://starwars.fandom.com/wiki/Padm%C3%A9_Amidala', 'https://starwars.fandom.com/hu/wiki/Padm%C3%A9_Amidala', 'http://swapi.co/api/planets/8/', '2014-12-19T17:28:26.926000Z', '2016-04-20T17:06:31.502555Z', 'http://swapi.co/api/people/35/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/39/', 'http://swapi.co/api/starships/49/', 'http://swapi.co/api/starships/64/', '', ''),
(36, 'Jar Jar Binks', 'világos oldal', '52BBY', 'Naboo', 'nem halt meg', NULL, 'férfi', '196', '66', 'narancs', 'nincs', 'narancs', 'Naboo', 'JarJarBinks.jpg', 'https://hu.wikipedia.org/wiki/Jar_Jar_Binks', 'https://starwars.fandom.com/wiki/Jar_Jar_Binks', 'https://starwars.fandom.com/hu/wiki/Jar_Jar_Binks', 'http://swapi.co/api/planets/8/', '2014-12-19T17:29:32.489000Z', '2014-12-20T21:17:50.383000Z', 'http://swapi.co/api/people/36/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', '', '', '', '', '', 'http://swapi.co/api/species/12/', '', '', '', '', '', '', ''),
(37, 'Roos Tarpals', 'világos oldal', 'ismeretlen', 'Naboo', '20BBY', 'Naboo', 'férfi', '224', '82', 'narancs', 'nincs', 'szürke', 'Naboo', 'RoosTarpals.jpg', 'https://starwars.fandom.com/hu/wiki/Roos_Tarpals', 'https://starwars.fandom.com/wiki/Roos_Tarpals', 'https://starwars.fandom.com/hu/wiki/Roos_Tarpals', 'http://swapi.co/api/planets/8/', '2014-12-19T17:32:56.741000Z', '2014-12-20T21:17:50.385000Z', 'http://swapi.co/api/people/37/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/12/', '', '', '', '', '', '', ''),
(38, 'Rugor Nass', 'világos oldal', 'ismeretlen', 'Naboo', 'nem halt meg', NULL, 'férfi', '206', 'ismeretlen', 'narancs', 'nincs', 'zöld', 'Naboo', 'RugorNass.jpg', 'https://starwars.fandom.com/hu/wiki/Rugor_Nass', 'https://starwars.fandom.com/wiki/Rugor_Nass', 'https://starwars.fandom.com/hu/wiki/Rugor_Nass', 'http://swapi.co/api/planets/8/', '2014-12-19T17:33:38.909000Z', '2014-12-20T21:17:50.388000Z', 'http://swapi.co/api/people/38/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/12/', '', '', '', '', '', '', ''),
(39, 'Ric Olié', 'világos oldal', 'ismeretlen', 'Naboo', 'nem halt meg', NULL, 'férfi', '183', 'ismeretlen', 'kék', 'barna', 'világos', 'Naboo', 'RicOlie.jpg', 'https://starwars.fandom.com/hu/wiki/Ric_Oli%C3%A9', 'https://starwars.fandom.com/wiki/Ric_Oli%C3%A9', 'https://starwars.fandom.com/hu/wiki/Ric_Oli%C3%A9', 'http://swapi.co/api/planets/8/', '2014-12-19T17:45:01.522000Z', '2014-12-20T21:17:50.392000Z', 'http://swapi.co/api/people/39/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', '', '', '', 'http://swapi.co/api/starships/40/', '', '', '', ''),
(40, 'Watto', 'világos oldal', 'ismeretlen', 'Toydaria', 'nem halt meg', NULL, 'férfi', '137', 'ismeretlen', 'sárga', 'fekete', 'kék, szürke', 'Toydaria', 'Watto.jpg', 'https://hu.wikipedia.org/wiki/Watto', 'https://starwars.fandom.com/wiki/Watto', 'https://starwars.fandom.com/hu/wiki/Watto', 'http://swapi.co/api/planets/34/', '2014-12-19T17:48:54.647000Z', '2014-12-20T21:17:50.395000Z', 'http://swapi.co/api/people/40/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', '', '', '', '', '', 'http://swapi.co/api/species/13/', '', '', '', '', '', '', ''),
(41, 'Sebulba', 'világos oldal', 'ismeretlen', 'Malastare', 'nem halt meg', NULL, 'férfi', '112', '40', 'narancs', 'nincs', 'szürke, piros', 'Malastare', 'Sebulba.jpg', 'https://hu.wikipedia.org/wiki/Sebulba', 'https://starwars.fandom.com/wiki/Sebulba', 'https://starwars.fandom.com/hu/wiki/Sebulba', 'http://swapi.co/api/planets/35/', '2014-12-19T17:53:02.586000Z', '2014-12-20T21:17:50.397000Z', 'http://swapi.co/api/people/41/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/14/', '', '', '', '', '', '', ''),
(42, 'Quarsh Panaka', 'világos oldal', '62BBY', 'Naboo', '3BBY', 'Onoam', 'férfi', '183', 'ismeretlen', 'barna', 'fekete', 'sötét', 'Naboo', 'QuarshPanaka.jpg', 'https://starwars.fandom.com/hu/wiki/Quarsh_Panaka', 'https://starwars.fandom.com/wiki/Quarsh_Panaka', 'https://starwars.fandom.com/hu/wiki/Quarsh_Panaka', 'http://swapi.co/api/planets/8/', '2014-12-19T17:55:43.348000Z', '2014-12-20T21:17:50.399000Z', 'http://swapi.co/api/people/42/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'Shmi Skywalker', 'világos oldal', '72BBY', 'Tatuin', '22BBY', 'Tatuin', 'nő', '163', 'ismeretlen', 'barna', 'fekete', 'világos', 'Tatuin', 'ShmiSkywalker.jpg', 'https://hu.wikipedia.org/wiki/Shmi_Skywalker', 'https://starwars.fandom.com/wiki/Shmi_Skywalker_Lars', 'https://starwars.fandom.com/hu/wiki/Shmi_Skywalker_Lars', 'http://swapi.co/api/planets/1/', '2014-12-19T17:57:41.191000Z', '2014-12-20T21:17:50.401000Z', 'http://swapi.co/api/people/43/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(44, 'Darth Maul', 'sötét oldal', '54BBY', 'Dathomir', '2BBY', 'Tatuin', 'férfi', '175', '80', 'sárga', 'nincs', 'piros', 'Dathomir', 'DarthMaul.jpg', 'https://hu.wikipedia.org/wiki/Darth_Maul', 'https://starwars.fandom.com/wiki/Maul', 'https://starwars.fandom.com/hu/wiki/Darth_Maul', 'http://swapi.co/api/planets/36/', '2014-12-19T18:00:41.929000Z', '2014-12-20T21:17:50.403000Z', 'http://swapi.co/api/people/44/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/22/', 'http://swapi.co/api/vehicles/42/', '', 'http://swapi.co/api/starships/41/', '', '', '', ''),
(45, 'Bib Fortuna', 'világos oldal', 'ismeretlen', 'Ryloth', '9ABY', 'Tatuin', 'férfi', '180', 'ismeretlen', 'rózsaszín', 'nincs', 'sápadt', 'Ryloth', 'BibFortuna.jpg', 'https://starwars.fandom.com/hu/wiki/Bib_Fortuna', 'https://starwars.fandom.com/wiki/Bib_Fortuna', 'https://starwars.fandom.com/hu/wiki/Bib_Fortuna', 'http://swapi.co/api/planets/37/', '2014-12-20T09:47:02.512000Z', '2014-12-20T21:17:50.407000Z', 'http://swapi.co/api/people/45/', 'http://swapi.co/api/films/3/', '', '', '', '', '', '', 'http://swapi.co/api/species/15/', '', '', '', '', '', '', ''),
(48, 'Dud Bolt', 'világos oldal', 'ismeretlen', 'Vulpter', 'nem halt meg', NULL, 'férfi', '94', '45', 'sárga', 'nincs', 'kék, szürke', 'Vulpter', 'DudBolt.jpg', 'https://starwars.fandom.com/hu/wiki/Dud_Bolt', 'https://starwars.fandom.com/wiki/Dud_Bolt', 'https://starwars.fandom.com/hu/wiki/Dud_Bolt', 'http://swapi.co/api/planets/39/', '2014-12-20T09:57:31.858000Z', '2014-12-20T21:17:50.414000Z', 'http://swapi.co/api/people/48/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/17/', '', '', '', '', '', '', ''),
(49, 'Gasgano', 'világos oldal', 'ismeretlen', 'Troiken', 'nem halt meg', NULL, 'férfi', '122', 'ismeretlen', 'fekete', 'nincs', 'fehér, kék', 'Troiken', 'Gasgano.jpg', 'https://starwars.fandom.com/hu/wiki/Gasgano', 'https://starwars.fandom.com/wiki/Gasgano', 'https://starwars.fandom.com/hu/wiki/Gasgano', 'http://swapi.co/api/planets/40/', '2014-12-20T10:02:12.223000Z', '2014-12-20T21:17:50.416000Z', 'http://swapi.co/api/people/49/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/18/', '', '', '', '', '', '', ''),
(50, 'Ben Quadinaros', 'világos oldal', 'ismeretlen', 'Tund', 'nem halt meg', NULL, 'férfi', '163', '65', 'narancs', 'nincs', 'szürke, zöld, sárga', 'Tund', 'BenQuadinaros.jpg', 'https://starwars.fandom.com/hu/wiki/Ben_Quadinaros', 'https://starwars.fandom.com/wiki/Ben_Quadinaros', 'https://starwars.fandom.com/hu/wiki/Ben_Quadinaros', 'http://swapi.co/api/planets/41/', '2014-12-20T10:08:33.777000Z', '2014-12-20T21:17:50.417000Z', 'http://swapi.co/api/people/50/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/19/', '', '', '', '', '', '', ''),
(51, 'Mace Windu', 'világos oldal', '72BBY', 'Haruun Kai', '19BBY', 'Coruscant', 'férfi', '188', '84', 'barna', 'nincs', 'sötét', 'Haruun Kai', 'MaceWindu.jpg', 'https://hu.wikipedia.org/wiki/Mace_Windu', 'https://starwars.fandom.com/wiki/Mace_Windu', 'https://starwars.fandom.com/hu/wiki/Mace_Windu', 'http://swapi.co/api/planets/42/', '2014-12-20T10:12:30.846000Z', '2014-12-20T21:17:50.420000Z', 'http://swapi.co/api/people/51/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(52, 'Ki-Adi-Mundi', 'világos oldal', '92BBY', 'Cerea', '19BBY', 'Mygeeto', 'férfi', '198', '82', 'sárga', 'fehér', 'sápadt', 'Cerea', 'KiAdiMundi.jpg', 'https://hu.wikipedia.org/wiki/Ki-Adi-Mundi', 'https://starwars.fandom.com/wiki/Ki-Adi-Mundi', 'https://starwars.fandom.com/hu/wiki/Ki-Adi-Mundi', 'http://swapi.co/api/planets/43/', '2014-12-20T10:15:32.293000Z', '2014-12-20T21:17:50.422000Z', 'http://swapi.co/api/people/52/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', 'http://swapi.co/api/species/20/', '', '', '', '', '', '', ''),
(53, 'Kit Fisto', 'világos oldal', 'ismeretlen', 'Glee Anselm', '19BBY', 'Coruscant', 'férfi', '196', '87', 'fekete', 'nincs', 'zöld', 'Glee Anselm', 'KitFisto.jpg', 'https://hu.wikipedia.org/wiki/Kit_Fisto', 'https://starwars.fandom.com/wiki/Kit_Fisto', 'https://starwars.fandom.com/hu/wiki/Kit_Fisto', 'http://swapi.co/api/planets/44/', '2014-12-20T10:18:57.202000Z', '2014-12-20T21:17:50.424000Z', 'http://swapi.co/api/people/53/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', 'http://swapi.co/api/species/21/', '', '', '', '', '', '', ''),
(54, 'Eeth Koth', 'világos oldal', 'ismeretlen', 'Iridonia', '14BBY', 'azonosítatlan bolygó', 'férfi', '171', 'ismeretlen', 'barna', 'fekete', 'barna', 'Iridonia', 'EethKoth.jpg', 'https://starwars.fandom.com/hu/wiki/Eeth_Koth', 'https://starwars.fandom.com/wiki/Eeth_Koth', 'https://starwars.fandom.com/hu/wiki/Eeth_Koth', 'http://swapi.co/api/planets/45/', '2014-12-20T10:26:47.902000Z', '2014-12-20T21:17:50.427000Z', 'http://swapi.co/api/people/54/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/22/', '', '', '', '', '', '', ''),
(55, 'Adi Gallia', 'világos oldal', 'ismeretlen', 'Coruscant', '20BBY - 19BBY', 'Florrum', 'nő', '184', '50', 'kék', 'nincs', 'sötét', 'Coruscant', 'AdiGallia.jpg', 'https://starwars.fandom.com/hu/wiki/Adi_Gallia', 'https://starwars.fandom.com/wiki/Adi_Gallia', 'https://starwars.fandom.com/hu/wiki/Adi_Gallia', 'http://swapi.co/api/planets/9/', '2014-12-20T10:29:11.661000Z', '2014-12-20T21:17:50.432000Z', 'http://swapi.co/api/people/55/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/23/', '', '', '', '', '', '', ''),
(56, 'Saesee Tiin', 'világos oldal', 'ismeretlen', 'Iktotch', '19BBY', 'Coruscant', 'férfi', '188', 'ismeretlen', 'narancs', 'nincs', 'sápadt', 'Iktotch', 'SaeseeTiin.jpg', 'https://starwars.fandom.com/hu/wiki/Saesee_Tiin', 'https://starwars.fandom.com/wiki/Saesee_Tiin', 'https://starwars.fandom.com/hu/wiki/Saesee_Tiin', 'http://swapi.co/api/planets/47/', '2014-12-20T10:32:11.669000Z', '2014-12-20T21:17:50.434000Z', 'http://swapi.co/api/people/56/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/24/', '', '', '', '', '', '', ''),
(57, 'Yarael Poof', 'világos oldal', 'ismeretlen', 'Quermia', '22BBY', 'Coruscant', 'férfi', '264', 'ismeretlen', 'sárga', 'nincs', 'fehér', 'Quermia', 'YaraelPoof.jpg', 'https://hu.wikipedia.org/wiki/Yarael_Poof', 'https://starwars.fandom.com/wiki/Yarael_Poof', 'https://starwars.fandom.com/hu/wiki/Yarael_Poof', 'http://swapi.co/api/planets/48/', '2014-12-20T10:34:48.725000Z', '2014-12-20T21:17:50.437000Z', 'http://swapi.co/api/people/57/', 'http://swapi.co/api/films/4/', '', '', '', '', '', '', 'http://swapi.co/api/species/25/', '', '', '', '', '', '', ''),
(58, 'Plo Koon', 'világos oldal', '22BBY', 'Dorin', '19BBY', 'Cato Neimoidia', 'férfi', '188', '80', 'fekete', 'nincs', 'narancs', 'Dorin', 'PloKoon.jpg', 'https://hu.wikipedia.org/wiki/Plo_Koon', 'https://starwars.fandom.com/wiki/Plo_Koon', 'https://starwars.fandom.com/hu/wiki/Plo_Koon', 'http://swapi.co/api/planets/49/', '2014-12-20T10:49:19.859000Z', '2014-12-20T21:17:50.439000Z', 'http://swapi.co/api/people/58/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', 'http://swapi.co/api/films/6/', '', '', '', '', 'http://swapi.co/api/species/26/', '', '', 'http://swapi.co/api/starships/48/', '', '', '', ''),
(59, 'Mas Amedda', 'sötét oldal', 'ismeretlen', 'Champala', 'nem halt meg', NULL, 'férfi', '196', 'ismeretlen', 'kék', 'nincs', 'kék', 'Champala', 'MasAmedda.jpg', 'https://starwars.fandom.com/hu/wiki/Mas_Amedda', 'https://starwars.fandom.com/wiki/Mas_Amedda', 'https://starwars.fandom.com/hu/wiki/Mas_Amedda', 'http://swapi.co/api/planets/50/', '2014-12-20T10:53:26.457000Z', '2014-12-20T21:17:50.442000Z', 'http://swapi.co/api/people/59/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/4/', '', '', '', '', '', 'http://swapi.co/api/species/27/', '', '', '', '', '', '', ''),
(60, 'Gregar Typho', 'világos oldal', 'ismeretlen', 'Naboo', 'nem halt meg', NULL, 'férfi', '185', '85', 'barna', 'kék', 'sötét', 'Naboo', 'GregarTypho.jpg', 'https://starwars.fandom.com/hu/wiki/Gregar_Typho', 'https://starwars.fandom.com/wiki/Gregar_Typho', 'https://starwars.fandom.com/hu/wiki/Gregar_Typho', 'http://swapi.co/api/planets/8/', '2014-12-20T11:10:10.381000Z', '2014-12-20T21:17:50.445000Z', 'http://swapi.co/api/people/60/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/39/', '', '', '', ''),
(61, 'Cordé', 'világos oldal', 'ismeretlen', 'Naboo', '22BBY', 'Coruscant', 'nő', '157', 'ismeretlen', 'barna', 'barna', 'világos', 'Naboo', 'Corde.jpg', 'https://starwars.fandom.com/hu/wiki/Cord%C3%A9', 'https://starwars.fandom.com/wiki/Cord%C3%A9', 'https://starwars.fandom.com/hu/wiki/Cord%C3%A9', 'http://swapi.co/api/planets/8/', '2014-12-20T11:11:39.630000Z', '2014-12-20T21:17:50.449000Z', 'http://swapi.co/api/people/61/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(62, 'Cliegg Lars', 'világos oldal', '82BBY', 'Tatuin', '22BBY', 'Tatuin', 'férfi', '183', 'ismeretlen', 'kék', 'barna', 'világos', 'Tatuin', 'ClieggLars.jpg', 'https://starwars.fandom.com/hu/wiki/Cliegg_Lars', 'https://starwars.fandom.com/wiki/Cliegg_Lars', 'https://starwars.fandom.com/hu/wiki/Cliegg_Lars', 'http://swapi.co/api/planets/1/', '2014-12-20T15:59:03.958000Z', '2014-12-20T21:17:50.451000Z', 'http://swapi.co/api/people/62/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(63, 'Kisebb Poggle', 'világos oldal', 'ismeretlen', 'Geonosis', '19BBY', 'Mustafar', 'férfi', '183', '80', 'sárga', 'nincs', 'zöld', 'Geonosis', 'PoggleTheLesser.jpg', 'https://hu.wikipedia.org/wiki/Kisebb_Poggle', 'https://starwars.fandom.com/wiki/Poggle_the_Lesser', 'https://starwars.fandom.com/hu/wiki/Kisebb_Poggle', 'http://swapi.co/api/planets/11/', '2014-12-20T16:40:43.977000Z', '2014-12-20T21:17:50.453000Z', 'http://swapi.co/api/people/63/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/28/', '', '', '', '', '', '', ''),
(64, 'Luminara Unduli', 'világos oldal', '58BBY', 'Mirial', '19BBY - 18BBY', 'Stygeon Prime', 'nő', '170', '56.2', 'kék', 'fekete', 'sárga', 'Mirial', 'LuminaraUnduli.jpg', 'https://hu.wikipedia.org/wiki/Luminara_Unduli', 'https://starwars.fandom.com/wiki/Luminara_Unduli', 'https://starwars.fandom.com/hu/wiki/Luminara_Unduli', 'http://swapi.co/api/planets/51/', '2014-12-20T16:45:53.668000Z', '2014-12-20T21:17:50.455000Z', 'http://swapi.co/api/people/64/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/29/', '', '', '', '', '', '', ''),
(65, 'Barriss Offee', 'világos oldal', '40BBY', 'Mirial', 'nem halt meg', NULL, 'nő', '166', '50', 'kék', 'fekete', 'sárga', 'Mirial', 'BarrissOffee.jpg', 'https://starwars.fandom.com/hu/wiki/Barriss_Offee', 'https://starwars.fandom.com/wiki/Barriss_Offee', 'https://starwars.fandom.com/hu/wiki/Barriss_Offee', 'http://swapi.co/api/planets/51/', '2014-12-20T16:46:40.440000Z', '2014-12-20T21:17:50.457000Z', 'http://swapi.co/api/people/65/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/29/', '', '', '', '', '', '', ''),
(66, 'Dormé', 'világos oldal', 'ismeretlen', 'Naboo', 'nem halt meg', NULL, 'nő', '165', 'ismeretlen', 'barna', 'barna', 'világos', 'Naboo', 'Dorme.jpg', 'https://starwars.fandom.com/hu/wiki/Dorm%C3%A9', 'https://starwars.fandom.com/wiki/Dorm%C3%A9', 'https://starwars.fandom.com/hu/wiki/Dorm%C3%A9', 'http://swapi.co/api/planets/8/', '2014-12-20T16:49:14.640000Z', '2014-12-20T21:17:50.460000Z', 'http://swapi.co/api/people/66/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(67, 'Dooku gróf', 'sötét oldal', '102BBY', 'Serenno', '19BBY', 'Láthatatlan kéz, Coruscant rendszer', 'férfi', '193', '80', 'barna', 'fehér', 'világos', 'Serenno', 'Dooku.jpg', 'https://hu.wikipedia.org/wiki/Dooku_gr%C3%B3f', 'https://starwars.fandom.com/wiki/Dooku', 'https://starwars.fandom.com/hu/wiki/Dooku', 'http://swapi.co/api/planets/52/', '2014-12-20T16:52:14.726000Z', '2014-12-20T21:17:50.462000Z', 'http://swapi.co/api/people/67/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/1/', 'http://swapi.co/api/vehicles/55/', '', '', '', '', '', ''),
(68, 'Bail Prestor Organa', 'világos oldal', '67BBY', 'Alderaan', '0BBY', 'Alderaan', 'férfi', '191', 'ismeretlen', 'barna', 'fekete', 'cser', 'Alderaan', 'BailPrestorOrgana.jpg', 'https://starwars.fandom.com/hu/wiki/Bail_Organa', 'https://starwars.fandom.com/wiki/Bail_Prestor_Organa', 'https://starwars.fandom.com/hu/wiki/Bail_Organa', 'http://swapi.co/api/planets/2/', '2014-12-20T16:53:08.575000Z', '2014-12-20T21:17:50.463000Z', 'http://swapi.co/api/people/68/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(69, 'Jango Fett', 'világos oldal', '66BBY', 'Concord Dawn', '22BBY', 'Geonosis', 'férfi', '183', '79', 'barna', 'fekete', 'cser', 'Concord Dawn', 'JangoFett.jpg', 'https://hu.wikipedia.org/wiki/Jango_Fett', 'https://starwars.fandom.com/wiki/Jango_Fett', 'https://starwars.fandom.com/hu/wiki/Jango_Fett', 'http://swapi.co/api/planets/53/', '2014-12-20T16:54:41.620000Z', '2014-12-20T21:17:50.465000Z', 'http://swapi.co/api/people/69/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(70, 'Zam Wesell', 'világos oldal', 'ismeretlen', 'Zolan', '22BBY', 'Coruscant', 'nő', '168', '55', 'sárga', 'szőke', 'világos zöld, sárga', 'Zolan', 'ZamWesell.jpg', 'https://starwars.fandom.com/hu/wiki/Zam_Wesell', 'https://starwars.fandom.com/wiki/Zam_Wesell', 'https://starwars.fandom.com/hu/wiki/Zam_Wesell', 'http://swapi.co/api/planets/54/', '2014-12-20T16:57:44.471000Z', '2014-12-20T21:17:50.468000Z', 'http://swapi.co/api/people/70/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/30/', 'http://swapi.co/api/vehicles/45/', '', '', '', '', '', ''),
(71, 'Dexter Jettster', 'világos oldal', 'ismeretlen', 'Ojom', '382BBY', 'ismeretlen bolygó', 'férfi', '198', '102', 'sárga', 'nincs', 'barna', 'Ojom', 'DexterJettster.jpg', 'https://starwars.fandom.com/hu/wiki/Dexter_Jettster', 'https://starwars.fandom.com/wiki/Dexter_Jettster', 'https://starwars.fandom.com/hu/wiki/Dexter_Jettster', 'http://swapi.co/api/planets/55/', '2014-12-20T17:28:27.248000Z', '2014-12-20T21:17:50.470000Z', 'http://swapi.co/api/people/71/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/31/', '', '', '', '', '', '', ''),
(72, 'Lama Su', 'sötét oldal', 'ismeretlen', 'Kamino', 'nem halt meg', NULL, 'férfi', '229', '88', 'fekete', 'nincs', 'szürke', 'Kamino', 'LamaSu.jpg', 'https://starwars.fandom.com/hu/wiki/Lama_Su', 'https://starwars.fandom.com/wiki/Lama_Su', 'https://starwars.fandom.com/hu/wiki/Lama_Su', 'http://swapi.co/api/planets/10/', '2014-12-20T17:30:50.416000Z', '2014-12-20T21:17:50.473000Z', 'http://swapi.co/api/people/72/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/32/', '', '', '', '', '', '', ''),
(73, 'Taun We', 'sötét oldal', 'ismeretlen', 'Kamino', '19BBY', 'Bora Vio', 'nő', '213', 'ismeretlen', 'fekete', 'nincs', 'szürke', 'Kamino', 'TaunWe.jpg', 'https://starwars.fandom.com/hu/wiki/Taun_We', 'https://starwars.fandom.com/wiki/Taun_We', 'https://starwars.fandom.com/hu/wiki/Taun_We', 'http://swapi.co/api/planets/10/', '2014-12-20T17:31:21.195000Z', '2014-12-20T21:17:50.474000Z', 'http://swapi.co/api/people/73/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/32/', '', '', '', '', '', '', ''),
(74, 'Jocasta Nu', 'világos oldal', 'ismeretlen', 'Coruscant', '19BBY', 'Coruscant', 'nő', '167', 'ismeretlen', 'kék', 'fehér', 'világos', 'Coruscant', 'JocastaNu.jpg', 'https://starwars.fandom.com/hu/wiki/Jocasta_Nu', 'https://starwars.fandom.com/wiki/Jocasta_Nu', 'https://starwars.fandom.com/hu/wiki/Jocasta_Nu', 'http://swapi.co/api/planets/9/', '2014-12-20T17:32:51.996000Z', '2014-12-20T21:17:50.476000Z', 'http://swapi.co/api/people/74/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(75, 'R4-P17', 'világos oldal.jpg', 'ismeretlen', 'Coruscant', '19BBY', 'Coruscant rendszer', 'nő', '96', 'ismeretlen', 'piros, kék', 'nincs', 'ezüst, piros', 'Coruscant', 'R4P17.jpg', 'https://starwars.fandom.com/hu/wiki/R4-P17', 'https://starwars.fandom.com/wiki/R4-P17', 'https://starwars.fandom.com/hu/wiki/R4-P17', 'http://swapi.co/api/planets/28/', '2014-12-20T17:43:36.409000Z', '2014-12-20T21:17:50.478000Z', 'http://swapi.co/api/people/75/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/6/', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, 'Wat Tambor', 'világos oldal', '97BBY', 'Skako, Skako Minor', '19BBY', 'Mustafar', 'férfi', '193', '48', 'ismeretlen', 'nincs', 'zöld, szürke', 'Skako, Skako Minor', 'WatTambor.jpg', 'https://starwars.fandom.com/hu/wiki/Wat_Tambor', 'https://starwars.fandom.com/wiki/Wat_Tambor', 'https://starwars.fandom.com/hu/wiki/Wat_Tambor', 'http://swapi.co/api/planets/56/', '2014-12-20T17:53:52.607000Z', '2014-12-20T21:17:50.481000Z', 'http://swapi.co/api/people/76/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/33/', '', '', '', '', '', '', ''),
(77, 'San Hill', 'világos oldal', 'ismeretlen', 'Scipio', '19BBY', 'Mustafar', 'férfi', '191', 'ismeretlen', 'arany', 'nincs', 'szürke', 'Scipio', 'SanHill.jpg', 'https://starwars.fandom.com/hu/wiki/San_Hill', 'https://starwars.fandom.com/wiki/San_Hill', 'https://starwars.fandom.com/hu/wiki/San_Hill', 'http://swapi.co/api/planets/57/', '2014-12-20T17:58:17.049000Z', '2014-12-20T21:17:50.484000Z', 'http://swapi.co/api/people/77/', 'http://swapi.co/api/films/5/', '', '', '', '', '', '', 'http://swapi.co/api/species/34/', '', '', '', '', '', '', ''),
(78, 'Shaak Ti', 'világos oldal', 'ismeretlen', 'Shili', '19BBY', 'Coruscant', 'nő', '178', '57', 'fekete', 'nincs', 'piros, kék, fehér', 'Shili', 'ShaakTi.jpg', 'https://hu.wikipedia.org/wiki/Shaak_Ti', 'https://starwars.fandom.com/wiki/Shaak_Ti', 'https://starwars.fandom.com/hu/wiki/Shaak_Ti', 'http://swapi.co/api/planets/58/', '2014-12-20T18:44:01.103000Z', '2014-12-20T21:17:50.486000Z', 'http://swapi.co/api/people/78/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/35/', '', '', '', '', '', '', ''),
(79, 'Grievous tábornok', 'sötét oldal', 'ismeretlen', 'Kalee', '19BBY', 'Utapau', 'férfi', '216', '159', 'zöld, sárga', 'nincs', 'barna, fehér', 'Kalee', 'Grievous.jpg', 'https://hu.wikipedia.org/wiki/Grievous_t%C3%A1bornok', 'https://starwars.fandom.com/wiki/Grievous', 'https://starwars.fandom.com/hu/wiki/Grievous', 'http://swapi.co/api/planets/59/', '2014-12-20T19:43:53.348000Z', '2014-12-20T21:17:50.488000Z', 'http://swapi.co/api/people/79/', 'http://swapi.co/api/films/6/', '', '', '', '', '', '', 'http://swapi.co/api/species/36/', 'http://swapi.co/api/vehicles/60/', '', 'http://swapi.co/api/starships/74/', '', '', '', ''),
(80, 'Tarfful', 'világos oldal', 'ismeretlen', 'Kashyyyk', 'nem halt meg', NULL, 'férfi', '234', '136', 'kék', 'barna', 'barna', 'Kashyyyk', 'Tarfful.jpg', 'https://starwars.fandom.com/hu/wiki/Tarfful', 'https://starwars.fandom.com/wiki/Tarfful', 'https://starwars.fandom.com/hu/wiki/Tarfful', 'http://swapi.co/api/planets/14/', '2014-12-20T19:46:34.209000Z', '2014-12-20T21:17:50.491000Z', 'http://swapi.co/api/people/80/', 'http://swapi.co/api/films/6/', '', '', '', '', '', '', 'http://swapi.co/api/species/3/', '', '', '', '', '', '', ''),
(81, 'Raymus Antilles', 'világos oldal', 'ismeretlen', 'Alderaan', '0BBY', 'Tantive IV, Tatoo rendszer', 'férfi', '188', '79', 'barna', 'barna', 'világos', 'Alderaan', 'RaymusAntilles.jpg', 'https://starwars.fandom.com/hu/wiki/Raymus_Antilles', 'https://starwars.fandom.com/wiki/Raymus_Antilles', 'https://starwars.fandom.com/hu/wiki/Raymus_Antilles', 'http://swapi.co/api/planets/2/', '2014-12-20T19:49:35.583000Z', '2014-12-20T21:17:50.493000Z', 'http://swapi.co/api/people/81/', 'http://swapi.co/api/films/1/', 'http://swapi.co/api/films/6/', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(82, 'Sly Moore', 'sötét oldal', 'ismeretlen', 'Umbara', 'nem halt meg', NULL, 'nő', '178', '48', 'fehér', 'nincs', 'sápadt', 'Umbara', 'SlyMoore.jpg', 'https://starwars.fandom.com/hu/wiki/Sly_Moore', 'https://starwars.fandom.com/wiki/Sly_Moore', 'https://starwars.fandom.com/hu/wiki/Sly_Moore', 'http://swapi.co/api/planets/60/', '2014-12-20T20:18:37.619000Z', '2014-12-20T21:17:50.496000Z', 'http://swapi.co/api/people/82/', 'http://swapi.co/api/films/5/', 'http://swapi.co/api/films/6/', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 'Tion Medon', 'világos oldal', 'ismeretlen', 'Utapau', 'nem halt meg', NULL, 'férfi', '206', '80', 'fekete', 'nincs', 'szürke', 'Utapau', 'TionMedon.jpg', 'https://starwars.fandom.com/hu/wiki/Tion_Medon', 'https://starwars.fandom.com/wiki/Tion_Medon', 'https://starwars.fandom.com/hu/wiki/Tion_Medon', 'http://swapi.co/api/planets/12/', '2014-12-20T20:35:04.260000Z', '2014-12-20T21:17:50.498000Z', 'http://swapi.co/api/people/83/', 'http://swapi.co/api/films/6/', '', '', '', '', '', '', 'http://swapi.co/api/species/37/', '', '', '', '', '', '', ''),
(84, 'Finn - FN 2187', 'világos oldal', '11ABY', 'Artorias', 'nem halt meg', NULL, 'férfi', '178', '73', 'sötét', 'fekete', 'sötét', 'Artorias', 'Finn.jpg', 'https://bit.ly/FinnSW', 'https://starwars.fandom.com/wiki/Finn', 'https://starwars.fandom.com/hu/wiki/Finn', 'http://swapi.co/api/planets/28/', '2015-04-17T06:52:40.793621Z', '2015-04-17T06:52:40.793674Z', 'http://swapi.co/api/people/84/', 'http://swapi.co/api/films/7/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(85, 'Rey', 'világos oldal', '15ABY', 'Hyperkarn', '*35ABY', 'Exegol (*később feltámadt)', 'nő', '170', '54', 'mogyoró', 'barna', 'világos', 'Jakku', 'Rey.jpg', 'https://hu.wikipedia.org/wiki/Rey', 'https://starwars.fandom.com/wiki/Rey_Skywalker', 'https://starwars.fandom.com/hu/wiki/Rey', 'http://swapi.co/api/planets/28/', '2015-04-17T06:54:01.495077Z', '2015-04-17T06:54:01.495128Z', 'http://swapi.co/api/people/85/', 'http://swapi.co/api/films/7/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', '', '', '', '', ''),
(86, 'Poe Dameron', 'világos oldal', '2ABY', 'Yavin 4', 'nem halt meg', NULL, 'férfi', '172', '80', 'barna', 'barna', 'világos', 'Yavin 4', 'PoeDameron.jpg', 'https://hu.wikipedia.org/wiki/Poe_Dameron', 'https://starwars.fandom.com/wiki/Poe_Dameron', 'https://starwars.fandom.com/hu/wiki/Poe_Dameron', 'http://swapi.co/api/planets/28/', '2015-04-17T06:55:21.622786Z', '2015-04-17T06:55:21.622835Z', 'http://swapi.co/api/people/86/', 'http://swapi.co/api/films/7/', '', '', '', '', '', '', 'http://swapi.co/api/species/1/', '', '', 'http://swapi.co/api/starships/77/', '', '', '', '');
INSERT INTO `starwars` (`id`, `name`, `side`, `birth_year`, `birth_planet`, `death_year`, `death_planet`, `gender`, `height`, `mass`, `eye_color`, `hair_color`, `skin_color`, `homeworld`, `image`, `WikipediaLink`, `WookiepediaLink`, `KaminopediaLink`, `homeworld_url`, `created`, `edited`, `url`, `films/0`, `films/1`, `films/2`, `films/3`, `films/4`, `films/5`, `films/6`, `species/0`, `vehicles/0`, `vehicles/1`, `starships/0`, `starships/1`, `starships/2`, `starships/3`, `starships/4`) VALUES
(87, 'BB8', 'világos oldal', '29ABY', 'Hosnian Prime', 'nem halt meg', NULL, 'nincs', '67', '18', 'fekete', 'nincs', 'nincs', 'Hosnian Prime', 'BB8.jpg', 'https://hu.wikipedia.org/wiki/BB-8', 'https://starwars.fandom.com/wiki/BB-8', 'https://starwars.fandom.com/hu/wiki/BB-8', 'http://swapi.co/api/planets/28/', '2015-04-17T06:57:38.061346Z', '2015-04-17T06:57:38.061453Z', 'http://swapi.co/api/people/87/', 'http://swapi.co/api/films/7/', '', '', '', '', '', '', 'http://swapi.co/api/species/2/', '', '', '', '', '', '', ''),
(89, 'Teszt adat', 'Windows 98', 'Windows 98', 'Windows 98', 'Windows 98', 'Windows 98', 'Windows 98', 'Windows 98', 'Windows 98', 'Windows 98', 'Windows 98', 'Windows 98', 'Windows 98', 'Teszt.jpg', 'http://bit.ly/CUNexus2015', 'http://bit.ly/CUNexus2015', 'http://bit.ly/CUNexus2015', NULL, '2023-12-24T15:30:25.001985Z', '2023-12-31T12:30:25.001985Z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `star_wars_filmek`
--
-- Létrehozva: 2023. Már 20. 14:50
--

DROP TABLE IF EXISTS `star_wars_filmek`;
CREATE TABLE `star_wars_filmek` (
  `id` int(11) NOT NULL,
  `film_cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szereplok` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szineszek` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `megjelenes` date NOT NULL,
  `hossz` int(11) NOT NULL,
  `koltseg` int(11) NOT NULL,
  `bevetel` int(11) NOT NULL,
  `trilogia` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `video` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Star Wars';

--
-- TÁBLA KAPCSOLATAI `star_wars_filmek`:
--

--
-- A tábla adatainak kiíratása `star_wars_filmek`
--

INSERT INTO `star_wars_filmek` (`id`, `film_cim`, `szereplok`, `szineszek`, `megjelenes`, `hossz`, `koltseg`, `bevetel`, `trilogia`, `kep`, `video`) VALUES
(1, 'Bajlós Árnyak', 'Anakin Skywalker, Qui-Gon Jinn, Obi-Wan Kenobi, Padmé Amidala, Yoda, Mace Windu, Palpatine', 'Jake Lloyd, Liam Neeson, Ewan McGregor, Natalie Portman, Frank Oz, Samuel Jackson, Ian McDiarmid', '1999-05-19', 133, 155, 1028, 'Előzmény', 'bajlos_arnyak.jpg', 'https://www.youtube.com/embed/hN4XYgCSiTU'),
(2, 'Klónok támadása', 'Anakin Skywalker, Jango Fett, Obi-Wan Kenobi, Padmé Amidala, Yoda, Mace Windu, Palpatine', 'Jake Lloyd, Temuera Morrison, Ewan McGregor, Natalie Portman,Frank Oz, Samuel Jackson, Ian McDiarmid', '2002-05-16', 137, 115, 310, 'Előzmény', 'klonok_tamadasa.jpg', 'https://www.youtube.com/embed/x8lnG6r8lS4'),
(3, 'Sithek Bosszúja', 'Anakin Skywalker, Dooku gróf, Obi-Wan Kenobi, Padmé Amidala, Yoda, Csubakka, Palpatine/Darth Sidious', 'Jake Lloyd, Christopher Lee, Ewan McGregor, Natalie Portman, Frank Oz, Peter Mayhew, Ian McDiarmid', '2005-05-19', 143, 113, 849, 'Előzmény', 'sithek_bosszuja.jpg', 'https://www.youtube.com/embed/DrWL8-NpoBg'),
(4, 'Egy új remény', 'Luke Skywalker, Han Solo, Leia Organa, Obi-Wan Kenobi, Darth Vader, C-3PO, R2-D2, Csubakka, Wilhuff', 'Mark Hamill, Harrison Ford, Carrie Fisher, Alec Guinness, James Earl Jones, Anthony Daniels, Kenny B', '1977-05-25', 121, 110, 775, 'Eredeti', 'egy_uj_remeny.jpg', 'https://www.youtube.com/embed/gUSphW9zvyk'),
(5, 'Birodalom Visszavág', 'Luke Skywalker, Han Solo, Leia Organa, Lando Calrissian, Darth Vader,C-3PO,R2-D2,Csubakka, Boba Fett', 'Mark Hamill, Harrison Ford, Carrie Fisher, Billy Dee Williams, James Earl Jones, Anthony Daniels', '1980-05-21', 124, 180, 538, 'Eredeti', 'birodalom_visszavag.jpg', 'https://www.youtube.com/embed/ZXVluNsqQQo'),
(6, 'Jedi Visszatér', 'Luke Skywalker, Han Solo, Leia Organa, Darth Vader, Lando Calrissian, C-3PO, R2-D2, Csubakka, Yods', 'Mark Hamill, Harrison Ford, Carrie Fisher, James Earl Jones, Billy Dee Williams, Anthony Daniels', '1983-05-25', 134, 325, 475, 'Eredeti', 'jedi_visszater.jpg', 'https://www.youtube.com/embed/Bj7ZuOPHr9E'),
(7, 'Ébredő Erő', 'Rey, Kylo Ren, Finn, Poe Dameron, BB-8, Snoke vezér, Hux tábornok, Han Solo, Leia Organa, C-3PO', 'Daisy Ridley, Adam Driver, John Boyega, Oscar Isaac, Andy Serkis, Domhnall Gleeson, Harrison Ford', '2015-12-18', 135, 776, 2066, 'Befejező', 'ebredo_ero.jpg', 'https://www.youtube.com/embed/LYVaKy1gXlU'),
(8, 'Utolsó Jedi', 'Rey, Kylo Ren, Finn, Poe Dameron, BB-8, Snoke vezér, Hux tábornok, Han Solo, Leia Organa, C-3PO', 'Daisy Ridley, Adam Driver, John Boyega, Oscar Isaac, Andy Serkis, Domhnall Gleeson, Harrison Ford', '2017-12-15', 152, 578, 1332, 'Befejező', 'utolso_jedi.jpg', 'https://www.youtube.com/embed/vPdQEJ4c8pE'),
(9, 'Skywalker kora', 'Rey, Kylo Ren, Finn, Poe Dameron, BB-8, Snoke vezér, Hux tábornok, Han Solo, Leia Organa, C-3PO, Csu', 'Daisy Ridley, Adam Driver, John Boyega, Oscar Isaac,Domhnall Gleeson, Harrison Ford, Carrie Fisher, ', '2019-12-20', 142, 627, 1074, 'Befejező', 'skywalker_kora.jpg', 'https://www.youtube.com/embed/na3xUxC04xQ');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `star_wars_galeria`
--
-- Létrehozva: 2023. Már 20. 14:50
--

DROP TABLE IF EXISTS `star_wars_galeria`;
CREATE TABLE `star_wars_galeria` (
  `galeria_id` int(11) NOT NULL,
  `galeria_filmid` int(11) NOT NULL,
  `galeria_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Star Wars';

--
-- TÁBLA KAPCSOLATAI `star_wars_galeria`:
--   `galeria_filmid`
--       `star_wars_filmek` -> `id`
--

--
-- A tábla adatainak kiíratása `star_wars_galeria`
--

INSERT INTO `star_wars_galeria` (`galeria_id`, `galeria_filmid`, `galeria_kep`) VALUES
(1, 4, 'g1.jpg'),
(2, 4, 'g2.jpg'),
(3, 4, 'g3.jpg'),
(4, 5, 'g4.jpg'),
(5, 5, 'g5.jpg'),
(6, 5, 'g6.jpg'),
(7, 6, 'g7.jpg'),
(8, 6, 'g8.jpg'),
(9, 6, 'g9.jpg'),
(10, 1, 'g10.jpg'),
(11, 1, 'g11.jpg'),
(12, 1, 'g12.jpg'),
(13, 2, 'g13.jpg'),
(14, 2, 'g14.jpg'),
(15, 2, 'g15.jpg'),
(16, 3, 'g16.jpg'),
(17, 3, 'g17.jpg'),
(18, 3, 'g18.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `star_wars_jelenetek`
--
-- Létrehozva: 2023. Már 20. 14:50
--

DROP TABLE IF EXISTS `star_wars_jelenetek`;
CREATE TABLE `star_wars_jelenetek` (
  `videok_id` int(11) NOT NULL,
  `videok_filmid` int(11) NOT NULL,
  `videok_link` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Star Wars';

--
-- TÁBLA KAPCSOLATAI `star_wars_jelenetek`:
--   `videok_filmid`
--       `star_wars_filmek` -> `id`
--

--
-- A tábla adatainak kiíratása `star_wars_jelenetek`
--

INSERT INTO `star_wars_jelenetek` (`videok_id`, `videok_filmid`, `videok_link`) VALUES
(1, 6, 'https://www.youtube.com/embed/cjKDEMt2DXc'),
(2, 3, 'https://www.youtube.com/embed/yEDD13sFDlI'),
(3, 3, 'https://www.youtube.com/embed/ZHcW9VY6sG0'),
(4, 3, 'https://www.youtube.com/embed/onRnL6MBunU'),
(5, 3, 'https://www.youtube.com/embed/c2LuRgzvgtI'),
(6, 3, 'https://www.youtube.com/embed/f6j7DOe8BQs'),
(7, 3, 'https://www.youtube.com/embed/RD1sgqxcIZM'),
(8, 6, 'https://www.youtube.com/embed/orYEmorUzEk'),
(9, 6, 'https://www.youtube.com/embed/g-8kNSkF6cM'),
(10, 3, 'https://www.youtube.com/embed/QiK2PDbSH5Y'),
(11, 3, 'https://www.youtube.com/embed/T1AyPWsHpwI'),
(12, 2, 'https://www.youtube.com/embed/WfB4pheu-SE'),
(13, 5, 'https://www.youtube.com/embed/D61By5mvjEE'),
(14, 4, 'https://www.youtube.com/embed/0x8XCLi2EsE'),
(15, 3, 'https://www.youtube.com/embed/nfDdP2PKDsw'),
(16, 3, 'https://www.youtube.com/embed/6fwI29tmlZ0'),
(17, 3, 'https://www.youtube.com/embed/c2LuRgzvgtI'),
(18, 3, 'https://www.youtube.com/embed\r\n/XVOYOfR-B60'),
(19, 3, 'https://www.youtube.com/embed/RD1sgqxcIZM'),
(20, 3, 'https://www.youtube.com/embed/WgAus6dno2Q'),
(21, 3, 'https://www.youtube.com/embed/0KuF1JzhWR4                                                                                                                                                                                                                      '),
(22, 3, 'https://www.youtube.com/embed/jucziZ0JFWI'),
(23, 3, 'https://www.youtube.com/embed\r\n/Iq6-X-L92eI'),
(24, 6, 'https://www.youtube.com/embed/yEJhmKGY754');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `star_wars_komment`
--
-- Létrehozva: 2023. Már 20. 14:50
--

DROP TABLE IF EXISTS `star_wars_komment`;
CREATE TABLE `star_wars_komment` (
  `komment_id` int(11) NOT NULL,
  `komment_film_id` int(11) NOT NULL,
  `komment_nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `komment_szoveg` text COLLATE utf8_hungarian_ci NOT NULL,
  `komment_datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Star Wars';

--
-- TÁBLA KAPCSOLATAI `star_wars_komment`:
--   `komment_film_id`
--       `star_wars_filmek` -> `id`
--

--
-- A tábla adatainak kiíratása `star_wars_komment`
--

INSERT INTO `star_wars_komment` (`komment_id`, `komment_film_id`, `komment_nev`, `komment_szoveg`, `komment_datum`) VALUES
(1, 1, 'Dávid', 'Kedvenc filmem!', '2023-01-26'),
(2, 9, 'Tamás', 'Hiányzik belőle az inspiráció...', '2023-01-25'),
(3, 8, 'János', 'Nem találtam klippet erről a részből...', '2023-01-27');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sw_velemenyek`
--
-- Létrehozva: 2023. Feb 02. 08:57
-- Utolsó frissítés: 2023. Feb 09. 08:29
--

DROP TABLE IF EXISTS `sw_velemenyek`;
CREATE TABLE `sw_velemenyek` (
  `id` int(11) NOT NULL COMMENT 'Vélemény azonosítója',
  `Character_id` int(11) NOT NULL COMMENT 'Szereplő azonosítója'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Star Wars';

--
-- TÁBLA KAPCSOLATAI `sw_velemenyek`:
--   `Character_id`
--       `starwars` -> `id`
--

--
-- A tábla adatainak kiíratása `sw_velemenyek`
--

INSERT INTO `sw_velemenyek` (`id`, `Character_id`) VALUES
(3, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(14, 1),
(15, 1),
(19, 1),
(24, 1),
(25, 1),
(10, 2),
(26, 2),
(11, 3),
(20, 3),
(1, 4),
(12, 4),
(21, 4),
(13, 5),
(4, 8),
(2, 11),
(17, 13),
(18, 13),
(16, 19),
(5, 25),
(22, 56),
(23, 56);

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `szereplők teszt`
-- (Lásd alább az aktuális nézetet)
--
DROP VIEW IF EXISTS `szereplők teszt`;
CREATE TABLE `szereplők teszt` (
`id` int(5)
,`name` varchar(21)
);

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `szereplők velemeny`
-- (Lásd alább az aktuális nézetet)
--
DROP VIEW IF EXISTS `szereplők velemeny`;
CREATE TABLE `szereplők velemeny` (
`SzereploNev` varchar(21)
,`VelemenyekSzama` bigint(21)
);

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `sötét oldal`
-- (Lásd alább az aktuális nézetet)
--
DROP VIEW IF EXISTS `sötét oldal`;
CREATE TABLE `sötét oldal` (
`id` int(5)
,`name` varchar(21)
,`side` varchar(25)
,`birth_year` varchar(15)
,`birth_planet` varchar(50)
,`death_year` varchar(15)
,`death_planet` varchar(50)
,`gender` varchar(13)
,`height` varchar(15)
,`mass` varchar(15)
,`eye_color` varchar(13)
,`hair_color` varchar(13)
,`skin_color` varchar(19)
,`homeworld` varchar(20)
,`image` varchar(70)
,`WikipediaLink` varchar(60)
,`WookiepediaLink` varchar(60)
,`KaminopediaLink` varchar(60)
,`created` varchar(27)
,`edited` varchar(27)
,`velemenyek` bigint(21)
);

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `sötét oldal_old`
-- (Lásd alább az aktuális nézetet)
--
DROP VIEW IF EXISTS `sötét oldal_old`;
CREATE TABLE `sötét oldal_old` (
`id` int(5)
,`name` varchar(21)
,`side` varchar(25)
,`birth_year` varchar(15)
,`birth_planet` varchar(50)
,`death_year` varchar(15)
,`death_planet` varchar(50)
,`gender` varchar(13)
,`height` varchar(15)
,`mass` varchar(15)
,`eye_color` varchar(13)
,`hair_color` varchar(13)
,`skin_color` varchar(19)
,`homeworld` varchar(20)
,`image` varchar(70)
,`WikipediaLink` varchar(60)
,`WookiepediaLink` varchar(60)
,`KaminopediaLink` varchar(60)
,`homeworld_url` varchar(31)
,`created` varchar(27)
,`edited` varchar(27)
,`url` varchar(30)
,`films/0` varchar(28)
,`films/1` varchar(28)
,`films/2` varchar(28)
,`films/3` varchar(28)
,`films/4` varchar(28)
,`films/5` varchar(28)
,`films/6` varchar(28)
,`species/0` varchar(31)
,`vehicles/0` varchar(32)
,`vehicles/1` varchar(32)
,`starships/0` varchar(33)
,`starships/1` varchar(33)
,`starships/2` varchar(33)
,`starships/3` varchar(33)
,`starships/4` varchar(33)
);

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `világos oldal`
-- (Lásd alább az aktuális nézetet)
--
DROP VIEW IF EXISTS `világos oldal`;
CREATE TABLE `világos oldal` (
`id` int(5)
,`name` varchar(21)
,`side` varchar(25)
,`birth_year` varchar(15)
,`birth_planet` varchar(50)
,`death_year` varchar(15)
,`death_planet` varchar(50)
,`gender` varchar(13)
,`height` varchar(15)
,`mass` varchar(15)
,`eye_color` varchar(13)
,`hair_color` varchar(13)
,`skin_color` varchar(19)
,`homeworld` varchar(20)
,`image` varchar(70)
,`WikipediaLink` varchar(60)
,`WookiepediaLink` varchar(60)
,`KaminopediaLink` varchar(60)
,`created` varchar(27)
,`edited` varchar(27)
,`velemenyek` bigint(21)
);

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `világos oldal_old`
-- (Lásd alább az aktuális nézetet)
--
DROP VIEW IF EXISTS `világos oldal_old`;
CREATE TABLE `világos oldal_old` (
`id` int(5)
,`name` varchar(21)
,`side` varchar(25)
,`birth_year` varchar(15)
,`birth_planet` varchar(50)
,`death_year` varchar(15)
,`death_planet` varchar(50)
,`gender` varchar(13)
,`height` varchar(15)
,`mass` varchar(15)
,`eye_color` varchar(13)
,`hair_color` varchar(13)
,`skin_color` varchar(19)
,`homeworld` varchar(20)
,`image` varchar(70)
,`WikipediaLink` varchar(60)
,`WookiepediaLink` varchar(60)
,`KaminopediaLink` varchar(60)
,`homeworld_url` varchar(31)
,`created` varchar(27)
,`edited` varchar(27)
,`url` varchar(30)
,`films/0` varchar(28)
,`films/1` varchar(28)
,`films/2` varchar(28)
,`films/3` varchar(28)
,`films/4` varchar(28)
,`films/5` varchar(28)
,`films/6` varchar(28)
,`species/0` varchar(31)
,`vehicles/0` varchar(32)
,`vehicles/1` varchar(32)
,`starships/0` varchar(33)
,`starships/1` varchar(33)
,`starships/2` varchar(33)
,`starships/3` varchar(33)
,`starships/4` varchar(33)
);

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `összes vélemény`
-- (Lásd alább az aktuális nézetet)
--
DROP VIEW IF EXISTS `összes vélemény`;
CREATE TABLE `összes vélemény` (
`VelemenyekSzama` bigint(21)
);

-- --------------------------------------------------------

--
-- Nézet szerkezete `szereplők teszt`
--
DROP TABLE IF EXISTS `szereplők teszt`;

DROP VIEW IF EXISTS `szereplők teszt`;
CREATE ALGORITHM=UNDEFINED DEFINER=`u66_rm3DDq2u28`@`%` SQL SECURITY DEFINER VIEW `szereplők teszt`  AS SELECT `starwars`.`id` AS `id`, `starwars`.`name` AS `name` FROM `starwars``starwars`  ;

-- --------------------------------------------------------

--
-- Nézet szerkezete `szereplők velemeny`
--
DROP TABLE IF EXISTS `szereplők velemeny`;

DROP VIEW IF EXISTS `szereplők velemeny`;
CREATE ALGORITHM=UNDEFINED DEFINER=`u66_rm3DDq2u28`@`%` SQL SECURITY DEFINER VIEW `szereplők velemeny`  AS SELECT `starwars`.`name` AS `SzereploNev`, count(`sw_velemenyek`.`id`) AS `VelemenyekSzama` FROM (`sw_velemenyek` join `starwars` on(`sw_velemenyek`.`Character_id` = `starwars`.`id`)) GROUP BY `sw_velemenyek`.`Character_id``Character_id`  ;

-- --------------------------------------------------------

--
-- Nézet szerkezete `sötét oldal`
--
DROP TABLE IF EXISTS `sötét oldal`;

DROP VIEW IF EXISTS `sötét oldal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`u66_rm3DDq2u28`@`%` SQL SECURITY DEFINER VIEW `sötét oldal`  AS SELECT `starwars`.`id` AS `id`, `starwars`.`name` AS `name`, `starwars`.`side` AS `side`, `starwars`.`birth_year` AS `birth_year`, `starwars`.`birth_planet` AS `birth_planet`, `starwars`.`death_year` AS `death_year`, `starwars`.`death_planet` AS `death_planet`, `starwars`.`gender` AS `gender`, `starwars`.`height` AS `height`, `starwars`.`mass` AS `mass`, `starwars`.`eye_color` AS `eye_color`, `starwars`.`hair_color` AS `hair_color`, `starwars`.`skin_color` AS `skin_color`, `starwars`.`homeworld` AS `homeworld`, `starwars`.`image` AS `image`, `starwars`.`WikipediaLink` AS `WikipediaLink`, `starwars`.`WookiepediaLink` AS `WookiepediaLink`, `starwars`.`KaminopediaLink` AS `KaminopediaLink`, `starwars`.`created` AS `created`, `starwars`.`edited` AS `edited`, count(`starwars`.`name`) AS `velemenyek` FROM (`starwars` left join `sw_velemenyek` on(`starwars`.`id` = `sw_velemenyek`.`Character_id`)) WHERE `starwars`.`side` = 'sötét oldal' GROUP BY `starwars`.`name` ORDER BY `starwars`.`id` ASC  ;

-- --------------------------------------------------------

--
-- Nézet szerkezete `sötét oldal_old`
--
DROP TABLE IF EXISTS `sötét oldal_old`;

DROP VIEW IF EXISTS `sötét oldal_old`;
CREATE ALGORITHM=UNDEFINED DEFINER=`u66_rm3DDq2u28`@`%` SQL SECURITY DEFINER VIEW `sötét oldal_old`  AS SELECT `starwars`.`id` AS `id`, `starwars`.`name` AS `name`, `starwars`.`side` AS `side`, `starwars`.`birth_year` AS `birth_year`, `starwars`.`birth_planet` AS `birth_planet`, `starwars`.`death_year` AS `death_year`, `starwars`.`death_planet` AS `death_planet`, `starwars`.`gender` AS `gender`, `starwars`.`height` AS `height`, `starwars`.`mass` AS `mass`, `starwars`.`eye_color` AS `eye_color`, `starwars`.`hair_color` AS `hair_color`, `starwars`.`skin_color` AS `skin_color`, `starwars`.`homeworld` AS `homeworld`, `starwars`.`image` AS `image`, `starwars`.`WikipediaLink` AS `WikipediaLink`, `starwars`.`WookiepediaLink` AS `WookiepediaLink`, `starwars`.`KaminopediaLink` AS `KaminopediaLink`, `starwars`.`homeworld_url` AS `homeworld_url`, `starwars`.`created` AS `created`, `starwars`.`edited` AS `edited`, `starwars`.`url` AS `url`, `starwars`.`films/0` AS `films/0`, `starwars`.`films/1` AS `films/1`, `starwars`.`films/2` AS `films/2`, `starwars`.`films/3` AS `films/3`, `starwars`.`films/4` AS `films/4`, `starwars`.`films/5` AS `films/5`, `starwars`.`films/6` AS `films/6`, `starwars`.`species/0` AS `species/0`, `starwars`.`vehicles/0` AS `vehicles/0`, `starwars`.`vehicles/1` AS `vehicles/1`, `starwars`.`starships/0` AS `starships/0`, `starwars`.`starships/1` AS `starships/1`, `starwars`.`starships/2` AS `starships/2`, `starwars`.`starships/3` AS `starships/3`, `starwars`.`starships/4` AS `starships/4` FROM `starwars` WHERE `starwars`.`side` like 'sötét%''sötét%'  ;

-- --------------------------------------------------------

--
-- Nézet szerkezete `világos oldal`
--
DROP TABLE IF EXISTS `világos oldal`;

DROP VIEW IF EXISTS `világos oldal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`u66_rm3DDq2u28`@`%` SQL SECURITY DEFINER VIEW `világos oldal`  AS SELECT `starwars`.`id` AS `id`, `starwars`.`name` AS `name`, `starwars`.`side` AS `side`, `starwars`.`birth_year` AS `birth_year`, `starwars`.`birth_planet` AS `birth_planet`, `starwars`.`death_year` AS `death_year`, `starwars`.`death_planet` AS `death_planet`, `starwars`.`gender` AS `gender`, `starwars`.`height` AS `height`, `starwars`.`mass` AS `mass`, `starwars`.`eye_color` AS `eye_color`, `starwars`.`hair_color` AS `hair_color`, `starwars`.`skin_color` AS `skin_color`, `starwars`.`homeworld` AS `homeworld`, `starwars`.`image` AS `image`, `starwars`.`WikipediaLink` AS `WikipediaLink`, `starwars`.`WookiepediaLink` AS `WookiepediaLink`, `starwars`.`KaminopediaLink` AS `KaminopediaLink`, `starwars`.`created` AS `created`, `starwars`.`edited` AS `edited`, count(`starwars`.`name`) AS `velemenyek` FROM (`starwars` left join `sw_velemenyek` on(`starwars`.`id` = `sw_velemenyek`.`Character_id`)) WHERE `starwars`.`side` = 'világos oldal' GROUP BY `starwars`.`name` ORDER BY `starwars`.`id` ASC  ;

-- --------------------------------------------------------

--
-- Nézet szerkezete `világos oldal_old`
--
DROP TABLE IF EXISTS `világos oldal_old`;

DROP VIEW IF EXISTS `világos oldal_old`;
CREATE ALGORITHM=UNDEFINED DEFINER=`u66_rm3DDq2u28`@`%` SQL SECURITY DEFINER VIEW `világos oldal_old`  AS SELECT `starwars`.`id` AS `id`, `starwars`.`name` AS `name`, `starwars`.`side` AS `side`, `starwars`.`birth_year` AS `birth_year`, `starwars`.`birth_planet` AS `birth_planet`, `starwars`.`death_year` AS `death_year`, `starwars`.`death_planet` AS `death_planet`, `starwars`.`gender` AS `gender`, `starwars`.`height` AS `height`, `starwars`.`mass` AS `mass`, `starwars`.`eye_color` AS `eye_color`, `starwars`.`hair_color` AS `hair_color`, `starwars`.`skin_color` AS `skin_color`, `starwars`.`homeworld` AS `homeworld`, `starwars`.`image` AS `image`, `starwars`.`WikipediaLink` AS `WikipediaLink`, `starwars`.`WookiepediaLink` AS `WookiepediaLink`, `starwars`.`KaminopediaLink` AS `KaminopediaLink`, `starwars`.`homeworld_url` AS `homeworld_url`, `starwars`.`created` AS `created`, `starwars`.`edited` AS `edited`, `starwars`.`url` AS `url`, `starwars`.`films/0` AS `films/0`, `starwars`.`films/1` AS `films/1`, `starwars`.`films/2` AS `films/2`, `starwars`.`films/3` AS `films/3`, `starwars`.`films/4` AS `films/4`, `starwars`.`films/5` AS `films/5`, `starwars`.`films/6` AS `films/6`, `starwars`.`species/0` AS `species/0`, `starwars`.`vehicles/0` AS `vehicles/0`, `starwars`.`vehicles/1` AS `vehicles/1`, `starwars`.`starships/0` AS `starships/0`, `starwars`.`starships/1` AS `starships/1`, `starwars`.`starships/2` AS `starships/2`, `starwars`.`starships/3` AS `starships/3`, `starwars`.`starships/4` AS `starships/4` FROM `starwars` WHERE `starwars`.`side` like 'világos%''világos%'  ;

-- --------------------------------------------------------

--
-- Nézet szerkezete `összes vélemény`
--
DROP TABLE IF EXISTS `összes vélemény`;

DROP VIEW IF EXISTS `összes vélemény`;
CREATE ALGORITHM=UNDEFINED DEFINER=`u66_rm3DDq2u28`@`%` SQL SECURITY DEFINER VIEW `összes vélemény`  AS SELECT count(`sw_velemenyek`.`id`) AS `VelemenyekSzama` FROM `sw_velemenyek``sw_velemenyek`  ;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `starwars`
--
ALTER TABLE `starwars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- A tábla indexei `star_wars_filmek`
--
ALTER TABLE `star_wars_filmek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `star_wars_galeria`
--
ALTER TABLE `star_wars_galeria`
  ADD PRIMARY KEY (`galeria_id`),
  ADD KEY `galeria_filmid` (`galeria_filmid`);

--
-- A tábla indexei `star_wars_jelenetek`
--
ALTER TABLE `star_wars_jelenetek`
  ADD PRIMARY KEY (`videok_id`),
  ADD KEY `videok_filmid` (`videok_filmid`);

--
-- A tábla indexei `star_wars_komment`
--
ALTER TABLE `star_wars_komment`
  ADD PRIMARY KEY (`komment_id`),
  ADD KEY `komment_film_id` (`komment_film_id`);

--
-- A tábla indexei `sw_velemenyek`
--
ALTER TABLE `sw_velemenyek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Character_id` (`Character_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `starwars`
--
ALTER TABLE `starwars`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'A szereplő azonosítója', AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT a táblához `star_wars_filmek`
--
ALTER TABLE `star_wars_filmek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `star_wars_galeria`
--
ALTER TABLE `star_wars_galeria`
  MODIFY `galeria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `star_wars_jelenetek`
--
ALTER TABLE `star_wars_jelenetek`
  MODIFY `videok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT a táblához `star_wars_komment`
--
ALTER TABLE `star_wars_komment`
  MODIFY `komment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `sw_velemenyek`
--
ALTER TABLE `sw_velemenyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vélemény azonosítója', AUTO_INCREMENT=27;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `star_wars_galeria`
--
ALTER TABLE `star_wars_galeria`
  ADD CONSTRAINT `star_wars_galeria_ibfk_1` FOREIGN KEY (`galeria_filmid`) REFERENCES `star_wars_filmek` (`id`);

--
-- Megkötések a táblához `star_wars_jelenetek`
--
ALTER TABLE `star_wars_jelenetek`
  ADD CONSTRAINT `star_wars_jelenetek_ibfk_1` FOREIGN KEY (`videok_filmid`) REFERENCES `star_wars_filmek` (`id`);

--
-- Megkötések a táblához `star_wars_komment`
--
ALTER TABLE `star_wars_komment`
  ADD CONSTRAINT `star_wars_komment_ibfk_1` FOREIGN KEY (`komment_film_id`) REFERENCES `star_wars_filmek` (`id`);

--
-- Megkötések a táblához `sw_velemenyek`
--
ALTER TABLE `sw_velemenyek`
  ADD CONSTRAINT `sw_velemenyek_ibfk_1` FOREIGN KEY (`Character_id`) REFERENCES `starwars` (`id`);


--
-- Metaadat
--
USE `s66_db`;

--
-- A(z) starwars tábla metaadatai
--

--
-- A tábla adatainak kiíratása `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('u66_rm3DDq2u28', 's66_db', 'starwars', '{\"sorted_col\":\"`starwars`.`id` DESC\"}', '2023-02-16 09:34:10');

--
-- A tábla adatainak kiíratása `pma__tracking`
--

INSERT INTO `pma__tracking` (`db_name`, `table_name`, `version`, `date_created`, `date_updated`, `schema_snapshot`, `schema_sql`, `data_sql`, `tracking`, `tracking_active`) VALUES
('s66_db', 'starwars', 1, '2022-12-12 11:23:54', '2022-12-12 11:23:54', 'a:2:{s:7:\"COLUMNS\";a:29:{i:0;a:8:{s:5:\"Field\";s:2:\"id\";s:4:\"Type\";s:6:\"int(5)\";s:9:\"Collation\";N;s:4:\"Null\";s:2:\"NO\";s:3:\"Key\";s:3:\"PRI\";s:7:\"Default\";N;s:5:\"Extra\";s:14:\"auto_increment\";s:7:\"Comment\";s:25:\"A szereplő azonosítója\";}i:1;a:8:{s:5:\"Field\";s:4:\"name\";s:4:\"Type\";s:11:\"varchar(21)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:16:\"A szereplő neve\";}i:2;a:8:{s:5:\"Field\";s:10:\"birth_year\";s:4:\"Type\";s:11:\"varchar(15)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:10:\"ismeretlen\";s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:37:\"Születési év Yawini csata alapján\";}i:3;a:8:{s:5:\"Field\";s:6:\"gender\";s:4:\"Type\";s:11:\"varchar(13)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:16:\"A szereplő neme\";}i:4;a:8:{s:5:\"Field\";s:6:\"height\";s:4:\"Type\";s:11:\"varchar(15)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:10:\"ismeretlen\";s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:22:\"A szereplő magassága\";}i:5;a:8:{s:5:\"Field\";s:4:\"mass\";s:4:\"Type\";s:11:\"varchar(15)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:10:\"ismeretlen\";s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:19:\"A szereplő tömege\";}i:6;a:8:{s:5:\"Field\";s:9:\"eye_color\";s:4:\"Type\";s:11:\"varchar(13)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:28:\"A szereplő szemének színe\";}i:7;a:8:{s:5:\"Field\";s:10:\"hair_color\";s:4:\"Type\";s:11:\"varchar(13)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:21:\"A szereplő hajszíne\";}i:8;a:8:{s:5:\"Field\";s:10:\"skin_color\";s:4:\"Type\";s:11:\"varchar(19)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:22:\"A szereplő bőrszíne\";}i:9;a:8:{s:5:\"Field\";s:9:\"homeworld\";s:4:\"Type\";s:11:\"varchar(20)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:20:\"A szereplő lakhelye\";}i:10;a:8:{s:5:\"Field\";s:13:\"homeworld_url\";s:4:\"Type\";s:11:\"varchar(31)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:27:\"A szereplő lakhelye (link)\";}i:11;a:8:{s:5:\"Field\";s:7:\"created\";s:4:\"Type\";s:11:\"varchar(27)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:27:\"2022-12-01T15:30:25.001985Z\";s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:22:\"Készítés időpontja\";}i:12;a:8:{s:5:\"Field\";s:6:\"edited\";s:4:\"Type\";s:11:\"varchar(27)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";s:27:\"2022-12-08T12:30:25.001985Z\";s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:23:\"Módosítás időpontja\";}i:13;a:8:{s:5:\"Field\";s:3:\"url\";s:4:\"Type\";s:11:\"varchar(30)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:24:\"A szereplő képe (link)\";}i:14;a:8:{s:5:\"Field\";s:7:\"films/0\";s:4:\"Type\";s:11:\"varchar(28)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:16:\"Filmek #1 (Link)\";}i:15;a:8:{s:5:\"Field\";s:7:\"films/1\";s:4:\"Type\";s:11:\"varchar(28)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:16:\"Filmek #2 (Link)\";}i:16;a:8:{s:5:\"Field\";s:7:\"films/2\";s:4:\"Type\";s:11:\"varchar(28)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:16:\"Filmek #3 (Link)\";}i:17;a:8:{s:5:\"Field\";s:7:\"films/3\";s:4:\"Type\";s:11:\"varchar(28)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:16:\"Filmek #4 (Link)\";}i:18;a:8:{s:5:\"Field\";s:7:\"films/4\";s:4:\"Type\";s:11:\"varchar(28)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:16:\"Filmek #5 (Link)\";}i:19;a:8:{s:5:\"Field\";s:7:\"films/5\";s:4:\"Type\";s:11:\"varchar(28)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:16:\"Filmek #6 (Link)\";}i:20;a:8:{s:5:\"Field\";s:7:\"films/6\";s:4:\"Type\";s:11:\"varchar(28)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:16:\"Filmek #7 (Link)\";}i:21;a:8:{s:5:\"Field\";s:9:\"species/0\";s:4:\"Type\";s:11:\"varchar(31)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:19:\"Képességek (Link)\";}i:22;a:8:{s:5:\"Field\";s:10:\"vehicles/0\";s:4:\"Type\";s:11:\"varchar(32)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:20:\"Járművek #1 (Link)\";}i:23;a:8:{s:5:\"Field\";s:10:\"vehicles/1\";s:4:\"Type\";s:11:\"varchar(32)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:20:\"Járművek #2 (Link)\";}i:24;a:8:{s:5:\"Field\";s:11:\"starships/0\";s:4:\"Type\";s:11:\"varchar(33)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:19:\"Űrhajók #1 (Link)\";}i:25;a:8:{s:5:\"Field\";s:11:\"starships/1\";s:4:\"Type\";s:11:\"varchar(33)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:19:\"Űrhajók #2 (Link)\";}i:26;a:8:{s:5:\"Field\";s:11:\"starships/2\";s:4:\"Type\";s:11:\"varchar(33)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:19:\"Űrhajók #3 (Link)\";}i:27;a:8:{s:5:\"Field\";s:11:\"starships/3\";s:4:\"Type\";s:11:\"varchar(33)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:19:\"Űrhajók #4 (Link)\";}i:28;a:8:{s:5:\"Field\";s:11:\"starships/4\";s:4:\"Type\";s:11:\"varchar(33)\";s:9:\"Collation\";s:15:\"utf8_general_ci\";s:4:\"Null\";s:3:\"YES\";s:3:\"Key\";s:0:\"\";s:7:\"Default\";N;s:5:\"Extra\";s:0:\"\";s:7:\"Comment\";s:19:\"Űrhajók #5 (Link)\";}}s:7:\"INDEXES\";a:1:{i:0;a:13:{s:5:\"Table\";s:8:\"starwars\";s:10:\"Non_unique\";s:1:\"0\";s:8:\"Key_name\";s:7:\"PRIMARY\";s:12:\"Seq_in_index\";s:1:\"1\";s:11:\"Column_name\";s:2:\"id\";s:9:\"Collation\";s:1:\"A\";s:11:\"Cardinality\";s:2:\"83\";s:8:\"Sub_part\";N;s:6:\"Packed\";N;s:4:\"Null\";s:0:\"\";s:10:\"Index_type\";s:5:\"BTREE\";s:7:\"Comment\";s:0:\"\";s:13:\"Index_comment\";s:0:\"\";}}}', '# log 2022-12-12 11:23:54 u66_rm3DDq2u28\nDROP TABLE IF EXISTS `starwars`;\n# log 2022-12-12 11:23:54 u66_rm3DDq2u28\n\nCREATE TABLE `starwars` (\n  `id` int(5) NOT NULL COMMENT \'A szereplő azonosítója\',\n  `name` varchar(21) DEFAULT NULL COMMENT \'A szereplő neve\',\n  `birth_year` varchar(15) DEFAULT \'ismeretlen\' COMMENT \'Születési év Yawini csata alapján\',\n  `gender` varchar(13) DEFAULT NULL COMMENT \'A szereplő neme\',\n  `height` varchar(15) DEFAULT \'ismeretlen\' COMMENT \'A szereplő magassága\',\n  `mass` varchar(15) DEFAULT \'ismeretlen\' COMMENT \'A szereplő tömege\',\n  `eye_color` varchar(13) DEFAULT NULL COMMENT \'A szereplő szemének színe\',\n  `hair_color` varchar(13) DEFAULT NULL COMMENT \'A szereplő hajszíne\',\n  `skin_color` varchar(19) DEFAULT NULL COMMENT \'A szereplő bőrszíne\',\n  `homeworld` varchar(20) DEFAULT NULL COMMENT \'A szereplő lakhelye\',\n  `homeworld_url` varchar(31) DEFAULT NULL COMMENT \'A szereplő lakhelye (link)\',\n  `created` varchar(27) DEFAULT \'2022-12-01T15:30:25.001985Z\' COMMENT \'Készítés időpontja\',\n  `edited` varchar(27) DEFAULT \'2022-12-08T12:30:25.001985Z\' COMMENT \'Módosítás időpontja\',\n  `url` varchar(30) DEFAULT NULL COMMENT \'A szereplő képe (link)\',\n  `films/0` varchar(28) DEFAULT NULL COMMENT \'Filmek #1 (Link)\',\n  `films/1` varchar(28) DEFAULT NULL COMMENT \'Filmek #2 (Link)\',\n  `films/2` varchar(28) DEFAULT NULL COMMENT \'Filmek #3 (Link)\',\n  `films/3` varchar(28) DEFAULT NULL COMMENT \'Filmek #4 (Link)\',\n  `films/4` varchar(28) DEFAULT NULL COMMENT \'Filmek #5 (Link)\',\n  `films/5` varchar(28) DEFAULT NULL COMMENT \'Filmek #6 (Link)\',\n  `films/6` varchar(28) DEFAULT NULL COMMENT \'Filmek #7 (Link)\',\n  `species/0` varchar(31) DEFAULT NULL COMMENT \'Képességek (Link)\',\n  `vehicles/0` varchar(32) DEFAULT NULL COMMENT \'Járművek #1 (Link)\',\n  `vehicles/1` varchar(32) DEFAULT NULL COMMENT \'Járművek #2 (Link)\',\n  `starships/0` varchar(33) DEFAULT NULL COMMENT \'Űrhajók #1 (Link)\',\n  `starships/1` varchar(33) DEFAULT NULL COMMENT \'Űrhajók #2 (Link)\',\n  `starships/2` varchar(33) DEFAULT NULL COMMENT \'Űrhajók #3 (Link)\',\n  `starships/3` varchar(33) DEFAULT NULL COMMENT \'Űrhajók #4 (Link)\',\n  `starships/4` varchar(33) DEFAULT NULL COMMENT \'Űrhajók #5 (Link)\'\n) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=\'Star Wars\';\n', '\n', 'UPDATE,INSERT,DELETE,TRUNCATE,CREATE TABLE,ALTER TABLE,RENAME TABLE,DROP TABLE,CREATE INDEX,DROP INDEX,CREATE VIEW,ALTER VIEW,DROP VIEW', 0);

--
-- A(z) star_wars_filmek tábla metaadatai
--

--
-- A(z) star_wars_galeria tábla metaadatai
--

--
-- A(z) star_wars_jelenetek tábla metaadatai
--

--
-- A(z) star_wars_komment tábla metaadatai
--

--
-- A(z) sw_velemenyek tábla metaadatai
--

--
-- A tábla adatainak kiíratása `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('u66_rm3DDq2u28', 's66_db', 'sw_velemenyek', '{\"sorted_col\":\"`sw_velemenyek`.`id` DESC\"}', '2023-01-31 08:42:23');

--
-- A(z) szereplők teszt tábla metaadatai
--

--
-- A(z) szereplők velemeny tábla metaadatai
--

--
-- A(z) sötét oldal tábla metaadatai
--

--
-- A(z) sötét oldal_old tábla metaadatai
--

--
-- A(z) világos oldal tábla metaadatai
--

--
-- A(z) világos oldal_old tábla metaadatai
--

--
-- A(z) összes vélemény tábla metaadatai
--

--
-- A(z) s66_db adatbázis metaadatai
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
