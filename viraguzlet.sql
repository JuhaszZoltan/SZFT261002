-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Sze 21. 20:31
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `viraguzlet`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `rendelesid` int(11) NOT NULL,
  `vevoid` int(11) NOT NULL,
  `viragid` int(11) NOT NULL,
  `rendelesido` datetime NOT NULL DEFAULT current_timestamp(),
  `mennyiseg` smallint(5) UNSIGNED NOT NULL,
  `rendelesi_egysegar` int(10) UNSIGNED NOT NULL,
  `atveteldatum` date DEFAULT NULL,
  `megjegyzes` varchar(500) DEFAULT NULL
) ;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`rendelesid`, `vevoid`, `viragid`, `rendelesido`, `mennyiseg`, `rendelesi_egysegar`, `atveteldatum`, `megjegyzes`) VALUES
(1, 1, 1, '2025-02-10 09:15:00', 12, 950, '2025-02-14', 'A virágokat díszcsomagolásban kéri.'),
(2, 2, 6, '2025-02-18 14:22:00', 10, 650, '2025-02-20', NULL),
(3, 3, 19, '2025-03-06 11:40:00', 2, 4200, '2025-03-08', 'Ajándékkártyát is kér a rendeléshez.'),
(4, 5, 33, '2025-04-12 08:35:00', 5, 1800, '2025-04-15', NULL),
(5, 6, 12, '2025-04-20 16:18:00', 8, 750, '2025-04-22', 'Piros szalaggal kéri.'),
(6, 7, 35, '2025-05-03 10:06:00', 15, 450, '2025-05-05', NULL),
(7, 9, 22, '2025-05-16 13:27:00', 20, 500, '2025-05-18', 'A virágokat papírcsomagolásban kéri.'),
(8, 1, 24, '2025-06-02 15:42:00', 3, 1200, '2025-06-04', NULL),
(9, 10, 38, '2025-06-15 09:51:00', 6, 1100, '2025-06-18', 'Születésnapi csokorhoz kéri.'),
(10, 11, 41, '2025-07-03 12:14:00', 4, 1700, '2025-07-05', NULL),
(11, 3, 48, '2025-07-21 17:08:00', 7, 1350, '2025-07-24', 'Világos színű csomagolást kér.'),
(12, 5, 9, '2025-08-09 10:33:00', 5, 1450, '2025-08-11', NULL),
(13, 12, 16, '2025-08-26 14:45:00', 10, 600, '2025-08-28', 'Egyszerű csokorkötést kér.'),
(14, 14, 37, '2025-09-03 08:56:00', 6, 900, '2025-09-05', NULL),
(15, 7, 20, '2025-09-18 11:29:00', 2, 3900, '2025-09-20', 'A két orchideát külön csomagolva kéri.'),
(16, 15, 34, '2025-10-01 16:11:00', 8, 1900, '2025-10-04', 'Esküvői dekorációhoz szükséges.'),
(17, 1, 43, '2025-10-19 09:38:00', 3, 2800, '2025-10-21', NULL),
(18, 10, 45, '2025-11-06 13:52:00', 12, 800, '2025-11-08', 'Sárga szalaggal kéri.'),
(19, 16, 28, '2025-11-20 10:17:00', 9, 700, '2025-11-22', NULL),
(20, 19, 50, '2025-11-29 15:36:00', 2, 3500, '2025-12-02', 'A kiszállítás előtt telefonos értesítést kér.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vevo`
--

CREATE TABLE `vevo` (
  `vevoid` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `iranyitoszam` char(4) NOT NULL,
  `telepules` varchar(50) NOT NULL,
  `cim` varchar(150) NOT NULL,
  `regisztracio` datetime NOT NULL DEFAULT current_timestamp()
) ;

--
-- A tábla adatainak kiíratása `vevo`
--

INSERT INTO `vevo` (`vevoid`, `nev`, `email`, `telefon`, `iranyitoszam`, `telepules`, `cim`, `regisztracio`) VALUES
(1, 'Kovács Anna', 'kovacs.anna@example.hu', '+36 30 111 2233', '1042', 'Budapest', 'Tulipán utca 12.', '2025-01-12 09:24:00'),
(2, 'Nagy Péter', 'nagy.peter@example.hu', '+36 20 234 5678', '1136', 'Budapest', 'Napfény köz 8.', '2025-01-26 14:17:00'),
(3, 'Szabó Júlia', 'szabo.julia@example.hu', '+36 70 345 6789', '1152', 'Budapest', 'Orgona utca 21.', '2025-02-04 11:05:00'),
(4, 'Tóth Gábor', 'toth.gabor@example.hu', NULL, '2141', 'Csömör', 'Cseresznye utca 4.', '2025-02-19 16:42:00'),
(5, 'Varga Eszter', 'varga.eszter@example.hu', '+36 30 456 7890', '2120', 'Dunakeszi', 'Rózsa tér 3.', '2025-03-03 08:51:00'),
(6, 'Kiss Bence', 'kiss.bence@example.hu', '+36 20 567 8901', '1163', 'Budapest', 'Harmat utca 17.', '2025-03-18 13:36:00'),
(7, 'Molnár Dóra', 'molnar.dora@example.hu', '+36 70 678 9012', '1145', 'Budapest', 'Levendula köz 6.', '2025-04-02 10:28:00'),
(8, 'Balogh Márton', 'balogh.marton@example.hu', NULL, '2100', 'Gödöllő', 'Kertész utca 25.', '2025-04-21 15:09:00'),
(9, 'Farkas Réka', 'farkas.reka@example.hu', '+36 30 789 0123', '2011', 'Budakalász', 'Ibolya utca 9.', '2025-05-07 09:46:00'),
(10, 'Papp Zoltán', 'papp.zoltan@example.hu', '+36 20 890 1234', '2000', 'Szentendre', 'Duna sétány 14.', '2025-05-23 12:14:00'),
(11, 'Lakatos Nóra', 'lakatos.nora@example.hu', '+36 70 901 2345', '1039', 'Budapest', 'Jácint utca 31.', '2025-06-11 17:22:00'),
(12, 'Takács Ádám', 'takacs.adam@example.hu', '+36 30 123 9876', '1214', 'Budapest', 'Boróka köz 5.', '2025-06-29 10:03:00'),
(13, 'Horváth Lilla', 'horvath.lilla@example.hu', NULL, '2310', 'Szigetszentmiklós', 'Pipacs utca 18.', '2025-07-15 14:38:00'),
(14, 'Juhász Tamás', 'juhasz.tamas@example.hu', '+36 20 321 6547', '2030', 'Érd', 'Liliom utca 7.', '2025-08-01 08:19:00'),
(15, 'Mészáros Emese', 'meszaros.emese@example.hu', '+36 70 432 7658', '2040', 'Budaörs', 'Százszorszép tér 2.', '2025-08-17 11:41:00'),
(16, 'Oláh Krisztián', 'olah.krisztian@example.hu', '+36 30 543 8769', '2220', 'Vecsés', 'Akácfa utca 36.', '2025-09-05 16:07:00'),
(17, 'Simon Vivien', 'simon.vivien@example.hu', '+36 20 654 9870', '1182', 'Budapest', 'Boglárka utca 11.', '2025-09-22 09:32:00'),
(18, 'Rácz Dávid', 'racz.david@example.hu', NULL, '2330', 'Dunaharaszti', 'Hársfa köz 19.', '2025-10-08 13:55:00'),
(19, 'Fekete Zsófia', 'fekete.zsofia@example.hu', '+36 70 765 0981', '1173', 'Budapest', 'Kamilla utca 24.', '2025-10-26 10:16:00'),
(20, 'Szücs Roland', 'szucs.roland@example.hu', '+36 30 876 1092', '2112', 'Veresegyház', 'Fenyves sor 10.', '2025-11-14 15:48:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `virag`
--

CREATE TABLE `virag` (
  `viragid` int(11) NOT NULL,
  `vnev` varchar(100) NOT NULL,
  `szin` varchar(30) NOT NULL,
  `szarmazas` varchar(50) DEFAULT NULL,
  `keszlet` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `evelo` tinyint(1) DEFAULT NULL,
  `kepurl` varchar(300) DEFAULT NULL,
  `egysegar` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `virag`
--

INSERT INTO `virag` (`viragid`, `vnev`, `szin`, `szarmazas`, `keszlet`, `evelo`, `kepurl`, `egysegar`) VALUES
(1, 'Rózsa', 'vörös', 'Hollandia', 45, 1, NULL, 800),
(2, 'Rózsa', 'fehér', 'Ecuador', 32, 1, 'rozsa_feher.jpg', 1100),
(3, 'Rózsa', 'rózsaszín', 'Kenya', 28, 1, NULL, 800),
(4, 'Rózsa', 'sárga', NULL, 19, 1, 'rozsa_sarga.png', 900),
(5, 'Tulipán', 'piros', 'Hollandia', 60, 0, NULL, 900),
(6, 'Tulipán', 'sárga', 'Magyarország', 42, 0, 'tulipan_sarga.jpg', 1050),
(7, 'Tulipán', 'fehér', 'Hollandia', 35, NULL, NULL, 1250),
(8, 'Tulipán', 'lila', 'Belgium', 27, 0, 'tulipan_lila.png', 1250),
(9, 'Liliom', 'fehér', 'Hollandia', 18, 1, NULL, 1250),
(10, 'Liliom', 'rózsaszín', 'Lengyelország', 16, 1, 'liliom_rozsaszin.jpg', 1150),
(11, 'Liliom', 'narancssárga', 'Kenya', 14, 1, NULL, 850),
(12, 'Gerbera', 'piros', 'Hollandia', 38, 0, 'gerbera_piros.png', 1000),
(13, 'Gerbera', 'sárga', 'Magyarország', 41, 0, NULL, 1100),
(14, 'Gerbera', 'rózsaszín', NULL, 24, 0, 'gerbera_rozsaszin.jpg', 800),
(15, 'Gerbera', 'fehér', 'Lengyelország', 22, 0, NULL, 850),
(16, 'Szegfű', 'piros', 'Magyarország', 55, 1, 'szegfu_piros.png', 1000),
(17, 'Szegfű', 'fehér', 'Hollandia', 48, 1, NULL, 800),
(18, 'Szegfű', 'rózsaszín', 'Spanyolország', 36, NULL, 'szegfu_rozsaszin.jpg', 1250),
(19, 'Orchidea', 'fehér', 'Hollandia', 12, 1, NULL, 950),
(20, 'Orchidea', 'lila', 'Thaiföld', 9, 1, 'orchidea_lila.png', 1200),
(21, 'Orchidea', 'rózsaszín', 'Tajvan', 11, 1, NULL, 1050),
(22, 'Nárcisz', 'sárga', 'Magyarország', 50, 1, 'narcisz_sarga.jpg', 1200),
(23, 'Nárcisz', 'fehér', 'Hollandia', 34, 1, NULL, 1100),
(24, 'Jácint', 'kék', 'Hollandia', 21, 1, 'jacint_kek.png', 1150),
(25, 'Jácint', 'lila', NULL, 17, 1, NULL, 1200),
(26, 'Jácint', 'rózsaszín', 'Hollandia', 20, 1, 'jacint_rozsaszin.jpg', 1150),
(27, 'Krizantém', 'fehér', 'Magyarország', 46, 1, NULL, 1000),
(28, 'Krizantém', 'sárga', 'Lengyelország', 39, 1, 'krizantem_sarga.png', 1200),
(29, 'Krizantém', 'bordó', 'Hollandia', 25, NULL, NULL, 1150),
(30, 'Írisz', 'kék', 'Hollandia', 23, 1, 'irisz_kek.jpg', 950),
(31, 'Írisz', 'lila', 'Magyarország', 18, 1, NULL, 1100),
(32, 'Írisz', 'fehér', 'Franciaország', 15, 1, 'irisz_feher.png', 900),
(33, 'Bazsarózsa', 'rózsaszín', 'Hollandia', 13, 1, NULL, 900),
(34, 'Bazsarózsa', 'fehér', 'Franciaország', 10, 1, 'bazsarozsa_feher.jpg', 900),
(35, 'Levendula', 'lila', 'Magyarország', 65, 1, NULL, 1200),
(36, 'Levendula', 'kék', NULL, 40, 1, 'levendula_kek.png', 850),
(37, 'Napraforgó', 'sárga', 'Magyarország', 31, 0, NULL, 1000),
(38, 'Dália', 'piros', 'Hollandia', 22, 1, 'dalia_piros.jpg', 1200),
(39, 'Dália', 'narancssárga', 'Magyarország', 26, 1, NULL, 1150),
(40, 'Dália', 'bordó', 'Mexikó', 16, NULL, 'dalia_bordo.png', 850),
(41, 'Kála', 'fehér', 'Hollandia', 14, 1, NULL, 1050),
(42, 'Kála', 'sárga', 'Dél-Afrika', 12, 1, 'kala_sarga.jpg', 950),
(43, 'Amarillisz', 'piros', 'Hollandia', 8, 1, NULL, 1250),
(44, 'Amarillisz', 'fehér', 'Brazília', 7, 1, 'amarillisz_feher.png', 1250),
(45, 'Frézia', 'sárga', 'Hollandia', 29, 1, NULL, 1200),
(46, 'Frézia', 'fehér', 'Dél-Afrika', 33, 1, 'frezia_feher.jpg', 950),
(47, 'Frézia', 'lila', NULL, 18, 1, NULL, 900),
(48, 'Boglárka', 'rózsaszín', 'Hollandia', 24, 1, 'boglarka_rozsaszin.png', 900),
(49, 'Boglárka', 'sárga', 'Franciaország', 20, 1, NULL, 950),
(50, 'Hortenzia', 'kék', 'Japán', 11, NULL, 'hortenzia_kek.jpg', 850);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`rendelesid`),
  ADD KEY `fk_rendeles_vevo` (`vevoid`),
  ADD KEY `fk_rendeles_virag` (`viragid`);

--
-- A tábla indexei `vevo`
--
ALTER TABLE `vevo`
  ADD PRIMARY KEY (`vevoid`),
  ADD UNIQUE KEY `uq_vevo_email` (`email`),
  ADD UNIQUE KEY `telefon` (`telefon`);

--
-- A tábla indexei `virag`
--
ALTER TABLE `virag`
  ADD PRIMARY KEY (`viragid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `rendelesid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `vevo`
--
ALTER TABLE `vevo`
  MODIFY `vevoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `virag`
--
ALTER TABLE `virag`
  MODIFY `viragid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `rendeles`
--
ALTER TABLE `rendeles`
  ADD CONSTRAINT `fk_rendeles_vevo` FOREIGN KEY (`vevoid`) REFERENCES `vevo` (`vevoid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_rendeles_virag` FOREIGN KEY (`viragid`) REFERENCES `virag` (`viragid`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
