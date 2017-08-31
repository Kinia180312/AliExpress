-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 31 Sie 2017, 23:26
-- Wersja serwera: 10.1.25-MariaDB
-- Wersja PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `aliexpress`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinions`
--

CREATE TABLE `opinions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user` int(11) NOT NULL,
  `link` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `opinions`
--

INSERT INTO `opinions` (`id`, `name`, `content`, `user`, `link`, `price`) VALUES
(3, 'Kredki', 'Kredki dotarly cale, pomimo tego, ze nie bylo specjalnie zabezpieczone. Miekkie, dobre dla dzieci i doroslych.', 2, 'http://goo.gl/EN7Hwa', 13),
(4, 'Drewniany Zegarek', 'Zegarek dobrze wykonany, nie powstaly zarysowania podczes jego podrozy, niestety bateria nie byla zabezpieczona, ale wszystko dziala sprawnie.', 1, 'https://pl.aliexpress.com/item/2016-New-Famous-Brand-Male-and-Female-Students-Minimalist-Fashion-Lovers-Quartz-Watch-Relogio-Feminino/32731727456.html', 12),
(5, 'Okulary pilotki', 'Zaczne od etui jest utwardzone, wiec najwazniejsza funkcje spelnia, nie zgniecie sie wraz z okularami w srodku i okulary sie w nim nie porysuja, jestem zadowolona.', 3, 'https://pl.aliexpress.com/item/Unisex-Men-Women-Classic-Metal-Frame-Designer-UV400-Sunglasses-Case-Free-Shipping-2017-Most-Popular-High/32804486833.html', 15),
(6, 'Bezprzewodowy glosnik', 'Potrzebowalam takiego glosnika glownie po to, zeby jak zmieniam pomieszczenie np. ide do kuchni, to nie nosic ze soba laptopa, zeby mi grala muzyka, tylko taki wlasnie glosniczek. Jeszcze przyda sie na grilla ze znajomymi. Wpadl mi w oko, bo jest bardzo zgrabny i ladny.', 1, 'https://pl.aliexpress.com/item/Hot-mini-Bluetooth-wireless-music-dual-speaker-woofer-Radio-FM-TF-USB-Stereo-Loudspeaker-enceinte-bluetooth/32807468621.html', 40),
(7, 'Skarpetki', 'Sa po prostu mega rozciagaja sie i to bardzo tak,ze na wieksze stopy beda dobre.', 2, 'https://pl.aliexpress.com/store/product/Fashion-New-Christmas-Deer-Socks-Women-Mens-Cartoon-Design-Casual-Knit-Wool-Socks-Men-Winter-Warm/2942207_32828952992.html', 3),
(8, 'Chusta', 'Koniec lata, jesien idzie, zakupilam wiec szaliko koc. Jest to nieco mniejsza i skromniejsza wersja szaliko kocow znanych z bazarow i aliexpress.', 2, 'https://pl.aliexpress.com/item/iPretty-2017-New-Autumn-Winter-Plaid-tassel-Scarves-For-Women-Soft-Wraps-Women-Warm-Shawls-Long/32821005473.html', 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstName`, `lastName`) VALUES
(1, 'justkag8', 'uczelnia1', 'Justyna', 'Golemo'),
(2, 'vkinia', 'uczelnia2', 'Kinga', 'Hamera'),
(3, 'alimaniak', 'uczelnia3', 'Tomek', 'Kowalski');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
