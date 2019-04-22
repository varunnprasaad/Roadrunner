-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: dbproject
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (120,'92274 Anniversary Junction','Gainesville','Florida',16885,'US'),(343,'404 Packers Way','Columbus','Ohio',38582,'US'),(373,'09 Heath Center','Bellevue','Washington',26855,'US'),(452,'8 Becker Lane','Tuscaloosa','Alabama',18643,'US'),(476,'31867 4th Pass','San Antonio','Texas',82360,'US'),(478,'84408 Welch Street','Fort Lauderdale','Florida',73338,'US'),(508,'5492 Straubel Parkway','San Francisco','California',89497,'US'),(538,'9 Morning Avenue','Greensboro','North Carolina',10772,'US'),(792,'5 Pierstorff Way','Frankfort','Kentucky',57647,'US'),(871,'15577 Loomis Court','Huntington','West Virginia',71885,'US');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `production_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_id_idx` (`category_id`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,2,'Toyota','RAV4',3609,'Green',2008),(2,1,'Mitsubishi','Mirage',33845,'Green',1989),(3,5,'Bentley','Continental Super',56165,'Fuscia',2010),(4,5,'Mercedes-Benz','E-Class',6956,'Pink',2009),(5,3,'Acura','RL',17724,'Pink',2010),(6,3,'Volkswagen','Jetta',75236,'Teal',1988),(7,1,'Mazda','B-Series',59789,'Green',2006),(8,1,'Volkswagen','Beetle',30590,'Green',2005),(9,5,'Toyota','Avalon',13795,'Goldenrod',1996),(10,3,'Mazda','MX-5',10808,'Puce',2007),(11,2,'Subaru','Outback',10230,'Pink',2010),(12,5,'Pontiac','Firebird Formula',35559,'Indigo',1999),(13,4,'Acura','TL',19184,'Violet',1997),(14,3,'Toyota','Solara',6101,'Violet',2001),(15,3,'Audi','A6',44161,'Mauv',1997),(16,5,'Ford','Escape',50341,'Orange',2000),(17,4,'Rolls-Royce','Phantom',43673,'Teal',2012),(18,2,'Jeep','Compass',47256,'Khaki',2009),(19,4,'Lexus','RX',70613,'Orange',2009),(20,2,'Mazda','B-Series Plus',34201,'Turquoise',1998),(21,2,'Honda','CR-V',71694,'Purple',2001),(22,1,'Subaru','Outback',19899,'Turquoise',2001),(23,3,'BMW','600',27512,'Red',1957),(24,1,'Fairthorpe','Rockette',20598,'Orange',1960),(25,2,'Mercury','Villager',77914,'Green',1996),(26,5,'Suzuki','SJ',24895,'Green',1993),(27,2,'Dodge','Caravan',70657,'Yellow',2006),(28,1,'Saab','9-3',61666,'Blue',2006),(29,4,'Ford','Aerostar',37248,'Violet',1987),(30,2,'BMW','Z3',18454,'Crimson',1998),(31,1,'Mercedes-Benz','300D',24994,'Khaki',1993),(32,3,'Audi','TT',55078,'Puce',2000),(33,1,'Mercedes-Benz','E-Class',50118,'Blue',2004),(34,2,'GMC','Yukon',22610,'Crimson',1993),(35,3,'Subaru','Alcyone SVX',72750,'Yellow',1996),(36,3,'Ford','Escort',33526,'Mauv',1998),(37,2,'Saturn','VUE',47077,'Pink',2010),(38,3,'Mazda','Mazda5',21813,'Khaki',2008),(39,4,'Kia','Forte',78373,'Red',2012),(40,5,'Mazda','MX-3',59182,'Indigo',1992),(41,3,'Oldsmobile','Toronado',56171,'Violet',1992),(42,3,'Ford','Econoline E250',25218,'Yellow',1997),(43,1,'Ford','Escort',21654,'Indigo',2000),(44,1,'Chevrolet','Corsica',58880,'Yellow',1994),(45,5,'Dodge','Stratus',37164,'Red',2001),(46,3,'Scion','tC',48917,'Indigo',2006),(47,3,'Lincoln','Continental',76353,'Yellow',2000),(48,4,'Hyundai','Santa Fe',75779,'Violet',2003),(49,4,'Chevrolet','Corvette',16884,'Khaki',1966),(50,3,'Ford','Contour',57227,'Yellow',1999);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `features` json DEFAULT NULL,
  `car_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Economy','[\"Unlimited miles\", \"Automatic Transmission\", \"Air Conditioning\", \"Air Bags\", \"AM/FM Stereo\"]','Hyundai Accent or similar'),(2,'SUV','[\"Unlimited miles\", \"Automatic Transmission\", \"Air Conditioning\", \"Air Bags\", \"AM/FM Stereo\", \"Power Steering\", \"Anti-Lock Brakes\"]','Volkswagen Jetta or similar'),(3,'Full Size','[\"Unlimited miles\", \"Automatic Transmission\", \"Air Conditioning\", \"Air Bags\", \"AM/FM Stereo\", \"Power Steering\", \"Anti-Lock Brakes\", \"Cruise Control\"]','Ford Fusion or similar'),(4,'Mini Van','[\"Unlimited miles\", \"Automatic Transmission\", \"Air Conditioning\", \"Air Bags\", \"AM/FM Stereo\", \"Power Steering\", \"Anti-Lock Brakes\", \"Cruise Control\"]','Dodge Grand Caravan or similar'),(5,'Premium','[\"Unlimited miles\", \"Automatic Transmission\", \"Air Conditioning\", \"Air Bags\", \"Power Steering\", \"Anti-Lock Brakes\", \"Adaptive Cruise Control\", \"Ventilated Seats\"]','Nissan Maxima or similar');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `driver_license_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1184,'Lara','Filshin','1961-06-18','83521421'),(2768,'Odetta','Francello','1978-04-21','33214061'),(3173,'Bessie','Tebbs','1966-09-13','19715394'),(4030,'North','Randales','1960-02-07','52450853'),(5554,'Cosetta','Delmonti','1983-06-20','86719682'),(5640,'Chadd','Brunstan','1965-01-03','52252449'),(6530,'Mattheus','Lammerts','1984-05-19','75953772'),(8884,'Aldric','McIlmorie','1965-06-02','18569605'),(9296,'Lurline','Bertram','1987-07-16','30891183'),(9731,'Michele','Edrich','1971-09-13','42527725');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `insurance` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `policy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (118,'Cormier-Bailey','Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.',40644054),(211,'Gleason-Johns','Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',80656286),(298,'Turner, O\'Reilly and Doyle','Phasellus in felis. Donec semper sapien a libero. Nam dui.',43169487),(386,'Ledner Inc','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.',39138834),(419,'Schulist-Bernhard','Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.',30130266),(554,'Friesen, Mohr and Effertz','Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.',58516597),(748,'Metz-Roob','Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.',35618116),(789,'Cartwright-Auer','Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',91500375),(838,'Senger, Osinski and Torphy','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.',28239412),(862,'Jacobs and Sons','Fusce consequat. Nulla nisl. Nunc nisl.',86317855);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_address_idx` (`address`),
  CONSTRAINT `fk_address` FOREIGN KEY (`address`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rental` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `pickup_location_id` int(11) DEFAULT NULL,
  `dropoff_location_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `fk_customer_id_idx` (`customer_id`),
  KEY `fk_pickup_location_idx` (`pickup_location_id`),
  KEY `fk_dropoff_location_idx` (`dropoff_location_id`),
  KEY `fk_car_id_idx` (`car_id`),
  CONSTRAINT `fk_car_id` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`),
  CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_dropoff_location` FOREIGN KEY (`dropoff_location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `fk_pickup_location` FOREIGN KEY (`pickup_location_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_insurance`
--

DROP TABLE IF EXISTS `rental_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rental_insurance` (
  `rental_id` int(11) DEFAULT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_insurance_id_idx` (`insurance_id`),
  KEY `fk_rental_id` (`rental_id`),
  CONSTRAINT `fk_insurance_id` FOREIGN KEY (`insurance_id`) REFERENCES `insurance` (`id`),
  CONSTRAINT `fk_rental_id` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_insurance`
--

LOCK TABLES `rental_insurance` WRITE;
/*!40000 ALTER TABLE `rental_insurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `rental_insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `pickup_location_id` int(11) DEFAULT NULL,
  `dropoff_location_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pickup_location_idx` (`pickup_location_id`),
  KEY `fk_dropoff_location_idx` (`dropoff_location_id`),
  KEY `fk_category_idx` (`category_id`),
  KEY `fk_customer_idx` (`customer_id`),
  KEY `fk_pickup_location_reservation_idx` (`pickup_location_id`),
  KEY `fk_dropoff_location_reservation_idx` (`dropoff_location_id`),
  KEY `fk_category_reservation_idx` (`category_id`),
  KEY `fk_customer_reservation_idx` (`customer_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_dropoff_location_reservation` FOREIGN KEY (`dropoff_location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `fk_pickup_location_reservation` FOREIGN KEY (`pickup_location_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-22  9:43:48
