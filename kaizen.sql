-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: Kaizen_development
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `Kaizen_development`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Kaizen_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `Kaizen_development`;

--
-- Table structure for table `course_translations`
--

DROP TABLE IF EXISTS `course_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_course_translations_on_course_id` (`course_id`),
  KEY `index_course_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_translations`
--

LOCK TABLES `course_translations` WRITE;
/*!40000 ALTER TABLE `course_translations` DISABLE KEYS */;
INSERT INTO `course_translations` VALUES (1,1,'en','<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\"><b>Samoch&oacute;d</b> &ndash; pojazd mechaniczny służący do przewozu os&oacute;b lub ładunk&oacute;w.</span></p>\r\n<h2><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\" class=\"mw-headline\" id=\"Nazewnictwo\">Nazewnictwo<img style=\"border: 2px solid black; float: right;\" src=\"../../../assets/toyota_supra.jpg\" height=\"294\" width=\"392\" /></span></h2>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">&nbsp;&nbsp;&nbsp; Słowo <i>samoch&oacute;d</i> utrwaliło się w języku polskim jeszcze w czasach II Rzeczypospolitej, kiedy to zostało wybrane, w drodze konkursu, na słowo określające <i>automobil</i>. Termin <i>samoch&oacute;d</i> pochodzi od sł&oacute;w <i>sam</i> i <i>ch&oacute;d</i>, a więc określa pojazd samodzielnie się poruszający, czyli z własnym napędem. Spośr&oacute;d innych, branych pod uwagę sł&oacute;w, można wspomnieć określenie <i>samojedź</i>.</span></p>\r\n<h2><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\" class=\"mw-headline\" id=\"Historia\">Historia</span></h2>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nad pojazdami napędzanymi parą myślano już w XVII wieku. W 1678 roku Ferdinand Verbiest miał zademonstrować taki pojazd cesarzowi chińskiemu, jednak nie ma na to żadnych dowod&oacute;w. Dlatego za pierwszego konstruktora &ndash; wynalazcę pojazdu mechanicznego &ndash; uznaje się Francuza o nazwisku Nicolas-Joseph Cugnot, kt&oacute;ry zaprezentował swoje pionierskie dzieło napędzane silnikiem parowym w roku 1769.</span></p>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">W 1870 roku Austriak Siegfried Marcus skonstruował, nienadający się do powszechnego użytku, prototyp pojazdu mechanicznego z benzynowym silnikiem o zapłonie iskrowym. Z kolei inny konstruktor, Niemiec Karl Benz, zbudował sw&oacute;j trzykołowy automobil w roku 1885 (w 1886 uzyskał patent). W tych samych latach prace w dziedzinie silnik&oacute;w spalinowych oraz pojazd&oacute;w napędzanych takimi silnikami prowadzili wsp&oacute;lnie Wilhelm Maybach i Gottlieb Daimler. Nie wiadomo jednak dokładnie, kto, jako pierwszy, skonstruował zastosowany do napędu samochod&oacute;w silnik o spalaniu wewnętrznym.</span></p>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\"><br /></span></p>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\"><br /></span></p>','Samochody','2012-09-11 10:13:35','2012-09-11 11:38:33'),(2,2,'en','','Samoloty','2012-09-12 05:57:40','2012-09-12 05:57:40');
/*!40000 ALTER TABLE `course_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Samochody','<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\"><b>Samoch&oacute;d</b> &ndash; pojazd mechaniczny służący do przewozu os&oacute;b lub ładunk&oacute;w.</span></p>\r\n<h2><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\" class=\"mw-headline\" id=\"Nazewnictwo\">Nazewnictwo<img style=\"border: 2px solid black; float: right;\" src=\"../../../assets/toyota_supra.jpg\" height=\"294\" width=\"392\" /></span></h2>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">&nbsp;&nbsp;&nbsp; Słowo <i>samoch&oacute;d</i> utrwaliło się w języku polskim jeszcze w czasach II Rzeczypospolitej, kiedy to zostało wybrane, w drodze konkursu, na słowo określające <i>automobil</i>. Termin <i>samoch&oacute;d</i> pochodzi od sł&oacute;w <i>sam</i> i <i>ch&oacute;d</i>, a więc określa pojazd samodzielnie się poruszający, czyli z własnym napędem. Spośr&oacute;d innych, branych pod uwagę sł&oacute;w, można wspomnieć określenie <i>samojedź</i>.</span></p>\r\n<h2><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\" class=\"mw-headline\" id=\"Historia\">Historia</span></h2>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nad pojazdami napędzanymi parą myślano już w XVII wieku. W 1678 roku Ferdinand Verbiest miał zademonstrować taki pojazd cesarzowi chińskiemu, jednak nie ma na to żadnych dowod&oacute;w. Dlatego za pierwszego konstruktora &ndash; wynalazcę pojazdu mechanicznego &ndash; uznaje się Francuza o nazwisku Nicolas-Joseph Cugnot, kt&oacute;ry zaprezentował swoje pionierskie dzieło napędzane silnikiem parowym w roku 1769.</span></p>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">W 1870 roku Austriak Siegfried Marcus skonstruował, nienadający się do powszechnego użytku, prototyp pojazdu mechanicznego z benzynowym silnikiem o zapłonie iskrowym. Z kolei inny konstruktor, Niemiec Karl Benz, zbudował sw&oacute;j trzykołowy automobil w roku 1885 (w 1886 uzyskał patent). W tych samych latach prace w dziedzinie silnik&oacute;w spalinowych oraz pojazd&oacute;w napędzanych takimi silnikami prowadzili wsp&oacute;lnie Wilhelm Maybach i Gottlieb Daimler. Nie wiadomo jednak dokładnie, kto, jako pierwszy, skonstruował zastosowany do napędu samochod&oacute;w silnik o spalaniu wewnętrznym.</span></p>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\"><br /></span></p>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\"><br /></span></p>','2012-09-11 10:13:35','2012-09-11 11:38:33'),(2,'Samoloty','','2012-09-12 05:57:40','2012-09-12 05:57:40');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_translations`
--

DROP TABLE IF EXISTS `lesson_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lesson_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_lesson_translations_on_lesson_id` (`lesson_id`),
  KEY `index_lesson_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_translations`
--

LOCK TABLES `lesson_translations` WRITE;
/*!40000 ALTER TABLE `lesson_translations` DISABLE KEYS */;
INSERT INTO `lesson_translations` VALUES (1,1,'en','<div id=\"intro\">\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Toyota to jeden z największych producent&oacute;w samochod&oacute;w na świecie. W 2006 r. sprzedano ponad 8,8 mln modeli tej marki*<img src=\"../../../../../assets/toyota_history.jpg\" style=\"border: 2px solid black; float: right;\" height=\"169\" width=\"160\" /> na pięciu kontynentach. Toyota znajduje się wśr&oacute;d 10 najlepszych światowych przedsiębiorstw na liście Fortune Global 500**. Jest r&oacute;wnież najbardziej uznanym producentem samochod&oacute;w**, co zostało osiągnięte dzięki skoncentrowaniu się na zadowoleniu klienta. Nie bez znaczenia jest r&oacute;wnież system wartości obowiązujący w Toyocie, a mający swoje źr&oacute;dło w czasach, gdy w Japonii kształtowało się nowoczesne przedsiębiorstwo..</span></p>\r\n</div>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">&nbsp;&nbsp;&nbsp;&nbsp; Historia Toyoty rozpoczęła się pod koniec XIX wieku. W&oacute;wczas Sakichi Toyoda wynalazł pierwszy w Japonii mechaniczny warsztat tkacki, kt&oacute;ry zrewolucjonizował krajowy przemysł tekstylny. W styczniu 1918 r. Sakichi założył sp&oacute;łkę Toyoda Spinning &amp; Weaving Company. Przy pomocy swojego syna Kiichiro Toyody spełnił marzenie swojego życia i w 1924 r. zbudował automatyczny warsztat tkacki. Dwa lata p&oacute;źniej założył zakład Toyoda Automatic Loom Works.</span></p>\r\n<p></p>\r\n<p></p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">Podobnie jak jego ojciec Kiichiro był innowacyjnym wizjonerem. W latach dwudziestych XX w. przeby<img src=\"../../../../../assets/toyota_history2.jpg\" style=\"border: 2px solid black; float: right;\" height=\"169\" width=\"160\" />wał w Europie i Stanach Zjednoczonych, gdzie zainteresował się dopiero powstającą branżą motoryzacyjną. Dobrze zainwestował 100 000 funt&oacute;w, kt&oacute;re Sakichi Toyoda otrzymał za sprzedaż praw patentowych do automatycznego warsztatu tkackiego. Za pomocą tego kapitału Kiichiro stworzył podwaliny Toyota Motor Corporation (TMC), kt&oacute;ra powstała w 1937 r. Od krosien do samochod&oacute;w &ndash; działalność Toyoty zawsze cechowała się przekraczaniem utartych granic.</span></p>','Toyota','2012-09-11 10:14:00','2012-09-11 11:09:46'),(2,2,'en','<p style=\"text-align: justify;\"><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp;&nbsp; Japan Motors jest częścią Grupy PGD, działającej od 1992 roku największej firmy dealerskiej w Polsce. W okresie swojego funkcjonowania nasza firma ucieszyła nowymi samochodami już kilkadziesiąt tysięcy klient&oacute;w. Od października 2006 roku jesteśmy Autoryzowanym Dealerem Suzuki Motor Poland.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp;&nbsp; W naszych salonach mają Państwo możliwość poznania interesującej, szerokiej i regularnie wzbogacanej oferty Suzuki. Zapewniamy ja</span><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\"><img style=\"border: 2px solid black; float: right;\" src=\"../../../../../assets/Suzuki_history.jpg\" height=\"200\" width=\"320\" /></span><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">zdy testowe wszystkimi modelami Suzuki będącymi w bieżącej ofercie marki. </span><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\"> Chcąc zapewnić Państwu komfort i najwyższą jakość obsługi, pod gościnnym dachem Japan Motors oferujemy załatwienie wszelkich spraw związanych z zakupem samochodu - z jego ubezpieczeniem i finansowaniem (zar&oacute;wno poprzez kredyt, jak i leasing), a także sprzedaż Państwa używanego samochodu.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp; Pracownicy Japan Motors, kt&oacute;rzy regularnie podnoszą swoje kwalifikacje, służą fachowym doradztwem we wszystkich elementach związanych z zakupem i eksploatacją samochod&oacute;w Suzuki</span></p>','Suzuki','2012-09-11 10:15:21','2012-09-11 11:27:00'),(3,3,'en','<h2>Migawki z naszej przeszłości</h2>\r\n<p>W 2006 r. obchodziliśmy 75-lecie produkcji naszych samochod&oacute;w. Oto najważniejsze wydarzenia z tego okresu...</p>\r\n<table class=\"generic\">\r\n<tbody>\r\n<tr>\r\n<td width=\"60\">\r\n<h3>Lata dwudzieste XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/Jyujiro_Matsuda.jpg\" alt=\"Jyujiro Matsuda\" align=\"right\" />W 1920 r. Jyujiro Matsuda zakłada firmę pod nazwą Toyo Cork Kogyo Co., Ltd.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata trzydzieste XX w.</h3>\r\n</td>\r\n<td>\r\n<p>W 1931 r. rozpoczyna się produkcja tr&oacute;jkołowej ciężar&oacute;wki, Mazdago.</p>\r\n<p>Pierwsze logo Mazdy pojawia się w 1934 r. Inspirację do nazwy dał Ahura Mazda, starożytny b&oacute;g. Nazwa ta r&oacute;wnież przypomina bardzo wymowę nazwiska założyciela.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata sześćdziesiąte XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/Mazda_Cosmo_Sports_110S.jpg\" alt=\"Mazda Cosmos 110S\" align=\"right\" />Nasz pierwszy samoch&oacute;d osobowy, dwuosobowa Mazda R360 Coupe, zostaje wyprodukowany w 1960 r.</p>\r\n<p>W 1962 r. pojawia się 4-drzwiowa Mazda Carol.</p>\r\n<p>W 1963 r. zbudowaliśmy nasz milionowy samoch&oacute;d.</p>\r\n<p>Nasz pierwszy pojazd z silnikiem Wankla, Mazda Cosmo Sports 110S pojawia się w 1967 r. Od tej pory silnik Wankla odgrywa dużą rolę w historii Mazdy.</p>\r\n<p>W tym samym roku rozpoczyna się masowy eksport do Europy.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata siedemdziesiąte XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/Mazda_Familia_323.jpg\" alt=\"Mazda Familia\" align=\"right\" />W 1970 r. rozpoczyna się eksport do Stan&oacute;w Zjednoczonych.</p>\r\n<p>W tej dekadzie wprowadzono kilka nowych modeli. Wśr&oacute;d tych, kt&oacute;re umocniły naszą reputację, były Mazda Familia (323) oraz Mazda Capella (626), wprowadzone w 1977 r.</p>\r\n<p>W 1972 r. z taśmy schodzi pięciomilionowy samoch&oacute;d. W następnym roku łączny eksport wynosi 1 milion pojazd&oacute;w.</p>\r\n<p>W 1975 r. pojawia się logo Mazda.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata osiemdziesiąte XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/MX-5_NA.jpg\" alt=\"MX-5\" align=\"right\" />W 1981 r. utworzyliśmy Mazda (North America), Inc. oraz przedstawicielstwo Mazda Motors w Europie.</p>\r\n<p>W 1984 r. zmieniliśmy nazwę na Mazda Motor Corporation. W kolejnym roku nasza łączna dotychczasowa produkcja wyniosła 10 milion&oacute;w pojazd&oacute;w.</p>\r\n<p>Do 1986 r. 1,5 miliona z nich było wyposażone w silnik Wankla. W 1987 r. łączna suma przekracza 20 milion&oacute;w pojazd&oacute;w.</p>\r\n<p>Mazda Seria B została wprowadzona w 1985 r., jako jeden z kilku nowych modeli.<br /> W 1987 r. rozpoczęliśmy produkcję w Michigan w USA.</p>\r\n<p>W 1989 r. miało miejsce znaczące wydarzenie: na wystawie Chicago Motor Show po raz pierwszy prezentujemy Mazdę MX-5.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata dziewięćdziesiąte XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/Le_Mans.jpg\" alt=\"Le Mans\" align=\"right\" />W 1991 r. Mazda wygrywa dwudziestoczterogodzinny wyścig Le Mans modelem Mazda 787B. To pierwsze zwycięstwo japońskiego producenta i jedyne samochodu z silnikiem Wankla.</p>\r\n<p>W 1992 r. przyjmujemy Kartę Środowiska Naturalnego Mazdy.</p>\r\n<p>W 1994 r. zostajemy pierwszym japońskim producentem samochod&oacute;w, kt&oacute;ry otrzymał certyfikat ISO 9002.</p>\r\n<p>W 1996 r. jego miejsce zajmuje ISO 9001 - najwyższa możliwa do osiągnięcia norma. Ponownie jesteśmy pierwsi w Japonii.</p>\r\n<p>Obecne logo pojawiło się w 1997 r.</p>\r\n<p>W 1999 r. na drogę trafia pięćsettysięczna Mazda MX-5.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Pierwsza dekada XXI w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/RENESIS_rotary_engine.jpg\" alt=\"RENESIS rotary engine\" align=\"right\" />W 2002 r. \"Zoom-Zoom\" staje się filozofią marki.</p>\r\n<p>W 2003 r. pojawia się pierwsza wersja seryjna Mazdy RX-8. Jej silnik, RENESIS, wygrywa tytuł \"Silnik Roku\" w 2003 r. i 2004 r.</p>\r\n<p>W 2004 r. świętujemy 25-lecie wsp&oacute;łpracy z Fordem.</p>\r\n<p>W 2005 r. zostaje wprowadzona nowa wersja najlepiej sprzedającego się roadstera na świecie - Mazdy MX-5. Następuje aktualizacja Karty Środowiska Naturalnego Mazdy.</p>\r\n<p>Rok 2007 to rok premier nowych generacji modeli Mazda2 i Mazda6. W tym roku przedstawiliśmy r&oacute;wnież plan zmiejszenia zużycia paliwa w samochodach Mazdy nawet o 30% do 2015 r. - \"Zr&oacute;wnoważony Zoom-Zoom\".</p>\r\n<p>W 2008 r. przedstawiliśmy nową generację Mazdy3, a Mazda2 została nagrodzona tytułem Światowego Samochodu Roku. W tym roku r&oacute;wnież powstała Mazda Motor Poland.</p>\r\n<p>W 2009 r. wprowadziliśmy unikalny układ Mazda i-stop i zaprezentowaliśmy nową generację zespoł&oacute;w napędowych - Sky Concept. Rozpoczęliśmy r&oacute;wnież użyczanie naszym klientom Mazdy5 Premacy Hydrogen RE Hybrid, pierwszego na swiecie pojazdu hybrydowego z silnikiem rotacyjnym.</p>\r\n<p>W 2010 r. podczas salonu samochodowego w Genewie zaprezentowaliśmy nową generację Mazdy5. Zorganizowaliśmy też wyścig MX-5 Open Race dla uwieńczenia 20. rocznicy MX-5 w Europie.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>','Mazda','2012-09-11 10:15:34','2012-09-11 11:40:22'),(4,4,'en','<p><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BMW (niem. Bayerische Motoren Werke , pol. \"Bawarskie Zakłady Silnikowe\") &ndash; niemieckie przedsiębiorstwo produkujące samochody osobowe i motocykle oraz skutery pod marką BMW. Siedziba przedsiębiorstwa znajduje się w Monachium, w kraju związkowym Bawaria. BMW jest właścicielem r&oacute;wnież innych marek samochod&oacute;w: MINI, Rolls-Royce. Przedsiębiorstwo angażuje się także w liczne sporty motorowe.</span></p>\r\n<p><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">Model 3d samochodu marki BMW:</span><x3d id=\"someUniqueId\" showstat=\"false\" showlog=\"false\" x=\"110px\" y=\"100px\" width=\"618px\" height=\"250px\"> <scene> <inline url=\"/assets/car_setup.x3d\"></inline> <scene> </scene></scene></x3d></p>','BMW','2012-09-11 12:34:33','2012-09-12 11:24:56'),(5,5,'en','','Ferrari','2012-09-12 07:19:49','2012-09-12 07:19:49'),(6,6,'en','','Porsche','2012-09-12 07:20:03','2012-09-12 07:20:03');
/*!40000 ALTER TABLE `lesson_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lessons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `course_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,'Toyota','<div id=\"intro\">\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Toyota to jeden z największych producent&oacute;w samochod&oacute;w na świecie. W 2006 r. sprzedano ponad 8,8 mln modeli tej marki*<img src=\"../../../../../assets/toyota_history.jpg\" style=\"border: 2px solid black; float: right;\" height=\"169\" width=\"160\" /> na pięciu kontynentach. Toyota znajduje się wśr&oacute;d 10 najlepszych światowych przedsiębiorstw na liście Fortune Global 500**. Jest r&oacute;wnież najbardziej uznanym producentem samochod&oacute;w**, co zostało osiągnięte dzięki skoncentrowaniu się na zadowoleniu klienta. Nie bez znaczenia jest r&oacute;wnież system wartości obowiązujący w Toyocie, a mający swoje źr&oacute;dło w czasach, gdy w Japonii kształtowało się nowoczesne przedsiębiorstwo..</span></p>\r\n</div>\r\n<p><span style=\"font-family: arial,helvetica,sans-serif; font-size: medium;\">&nbsp;&nbsp;&nbsp;&nbsp; Historia Toyoty rozpoczęła się pod koniec XIX wieku. W&oacute;wczas Sakichi Toyoda wynalazł pierwszy w Japonii mechaniczny warsztat tkacki, kt&oacute;ry zrewolucjonizował krajowy przemysł tekstylny. W styczniu 1918 r. Sakichi założył sp&oacute;łkę Toyoda Spinning &amp; Weaving Company. Przy pomocy swojego syna Kiichiro Toyody spełnił marzenie swojego życia i w 1924 r. zbudował automatyczny warsztat tkacki. Dwa lata p&oacute;źniej założył zakład Toyoda Automatic Loom Works.</span></p>\r\n<p></p>\r\n<p></p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">Podobnie jak jego ojciec Kiichiro był innowacyjnym wizjonerem. W latach dwudziestych XX w. przeby<img src=\"../../../../../assets/toyota_history2.jpg\" style=\"border: 2px solid black; float: right;\" height=\"169\" width=\"160\" />wał w Europie i Stanach Zjednoczonych, gdzie zainteresował się dopiero powstającą branżą motoryzacyjną. Dobrze zainwestował 100 000 funt&oacute;w, kt&oacute;re Sakichi Toyoda otrzymał za sprzedaż praw patentowych do automatycznego warsztatu tkackiego. Za pomocą tego kapitału Kiichiro stworzył podwaliny Toyota Motor Corporation (TMC), kt&oacute;ra powstała w 1937 r. Od krosien do samochod&oacute;w &ndash; działalność Toyoty zawsze cechowała się przekraczaniem utartych granic.</span></p>',1,'2012-09-11 10:14:00','2012-09-11 11:09:46'),(2,'Suzuki','<p style=\"text-align: justify;\"><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp;&nbsp; Japan Motors jest częścią Grupy PGD, działającej od 1992 roku największej firmy dealerskiej w Polsce. W okresie swojego funkcjonowania nasza firma ucieszyła nowymi samochodami już kilkadziesiąt tysięcy klient&oacute;w. Od października 2006 roku jesteśmy Autoryzowanym Dealerem Suzuki Motor Poland.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp;&nbsp; W naszych salonach mają Państwo możliwość poznania interesującej, szerokiej i regularnie wzbogacanej oferty Suzuki. Zapewniamy ja</span><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\"><img style=\"border: 2px solid black; float: right;\" src=\"../../../../../assets/Suzuki_history.jpg\" height=\"200\" width=\"320\" /></span><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">zdy testowe wszystkimi modelami Suzuki będącymi w bieżącej ofercie marki. </span><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\"> Chcąc zapewnić Państwu komfort i najwyższą jakość obsługi, pod gościnnym dachem Japan Motors oferujemy załatwienie wszelkich spraw związanych z zakupem samochodu - z jego ubezpieczeniem i finansowaniem (zar&oacute;wno poprzez kredyt, jak i leasing), a także sprzedaż Państwa używanego samochodu.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp; Pracownicy Japan Motors, kt&oacute;rzy regularnie podnoszą swoje kwalifikacje, służą fachowym doradztwem we wszystkich elementach związanych z zakupem i eksploatacją samochod&oacute;w Suzuki</span></p>',1,'2012-09-11 10:15:21','2012-09-11 11:27:00'),(3,'Mazda','<h2>Migawki z naszej przeszłości</h2>\r\n<p>W 2006 r. obchodziliśmy 75-lecie produkcji naszych samochod&oacute;w. Oto najważniejsze wydarzenia z tego okresu...</p>\r\n<table class=\"generic\">\r\n<tbody>\r\n<tr>\r\n<td width=\"60\">\r\n<h3>Lata dwudzieste XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/Jyujiro_Matsuda.jpg\" alt=\"Jyujiro Matsuda\" align=\"right\" />W 1920 r. Jyujiro Matsuda zakłada firmę pod nazwą Toyo Cork Kogyo Co., Ltd.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata trzydzieste XX w.</h3>\r\n</td>\r\n<td>\r\n<p>W 1931 r. rozpoczyna się produkcja tr&oacute;jkołowej ciężar&oacute;wki, Mazdago.</p>\r\n<p>Pierwsze logo Mazdy pojawia się w 1934 r. Inspirację do nazwy dał Ahura Mazda, starożytny b&oacute;g. Nazwa ta r&oacute;wnież przypomina bardzo wymowę nazwiska założyciela.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata sześćdziesiąte XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/Mazda_Cosmo_Sports_110S.jpg\" alt=\"Mazda Cosmos 110S\" align=\"right\" />Nasz pierwszy samoch&oacute;d osobowy, dwuosobowa Mazda R360 Coupe, zostaje wyprodukowany w 1960 r.</p>\r\n<p>W 1962 r. pojawia się 4-drzwiowa Mazda Carol.</p>\r\n<p>W 1963 r. zbudowaliśmy nasz milionowy samoch&oacute;d.</p>\r\n<p>Nasz pierwszy pojazd z silnikiem Wankla, Mazda Cosmo Sports 110S pojawia się w 1967 r. Od tej pory silnik Wankla odgrywa dużą rolę w historii Mazdy.</p>\r\n<p>W tym samym roku rozpoczyna się masowy eksport do Europy.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata siedemdziesiąte XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/Mazda_Familia_323.jpg\" alt=\"Mazda Familia\" align=\"right\" />W 1970 r. rozpoczyna się eksport do Stan&oacute;w Zjednoczonych.</p>\r\n<p>W tej dekadzie wprowadzono kilka nowych modeli. Wśr&oacute;d tych, kt&oacute;re umocniły naszą reputację, były Mazda Familia (323) oraz Mazda Capella (626), wprowadzone w 1977 r.</p>\r\n<p>W 1972 r. z taśmy schodzi pięciomilionowy samoch&oacute;d. W następnym roku łączny eksport wynosi 1 milion pojazd&oacute;w.</p>\r\n<p>W 1975 r. pojawia się logo Mazda.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata osiemdziesiąte XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/MX-5_NA.jpg\" alt=\"MX-5\" align=\"right\" />W 1981 r. utworzyliśmy Mazda (North America), Inc. oraz przedstawicielstwo Mazda Motors w Europie.</p>\r\n<p>W 1984 r. zmieniliśmy nazwę na Mazda Motor Corporation. W kolejnym roku nasza łączna dotychczasowa produkcja wyniosła 10 milion&oacute;w pojazd&oacute;w.</p>\r\n<p>Do 1986 r. 1,5 miliona z nich było wyposażone w silnik Wankla. W 1987 r. łączna suma przekracza 20 milion&oacute;w pojazd&oacute;w.</p>\r\n<p>Mazda Seria B została wprowadzona w 1985 r., jako jeden z kilku nowych modeli.<br /> W 1987 r. rozpoczęliśmy produkcję w Michigan w USA.</p>\r\n<p>W 1989 r. miało miejsce znaczące wydarzenie: na wystawie Chicago Motor Show po raz pierwszy prezentujemy Mazdę MX-5.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Lata dziewięćdziesiąte XX w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/Le_Mans.jpg\" alt=\"Le Mans\" align=\"right\" />W 1991 r. Mazda wygrywa dwudziestoczterogodzinny wyścig Le Mans modelem Mazda 787B. To pierwsze zwycięstwo japońskiego producenta i jedyne samochodu z silnikiem Wankla.</p>\r\n<p>W 1992 r. przyjmujemy Kartę Środowiska Naturalnego Mazdy.</p>\r\n<p>W 1994 r. zostajemy pierwszym japońskim producentem samochod&oacute;w, kt&oacute;ry otrzymał certyfikat ISO 9002.</p>\r\n<p>W 1996 r. jego miejsce zajmuje ISO 9001 - najwyższa możliwa do osiągnięcia norma. Ponownie jesteśmy pierwsi w Japonii.</p>\r\n<p>Obecne logo pojawiło się w 1997 r.</p>\r\n<p>W 1999 r. na drogę trafia pięćsettysięczna Mazda MX-5.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h3>Pierwsza dekada XXI w.</h3>\r\n</td>\r\n<td>\r\n<p><img src=\"http://www.mazda.pl/upload/global/about_mazda/history/RENESIS_rotary_engine.jpg\" alt=\"RENESIS rotary engine\" align=\"right\" />W 2002 r. \"Zoom-Zoom\" staje się filozofią marki.</p>\r\n<p>W 2003 r. pojawia się pierwsza wersja seryjna Mazdy RX-8. Jej silnik, RENESIS, wygrywa tytuł \"Silnik Roku\" w 2003 r. i 2004 r.</p>\r\n<p>W 2004 r. świętujemy 25-lecie wsp&oacute;łpracy z Fordem.</p>\r\n<p>W 2005 r. zostaje wprowadzona nowa wersja najlepiej sprzedającego się roadstera na świecie - Mazdy MX-5. Następuje aktualizacja Karty Środowiska Naturalnego Mazdy.</p>\r\n<p>Rok 2007 to rok premier nowych generacji modeli Mazda2 i Mazda6. W tym roku przedstawiliśmy r&oacute;wnież plan zmiejszenia zużycia paliwa w samochodach Mazdy nawet o 30% do 2015 r. - \"Zr&oacute;wnoważony Zoom-Zoom\".</p>\r\n<p>W 2008 r. przedstawiliśmy nową generację Mazdy3, a Mazda2 została nagrodzona tytułem Światowego Samochodu Roku. W tym roku r&oacute;wnież powstała Mazda Motor Poland.</p>\r\n<p>W 2009 r. wprowadziliśmy unikalny układ Mazda i-stop i zaprezentowaliśmy nową generację zespoł&oacute;w napędowych - Sky Concept. Rozpoczęliśmy r&oacute;wnież użyczanie naszym klientom Mazdy5 Premacy Hydrogen RE Hybrid, pierwszego na swiecie pojazdu hybrydowego z silnikiem rotacyjnym.</p>\r\n<p>W 2010 r. podczas salonu samochodowego w Genewie zaprezentowaliśmy nową generację Mazdy5. Zorganizowaliśmy też wyścig MX-5 Open Race dla uwieńczenia 20. rocznicy MX-5 w Europie.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>',1,'2012-09-11 10:15:34','2012-09-11 11:40:22'),(4,'BMW','<p><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BMW (niem. Bayerische Motoren Werke , pol. \"Bawarskie Zakłady Silnikowe\") &ndash; niemieckie przedsiębiorstwo produkujące samochody osobowe i motocykle oraz skutery pod marką BMW. Siedziba przedsiębiorstwa znajduje się w Monachium, w kraju związkowym Bawaria. BMW jest właścicielem r&oacute;wnież innych marek samochod&oacute;w: MINI, Rolls-Royce. Przedsiębiorstwo angażuje się także w liczne sporty motorowe.</span></p>\r\n<p><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">Model 3d samochodu marki BMW:</span><x3d id=\"someUniqueId\" showstat=\"false\" showlog=\"false\" x=\"110px\" y=\"100px\" width=\"618px\" height=\"250px\"> <scene> <inline url=\"/assets/car_setup.x3d\"></inline> <scene> </scene></scene></x3d></p>',1,'2012-09-11 12:34:33','2012-09-12 11:24:56'),(5,'Ferrari','',1,'2012-09-12 07:19:49','2012-09-12 07:19:49'),(6,'Porsche','',1,'2012-09-12 07:20:03','2012-09-12 07:20:03');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `lesson_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'<p><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\"><strong>COROLLA E11</strong></span></p>\r\n<ul id=\"gallery\" class=\"rvnGallery\">\r\n<li><img src=\"../../../../../../../assets/toyota_liftbkack1.jpg\" alt=\"pierwszy obrazek\" />\r\n<p>Toyota Corolla prz&oacute;d</p>\r\n</li>\r\n<li><img src=\"../../../../../../../assets/toyota_liftbkack2.jpg\" alt=\"drugi obrazek\" />\r\n<p>Toyota Corolla wnętrze</p>\r\n</li>\r\n<li><img src=\"../../../../../../../assets/toyota_liftbkack3.jpg\" alt=\"drugi obrazek\" />\r\n<p>Toyota Corolla tył</p>\r\n</li>\r\n</ul>\r\n<p><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp;&nbsp; Auto trafiło do salon&oacute;w w 1997 roku i z uwagi na dyskusyjnej urody sylwetkę (inspirowaną światem owad&oacute;w &ndash; charakterystyczną osłonę chłodnicy wzorowano np. na plastrze miodu) wzbudziło dużą sensację. Mimo że pojazd zupełnie nie przypominał poprzedniej generacji, wiele rozwiązań technicznych &ndash; w tym np. płyta podłogowa &ndash; pozostało bez zmian. Takie podejście miało dobre i złe strony. Bazując na sprawdzonych rozwiązaniach uniknięto chor&oacute;b wieku dziecięcego, ale niewielki, wynoszący 2465 mm, rozstaw osi nie pozwolił na wygospodarowanie zbyt wielkiej ilości miejsca w kabinie. </span><br /><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp; Corolla oferowana była w aż czterech r&oacute;żnych wersjach nadwoziowych. Klienci wybierać mogli między: trzydrzwiowym hatchbackiem, czterodrzwiowym sedanem oraz pięciodrzwiowymi liftbackami i kombi. W przypadku tego ostatniego konstruktorzy nie wykazali się jednak niczym szczeg&oacute;lnym &ndash; bagażnik o pojemności zaledwie 308 litr&oacute;w dyskwalifikuje auto, jako pojazd stricte użytkowy. Rodziny omijać powinny r&oacute;wnież wersję trzydrzwiową &ndash; ta &ndash; z uwagi np. na kr&oacute;tko zestopniowaną, sześciostopniową skrzynię bieg&oacute;w (model G6) adresowana była raczej do singli z żyłką sportowca. </span><br /><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp; Najlepszym rozwiązaniem będzie sedan lub liftback, przy czym ten ostatni oferuje nieco lepiej zaprojektowaną przestrzeń ładunkową. Bagażniki obu modeli są wprawdzie bardzo zbliżone pojemnościowo, ale w sedanie zawiasy klapy wnikają głęboko do wewnątrz skutecznie ograniczając przestrzeń. Problemem może być r&oacute;wnież przew&oacute;z większych przedmiot&oacute;w &ndash; po złożeniu oparć tylnej kanapy luka między bagażnikiem a przedziałem pasażerskim &ndash; z uwagi na biegnące tamtędy wzmocnienia - jest dość wąska.</span><br /><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp; Ponieważ ekscentryczna stylistyka nie wszystkim przypadła do gustu, Toyota zdecydowała się na lifting karoserii już w trzy lata po debiucie modelu. W 2000 roku znacząco zmienił się pas przedni (zniknęly okrągłe reflektory), wprowadzono r&oacute;wnież niewielkie modyfikacje na konsoli środkowej. Do palety jednostek napędowych dołączyły w&oacute;wczas benzynowe silniki wyposażone w system zmiennych faz rozrządu VVT-I. </span><br /><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp; Jeśli priorytetem przy wyborze auta jest dla nas ilość miejsca w kabinie, decyzja o zakupie Corolli nie będzie dobrym wyborem. Zaprojektowane gł&oacute;wnie z myślą o Japończykach wnętrze nie grzeszy przestrzenią, przyciski, klamki i przełączniki są bardzo oszczędne w formie, fotele mają kr&oacute;tkie siedziska i niezbyt dobrze podpierają ciało w zakrętach. Złego słowa nie można za to powiedzieć o spasowaniu czy jakości materiał&oacute;w wykończeniowych. Nawet &bdquo;szmaciane&rdquo; tapicerki świetnie znoszą pr&oacute;bę czasu, z niezbyt dobrego plastiki wykonano jedynie wieniec koła kierownicy. R&oacute;wnież z punktu widzenia ergonomii Corolli niewiele można zarzucić &ndash; obsługa wszystkich system&oacute;w pokładowych jest intuicyjna i nie wymaga studiowania instrukcji obsługi. </span><br /><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp; W momencie debiutu Corolla dostępna była z trzema jednostkami napędowymi - dwoma benzynowymi (1,4 l. 88 KM i 1,6 l. 111 KM) oraz jednym, wolnossącym silnikiem wysokoprężnym (72 KM). Chociaż Polacy darzą szczeg&oacute;lną sympatią zwłaszcza silniki Diesla, 72-konną jednostkę ciężko polecić z czystym sumieniem. Archaiczna budowa sprawia, że silnik wytrzymuje wprawdzie olbrzymie przebiegi, ale wibracje, kultura pracy i kiepskie osiągi powodują, że jazda z pewnością nie należy do przyjemności. </span><br /><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp; O wiele lepiej wypadają na tym tle jednostki benzynowe. Niezależnie od pojemności, oferują stosunkowo niezłe osiągi, wysoką kulturę pracy i &ndash; co warto podkreślić &ndash; rozsądne zużycie paliwa. W normalnej eksploatacji apetyt jednostki 1,4 l. rzadko przekracza 7 l./100 KM. Na podobnym poziomie kształtuje się zużycie oleju napędowego przez stary konstrukcyjnie silnik Diesla, a komfort podr&oacute;żowania wersją benzynową jest niepor&oacute;wnywalnie wyższy. </span><br /><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp; Przy okazji restylingu nadwozia w gamie jednostek napędowych pojawiły się benzynowe 1,4 l. i 1,6 l. wyposażone w system zmiennych faz rozrządu VVT-i. Oba zapewniają autu świetną dynamikę, ale ich niezawodność nie jest już tak wysoka, jak w przypadku poprzednik&oacute;w. To samo dotyczy r&oacute;wnież wprowadzonego w miejsce odmiany 72-konnej, nowego doładowanego silnika Diesla 2,0 l. D-4D. Wprawdzie kulturą pracy i osiągami nie ustępuje on w niczym wsp&oacute;łczesnym jednostkom wysokoprężnym, ale naprawy wtryskiwaczy, turbosprężarki czy koła zamachowego nie należą do tanich. Podsumowując &ndash; większości kierowc&oacute;w na pewno zadowoli podstawowy silnik 1,4 l. (88 KM). Oczekującym dużej dynamiki śmiało polecamy jednostkę 1,6 l. (110 KM). W obu przypadkach koszty obsługi i zużycie paliwa nie powinny rujnować domowego budżetu. </span><br /><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp; Co najważniejsze, Corolla E11 &ndash; zasłużenie &ndash; cieszy się opinią auta niemalże niezniszczalnego. Usterki, nawet te drobne, zdarzają się sporadycznie, ceny części zamiennych &ndash; wbrew pozorom &ndash; nie są wcale wysokie. Zwłaszcza starsze jednostki benzynowe pochwalić się mogą świetną opinią, właściwie trudno wskazać ich słabe punkty. W przypadku nowszych &ndash; z systemem VVT-i &ndash; trzeba się będzie pogodzić ze stosunkowo dużym apetytem na olej. Z czasem pojawić się też mogą niewielkie wycieki z układu napędowego (simmering między silnikiem a skrzynią bieg&oacute;w). W autach wyprodukowanych przed faceliftingiem często występującą przypadłością jest obrywanie się g&oacute;rnych uszczelek reflektor&oacute;w przednich. Na szczęście, poza walorami estetycznymi, dolegliwość ta nie wpływa zupełnie na nic. </span><br /><br /><span style=\"font-size: medium; font-family: arial,helvetica,sans-serif;\">&nbsp;&nbsp; Najwięcej usterek przysporzyć może zawieszenie. Zwłaszcza w polskich warunkach często do wymiany kwalifikują się łączniki stabilizator&oacute;w i tuleje metalowo-gumowe. Warto też dokładnie skontrolować nadwozie pod kątem korozji. Rdza atakowała gł&oacute;wnie samochody wyprodukowane w Japonii (nadkola tylne), to zasługa kiepskiej powłoki lakierniczej i długiej podr&oacute;ży morskiej przez ocean. Czasami zdarzają się r&oacute;wnież usterki elektryki (centralne zamki, podświetlenie tablicy przyrząd&oacute;w).</span></p>',1,'2012-09-11 10:14:15','2012-09-11 12:33:15','Corolla'),(2,'',1,'2012-09-12 10:24:08','2012-09-12 10:24:08','Auris'),(3,'',1,'2012-09-12 10:24:24','2012-09-12 10:24:24','Rav4'),(4,'',1,'2012-09-12 10:25:05','2012-09-12 10:25:05','Land Cruiser');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','2012-09-11 05:45:45','2012-09-11 05:45:45'),(2,'Moderator','2012-09-11 05:46:23','2012-09-11 05:46:23'),(3,'Guest','2012-09-11 05:46:48','2012-09-11 05:46:48');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(3,2),(3,3),(3,4);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120716093032'),('20120718123809'),('20120718123830'),('20120718123845'),('20120720081644'),('20120720091644'),('20120807062713'),('20120807071913'),('20120807125416'),('20120820073301');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_translations`
--

DROP TABLE IF EXISTS `user_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_translations_on_user_id` (`user_id`),
  KEY `index_user_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_translations`
--

LOCK TABLES `user_translations` WRITE;
/*!40000 ALTER TABLE `user_translations` DISABLE KEYS */;
INSERT INTO `user_translations` VALUES (1,1,'en','admin',NULL,NULL,NULL,'999e8383e91e52f8b6a13d3f83b85dec7cb264a3','949dd8f3b02ff1429644f8c2080b1d797c51fd0e','2012-09-11 05:47:38','2012-09-11 05:47:38'),(2,2,'en','guest',NULL,NULL,NULL,'ec03c55464a9208c46283b0891b596221540be54','95d7df789d3a7cd38e2e080bf7a70547b1e49202','2012-09-11 05:47:55','2012-09-11 05:47:55'),(3,3,'en','Damian',NULL,NULL,NULL,'3e608cbe9f000d53bd3cf1776a662fa20afb1a79','2eeba2b3ebe40d43c443b93a999edc68b869f200','2012-09-12 07:29:15','2012-09-12 07:29:15'),(4,4,'en','Nowy_użytkownik',NULL,NULL,NULL,'60876d67d0435c17c5aef7ec5be2ecbcf33fed7a','cca53ef27653a59b219621f065650d14a9afe01a','2012-09-12 11:32:29','2012-09-12 11:32:29');
/*!40000 ALTER TABLE `user_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin',NULL,NULL,NULL,'999e8383e91e52f8b6a13d3f83b85dec7cb264a3','949dd8f3b02ff1429644f8c2080b1d797c51fd0e','2012-09-11 05:47:38','2012-09-11 05:47:38'),(2,'guest',NULL,NULL,NULL,'ec03c55464a9208c46283b0891b596221540be54','95d7df789d3a7cd38e2e080bf7a70547b1e49202','2012-09-11 05:47:55','2012-09-11 05:47:55'),(3,'Damian',NULL,NULL,NULL,'3e608cbe9f000d53bd3cf1776a662fa20afb1a79','2eeba2b3ebe40d43c443b93a999edc68b869f200','2012-09-12 07:29:15','2012-09-12 07:29:15'),(4,'Nowy_użytkownik',NULL,NULL,NULL,'60876d67d0435c17c5aef7ec5be2ecbcf33fed7a','cca53ef27653a59b219621f065650d14a9afe01a','2012-09-12 11:32:29','2012-09-12 11:32:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-12 14:48:04
