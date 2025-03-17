-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 mrt 2025 om 20:11
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `horror_mansion`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dialoog`
--

CREATE TABLE `dialoog` (
  `kamer_nummer` varchar(200) NOT NULL,
  `beschrijving` varchar(500) NOT NULL,
  `keuze` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `dialoog`
--

INSERT INTO `dialoog` (`kamer_nummer`, `beschrijving`, `keuze`) VALUES
('1', 'Je word wakker in een kamer die je niet herkent. Er hangt een kleine knipperende lichtbol aan het plafon. Je kijkt om je heen en door het flikkerende light heen het lijkt er op dat je in een zolder bent. Je herinnert je niet hoe je hier bent gekomen en wat er is gebeurt. Je kijkt om je heen en je ziet 2 deuren, een rode en een bruine deur. En je ziet een luik in de grond. ', '0'),
('10', ' je komt het kleine washokje binnen. Met overall vieze was op de vloer, het stinkt er zo dat je er bijna van moet kotsen. En achterin staat er een lange tafel waar een de NPC genaamd frans op ligt, en er staat ook een oude wasmachine en een handboek “hoe doe je de was niet”. En een zak chocoladerepen ', '1'),
('2', 'Je loopt de trap af naar benden en je komt in een donkere gang. Op het eerste oog zie je niks dus je pakt je zaklamp er bij. Je zet de zaklamp aan en schijnt hem door de gang heen. Aan de linker kant van de gang zie je een oud schilderij. Hij lijkt scheef te hangen, zou er iets achter zitten? Ook zie je 2 verschillende deuren, een blauwe en een paarse deur.', '0'),
('3', 'Je loopt een oude computer kamer in. Je doet de zaklamp aan en kijkt rond. Je ziet 3 bureaus met allemaal oude computers, papieren en een soort stenen beeld van een zeehond. Je kijkt verder rond de kamer en ziet een raam aan de rechter kan en aan de linker kant meer vreemd schilderijen. ', '0'),
('4', 'Je loopt de slaapkamer in en kijkt rond. Je ziet een groot paars bed, een make-up tafel, een grote houten kast en knuffels overal door de kamer. Waarom zouden er zoveel knuffels liggen? Was dot ooit de kamer van een kind? Je schijnt het licht van de zaklamp verder door de kamer en tot je verbazing zie je ook nog een soort hele kleine deur. Zo klein dat je er zelf niet doorheen zou passen. Wat zou er achter die deur zitten? Misschien iets wat je kan helpen te ontsnappen uit de plek?  ', '0'),
('5', 'Je loopt door de donkere gang heen en ziet op het einde een trap naar benden. Alleen voor de trap zit een baby hekje. Zou je er overheen kunnen stappen of heb je toch iets anders nodig om hem open te krijgen? ', '0'),
('6', 'Een donkere ruimte waar een witte tl-buis aan het knipperen is. Rechts van je zie je een oud bureau waar een rare NPC zit genaamd Sven, er ligt een dikke laag stof op zijn bureau. En een hoop verschrompelde papieren en een klein potje koffie met een veer erin. Vreemd nee toch?  Achter het bureau zie je een lange tafel waar een klok op staat. En een knop waarop staat dat dit niets is. En helemaal achterin in de ruimte zie je een klein raampje waar een paar lichtstralen die naar binnen schijnen en', '0'),
('7', 'Je bevindt je in een ronde toren die wordt verlicht door zwevende kaarsen. En met alle maal boekenplanken aan de zijkant van de toren gevuld met boeken, spinnenwebben en grote en kleine dozen met van alles erin zoals koffiebonen, potjes inkt flessen water en er zweeft een koe door de ruimte.   ', '0'),
('8', 'Eindelijk je bent uit de hobbykamer je staat in Een lange donkere gang. Met aan het eind een deur en een oud tapijt naar het eind van de gang. En aan de zijkanten hingen grote portretten van allemaal mensen. Het voelde alsof die portretten me steeds aankeken bij elke stap die ik deed. Of was dat geen gevoel was het echt?!! ', '0'),
('9', 'Je bent in het lab een grote ruimte die Word verlicht door een Simple tl-lamp. Je ziet allemaal planken aan de muur met allerijl spullen erop. Precies wat het is weet ik ook niet. Voorderest zie ik allemaal flesje op de stoffige werkbank liggen met labels eraan. Voorderest zie je nog wat boeken en een microscoop en niet te vergeten een dood proefkonijn in de hoek van de ruimte en die gesloten deur. ', '0');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(200) NOT NULL,
  `feedback` set('hallo','hello','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `item`
--

CREATE TABLE `item` (
  `item` varchar(200) NOT NULL,
  `kamer_nummer` varchar(11) NOT NULL,
  `item_nummer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `item`
--

INSERT INTO `item` (`item`, `kamer_nummer`, `item_nummer`) VALUES
('lucifers ', '6', '1'),
('sleutels', '4', '2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kamer`
--

CREATE TABLE `kamer` (
  `kamer_nummer` varchar(200) NOT NULL,
  `npc_nummer` varchar(10) NOT NULL,
  `item_nummer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `kamer`
--

INSERT INTO `kamer` (`kamer_nummer`, `npc_nummer`, `item_nummer`) VALUES
('1', '', ''),
('10', '2', '1'),
('2', '', ''),
('3', '', ''),
('4', '', ''),
('5', '', ''),
('6', '1', '2'),
('7', '', ''),
('8', '', ''),
('9', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `keuze`
--

CREATE TABLE `keuze` (
  `keuze_id` int(200) NOT NULL,
  `keuze` set('hallo','doei','','') NOT NULL,
  `kamer_nummer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `keuze_npc`
--

CREATE TABLE `keuze_npc` (
  `keuze` enum('ga weg ik ben bezig','ik wil koffie','hallo','...','hallo','ik wil chocolademelk anders krijg je geen hint','ik wil slapen','...') NOT NULL,
  `npc_nummer` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `keuze_npc`
--

INSERT INTO `keuze_npc` (`keuze`, `npc_nummer`) VALUES
('ga weg ik ben bezig', '1'),
('ik wil koffie', '1'),
('hallo', '1'),
('...', '1'),
('hallo', '2'),
('ik wil chocolademelk anders krijg je geen hint', '2'),
('ik wil slapen', '2'),
('...', '2');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `npc`
--

CREATE TABLE `npc` (
  `npc_nummer` varchar(10) NOT NULL,
  `npc_naam` varchar(200) NOT NULL,
  `kamer_nummer` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `npc`
--

INSERT INTO `npc` (`npc_nummer`, `npc_naam`, `kamer_nummer`) VALUES
('1', 'sven', '6'),
('2', 'frans', '10');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `dialoog`
--
ALTER TABLE `dialoog`
  ADD PRIMARY KEY (`kamer_nummer`);

--
-- Indexen voor tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexen voor tabel `item`
--
ALTER TABLE `item` ADD FULLTEXT KEY `item_nummer` (`item_nummer`);

--
-- Indexen voor tabel `kamer`
--
ALTER TABLE `kamer`
  ADD PRIMARY KEY (`kamer_nummer`),
  ADD KEY `npc_nummer` (`npc_nummer`);
ALTER TABLE `kamer` ADD FULLTEXT KEY `item_nummer` (`item_nummer`);

--
-- Indexen voor tabel `keuze`
--
ALTER TABLE `keuze`
  ADD PRIMARY KEY (`keuze_id`);

--
-- Indexen voor tabel `keuze_npc`
--
ALTER TABLE `keuze_npc`
  ADD KEY `npc_nummer` (`npc_nummer`);

--
-- Indexen voor tabel `npc`
--
ALTER TABLE `npc`
  ADD PRIMARY KEY (`npc_nummer`) USING BTREE,
  ADD KEY `kamer_nummer` (`kamer_nummer`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `keuze`
--
ALTER TABLE `keuze`
  MODIFY `keuze_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `kamer`
--
ALTER TABLE `kamer`
  ADD CONSTRAINT `kamer_ibfk_1` FOREIGN KEY (`kamer_nummer`) REFERENCES `dialoog` (`kamer_nummer`);

--
-- Beperkingen voor tabel `npc`
--
ALTER TABLE `npc`
  ADD CONSTRAINT `npc_ibfk_1` FOREIGN KEY (`npc_nummer`) REFERENCES `keuze_npc` (`npc_nummer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
