-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment2
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `akses`
--

DROP TABLE IF EXISTS `akses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `akses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `level_user_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `akeses` int NOT NULL,
  `tambah` int NOT NULL,
  `edit` int NOT NULL,
  `delete` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akses`
--

LOCK TABLES `akses` WRITE;
/*!40000 ALTER TABLE `akses` DISABLE KEYS */;
/*!40000 ALTER TABLE `akses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (11,'2014_10_12_100000_create_password_resets_table',1),(12,'2021_07_16_015234_users',2),(13,'2021_07_19_034919_akses',2),(14,'2021_07_29_141344_pemasukan',2),(15,'2021_07_30_153201_pengeluaran',2),(16,'2021_08_06_081020_create_orderlists_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderlists`
--

DROP TABLE IF EXISTS `orderlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderlists`
--

LOCK TABLES `orderlists` WRITE;
/*!40000 ALTER TABLE `orderlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemasukans`
--

DROP TABLE IF EXISTS `pemasukans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pemasukans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pemasukans_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemasukans`
--

LOCK TABLES `pemasukans` WRITE;
/*!40000 ALTER TABLE `pemasukans` DISABLE KEYS */;
INSERT INTO `pemasukans` VALUES (1,'Nannette Henden','Spice - Chili Powder Mexican','1','¥277232895.01','2021-08-22 17:00:00',NULL),(2,'Angie Sign','Sugar Thermometer','2','¥260578069.32','2021-06-03 17:00:00',NULL),(3,'Sharity Fallon','Scallops - Live In Shell','3','¥110923892.64','2021-06-21 17:00:00',NULL),(4,'Silvano Blaymires','Sausage - Chorizo','4','¥145665900.29','2021-05-30 17:00:00',NULL),(5,'Rosamond Jacobovitch','Raspberries - Frozen','5','¥205893598.13','2021-04-26 17:00:00',NULL),(6,'Tatiana Oxtiby','Jam - Strawberry, 20 Ml Jar','6','¥294442446.57','2021-02-25 17:00:00',NULL),(7,'Daniella Davidovich','Beer - Camerons Cream Ale','7','¥224622630.93','2021-06-28 17:00:00',NULL),(8,'Adolphus Chessell','Chips - Assorted','8','¥177024056.03','2021-02-12 17:00:00',NULL),(9,'Aeriell Pennicard','Cornish Hen','9','¥101287471.52','2021-03-25 17:00:00',NULL),(10,'Janelle Ducket','Cheese - Le Cru Du Clocher','10','¥207552382.56','2021-02-07 17:00:00',NULL),(11,'Fifi Sertin','Steam Pan Full Lid','11','¥112991701.27','2021-02-22 17:00:00',NULL),(12,'Honoria Jeffree','Calaloo','12','¥178300529.41','2021-01-15 17:00:00',NULL),(13,'Melonie Aggus','Cheese - Mix','13','¥243802452.14','2021-08-28 17:00:00',NULL),(14,'Fidel Pinson','Lidsoupcont Rp12dn','14','¥156808070.16','2021-04-19 17:00:00',NULL),(15,'D\'arcy Betchley','Scotch - Queen Anne','15','¥237153897.49','2021-07-26 17:00:00',NULL),(16,'Seline Kopfen','Pork - Hock And Feet Attached','16','¥205680663.76','2021-05-03 17:00:00',NULL),(17,'Ali Siggin','Cake - Mini Cheesecake','17','¥264369397.19','2021-04-22 17:00:00',NULL),(18,'Annabelle Iacomettii','Lobster - Tail 6 Oz','18','¥168313718.51','2021-08-27 17:00:00',NULL),(19,'Fee Spenley','Table Cloth 144x90 White','19','¥285035133.65','2021-05-12 17:00:00',NULL),(20,'Michael Hoyer','Soup - Cream Of Broccoli, Dry','20','¥155862209.88','2021-06-29 17:00:00',NULL),(21,'Zechariah Fossett','V8 - Vegetable Cocktail','21','¥232045331.05','2021-07-17 17:00:00',NULL),(22,'Daile Bottoms','Cheese - Brie, Cups 125g','22','¥228811771.36','2021-01-22 17:00:00',NULL),(23,'Melosa Borgnet','Canadian Emmenthal','23','¥220734578.39','2021-01-15 17:00:00',NULL),(24,'Neil Shilstone','Lemonade - Kiwi, 591 Ml','24','¥237620622.60','2021-01-05 17:00:00',NULL),(25,'Jock Oels','Dried Peach','25','¥186044033.09','2021-01-02 17:00:00',NULL),(26,'Guy Isson','Jicama','26','¥283333972.13','2021-03-17 17:00:00',NULL),(27,'Eleonora Jannaway','Cheese - Roquefort Pappillon','27','¥218635967.45','2021-02-16 17:00:00',NULL),(28,'Claudina Aggett','Meldea Green Tea Liquor','28','¥168879425.55','2021-04-11 17:00:00',NULL),(29,'Cami Spring','Tray - Foam, Square 4 - S','29','¥283850857.93','2021-01-20 17:00:00',NULL),(30,'Dorry Bonifazio','Pasta - Bauletti, Chicken White','30','¥134462972.56','2021-08-02 17:00:00',NULL),(31,'Barty Stannah','Beef - Striploin','31','¥232586675.98','2021-04-30 17:00:00',NULL),(32,'Poul Isham','Lychee','32','¥296884360.01','2021-01-18 17:00:00',NULL),(33,'Nadiya Carver','Bouq All Italian - Primerba','33','¥195116957.72','2021-01-20 17:00:00',NULL),(34,'Marni McQuillen','Sesame Seed Black','34','¥186537920.83','2021-02-23 17:00:00',NULL),(35,'Haze Adcock','Shallots','35','¥168634706.84','2021-07-04 17:00:00',NULL),(36,'Elena Moat','Cheese - Mozzarella','36','¥186068654.16','2021-05-23 17:00:00',NULL),(37,'Sonnnie Thirlwall','Lettuce - Belgian Endive','37','¥147484597.19','2021-04-23 17:00:00',NULL),(38,'Christoph Glossop','Monkfish - Fresh','38','¥210239809.28','2021-07-13 17:00:00',NULL),(39,'Baillie Gerler','Salt And Pepper Mix - White','39','¥245514019.11','2021-01-24 17:00:00',NULL),(40,'Gabey Fryatt','Wine - Prem Select Charddonany','40','¥298176953.58','2021-04-21 17:00:00',NULL),(41,'Willow Duhig','Veal - Brisket, Provimi,bnls','41','¥288652925.10','2021-01-28 17:00:00',NULL),(42,'Virgie Lacroutz','Crab Brie In Phyllo','42','¥268278440.51','2021-08-14 17:00:00',NULL),(43,'Tandie Fasson','Easy Off Oven Cleaner','43','¥145509856.81','2021-05-05 17:00:00',NULL),(44,'Vevay Derx','Wine - Beringer Founders Estate','44','¥260581820.17','2021-05-06 17:00:00',NULL),(45,'Malory Venton','Wakami Seaweed','45','¥293161255.78','2021-04-26 17:00:00',NULL),(46,'Weber Clevely','Cheese - Grie Des Champ','46','¥290428486.09','2021-01-18 17:00:00',NULL),(47,'Remus Richin','Parsley - Fresh','47','¥293037240.89','2021-06-23 17:00:00',NULL),(48,'Johan Benediktovich','Beer - Moosehead','48','¥243327196.27','2021-07-04 17:00:00',NULL),(49,'Claretta Dufer','Apple - Macintosh','49','¥149395253.65','2021-05-19 17:00:00',NULL),(50,'Susy Abthorpe','Soup - Beef, Base Mix','50','¥177530093.41','2021-08-21 17:00:00',NULL),(51,'Diahann Loraine','Lettuce - Boston Bib','51','¥109900276.34','2021-05-08 17:00:00',NULL),(52,'Selinda Newbold','Mushroom - Chantrelle, Fresh','52','¥138616203.77','2021-05-24 17:00:00',NULL),(53,'Flory Beric','Sprouts - China Rose','53','¥242871494.63','2021-06-15 17:00:00',NULL),(54,'Anselm Clixby','Capicola - Hot','54','¥164908609.96','2021-05-01 17:00:00',NULL),(55,'Thayne Burgoine','Icecream - Dstk Strw Chseck','55','¥248942024.82','2021-01-16 17:00:00',NULL),(56,'Merle Fontes','Tomatoes - Heirloom','56','¥194891232.74','2021-05-23 17:00:00',NULL),(57,'Teodora Titmarsh','Wiberg Super Cure','57','¥269287486.98','2021-07-10 17:00:00',NULL),(58,'Nixie Hariot','Iced Tea Concentrate','58','¥214401556.34','2021-01-04 17:00:00',NULL),(59,'Mellisent Ceccoli','Crab - Back Fin Meat, Canned','59','¥282039591.74','2021-02-17 17:00:00',NULL),(60,'Yul Barstowk','Eel Fresh','60','¥183702594.07','2021-04-19 17:00:00',NULL),(61,'Shayla Sammonds','Wine - Riesling Alsace Ac 2001','61','¥134325062.42','2021-04-27 17:00:00',NULL),(62,'Olivie Bromet','Tea - Darjeeling, Azzura','62','¥171178605.40','2020-12-31 17:00:00',NULL),(63,'Eulalie Churchill','Soup Campbells - Italian Wedding','63','¥126921848.47','2021-03-26 17:00:00',NULL),(64,'Beilul Gates','Hersey Shakes','64','¥122400310.61','2021-08-25 17:00:00',NULL),(65,'Lorne Edinburgh','Beef Tenderloin Aaa','65','¥231136177.28','2021-02-15 17:00:00',NULL),(66,'Kirsten Satteford','Plasticforkblack','66','¥176055184.01','2021-01-15 17:00:00',NULL),(67,'Marjy Jephson','Sole - Iqf','67','¥133399322.44','2021-06-07 17:00:00',NULL),(68,'Gill Lydden','Hot Choc Vending','68','¥294278385.14','2021-05-04 17:00:00',NULL),(69,'Devin MacKeague','Wonton Wrappers','69','¥137759208.91','2021-05-29 17:00:00',NULL),(70,'Jeno Kernaghan','Cranberries - Frozen','70','¥148673738.21','2021-08-03 17:00:00',NULL),(71,'Jennine Baccup','Beef - Ox Tail, Frozen','71','¥180640020.82','2021-08-19 17:00:00',NULL),(72,'Shellysheldon Gillinghams','Scallop - St. Jaques','72','¥154190840.48','2021-03-01 17:00:00',NULL),(73,'Chip MacCook','Cornflakes','73','¥198206915.09','2021-02-13 17:00:00',NULL),(74,'Zea Dafydd','Evaporated Milk - Skim','74','¥100639193.08','2021-03-01 17:00:00',NULL),(75,'Nona Karolowski','Coriander - Seed','75','¥259341707.50','2021-01-26 17:00:00',NULL),(76,'Bambi Basley','Beer - Upper Canada Light','76','¥178056154.68','2021-07-05 17:00:00',NULL),(77,'Ibrahim Wasson','Yeast - Fresh, Fleischman','77','¥104472144.41','2021-06-20 17:00:00',NULL),(78,'Sayre Mahedy','Crab - Imitation Flakes','78','¥113162695.64','2021-05-14 17:00:00',NULL),(79,'Thorstein McHaffy','Flavouring - Rum','79','¥170494712.39','2021-05-23 17:00:00',NULL),(80,'Manda Brooke','Coffee Cup 8oz 5338cd','80','¥192679593.65','2021-08-28 17:00:00',NULL),(81,'Jasmina Wolford','Nut - Macadamia','81','¥127802451.21','2021-08-18 17:00:00',NULL),(82,'Donny Chark','Wiberg Super Cure','82','¥279290100.31','2021-07-07 17:00:00',NULL),(83,'Moritz Albarez','Grapes - Green','83','¥233373719.04','2021-07-06 17:00:00',NULL),(84,'Courtnay McAne','Mushroom - Chanterelle Frozen','84','¥224127928.42','2021-05-13 17:00:00',NULL),(85,'Gil Hursey','Beer - Creemore','85','¥243312971.75','2021-01-01 17:00:00',NULL),(86,'Latia Kilbourne','Muffin - Bran Ind Wrpd','86','¥283457280.32','2021-07-29 17:00:00',NULL),(87,'Rustin Cuphus','Venison - Denver Leg Boneless','87','¥132818839.87','2021-05-04 17:00:00',NULL),(88,'Fiann Cardenoza','Pasta - Cannelloni, Sheets, Fresh','88','¥272136610.45','2021-07-15 17:00:00',NULL),(89,'Kristel Baldack','Fenngreek Seed','89','¥233947516.46','2021-02-05 17:00:00',NULL),(90,'Steve Tremmil','Lambcasing','90','¥294684406.04','2021-01-17 17:00:00',NULL),(91,'Janaye Cotman','Muffin Orange Individual','91','¥195612948.59','2021-08-22 17:00:00',NULL),(92,'Gilda Pordall','Bread - Granary Small Pull','92','¥113628206.95','2021-05-18 17:00:00',NULL),(93,'Christoper Easbie','Container - Foam Dixie 12 Oz','93','¥219641068.88','2021-06-07 17:00:00',NULL),(94,'Mattie Villar','Tea - Decaf Lipton','94','¥134671519.74','2021-04-11 17:00:00',NULL),(95,'Any Durrett','Chocolate - Milk','95','¥116781500.91','2021-06-15 17:00:00',NULL),(96,'Troy Hedylstone','C - Plus, Orange','96','¥106528035.53','2021-02-18 17:00:00',NULL),(97,'Donal Talman','Beer - Pilsner Urquell','97','¥162995042.42','2021-01-22 17:00:00',NULL),(98,'Wat Jeacocke','Fruit Salad Deluxe','98','¥208084798.96','2021-03-04 17:00:00',NULL),(99,'Tedra Rooke','Cheese - Havarti, Roasted Garlic','99','¥182269273.39','2021-07-03 17:00:00',NULL),(100,'Barrie Cottingham','Cheese - Stilton','100','¥193699001.13','2021-04-15 17:00:00',NULL);
/*!40000 ALTER TABLE `pemasukans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengeluarans`
--

DROP TABLE IF EXISTS `pengeluarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengeluarans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pengeluarans_date_index` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengeluarans`
--

LOCK TABLES `pengeluarans` WRITE;
/*!40000 ALTER TABLE `pengeluarans` DISABLE KEYS */;
INSERT INTO `pengeluarans` VALUES (1,'1988-08-04','06','27551668','2021-08-08 07:15:36','2021-08-08 07:15:36'),(2,'2014-05-22','05','46041525','2021-08-08 07:15:36','2021-08-08 07:15:36'),(3,'1978-09-21','05','78746769','2021-08-08 07:15:36','2021-08-08 07:15:36'),(4,'2004-02-15','12','58223911','2021-08-08 07:15:36','2021-08-08 07:15:36'),(5,'2015-02-19','08','36295107','2021-08-08 07:15:36','2021-08-08 07:15:36'),(6,'2000-10-22','01','20628946','2021-08-08 07:15:36','2021-08-08 07:15:36'),(7,'1985-08-15','02','37537641','2021-08-08 07:15:36','2021-08-08 07:15:36'),(8,'1986-03-23','04','80065817','2021-08-08 07:15:36','2021-08-08 07:15:36'),(9,'2014-07-26','04','30734346','2021-08-08 07:15:37','2021-08-08 07:15:37'),(10,'2005-04-08','05','41932624','2021-08-08 07:15:37','2021-08-08 07:15:37'),(11,'1975-06-02','11','77105732','2021-08-08 07:15:37','2021-08-08 07:15:37'),(12,'1995-06-14','01','18646263','2021-08-08 07:15:37','2021-08-08 07:15:37'),(13,'2004-12-09','01','25476994','2021-08-08 07:15:37','2021-08-08 07:15:37'),(14,'2015-03-30','04','81802291','2021-08-08 07:15:37','2021-08-08 07:15:37'),(15,'2018-02-28','09','86162037','2021-08-08 07:15:37','2021-08-08 07:15:37'),(16,'1989-02-24','03','78566604','2021-08-08 07:15:37','2021-08-08 07:15:37'),(17,'1981-02-22','05','20220337','2021-08-08 07:15:37','2021-08-08 07:15:37'),(18,'1981-08-27','06','76044404','2021-08-08 07:15:37','2021-08-08 07:15:37'),(19,'2004-07-30','03','22849838','2021-08-08 07:15:38','2021-08-08 07:15:38'),(20,'2014-04-25','08','95706198','2021-08-08 07:15:38','2021-08-08 07:15:38'),(21,'1999-07-19','10','34155635','2021-08-08 07:15:38','2021-08-08 07:15:38'),(22,'2006-05-12','09','50119048','2021-08-08 07:15:38','2021-08-08 07:15:38'),(23,'1991-03-09','06','63848182','2021-08-08 07:15:38','2021-08-08 07:15:38'),(24,'2014-01-18','09','30138579','2021-08-08 07:15:38','2021-08-08 07:15:38'),(25,'1974-06-15','10','24868901','2021-08-08 07:15:38','2021-08-08 07:15:38'),(26,'1979-12-14','06','61263377','2021-08-08 07:15:38','2021-08-08 07:15:38'),(27,'1975-01-17','06','51322058','2021-08-08 07:15:38','2021-08-08 07:15:38'),(28,'2001-06-14','08','79252766','2021-08-08 07:15:38','2021-08-08 07:15:38'),(29,'1986-12-26','02','20556036','2021-08-08 07:15:38','2021-08-08 07:15:38'),(30,'1997-07-26','01','82065871','2021-08-08 07:15:38','2021-08-08 07:15:38'),(31,'1993-09-19','08','8161198','2021-08-08 07:15:38','2021-08-08 07:15:38'),(32,'1995-04-29','06','49797101','2021-08-08 07:15:39','2021-08-08 07:15:39'),(33,'1978-08-04','01','70186619','2021-08-08 07:15:39','2021-08-08 07:15:39'),(34,'2005-10-09','04','42112496','2021-08-08 07:15:39','2021-08-08 07:15:39'),(35,'1996-07-30','04','14297809','2021-08-08 07:15:39','2021-08-08 07:15:39'),(36,'1999-03-20','02','5132514','2021-08-08 07:15:39','2021-08-08 07:15:39'),(37,'1976-04-25','03','20828940','2021-08-08 07:15:39','2021-08-08 07:15:39'),(38,'1994-07-06','12','76982822','2021-08-08 07:15:39','2021-08-08 07:15:39'),(39,'1977-10-14','05','11913774','2021-08-08 07:15:39','2021-08-08 07:15:39'),(40,'2004-09-09','04','55861883','2021-08-08 07:15:39','2021-08-08 07:15:39'),(41,'2002-09-08','08','88640621','2021-08-08 07:15:40','2021-08-08 07:15:40'),(42,'1994-10-21','04','91247057','2021-08-08 07:15:40','2021-08-08 07:15:40'),(43,'2004-06-14','07','60704639','2021-08-08 07:15:40','2021-08-08 07:15:40'),(44,'2006-06-02','12','25373814','2021-08-08 07:15:40','2021-08-08 07:15:40'),(45,'1998-12-06','11','63999130','2021-08-08 07:15:40','2021-08-08 07:15:40'),(46,'1988-05-02','02','54897158','2021-08-08 07:15:40','2021-08-08 07:15:40'),(47,'1980-07-08','11','85544437','2021-08-08 07:15:40','2021-08-08 07:15:40'),(48,'1983-11-20','11','55728532','2021-08-08 07:15:40','2021-08-08 07:15:40'),(49,'2014-06-30','07','62911010','2021-08-08 07:15:40','2021-08-08 07:15:40'),(50,'1981-07-13','12','33097336','2021-08-08 07:15:40','2021-08-08 07:15:40'),(51,'2013-10-07','02','24626426','2021-08-08 07:15:40','2021-08-08 07:15:40'),(52,'2015-02-21','05','76547029','2021-08-08 07:15:40','2021-08-08 07:15:40'),(53,'2004-04-10','05','30885156','2021-08-08 07:15:40','2021-08-08 07:15:40'),(54,'1971-12-24','06','1278038','2021-08-08 07:15:40','2021-08-08 07:15:40'),(55,'1998-09-30','03','92840048','2021-08-08 07:15:41','2021-08-08 07:15:41'),(56,'2001-11-26','09','62371142','2021-08-08 07:15:41','2021-08-08 07:15:41'),(57,'1984-10-25','03','12265617','2021-08-08 07:15:41','2021-08-08 07:15:41'),(58,'2009-07-25','02','64625710','2021-08-08 07:15:41','2021-08-08 07:15:41'),(59,'2000-12-23','10','81487068','2021-08-08 07:15:41','2021-08-08 07:15:41'),(60,'2001-09-16','01','20591844','2021-08-08 07:15:41','2021-08-08 07:15:41'),(61,'1987-02-24','04','23827283','2021-08-08 07:15:41','2021-08-08 07:15:41'),(62,'1996-01-16','09','49945987','2021-08-08 07:15:41','2021-08-08 07:15:41'),(63,'1979-09-15','12','1639458','2021-08-08 07:15:41','2021-08-08 07:15:41'),(64,'1983-12-12','01','36517704','2021-08-08 07:15:41','2021-08-08 07:15:41'),(65,'1976-05-21','07','93952896','2021-08-08 07:15:41','2021-08-08 07:15:41'),(66,'1984-01-26','11','77533942','2021-08-08 07:15:42','2021-08-08 07:15:42'),(67,'1995-08-18','12','93925239','2021-08-08 07:15:42','2021-08-08 07:15:42'),(68,'2000-02-14','08','73011734','2021-08-08 07:15:42','2021-08-08 07:15:42'),(69,'2014-01-13','07','79453912','2021-08-08 07:15:42','2021-08-08 07:15:42'),(70,'2001-06-16','10','89074334','2021-08-08 07:15:42','2021-08-08 07:15:42'),(71,'1978-03-03','09','1867516','2021-08-08 07:15:42','2021-08-08 07:15:42'),(72,'1971-05-11','10','49493141','2021-08-08 07:15:42','2021-08-08 07:15:42'),(73,'1988-05-07','12','41393695','2021-08-08 07:15:42','2021-08-08 07:15:42'),(74,'1997-09-29','10','92562518','2021-08-08 07:15:42','2021-08-08 07:15:42'),(75,'1990-06-06','01','59264933','2021-08-08 07:15:42','2021-08-08 07:15:42'),(76,'1976-04-09','12','62773604','2021-08-08 07:15:42','2021-08-08 07:15:42'),(77,'1993-03-18','11','55866588','2021-08-08 07:15:43','2021-08-08 07:15:43'),(78,'2001-09-22','07','30531169','2021-08-08 07:15:43','2021-08-08 07:15:43'),(79,'1978-03-26','03','70607839','2021-08-08 07:15:43','2021-08-08 07:15:43'),(80,'2015-12-31','09','45829202','2021-08-08 07:15:43','2021-08-08 07:15:43'),(81,'1987-09-30','08','71247932','2021-08-08 07:15:43','2021-08-08 07:15:43'),(82,'1983-12-29','03','57991614','2021-08-08 07:15:43','2021-08-08 07:15:43'),(83,'1988-10-07','01','11652731','2021-08-08 07:15:43','2021-08-08 07:15:43'),(84,'2003-12-13','08','37304554','2021-08-08 07:15:43','2021-08-08 07:15:43'),(85,'2016-08-02','12','56661321','2021-08-08 07:15:43','2021-08-08 07:15:43'),(86,'1993-08-30','06','97211859','2021-08-08 07:15:43','2021-08-08 07:15:43'),(87,'1977-03-27','09','74565232','2021-08-08 07:15:43','2021-08-08 07:15:43'),(88,'1999-02-25','11','82440683','2021-08-08 07:15:43','2021-08-08 07:15:43'),(89,'1994-11-21','01','11309707','2021-08-08 07:15:43','2021-08-08 07:15:43'),(90,'1983-03-20','10','61173458','2021-08-08 07:15:44','2021-08-08 07:15:44'),(91,'2001-06-23','12','25739134','2021-08-08 07:15:44','2021-08-08 07:15:44'),(92,'2006-08-24','11','94551853','2021-08-08 07:15:44','2021-08-08 07:15:44'),(93,'1975-01-01','11','17891068','2021-08-08 07:15:44','2021-08-08 07:15:44'),(94,'1980-09-08','09','64502712','2021-08-08 07:15:44','2021-08-08 07:15:44'),(95,'2004-05-20','10','12414812','2021-08-08 07:15:44','2021-08-08 07:15:44'),(96,'1970-07-24','05','18711201','2021-08-08 07:15:44','2021-08-08 07:15:44'),(97,'1989-08-25','03','54737033','2021-08-08 07:15:44','2021-08-08 07:15:44'),(98,'1994-04-25','02','19861414','2021-08-08 07:15:44','2021-08-08 07:15:44'),(99,'1971-06-22','10','98644489','2021-08-08 07:15:44','2021-08-08 07:15:44'),(100,'2009-05-12','11','63423897','2021-08-08 07:15:45','2021-08-08 07:15:45');
/*!40000 ALTER TABLE `pengeluarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com','$2y$10$tGDa/fTZhitgDelxDXY0bOoK5t4hY8jU79FH0.Jw1oKFn4BhEPyiW','admin','2021-07-29 07:32:52','2021-07-29 07:32:52'),(3,'owner','owner@gmail.com','$2y$10$WehE7pKVvQ6l4rogWqo6tuL4bmtwuPsNSBIRlttSHO.D81pmblCdS','owner','2021-07-29 07:32:52','2021-07-29 07:32:52'),(5,'admin2','admin2@gmail.com','$2y$10$JbsIsZ18Njf9ecw8jYcgneVNTfCy6aST/gxqtdq2MhZPPThzSCBq.','admin','2021-08-03 08:42:35','2021-08-03 08:42:35'),(6,'owner1','owner1@gmail.com','$2y$10$lRxRzZ1QgljnPV.4b8fyBeLF4i6tAQZXDS9yiXZTI77Rr3EQtyRv2','owner','2021-08-03 08:42:35','2021-08-03 08:42:35'),(10,'admin','admin@admin.com','123456','admin','2021-08-07 03:38:19','2021-08-07 03:38:19'),(11,'cait','cait@gmail.com','cait123','admin','2021-08-08 16:32:40','2021-08-08 16:32:40'),(12,'roro','roro@gmail.com','roro123','admin','2021-08-08 16:34:33','2021-08-08 16:34:33'),(15,'banu','banu@gmail.com','bani123','admin','2021-08-08 17:04:23','2021-08-08 17:04:23'),(16,'zeus','zeus@gmail.com','zeus123','admin','2021-08-08 17:04:48','2021-08-08 17:04:48');
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

-- Dump completed on 2021-08-18 21:17:51
