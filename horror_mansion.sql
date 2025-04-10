-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 apr 2025 om 16:27
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
-- Tabelstructuur voor tabel `combinatie_item`
--

CREATE TABLE `combinatie_item` (
  `combinatie_id` int(200) NOT NULL,
  `gecombineerde_item_nummer` varchar(200) NOT NULL,
  `itemnaam` varchar(200) NOT NULL,
  `item_img` varchar(200) NOT NULL,
  `invertory_status` int(10) NOT NULL,
  `gebruik_item_nummer` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `combinatie_item`
--

INSERT INTO `combinatie_item` (`combinatie_id`, `gecombineerde_item_nummer`, `itemnaam`, `item_img`, `invertory_status`, `gebruik_item_nummer`) VALUES
(1, 'cmb_1', 'werkende afstandsbediening', '', 0, 'gb_1'),
(2, 'cmb_2', 'complete main sleutel', '', 0, 'gb_1'),
(3, '0', '', '', 0, 'gb_0'),
(4, 'cmb_3', 'kaars die brand\r\n', '', 0, 'gb_1'),
(5, 'cmb_4', 'verse koffie', '', 0, 'gb_1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `dialoog`
--

CREATE TABLE `dialoog` (
  `dialoog_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `feedback` varchar(1000) NOT NULL,
  `kamer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `dialoog`
--

INSERT INTO `dialoog` (`dialoog_id`, `item_id`, `feedback`, `kamer_id`) VALUES
(1, 0, ' Je word wakker in een kamer die je niet herkent. Er hangt een kleine knipperende lichtbol aan het plafon. Je kijkt om je heen en door het flikkerende light heen het lijkt er op dat je in een zolder bent. Je herinnert je niet hoe je hier bent gekomen en wat er is gebeurt. Je kijkt om je heen en je ziet 2 deuren, een rode en een bruine deur. En je ziet een luik in de grond.', 1),
(2, 0, 'Je loopt de trap af naar benden en je komt in een donkere gang. Op het eerste oog zie je niks dus je pakt je zaklamp er bij. Je zet de zaklamp aan en schijnt hem door de gang heen. Aan de linker kant van de gang zie je een oud schilderij. Hij lijkt scheef te hangen, zou er iets achter zitten? Ook zie je 2 verschillende deuren, een blauwe en een paarse deur.', 2),
(3, 0, 'Je loopt een oude computer kamer in. Je doet de zaklamp aan en kijkt rond. Je ziet 3 bureaus met allemaal oude computers, papieren en een soort stenen beeld van een zeehond. Je kijkt verder rond de kamer en ziet een raam aan de rechter kan en aan de linker kant meer vreemd schilderijen.', 3),
(4, 0, 'Je loopt de slaapkamer in en kijkt rond. Je ziet een groot paars bed, een make-up tafel, een grote houten kast en knuffels overal door de kamer. Waarom zouden er zoveel knuffels liggen? Was dot ooit de kamer van een kind? Je schijnt het licht van de zaklamp verder door de kamer en tot je verbazing zie je ook nog een soort hele kleine deur. Zo klein dat je er zelf niet doorheen zou passen. Wat zou er achter die deur zitten? Misschien iets wat je kan helpen te ontsnappen uit de plek? ', 4),
(5, 0, 'Je loopt door de donkere gang heen en ziet op het einde een trap naar beneden. Alleen voor de trap zit een baby hekje. Zou je er overheen kunnen stappen of heb je toch iets anders nodig om hem open te krijgen?', 5),
(6, 0, 'Een donkere ruimte waar een witte tl-buis aan het knipperen is. Rechts van je zie je een oud bureau waar een rare NPC zit genaamd Sven, er ligt een dikke laag stof op zijn bureau. En een hoop verschrompelde papieren en een klein potje koffie met een veer erin. Vreemd nee toch?  Achter het bureau zie je een lange tafel waar een klok op staat. En een knop waarop staat dat dit niets is. En helemaal achterin in de ruimte zie je een klein raampje waar een paar lichtstralen die naar binnen schijnen en een deur die los is.      ', 6),
(7, 0, 'Je bevindt je in een ronde toren die wordt verlicht door zwevende kaarsen. En met alle maal boekenplanken aan de zijkant van de toren gevuld met boeken, spinnenwebben en grote en kleine dozen met van alles erin zoals koffiebonen, potjes inkt, flessen water en er zweeft een koe door de ruimte.  ', 7),
(8, 0, 'Eindelijk je bent uit de hobbykamer je staat in Een lange donkere gang. Met aan het eind een deur en een oud tapijt naar het eind van de gang. En aan de zijkanten hingen grote portretten van allemaal mensen. Het voelde alsof die portretten me steeds aankeken bij elke stap die ik deed. Of was dat geen gevoel was het echt?!!', 8),
(9, 0, 'Je bent in het lab een grote ruimte die Word verlicht door een Simple tl-lamp. Je ziet allemaal planken aan de muur met allerijl spullen erop. Precies wat het is weet ik ook niet. Voorderest zie ik allemaal flesje op de stoffige werkbank liggen met labels eraan. Voorderest zie je nog wat boeken en een microscoop en niet te vergeten een dood proefkonijn in de hoek van de ruimte en die gesloten deur.', 9),
(10, 0, 'je komt het kleine washokje binnen. Met overall vieze was op de vloer, het stinkt er zo dat je er bijna van moet kotsen. En achterin staat er een lange tafel waar een de NPC genaamd frans op ligt, en er staat ook een oude wasmachine en een handboek “hoe doe je de was niet”. En een zak chocoladerepen', 10),
(11, 0, 'Je komt de kamer binnen. Het ruikt naar muffe oma lucht. Je ziet een bank en een stoel staan met daar tegenover een openhaard waar een eng schilderij aanhangt. Aan de linkerkant van de openhaard staat een boekenkast met een laadje onderin. ', 11),
(12, 0, 'je komt de keuken binnen. Aan je rechterkant heb je de koelkast met een vriezer erboven en aan de linkerkant een hele aanrecht vol keukenkastjes en laadjes. Je ziet een verbrande oven alsof iemand het eten heeft laten verbranden, maar de rest van de keuken is nog heel. (“het is een mooie keuken dat geef ik toe, maar het kan wel een schoonmaakbeurt gebruiken”). Je ziet ook naast de koelkast een schilderij met een hal erop.', 12),
(13, 0, 'nadat je de sleutel hebt gebruikt en het schilderij hebt geopend kom je in een kleine hal die leid naar een bowlingzaal. Het is redelijk donker, maar je ziet aan de linkerkant een kleine bar met ernaast een schakelaar. Ook zie je net een bowlingbaan in het midden.', 13),
(14, 0, 'Je komt de hal binnen en het leid naar een een kleine kamer vol schilderijen en marmeren beelden. De kamer is stoffig en verlaten, maar in de hoek zitten een paar ratten. ', 14),
(15, 0, 'je komt binnen vanaf de gang (kamer 8) en ziet 2 trappen links en rechts van je. Ze lopen naar beneden in de main zaal. \r\nJe loopt naar beneden en ziet een grote deur voor je. Het lijkt alsof het naar buiten zou moeten leiden. Aan je linker kant heb je een deur naar de keuken en aan de rechter kant heb je de deur naar de woonkamer.\r\nAchter je tussen de 2 trappen in zie je een donkere hal. \r\n', 15),
(16, 0, 'De sleutel past! De deuren zwaaien open en je hoort een griezelig gegrom achter je. Zo hard als je kan, sprint je het huis uit en kijkt niet meer achterom. \"Eindelijk uit dit kut huis\". Je sprint door het bos en ziet na een tijdje eindelijk wat licht. Je ziet een klein dorpje en besluit daar om hulp te vragen. Je bent ontsnapt, maar je voelt nog een raar gevoel. Het voelt alsof je het huis nooit bent verlaten...The End?', 16),
(17, 35, '“deze stoel is nogal…uniek…”', 0),
(18, 36, '“deze boeken moeten wel tenminste 100 jaar oud zijn”', 0),
(19, 40, '“het lijkt alsof die ogen mij volgen…wacht wat is dat”', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gebruik_items`
--

CREATE TABLE `gebruik_items` (
  `gebruik_id` int(10) NOT NULL,
  `gebruik_item_nummer` varchar(200) NOT NULL,
  `gebruik_tekst` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gebruik_items`
--

INSERT INTO `gebruik_items` (`gebruik_id`, `gebruik_item_nummer`, `gebruik_tekst`) VALUES
(1, 'gb_0', 'je kan dit item niet/nog niet gebruiken'),
(3, 'gb_1', 'je kan dit item gebruiken');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `inhoud_van_kamer`
--

CREATE TABLE `inhoud_van_kamer` (
  `inhoud_van_kamer_id` int(10) NOT NULL,
  `kamer_nummer` varchar(10) NOT NULL,
  `keuze_nummer` varchar(11) NOT NULL,
  `dialoog_nummer` varchar(200) NOT NULL,
  `item_nummer` varchar(11) NOT NULL,
  `npc_nummer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `inhoud_van_kamer`
--

INSERT INTO `inhoud_van_kamer` (`inhoud_van_kamer_id`, `kamer_nummer`, `keuze_nummer`, `dialoog_nummer`, `item_nummer`, `npc_nummer`) VALUES
(1, '1', '1', '1', '1', '1'),
(2, '10', '10', '10', '2', '2'),
(3, '11', '11', '11', '3', '3'),
(4, '12', '12', '12', '4', '4'),
(5, '13', '13', '13', '5', '5'),
(6, '14', '14', '14', '6', '0'),
(7, '15', '15', '15', '7', '0'),
(8, '2', '2', '2', '8', '0'),
(9, '3', '3', '3', '9', '0'),
(10, '4', '4', '4', '10', '0'),
(11, '5', '5', '5', '11', '0'),
(12, '6', '6', '6', '12', '0'),
(13, '7', '7', '7', '13', '0'),
(14, '8', '8', '8', '14', '0'),
(15, '9', '9', '9', '15', '0');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `item`
--

CREATE TABLE `item` (
  `item_id` int(10) NOT NULL,
  `kamer_nummer` varchar(11) NOT NULL,
  `item_beschrijving` varchar(200) NOT NULL,
  `item_img` varchar(200) NOT NULL,
  `gecombineerde_item_nummer` varchar(100) NOT NULL,
  `gebruik_item_nummer` varchar(200) NOT NULL,
  `invertory_status` int(1) NOT NULL,
  `pakbaar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `item`
--

INSERT INTO `item` (`item_id`, `kamer_nummer`, `item_beschrijving`, `item_img`, `gecombineerde_item_nummer`, `gebruik_item_nummer`, `invertory_status`, `pakbaar`) VALUES
(3, '1', 'oude roestige sleutel', '', '0', 'gb_1', 0, 1),
(4, '1', 'zaklamp', '', '0', 'gb_1', 0, 1),
(5, '2', 'uv zaklamp', '', '0', 'gb_1', 0, 1),
(6, '3', 'briefje met de code 13869. ', '', '0', 'gb_1', 0, 1),
(7, '3', 'roze mes ', '', '0', 'gb_1', 0, 1),
(8, '4', 'flesje water ', '', '0', 'gb_0', 0, 1),
(9, '4', 'kleine lieve capybara ', '', '0', 'gb_0', 0, 1),
(10, '4', 'breek ijzer ', '', '0', 'gb_1', 0, 1),
(11, '4', 'main sleutel staartje', '', 'cmb_2', 'gb_0', 0, 1),
(12, '6', 'potje koffie', '', '0', 'gb_0', 0, 1),
(13, '6', 'lucifers ', '', 'cmb_3', 'gb_0', 0, 1),
(14, '6', 'een papiertje met de aanwijzingen II:XLV  ', '', '0', 'gb_0', 0, 1),
(15, '7', 'zwevende kaars', '', 'cmb_3', 'gb_0', 0, 1),
(16, '7', 'koffiebonen', '', 'cmb_4', 'gb_0', 0, 1),
(17, '7', 'flessen water', '', 'cmb_4', 'gb_0', 0, 1),
(18, '8', 'badeentje', '', '0', 'gb_1', 0, 1),
(19, '9', 'een dood proefkonijn', '', '0', 'gb_0', 0, 1),
(20, '9', 'microscoop ', '', '0', 'gb_0', 0, 1),
(21, '10', 'schroevendraaier ', '', '0', 'gb_1', 0, 1),
(22, '10', 'chocoladerepen', '', '0', 'gb_1', 0, 1),
(23, '11', 'honkbalknuppel ', '', '0', 'gb_1', 0, 1),
(24, '11', 'kleine afstandsbediening ', '', 'cmb_1', 'gb_0', 0, 1),
(25, '11', 'stoffige sleutel ', '', '0', 'gb_1', 0, 1),
(26, '12', 'stukje kaas', '', '0', 'gb_1', 0, 1),
(27, '12', 'batterijen', '', 'cmb_1', 'gb_0', 0, 1),
(28, '12', 'rol ductape', '', '0', 'gb_0', 0, 1),
(29, '12', 'verbrand boekje', '', '0', 'gb_0', 0, 1),
(30, '13', 'fles alcohol ', '', '0', 'gb_0', 0, 1),
(31, '14', 'main sleutel kopje ', '', 'cmb_2', 'gb_0', 0, 1),
(32, '15', '', '', '0', 'gb_0', 0, 1),
(33, '5', '', '', '0', 'gb_0', 0, 1),
(34, '11', 'bank', '', '0', 'gb_0', 0, 0),
(35, '11', 'stoel', '', '0', 'gb_0', 0, 0),
(36, '11', 'boekenkast', '', '0', 'gb_0', 0, 0),
(37, '12', 'koelkast', '', '0', 'gb_0', 0, 0),
(38, '12', 'vriezer', '', '0', 'gb_0', 0, 0),
(40, '11', 'schilderij_openhaard', '', '0', 'gb_0', 0, 0),
(41, '1', 'rode deur', '', '0', 'gb_0', 0, 0),
(42, '1', 'bruine deur', '', '0', 'gb_0', 0, 0),
(43, '1', 'zolderluik', '', '0', 'gb_0', 0, 0),
(44, '2', 'oud schilderij', '', '0', 'gb_0', 0, 0),
(45, '3', 'werkende computer', '', '0', 'gb_0', 0, 0),
(46, '3', 'zeehond beeldje', '', '0', 'gb_0', 0, 0),
(47, '3', 'kluis onder bureau ', '', '0', 'gb_0', 0, 0),
(48, '3', 'open raam', '', '0', 'gb_0', 0, 0),
(49, '4', 'paars bed', '', '0', 'gb_0', 0, 0),
(50, '4', 'make-up tafel', '', '0', 'gb_0', 0, 0),
(51, '4', 'grote houten kast', '', '0', 'gb_0', 0, 0),
(52, '4', 'kleine deur', '', '0', 'gb_0', 0, 0),
(53, '5', 'hekje voor trap', '', '0', 'gb_0', 0, 0),
(54, '6', 'nutteloze knop', '', '0', 'gb_0', 0, 0),
(55, '6', 'Svens bureau', '', '0', 'gb_0', 0, 0),
(56, '6', 'klok op de tafel', '', '0', 'gb_0', 0, 0),
(57, '7', 'zwevende koe', '', '0', 'gb_0', 0, 0),
(58, '7', 'zwevende boeken', '', '0', 'gb_1', 0, 0),
(59, '8', 'portret schilderijen', '', '0', 'gb_0', 0, 0),
(60, '9', 'lab boeken', '', '0', 'gb_0', 0, 0),
(61, '9', 'lab flesjes', '', '0', 'gb_0', 0, 0),
(62, '9', 'lab werkbank', '', '0', 'gb_0', 0, 0),
(63, '10', 'handboek \"hoe doe je de was niet\"', '', '0', 'gb_0', 0, 0),
(64, '10', 'wasmachine', '', '0', 'gb_0', 0, 0),
(65, '10', 'zak chocoladerepen', '', '0', 'gb_0', 0, 0),
(66, '12', 'keukenkastjes en laadjes', '', '0', 'gb_0', 0, 0),
(67, '12', 'oven', '', '0', 'gb_0', 0, 0),
(68, '12', 'schilderij naast koelkast', '', '0', 'gb_0', 0, 0),
(69, '13', 'bar', '', '0', 'gb_0', 0, 0),
(70, '13', 'schakelaar', '', '0', 'gb_0', 0, 0),
(71, '13', 'bowlingbaan', '', '0', 'gb_0', 0, 0),
(72, '13', 'kluis bowlingzaal', '', '0', 'gb_0', 0, 0),
(73, '14', 'griezelige schilderijen', '', '0', 'gb_0', 0, 0),
(74, '14', 'marmeren beelden', '', '0', 'gb_0', 0, 0),
(75, '15', 'grote main zaal deur', '', '0', 'gb_0', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kamer`
--

CREATE TABLE `kamer` (
  `kamer_id` int(10) NOT NULL,
  `kamer_nummer` varchar(100) NOT NULL,
  `kamer_naam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `kamer`
--

INSERT INTO `kamer` (`kamer_id`, `kamer_nummer`, `kamer_naam`) VALUES
(1, '1', 'de zolder'),
(2, '2', 'de gang 3de verdieping'),
(3, '3', 'Oude computer kamer'),
(4, '4', 'slaapkamer'),
(5, '5', 'de trap naar beneden'),
(6, '6', 'werkkamer/hobbykamer'),
(7, '7', 'bibliotheek '),
(8, '8', 'de gang 2de verdieping'),
(9, '9', 'het lab'),
(10, '10', 'het washok'),
(11, '11', 'woonkamer'),
(12, '12', 'keuken'),
(13, '13', 'bowlingszaal'),
(14, '14', 'de gang onder de trap'),
(15, '15', 'centrale zaal');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `keuze`
--

CREATE TABLE `keuze` (
  `keuze_id` int(200) NOT NULL,
  `kamer_nummer` varchar(200) NOT NULL,
  `eerste_keuze` varchar(200) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `tweede_keuze_nummer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `keuze`
--

INSERT INTO `keuze` (`keuze_id`, `kamer_nummer`, `eerste_keuze`, `feedback`, `comment`, `tweede_keuze_nummer`) VALUES
(3, '11', 'Rondzoeken in de bank ', 'Je trekt een honkbalknuppel tevoorschijn', 'Wat een vreemde plek om dit te bewaren... Maar goed, het kan altijd van pas komen. Die neem ik mee.', 'kz_0.0.0'),
(4, '11', 'Rondzoeken onder de bank ', 'je vind niks', '', 'kz_0.0.0'),
(6, '11', 'rondzoeken om de stoel', 'je vind niks', '', 'kz_0.0.0'),
(7, '11', 'rondzoeken onder de stoel', 'je vind een kleine afstandsbediening met een label achterop waar op staat “bowling baan”', '', 'kz_0.0.0'),
(12, '11', 'Kijk achter de boeken', '', 'gadverdamme.. allemaal rattenschijt', 'kz_0.0.0'),
(13, '11', 'kijk in de lade onderin ', 'je moet kuchen van al het stof, maar vind 1 stoffige sleutel ', '', 'kz_0.0.0'),
(22, '9', 'onderzoek de lades van de werkbank ', 'Je krijgt een flashback naar je verleden en een briefje met het woord konijn erop   ', '', 'kz_0.0.0'),
(24, '9', 'neem de microscoop mee ', '', 'ik hoop dat het nog past ', 'kz_0.0.0'),
(25, '9', 'trap de deur in ', '', 'wauw ik had nooit gedacht dat dit mij zou lukken', 'kz_0.0.0'),
(26, '10', 'Lees het handboek hoe doe je de was niet', 'in het handboek is een schroevendraaier verstopt', 'eindelijke een goed boek', 'kz_0.0.0'),
(29, '10', 'pak de zak chocoladerepen  ', '', '', 'kz_0.0.0'),
(36, '6', 'Je drinkt de koffie op', '', '', 'kz_0.0.0'),
(37, '6', 'Je neemt de koffie mee voor later ', '', '', 'kz_0.0.0'),
(38, '6', 'Je kruipt door het raam', '', '', 'kz_0.0.0'),
(40, '6', 'je drukt op de knop ', '', '', 'kz_0.0.0'),
(41, '6', 'Je kijkt in de lades in het bureau', '', '', 'kz_0.0.0'),
(44, '6', 'Je zegt een willekeurige tijd op de klok', '', '', 'kz_0.0.0'),
(45, '6', 'Je probeert de deur open te krijgen maar het lukt niet', '', '', 'kz_0.0.0'),
(46, '6', 'Je pakt de kaars en daarmee brand je de deur open', '', '', 'kz_0.0.0'),
(47, '7', 'Je gaat de koe melken ', '', '', 'kz_0.0.0'),
(49, '7', 'Je gaat een boek lezen', '', '', 'kz_0.0.0'),
(53, '7', 'Je pakt een kaars en je zet de kamer in de brand', '', '', 'kz_0.0.0'),
(56, '8', 'Je onderzoekt de schilderijen en vind 3 verschillende cijfers en een bad eentje  ', '', '', 'kz_0.0.0'),
(60, '10', 'pak de zak chocoladerepen  ', '', '', 'kz_0.0.0'),
(69, '1', 'klikt op grote blauw knop', '', '', 'kz_0.0.0'),
(70, '1', 'Je opent de bruine deur en loopt in een kleine donkere kamer met alleen een bureau in het midden van  de kamer. Je voelt langs het bureau om te voelen of er iets ligt. Er ligt een zaklamp op het burea', '', '', 'kz_0.0.0'),
(71, '1', 'Je probeert het luik te openen', 'Maar hij zit op slot.', '', 'kz_0.0.0'),
(72, '2', 'Je maak de keuze om het schilderij opzij te doen en te kijken of er iets achter zit. Achter het schilderij zit een gat in de muur. ', '', '', 'kz_0.0.0'),
(73, '2', 'Je opent de blauwe deur en loopt een oude en bestofte computer kamer in', '', '', 'kz_0.0.0'),
(74, '2', 'Je opent de paarse deur en komt in grote slaapkamer', '', '', 'kz_0.0.0'),
(75, '3', 'Je kijkt rond en ziet dat een van de computers nog lijkt te werken.  ', '', '', 'kz_0.0.0'),
(76, '3', 'Je ziet het beeld van de zeehond en probeert heb op te tillen alleen hij glipt uit je handen en valt stuk op de grond. Uit het beeld valt een briefje met de code 13869. ', '', '', 'kz_0.0.0'),
(77, '3', 'Je kijkt langs de 3 bureaus en ziet onder een van de bureaus een kluis.', '', '', 'kz_0.0.0'),
(78, '3', 'Je ziet het openstaande raam. ', '', '', 'kz_0.0.0'),
(79, '4', 'Je loopt naar het bed. Je besluit te kijken of iets van aanwijzingen onder de dekens ligt. Je doet de dekens omhoog en ziet een knal roze geverfd skelet. Het skelet is te klein om van een volwassene t', '', '', 'kz_0.0.0'),
(80, '4', 'Je loopt naar de make-up tafel. ', '', '', 'kz_0.0.0'),
(81, '4', 'Je ziet een grote houten kast in de hoek van de kamer. Je loopt naar de kast toe. ', '', '', 'kz_0.0.0'),
(82, '4', 'Je ziet de hele kleine deur verstopt achter het bed in de muur. ', '', '', 'kz_0.0.0'),
(83, '5', 'je probeert over het hekje heen te stappen. Dit lukt niet.', 'je kan niet over het hekje stappen, had je maar meer moeten sporten inplaats van lui achter een computer zitten', '', 'kz_0.0.0'),
(84, '5', 'Je probeert het hekje te openen', '', '', 'kz_0.0.0'),
(85, '15', '', '', '', 'kz_0.0.0'),
(100, '9', 'ga een boeklezen', '', '', 'kz_2.9.1'),
(101, '9', 'bekijk het proefkonijn wat er in de hoek ligt', '', '', 'kz_2.9.2'),
(102, '9', 'pak een flesje', '', 'o nee een val mijn kamer loopt vol met water ', 'kz_2.9.3'),
(103, '9', 'til de werkbank op ', '', '', 'kz_2.9.4');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `npc`
--

CREATE TABLE `npc` (
  `npc_id` varchar(10) NOT NULL,
  `npc_naam` varchar(200) NOT NULL,
  `npc_nummer` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `npc`
--

INSERT INTO `npc` (`npc_id`, `npc_naam`, `npc_nummer`) VALUES
('', '', '0'),
('1', 'sven', '1'),
('2', 'frans', '2'),
('3', 'rat 1', '3'),
('4', 'rat 2 ', '4'),
('5', 'rat 3 Richard ', '5');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `npc_keuze`
--

CREATE TABLE `npc_keuze` (
  `npc_keuze_id` int(11) NOT NULL,
  `npc_nummer` varchar(11) NOT NULL,
  `keuze` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `npc_keuze`
--

INSERT INTO `npc_keuze` (`npc_keuze_id`, `npc_nummer`, `keuze`) VALUES
(1, '1', 'Ga weg ik ben bezig'),
(2, '1', ' Ik wil koffie'),
(3, '1', 'hallo'),
(4, '1', '...'),
(5, '2', 'Hallo '),
(6, '2', 'Ik wil chocolademelk ander krijg je geen hint  '),
(7, '2', 'Laat mij slapen'),
(8, '2', '...'),
(9, '5', 'rot op, of moet ik nog wat van je afpakken'),
(10, '5', 'nee dit krijg je nooit meer terug en ga lekker iemand anders irriteren'),
(11, '5', 'ha ha je pakt mij toch nooit dom mens'),
(12, '3', 'hallo'),
(13, '4', 'hallo'),
(14, '0', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tweede_keuze`
--

CREATE TABLE `tweede_keuze` (
  `keuze_2_id` int(11) NOT NULL,
  `tweede_keuze` varchar(100) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `tweede_keuze_nummer` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `tweede_keuze`
--

INSERT INTO `tweede_keuze` (`keuze_2_id`, `tweede_keuze`, `feedback`, `comment`, `tweede_keuze_nummer`) VALUES
(1, 'eet het dode proefkonijn op ', 'wauw je bent supersterk door het eten van een proefkonijn het smaakt wel wat minder', '', 'kz_2.9.2'),
(2, 'neem het dode proefkonijn mee in je invertory', '', '', 'kz_2.9.2'),
(8, 'Het schilderij laten bewegen en erachter kijken', 'een rat springt erachter uit en steelt 1 van je items en rent weg naar de main zaal', '', 'kz_2.11.1'),
(9, 'Weg gaan van het schilderij', '', '', 'kz_2.11.1'),
(10, 'kijk in het linker laadje', 'je vind 2 batterijen', '', 'kz_2.12.1'),
(11, 'kijk in het rechter laadje', 'je vind ductape', '', 'kz_2.12.1'),
(12, 'kijk in het linker kastje', 'je ziet een paar blikjes die over datum zijn', '', 'kz_2.12.1'),
(14, 'Doe oven open', 'r zit een verbrand boekje in met de tekst: “692- Drie cijfers staan hier, bedekt met stof, Het laatste is verloren, verdwenen in lof. Maar luister goed naar het rollende spel, Het aantal pins onthult ', '', 'kz_2.12.2'),
(15, 'Schilderij aan de kant leggen', 'het schilderij zit muurvast en voelt alsof het van staal is gemaakt', '', 'kz_2.12.3'),
(16, 'Zet aan', 'je haalt het over en de hendel staat nu op aan, maar het blijft nog donker...misschien heb je nog iets anders nodig', '', 'kz_2.13.1'),
(17, 'Loop weg van schakelaar', 'je gaat weer terug naar het midden', '', 'kz_2.13.1'),
(18, 'til beeld op ', 'je probeert het marmeren beeld op te pakken, maar is veel te zwaar en valt om. “kut”', '', 'kz_2.14.1'),
(19, 'stop met lezen', 'Lezen veroorzaakt ernstige gevolgen! Mensen die lezen, lopen kans op... intelligentie stop onmiddellijk! ', '', 'kz_2.9.1'),
(22, 'Gebruik de bad eendje om het water te stoppen ', '', 'het past niet er blijft water binnen stromen ', 'kz_2.9.3'),
(23, 'Ik doe niets', 'je ging dood slimpie', '', 'kz_2.9.3'),
(24, 'Probeer een ander flesje', 'gebeurt niets', '', 'kz_2.9.3'),
(25, '', '', 'O nee alle flesjes vallen van de werkbank au die scherven  ', 'kz_2.9.4'),
(26, '', '', 'Je hebt de spieren van een kropsla   ', 'kz_2.9.4'),
(27, '', '', '', 'kz_0.0.0');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `combinatie_item`
--
ALTER TABLE `combinatie_item`
  ADD PRIMARY KEY (`combinatie_id`),
  ADD KEY `cb_id` (`gecombineerde_item_nummer`),
  ADD KEY `gebruik_item_nummer` (`gebruik_item_nummer`);

--
-- Indexen voor tabel `dialoog`
--
ALTER TABLE `dialoog`
  ADD PRIMARY KEY (`dialoog_id`);

--
-- Indexen voor tabel `gebruik_items`
--
ALTER TABLE `gebruik_items`
  ADD PRIMARY KEY (`gebruik_id`),
  ADD KEY `gebruik` (`gebruik_tekst`),
  ADD KEY `gb` (`gebruik_item_nummer`);

--
-- Indexen voor tabel `inhoud_van_kamer`
--
ALTER TABLE `inhoud_van_kamer`
  ADD PRIMARY KEY (`inhoud_van_kamer_id`),
  ADD KEY `beschrijving` (`dialoog_nummer`),
  ADD KEY `npc_nummer` (`npc_nummer`),
  ADD KEY `kamelijst_id` (`item_nummer`),
  ADD KEY `kammer_nummer` (`kamer_nummer`),
  ADD KEY `kamer_nummer` (`kamer_nummer`),
  ADD KEY `keuze` (`keuze_nummer`) USING BTREE;

--
-- Indexen voor tabel `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`) USING BTREE,
  ADD KEY `kamer_nummer` (`kamer_nummer`) USING BTREE,
  ADD KEY `cb` (`gecombineerde_item_nummer`),
  ADD KEY `gebruik` (`gebruik_item_nummer`);

--
-- Indexen voor tabel `kamer`
--
ALTER TABLE `kamer`
  ADD PRIMARY KEY (`kamer_id`),
  ADD KEY `kamer_nummer` (`kamer_nummer`) USING BTREE;

--
-- Indexen voor tabel `keuze`
--
ALTER TABLE `keuze`
  ADD PRIMARY KEY (`keuze_id`) USING BTREE,
  ADD KEY `keuze` (`eerste_keuze`,`kamer_nummer`),
  ADD KEY `kamer_nummer` (`kamer_nummer`) USING BTREE,
  ADD KEY `tweede_keuze` (`tweede_keuze_nummer`);

--
-- Indexen voor tabel `npc`
--
ALTER TABLE `npc`
  ADD PRIMARY KEY (`npc_id`) USING BTREE,
  ADD KEY `npc_nummer` (`npc_nummer`);

--
-- Indexen voor tabel `npc_keuze`
--
ALTER TABLE `npc_keuze`
  ADD PRIMARY KEY (`npc_keuze_id`),
  ADD KEY `npc_nummer` (`npc_nummer`);

--
-- Indexen voor tabel `tweede_keuze`
--
ALTER TABLE `tweede_keuze`
  ADD KEY `keuze_2_id` (`keuze_2_id`) USING BTREE,
  ADD KEY `keuze_2` (`tweede_keuze_nummer`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `combinatie_item`
--
ALTER TABLE `combinatie_item`
  MODIFY `combinatie_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `dialoog`
--
ALTER TABLE `dialoog`
  MODIFY `dialoog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `gebruik_items`
--
ALTER TABLE `gebruik_items`
  MODIFY `gebruik_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `inhoud_van_kamer`
--
ALTER TABLE `inhoud_van_kamer`
  MODIFY `inhoud_van_kamer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT voor een tabel `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT voor een tabel `kamer`
--
ALTER TABLE `kamer`
  MODIFY `kamer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT voor een tabel `keuze`
--
ALTER TABLE `keuze`
  MODIFY `keuze_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT voor een tabel `npc_keuze`
--
ALTER TABLE `npc_keuze`
  MODIFY `npc_keuze_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `tweede_keuze`
--
ALTER TABLE `tweede_keuze`
  MODIFY `keuze_2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `combinatie_item`
--
ALTER TABLE `combinatie_item`
  ADD CONSTRAINT `combinatie_item_ibfk_1` FOREIGN KEY (`gebruik_item_nummer`) REFERENCES `gebruik_items` (`gebruik_item_nummer`);

--
-- Beperkingen voor tabel `inhoud_van_kamer`
--
ALTER TABLE `inhoud_van_kamer`
  ADD CONSTRAINT `inhoud_van_kamer_ibfk_3` FOREIGN KEY (`npc_nummer`) REFERENCES `npc` (`npc_nummer`);

--
-- Beperkingen voor tabel `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`gecombineerde_item_nummer`) REFERENCES `combinatie_item` (`gecombineerde_item_nummer`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`gebruik_item_nummer`) REFERENCES `gebruik_items` (`gebruik_item_nummer`);

--
-- Beperkingen voor tabel `kamer`
--
ALTER TABLE `kamer`
  ADD CONSTRAINT `kamer_ibfk_1` FOREIGN KEY (`kamer_nummer`) REFERENCES `inhoud_van_kamer` (`kamer_nummer`);

--
-- Beperkingen voor tabel `npc`
--
ALTER TABLE `npc`
  ADD CONSTRAINT `npc_ibfk_1` FOREIGN KEY (`npc_nummer`) REFERENCES `npc_keuze` (`npc_nummer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
