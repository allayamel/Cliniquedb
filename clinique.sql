-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: clinique
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add medecin',7,'add_medecin'),(26,'Can change medecin',7,'change_medecin'),(27,'Can delete medecin',7,'delete_medecin'),(28,'Can view medecin',7,'view_medecin'),(29,'Can add medicament',8,'add_medicament'),(30,'Can change medicament',8,'change_medicament'),(31,'Can delete medicament',8,'delete_medicament'),(32,'Can view medicament',8,'view_medicament'),(33,'Can add patient',9,'add_patient'),(34,'Can change patient',9,'change_patient'),(35,'Can delete patient',9,'delete_patient'),(36,'Can view patient',9,'view_patient'),(37,'Can add consultation',10,'add_consultation'),(38,'Can change consultation',10,'change_consultation'),(39,'Can delete consultation',10,'delete_consultation'),(40,'Can view consultation',10,'view_consultation');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$IPcKhwmO3z33KYkQqQD5Zt$GIddgsoD/QoTX/nu19vc9sGBz5qnXJp0wle8xs/vv5E=','2022-01-05 10:34:50.920308',1,'admin','','','admin@gmail.com',1,1,'2022-01-05 10:34:27.786414');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinique_consultation`
--

DROP TABLE IF EXISTS `clinique_consultation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinique_consultation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `medecin_id` bigint NOT NULL,
  `medicament_id` bigint NOT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clinique_consultation_medecin_id_4f2895e0_fk_clinique_medecin_id` (`medecin_id`),
  KEY `clinique_consultatio_medicament_id_4a1c852b_fk_clinique_` (`medicament_id`),
  KEY `clinique_consultation_patient_id_d6233d9c_fk_clinique_patient_id` (`patient_id`),
  CONSTRAINT `clinique_consultatio_medicament_id_4a1c852b_fk_clinique_` FOREIGN KEY (`medicament_id`) REFERENCES `clinique_medicament` (`id`),
  CONSTRAINT `clinique_consultation_medecin_id_4f2895e0_fk_clinique_medecin_id` FOREIGN KEY (`medecin_id`) REFERENCES `clinique_medecin` (`id`),
  CONSTRAINT `clinique_consultation_patient_id_d6233d9c_fk_clinique_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `clinique_patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinique_consultation`
--

LOCK TABLES `clinique_consultation` WRITE;
/*!40000 ALTER TABLE `clinique_consultation` DISABLE KEYS */;
/*!40000 ALTER TABLE `clinique_consultation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinique_medecin`
--

DROP TABLE IF EXISTS `clinique_medecin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinique_medecin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinique_medecin`
--

LOCK TABLES `clinique_medecin` WRITE;
/*!40000 ALTER TABLE `clinique_medecin` DISABLE KEYS */;
INSERT INTO `clinique_medecin` VALUES (1,'Rozanne Fantin','id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at'),(2,'Coraline Pudge','eu est congue elementum in hac'),(3,'Gard Eastridge','at'),(4,'Darren Merryman','consectetuer adipiscing elit proin risus'),(5,'Concordia Storck','ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl'),(6,'Prudi Manston','at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget'),(7,'Claiborn Tabard','diam nam tristique tortor eu'),(8,'Jonis Gronw','curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut'),(9,'Nathaniel Caudray','praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse'),(10,'Carlye Brownsmith','quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id'),(11,'Nap Humpage','consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante'),(12,'Bronson De Domenicis','pharetra magna vestibulum aliquet ultrices'),(13,'Town Hofton','ante vivamus'),(14,'Rolando Woollons','ut nunc vestibulum ante'),(15,'Nicoli Skegg','ut at dolor quis odio consequat varius'),(16,'Katherine Dorning','velit donec'),(17,'Herb Prujean','pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea'),(18,'Raleigh Dellenty','pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas'),(19,'Emilee Dallosso','at turpis a pede posuere nonummy integer non velit donec diam'),(20,'Bekki Melross','tincidunt nulla mollis molestie lorem quisque');
/*!40000 ALTER TABLE `clinique_medecin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinique_medicament`
--

DROP TABLE IF EXISTS `clinique_medicament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinique_medicament` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `libelle` varchar(120) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinique_medicament`
--

LOCK TABLES `clinique_medicament` WRITE;
/*!40000 ALTER TABLE `clinique_medicament` DISABLE KEYS */;
INSERT INTO `clinique_medicament` VALUES (1,'Depakene','metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus'),(2,'Paroxetine','vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque'),(3,'PURE HYDROGEL MASK PACK','nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna'),(4,'Day Time Night Time Sinus Relief','at'),(5,'HAWAIIAN Tropic','eu'),(6,'Felodipine','enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed'),(7,'HYDROCODONE BITARTRATE AND ACETAMINOPHEN','dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit'),(8,'Ribavirin','in'),(9,'Benzphetamine Hydrochloride','consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan'),(10,'Paroxetine','orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien'),(11,'SUPER AQUA MAX DEEP MOISTURE SLEEPING PACK','ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in'),(12,'IASO White Science EX Emulsion','aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse'),(13,'SODIUM SULFACETAMIDE AND SULFUR','quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet'),(14,'Nicotine','sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec'),(15,'Sumatriptan Succinate','nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate'),(16,'Levetiracetam','eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque'),(17,'Levsin','hac habitasse platea dictumst etiam faucibus cursus urna ut'),(18,'Oral Dent','felis sed'),(19,'Lovenox','lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed'),(20,'nicotine','ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac'),(21,'Cefazolin','ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent'),(22,'Desmopressin Acetate','sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in'),(23,'Aloe Scent A B Hand Sanitizing','pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue'),(24,'Cows Milk','et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam'),(25,'Fluconazole','orci luctus et ultrices posuere cubilia'),(26,'pain relief','id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero'),(27,'Acne Off Acne Treatment','convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere'),(28,'All Day Allergy','dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse'),(29,'Phentermine Hydrochloride','donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis'),(30,'GRx Dyne Scrub','nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla'),(31,'Gemfibrozil','tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices'),(32,'Doxycycline','nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit'),(33,'Octreotide Acetate','justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget'),(34,'HYDROCODONE BITARTRATE AND ACETAMINOPHEN','aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea'),(35,'Bumetanide','feugiat non pretium quis lectus suspendisse'),(36,'COMPLERA','pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede'),(37,'DEXTROAMPHETAMINE SULFATE','pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst'),(38,'ALCOHOL PREP PAD - MEDIUM','maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet'),(39,'Silver Nitrate','id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo'),(40,'Azithromycin','pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa'),(41,'ShopRite Acid Reducer','ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse'),(42,'Sticky Baby Dust','mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a'),(43,'Neutrogena Nourishing Long Wear Makeup Tone Correcting Complex Sunscreen Broad Spectrum SPF20','parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes'),(44,'7-11 Instant Hand Sanitizer With Aloe And Vitamin E','mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac'),(45,'Valacyclovir Hydrochloride','amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu'),(46,'Childrens Plus Multi-Symptom Cold Grape','orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem'),(47,'Denavir','dapibus augue vel accumsan tellus'),(48,'Miracle Rash Repair','placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit'),(49,'La Roche Posay Laboratoire Dermatologique Rosaliac Daily Complete Tone Correcting Broad Spectrum SPF 30 Sunscreen CC','id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede'),(50,'Mitomycin','magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non'),(51,'Prednisone','felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu'),(52,'Protopic','at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem'),(53,'Doxorubicin Hydrochloride','donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu'),(54,'Vitis Stibium','ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar'),(55,'Lexapro','blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in'),(56,'NUCYNTA','nulla facilisi'),(57,'Oxybutynin Chloride','sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede'),(58,'VITALUMIERE','integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat'),(59,'ck one airlight pressed powder spf 15','ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna'),(60,'Kynamro','quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate'),(61,'ProCoMycin','nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac'),(62,'ZZZTime','ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper'),(63,'Entecavir','non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst'),(64,'DigiSan','nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate'),(65,'sunmark arthricream rub','massa quis'),(66,'Metoprolol Tartrate','nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet'),(67,'Ionite APF','mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at'),(68,'Cimetidine','consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi'),(69,'NICOTINE','sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien'),(70,'Alprazolam','pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes'),(71,'EROS EXPLORER','morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu'),(72,'Treatment Set TS329123','faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia'),(73,'Treatment Set TS333375','in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec'),(74,'NEXIUM','quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet'),(75,'Unithroid','vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque'),(76,'Jock Itch','dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla'),(77,'Therapeutic Plus','ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at'),(78,'NeobryXol Forte','ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis'),(79,'Baby Orajel Naturals','sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat'),(80,'night time','lorem ipsum dolor sit amet'),(81,'Icy Hot Arm Neck Leg and Small Areas','metus arcu'),(82,'Meclizine Hydrochloride','consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum'),(83,'Curad Alcohol','aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel'),(84,'Fluoxetine','volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci'),(85,'Coast Maple','turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non'),(86,'Hydralazine Hydrochloride','cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus'),(87,'Amitriptyline Hydrochloride','adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim'),(88,'Lithium Carbonate','maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque'),(89,'Humira','adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis'),(90,'NIACIN','tincidunt nulla mollis molestie lorem'),(91,'Ibuprofen','habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent'),(92,'Simvastatin','ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget'),(93,'Gold Bond Ultimate Protection','vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida'),(94,'ORAVIG','nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus'),(95,'Estrogen','luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti'),(96,'Sumatriptan Succinate','dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean'),(97,'PINUS STROBUS POLLEN','condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris'),(98,'PHOENIX HEALTHCARE SOLUTIONS, LLC','nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam'),(99,'Olanzapine','nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam'),(100,'CAFFEINE CITRATE','ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis');
/*!40000 ALTER TABLE `clinique_medicament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinique_patient`
--

DROP TABLE IF EXISTS `clinique_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinique_patient` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(120) NOT NULL,
  `maladie` varchar(120) NOT NULL,
  `description` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinique_patient`
--

LOCK TABLES `clinique_patient` WRITE;
/*!40000 ALTER TABLE `clinique_patient` DISABLE KEYS */;
INSERT INTO `clinique_patient` VALUES (61,'Barnebas Aistrop','praesent blandit nam nulla integer pede justo','ante vestibulum ante ipsum primis in faucibus orci'),(68,'Erhard Keefe','ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus','elementum ligula vehicula'),(88,'Gregor Condon','sed','erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in'),(93,'Clementina Lamblot','luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est','ullamcorper'),(94,'Jimmy Stuehmeyer','est et tempus semper est quam pharetra magna','posuere cubilia curae'),(99,'Garold Lambdon','metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis','suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non'),(122,'Roseanne Boner','interdum','sapien arcu sed augue aliquam erat volutpat'),(132,'Trudey Carlesi','massa donec dapibus duis at velit eu est','curae donec pharetra'),(143,'Michail Stentiford','id pretium iaculis diam erat fermentum justo nec condimentum neque','semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla'),(144,'Karel Madill','a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla','non lectus aliquam'),(155,'Bernadette Sincock','ipsum primis in faucibus orci luctus et','mus etiam vel augue vestibulum rutrum rutrum neque'),(162,'Melloney Dessaur','quis orci eget orci vehicula condimentum curabitur in libero','est quam pharetra magna ac consequat metus sapien ut nunc'),(187,'Constantina Manicom','vivamus metus arcu adipiscing molestie','vel dapibus at diam nam tristique tortor'),(193,'Judye Glover','in congue etiam justo etiam pretium iaculis justo','nulla neque libero convallis eget eleifend luctus ultricies eu'),(239,'Tobey Fulloway','pellentesque ultrices phasellus id sapien in sapien','sed magna at nunc commodo placerat praesent blandit nam nulla integer pede'),(252,'Galina Keats','maecenas ut massa quis augue luctus','magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus'),(277,'Jania Ciccetti','mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a','tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui'),(301,'Elna Hatchard','phasellus','in quam'),(307,'Minnnie Jouanot','sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta','eget'),(339,'Igor Brayford','pede lobortis ligula sit amet','eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit'),(341,'Jerrie Hunt','volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie','ut blandit non interdum in ante vestibulum ante ipsum'),(351,'Jacobo O\'Gavin','massa donec dapibus duis at velit','libero nullam sit amet turpis elementum ligula'),(356,'Staffard Glaserman','magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis','nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit'),(363,'Candi Klimaszewski','odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque','tristique'),(416,'Ashien Moorerud','phasellus sit amet erat nulla tempus vivamus in felis','lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui'),(451,'Quinn Reece','duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at','neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel'),(465,'Leone Beedon','aliquet pulvinar sed nisl','felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui'),(469,'Haroun Patient','ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque','velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus'),(471,'Amelie Peasegod','augue vel accumsan tellus nisi eu orci mauris lacinia','curabitur in libero ut massa volutpat convallis morbi odio'),(478,'Valencia Obee','nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus','pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus'),(483,'Elvina Shawdforth','rhoncus mauris enim leo rhoncus sed vestibulum sit','turpis a pede posuere'),(486,'Basilius Pietrowicz','felis donec semper sapien a libero nam','erat nulla tempus vivamus in felis'),(495,'Inesita Kirman','curae mauris viverra diam','dolor quis odio consequat varius integer ac leo pellentesque ultrices'),(497,'Carlee Busk','pulvinar lobortis','aenean auctor gravida sem praesent id massa id nisl venenatis lacinia');
/*!40000 ALTER TABLE `clinique_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultation`
--

DROP TABLE IF EXISTS `consultation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `medecin_id` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `medicament_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`medecin_id`,`patient_id`,`medicament_id`),
  KEY `tbl_medecin` (`medecin_id`),
  KEY `tbl_patient` (`patient_id`),
  KEY `tbl_medicament` (`medicament_id`),
  CONSTRAINT `tbl_medecin` FOREIGN KEY (`medecin_id`) REFERENCES `medecin` (`id`),
  CONSTRAINT `tbl_medicament` FOREIGN KEY (`medicament_id`) REFERENCES `medicament` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultation`
--

LOCK TABLES `consultation` WRITE;
/*!40000 ALTER TABLE `consultation` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'clinique','consultation'),(7,'clinique','medecin'),(8,'clinique','medicament'),(9,'clinique','patient'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-05 10:31:48.190027'),(2,'auth','0001_initial','2022-01-05 10:31:59.801727'),(3,'admin','0001_initial','2022-01-05 10:32:02.408850'),(4,'admin','0002_logentry_remove_auto_add','2022-01-05 10:32:02.498277'),(5,'admin','0003_logentry_add_action_flag_choices','2022-01-05 10:32:02.613814'),(6,'contenttypes','0002_remove_content_type_name','2022-01-05 10:32:04.300969'),(7,'auth','0002_alter_permission_name_max_length','2022-01-05 10:32:05.405273'),(8,'auth','0003_alter_user_email_max_length','2022-01-05 10:32:05.644169'),(9,'auth','0004_alter_user_username_opts','2022-01-05 10:32:05.745336'),(10,'auth','0005_alter_user_last_login_null','2022-01-05 10:32:06.636198'),(11,'auth','0006_require_contenttypes_0002','2022-01-05 10:32:06.707731'),(12,'auth','0007_alter_validators_add_error_messages','2022-01-05 10:32:06.860436'),(13,'auth','0008_alter_user_username_max_length','2022-01-05 10:32:07.971477'),(14,'auth','0009_alter_user_last_name_max_length','2022-01-05 10:32:09.114231'),(15,'auth','0010_alter_group_name_max_length','2022-01-05 10:32:09.351259'),(16,'auth','0011_update_proxy_permissions','2022-01-05 10:32:09.458039'),(17,'auth','0012_alter_user_first_name_max_length','2022-01-05 10:32:10.594383'),(18,'clinique','0001_initial','2022-01-05 10:32:15.615939'),(19,'sessions','0001_initial','2022-01-05 10:32:16.454380');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('yxpg9gpokm870shgf6i266o58x1rb46v','.eJxVjDsOAiEUAO9CbcjjF8DS3jOQBzxk1UCy7FYb725IttB2ZjIHC7hvNeyD1rBkdmWCXX5ZxPSiNkV-Ynt0nnrb1iXymfDTDn7vmd63s_0bVBx1bh1iEdIbcJDIRygGUGZwFn2irDELnXS0yQOAUaSoWO9lLMaRUUWxzxfmlDf8:1n53d5:TyuUy4emNXNtua20QTXdpldFQj7veJ7OgW23isXBZE4','2022-01-19 10:34:51.004334');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medecin`
--

DROP TABLE IF EXISTS `medecin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medecin` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medecin`
--

LOCK TABLES `medecin` WRITE;
/*!40000 ALTER TABLE `medecin` DISABLE KEYS */;
INSERT INTO `medecin` VALUES (1,'Alla Claisse'),(2,'Maryann Poleye'),(3,'Edeline Cornewell'),(4,'Xenos Frisdick'),(5,'Madelle Harradine'),(6,'Morlee Totaro'),(7,'Debby Tudge'),(8,'Shaylyn Bowhey'),(9,'Normie Lapish'),(10,'Allegra Aloshikin'),(11,'Win Stowell'),(12,'Jarvis Gawkes'),(13,'Base Malter'),(14,'Jackelyn Cops'),(15,'Cherise Alexsandrovich'),(16,'Galen Switzer'),(17,'Heall Linscott'),(18,'Caz Brooking'),(19,'Mella Moorey'),(20,'Lisle Pau'),(21,'Alard Groves'),(22,'Wolf Jefford'),(23,'Demetra Fawdrie'),(24,'Aymer Riccetti'),(25,'Andras Sircombe'),(26,'Nicolette Breem'),(27,'Marika Dacks'),(28,'Laure Ostrich'),(29,'Sax Brehault'),(30,'Mal Dutton'),(31,'Carlie Downage'),(32,'Claire Harwin'),(33,'Harry Firpi'),(34,'Jessamine Commuzzo'),(35,'Sofia Uwins'),(36,'Peggi Meech'),(37,'Shell Duckham'),(38,'Alysa Carmen'),(39,'Manya Abarough'),(40,'Iggie Pepperell'),(41,'Sherill Allcoat'),(42,'Meyer Waldock'),(43,'Prudi Martygin'),(44,'Carny Toppas'),(45,'Klarika Yurkevich'),(46,'Ashia Goalley'),(47,'Lotti Robrow'),(48,'Deirdre Feitosa'),(49,'Early Farryan'),(50,'Sissie Osichev');
/*!40000 ALTER TABLE `medecin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicament`
--

DROP TABLE IF EXISTS `medicament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicament` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicament`
--

LOCK TABLES `medicament` WRITE;
/*!40000 ALTER TABLE `medicament` DISABLE KEYS */;
INSERT INTO `medicament` VALUES (1,'Octinoxate, Titanium dioxide'),(2,'Octinoxate, Oxybenzone, Titanium Dioxide'),(3,'Lindane'),(4,'pilocarpine hydrochloride'),(5,'Oxymetazoline Hydrochloride'),(6,'PredniSONE'),(7,'pioglitazone'),(8,'Doxycycline Hyclate'),(9,'Glimepiride'),(10,'Estradiol'),(11,'Esomeprazole magnesium'),(12,'Diphenhydramine Hydrochloride'),(13,'sumatriptan succinate'),(14,'Menthol and Camphor (Synthetic)'),(15,'Eucalyptol'),(16,'ALUMINUM ZIRCONIUM PENTACHLOROHYDREX GLY'),(17,'Bethanechol Chloride'),(18,'Ropinirole Hydrochloride'),(19,'Nitrofurantoin'),(20,'Alcohol'),(21,'Losartan potassium and hydrochlorothiazide tablets'),(22,'Octreotide acetate'),(23,'Treatment Set TS340987'),(24,'ESZOPICLONE'),(25,'Pantoprazole Sodium'),(26,'Levetiracetam'),(27,'iron sucrose'),(28,'Alcohol'),(29,'MENTHOL, HISTAMINE DIHYDROCHLORIDE'),(30,'Alcohol'),(31,'Fexofenadine Hydrochloride'),(32,'SALICYLIC ACID'),(33,'Flumazenil'),(34,'Pork'),(35,'Avobenzone and Octocrylene'),(36,'Piperacillin and Tazobactam'),(37,'Fexofenadine HCl'),(38,'Gallium nitrate'),(40,'White Oak'),(41,'amitriptyline hydrochloride'),(42,'aspirin'),(43,'Venlafaxine Hydrochloride'),(44,'amlodipine besylate and benazepril hydrochloride'),(45,'Sucralfate'),(46,'Duloxetine Hydrochloride'),(47,'OCTINOXATE, OCTISALATE, TITANIUM DIOXIDE, AVOBENZONE, ENZACAMENE'),(48,'Goldenrod'),(49,'Dimethicone'),(50,'donepezil hydrochloride'),(51,'Hydrocodone Bitartrate And Acetaminophen'),(52,'oxymetazoline hydrochloride'),(53,'Barley Grain'),(54,'Ethyl Alcohol'),(55,'BENZALKONIUM CHLORIDE'),(56,'ZOLPIDEM TARTRATE'),(57,'AVOBENZONE, OCTISALATE, and OCTOCRYLENE'),(59,'Calcium Carbonate'),(60,'Metoprolol Tartrate'),(61,'Guaifenesin and Dextromethorphan Hydrobromide'),(62,'triamcinolone acetonide'),(64,'Gabapentin'),(65,'AVOBENZONE HOMOSALATE OCTOCRYLENE OXYBENZONE'),(66,'epinephrine'),(67,'Ultramicrosize Griseofulvin Tablets'),(68,'BENZALKONIUM CHLORIDE, HEXYLRESORCINOL, ZINC CHLORIDE'),(69,'RISPERIDONE'),(70,'Aluminum Zirconium Tetrachlorohydrex GLY'),(71,'Equisetum cum sulfure tosta 6'),(72,'Octinoxate, Titanium Dioxide, and Zinc Oxide'),(73,'Kochia scoparia'),(74,'Antihemophilic Factor (Recombinant)'),(75,'ALCOHOL'),(76,'Acetaminophen, diphenhydramine HCl, phenylephrine HCl'),(77,'Menthol and Benzocaine'),(78,'ASPIRIN'),(79,'TITANIUM DIOXIDE'),(80,'Aspirin'),(81,'Baptisia tinctoria, Echinacea, Allium cepa'),(82,'Piperonyl Butoxide, Pyrethrum Extract'),(83,'benazepril hydrochloride and hydrochlorothiazide'),(84,'Hydrocortisone Acetate'),(85,'Amlobenz'),(86,'White Hickory'),(87,'Naproxen Sodium'),(88,'Alcohol'),(89,'OCTINOXATE, TITANIUM DIOXIDE'),(90,'Triamterene and Hydrochlorothiazide'),(91,'amoxicillin and clavulanate potassium'),(92,'dextromethorphan polistirex'),(93,'Metoprolol tartrate'),(94,'Povidone/Polyvinyl Alcohol'),(95,'GALANTAMINE HYDROBROMIDE'),(96,'TITANIUM DIOXIDE'),(97,'TRICLOSAN'),(98,'CHELIDONIUM MAJUS'),(99,'Lansoprazole'),(100,'lansoprazole');
/*!40000 ALTER TABLE `medicament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `maladie` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (2,'Minerva Brunsdon','dui vel nisl duis ac nibh fusce lacus'),(3,'Lenora Calvie','aenean sit amet justo morbi ut odio cras mi pede'),(7,'Rorke Bryden','iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae'),(8,'Sada Eckersall','urna pretium nisl ut volutpat sapien arcu sed augue'),(9,'Aloysia Trorey','mauris non ligula pellentesque'),(10,'Darwin Hatchard','commodo placerat praesent blandit nam'),(11,'Garrot Dopson','massa tempor convallis nulla neque libero convallis eget eleifend luctus'),(12,'Jocelin Bayman','primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam'),(16,'Berty McGarrity','nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper'),(17,'Alexander Richardon','accumsan felis ut at dolor quis odio consequat varius'),(18,'Ilse Girardeau','vitae nisi nam'),(19,'Saunder Willmott','donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus'),(20,'Bianka Tamplin','amet'),(21,'Brittan Stockhill','nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras'),(22,'Kiel Snap','eu felis fusce posuere felis sed'),(24,'Linnie Loude','non mi integer ac neque duis bibendum morbi non quam nec dui'),(25,'Kristen Doick','amet cursus id turpis integer aliquet'),(26,'Artemus Ewbanke','ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque'),(37,'Eartha Dering','ante'),(39,'Karina Sollowaye','quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer'),(40,'Kym Friskey','posuere cubilia curae nulla dapibus dolor'),(41,'Zara Bohlsen','in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla'),(42,'Lauren Brafield','justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci'),(43,'Hanny Edlyne','ut nunc'),(44,'Haze Decent','consequat in consequat'),(47,'Wolfie McLanaghan','platea dictumst etiam faucibus cursus urna ut tellus nulla'),(52,'Liliane Spaule','sed augue aliquam erat volutpat in'),(59,'Brigitta Hazleton','eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra'),(61,'Keeley Langabeer','vel'),(64,'Kylynn Aisthorpe','orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti'),(66,'Aubrette Sidwell','quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus'),(67,'Janeen Waddilow','nibh in'),(70,'Jelene Rayne','felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus'),(71,'Aprilette Pennicard','in purus'),(74,'Teodor Arundel','eu magna vulputate'),(76,'Cornall Marwood','aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum'),(78,'Katy Gasnoll','vestibulum velit id pretium iaculis diam erat'),(81,'Lloyd Derington','morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet'),(86,'Lamont Hedden','vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris'),(87,'Gay Gibbieson','platea dictumst etiam faucibus cursus urna ut tellus'),(90,'Rudolf Eger','elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at'),(93,'Sonni Dalliston','suscipit nulla elit ac nulla sed vel enim sit'),(95,'Clint Clarkson','ultrices mattis odio donec vitae nisi nam'),(96,'Prudence Edwins','congue'),(97,'Collie Klassmann','sapien sapien non mi integer'),(98,'Marsh Winley','facilisi cras non velit nec nisi vulputate nonummy maecenas'),(101,'Cornie Rootes','eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in'),(102,'Sunshine Hardwicke','in blandit ultrices'),(105,'Edy O\' Markey','lobortis vel'),(106,'Carter Thomazet','vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae'),(107,'Meggi Filkov','lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in'),(108,'Mandel Stolli','posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat'),(111,'Yettie Bellerby','orci luctus et ultrices posuere'),(112,'Vasily Gommery','ligula sit amet eleifend pede libero quis orci nullam molestie nibh'),(113,'Lilla Stredwick','nec euismod scelerisque'),(114,'Jasper Rosedale','turpis eget elit sodales scelerisque mauris sit amet eros suspendisse'),(115,'Anetta Evamy','augue vestibulum rutrum rutrum'),(117,'Jerrold Rysom','id pretium iaculis diam erat'),(118,'Jyoti Rasell','porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse'),(119,'Drucie Curnok','platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum'),(120,'Hildagard Dewhurst','molestie nibh in lectus pellentesque at nulla suspendisse'),(121,'Andie Island','id ornare imperdiet sapien urna pretium'),(122,'Alexandrina Cayton','molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat'),(124,'Shelley Gerriets','lacus at velit vivamus'),(128,'Camille Dabs','suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper'),(129,'Debera Southcombe','ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla'),(132,'Benedikta Stive','id justo sit'),(133,'Elroy Jeschner','at nunc commodo placerat praesent blandit nam'),(134,'Almeria Jeffcoat','arcu sed'),(135,'Boycey Piperley','morbi porttitor lorem id ligula'),(139,'Natividad Timmis','magna at nunc commodo'),(140,'Penelope Looks','nulla tempus vivamus in felis eu'),(144,'Hermia Pardue','morbi quis tortor id nulla ultrices aliquet maecenas leo odio'),(145,'Sharron Ellington','accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus'),(146,'Idaline Spratt','convallis tortor'),(148,'Tommy Coxall','nunc donec quis orci eget orci vehicula condimentum curabitur in'),(149,'Grover Swigg','elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper'),(151,'Angeline Hauger','nisi venenatis tristique fusce congue diam'),(152,'Anna-diana Ireson','nulla neque libero'),(153,'Raleigh Schwandner','integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis'),(156,'Bettine Barten','interdum mauris'),(157,'Sydel Rappport','nunc nisl duis bibendum felis sed interdum'),(161,'Abe Splevin','consequat dui nec'),(164,'Michel Mapis','id nulla ultrices aliquet maecenas leo'),(165,'Jerrie Cypler','ultrices posuere cubilia curae mauris viverra'),(166,'Nealy Gissing','tortor sollicitudin mi sit amet lobortis sapien sapien non'),(167,'Ophelie Crocket','quam sapien varius ut blandit non'),(168,'Kirsten Schimpke','tellus in'),(169,'Lilli Tresvina','penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien'),(174,'Erroll Ponter','platea dictumst etiam faucibus cursus'),(175,'Kristin Edmenson','non sodales sed'),(176,'Ignazio Colecrough','tortor sollicitudin mi sit amet lobortis sapien sapien'),(177,'Emery Jimeno','augue luctus tincidunt nulla mollis molestie lorem quisque'),(181,'Kendre Salvadori','nulla suscipit ligula'),(185,'Kordula Odegaard','ac diam cras pellentesque volutpat dui maecenas tristique'),(186,'Carlee Kinnard','commodo vulputate'),(187,'Faith Aykroyd','cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet'),(188,'Peter Knappitt','nulla eget eros elementum pellentesque quisque porta volutpat erat quisque'),(191,'Quinn McCrostie','sit amet consectetuer'),(192,'Bettine Robley','aenean fermentum donec ut mauris eget massa tempor'),(193,'Hildy Bacup','nunc rhoncus dui vel'),(197,'Netta Sidon','orci eget orci vehicula condimentum curabitur in libero ut massa'),(198,'Drona Jeandet','congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui'),(199,'Alysa Yearn','platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer'),(200,'Ella Riley','lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla'),(203,'Marguerite Olivet','nisl nunc rhoncus dui vel sem sed sagittis'),(204,'Flori Dulieu','sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo'),(206,'Stacee Elcome','sem praesent id massa id nisl'),(207,'Antonina Dyke','congue elementum in hac habitasse platea dictumst'),(208,'Davidson Hoopper','massa donec dapibus duis at'),(209,'James Hunnybun','orci nullam molestie nibh'),(210,'Cort Leil','consequat nulla'),(211,'Alexine Ellerker','volutpat erat quisque erat eros viverra eget congue'),(212,'Donica Halsall','massa id nisl venenatis lacinia aenean'),(213,'Lula Stoffels','pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id'),(214,'Alika Bunson','integer aliquet massa id lobortis convallis tortor risus'),(219,'Saunders Hebborne','commodo placerat praesent'),(222,'Abbie Pretti','tortor sollicitudin mi sit amet lobortis sapien sapien non mi'),(224,'Julita Hiscoe','in libero ut massa volutpat convallis morbi odio odio elementum eu'),(226,'Reggi Moggle','etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem'),(227,'Yovonnda Cockle','integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi'),(228,'Harcourt Hayzer','tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit'),(229,'Darryl Sambidge','suspendisse potenti in'),(232,'Westbrooke Kuhnhardt','eros elementum pellentesque quisque porta volutpat erat quisque erat eros'),(233,'Pammy Eddisford','tortor id'),(236,'Purcell Crilly','semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam'),(239,'Carey Srutton','lobortis vel dapibus'),(246,'Mike Schimek','justo aliquam quis turpis eget elit'),(248,'Thorvald Felmingham','pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit'),(249,'Shaun Hollyar','orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis'),(251,'Anna-maria Abramof','dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec'),(252,'Daffy Blezard','magna vestibulum'),(254,'Hester Wrightham','nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi'),(255,'Barbee Southern','cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras'),(259,'Margaretha Mager','nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie'),(260,'Horatia De Paepe','dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum'),(261,'Annabell Zanetti','purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at'),(264,'Ogdan Rappoport','id nulla ultrices aliquet maecenas leo odio condimentum id luctus'),(265,'Adriano Romanet','posuere cubilia curae donec pharetra magna vestibulum'),(266,'Melisande Rickarsey','aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea'),(267,'Genevieve Lorenzetto','tortor sollicitudin mi sit amet'),(269,'Juliet Auty','at turpis a'),(271,'Reina Tams','in'),(272,'Hubie Sole','augue vel accumsan tellus nisi eu orci'),(274,'Gerhardt Kondratovich','mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus'),(276,'Ruthe Lawtey','vehicula'),(277,'Con Isselee','quam suspendisse potenti nullam'),(278,'Ulrikaumeko Basey','semper interdum mauris ullamcorper'),(280,'Jamima Dufer','tristique in tempus sit amet'),(281,'Tyrus Le Blond','non mi integer ac neque duis bibendum morbi non quam nec'),(283,'Meryl Axtell','eleifend pede'),(284,'Shanta Ellinor','ac neque duis bibendum morbi non'),(292,'Ronni Eskrigg','nisl ut'),(293,'Aurel Danielis','dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere'),(294,'Marlene Coey','velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla'),(295,'Reggis Kyte','tempor convallis nulla neque libero convallis'),(296,'Gilberto Neeve','nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio'),(299,'Pearla Beranek','vivamus in felis eu sapien cursus vestibulum proin eu'),(300,'Kerrie Templeman','vehicula condimentum curabitur in libero ut'),(303,'Shana Ummfrey','nunc'),(305,'Chanda Bolderson','varius nulla facilisi cras non velit nec nisi'),(309,'Osbourne Paragreen','consequat dui'),(313,'Aldrich Packwood','lorem ipsum dolor sit'),(318,'Valery Brea','nibh in quis justo maecenas rhoncus aliquam lacus morbi'),(324,'Bayard Shill','hac habitasse platea'),(327,'Adara Garaghan','erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus'),(328,'Silvanus Dron','in faucibus orci luctus'),(329,'Cecil Yandle','amet'),(330,'Bethena Petche','felis fusce posuere felis sed lacus'),(331,'Rosco Tandey','in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis'),(332,'Benedetto Powe','eros suspendisse accumsan tortor quis turpis sed ante'),(333,'Angelico Passey','sed interdum venenatis'),(334,'Culley Duckels','rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem'),(335,'Augustine McFadden','faucibus orci luctus et ultrices posuere cubilia curae'),(336,'Cyril Karleman','ante'),(337,'Garrott Bashford','nisi eu orci mauris lacinia sapien quis libero nullam'),(346,'Wylie Napoleone','rutrum nulla tellus in sagittis dui vel'),(349,'Sharon Corck','dictumst etiam'),(351,'Marlin Handrek','nec dui luctus'),(354,'Kalli Markwell','vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia'),(359,'Stanly Fawlks','id sapien in sapien iaculis congue'),(360,'Ludwig Peyto','amet'),(361,'Faye Nano','libero convallis eget eleifend luctus ultricies'),(363,'Pet Eake','orci luctus et'),(364,'Esme Plunkett','turpis elementum ligula vehicula consequat morbi a ipsum'),(367,'Chryste Jagielski','in leo maecenas pulvinar'),(372,'Ricki Dryden','eget eros elementum pellentesque quisque porta volutpat'),(374,'Lindie Probyn','lectus aliquam'),(377,'Annetta Hallatt','vestibulum vestibulum ante ipsum primis in faucibus orci'),(378,'Stuart McDirmid','vestibulum sed magna at nunc commodo placerat praesent blandit'),(379,'Lexie Hinners','placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet'),(383,'Marjy Frossell','in est risus auctor sed'),(387,'Brenna Oldham','dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis'),(388,'Tailor MacPadene','aenean auctor'),(389,'Leslie Luter','ipsum praesent blandit'),(390,'Brunhilda Kiehl','diam neque'),(391,'Lynsey Emeny','cursus urna ut tellus nulla ut erat id mauris vulputate'),(392,'Slade Arnhold','odio cras mi pede malesuada in imperdiet et commodo vulputate'),(394,'Freeland Gilstin','orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur'),(395,'Sashenka Bilson','in hac habitasse platea dictumst maecenas ut massa quis'),(396,'Shannah Hunnawill','congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam'),(400,'Wilmette Hugett','ligula vehicula consequat morbi a'),(402,'Kenon Knutsen','molestie sed justo pellentesque viverra pede'),(403,'Giles Thirsk','sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus'),(405,'Marena Haddow','consectetuer'),(408,'Boone Paulig','venenatis non sodales'),(410,'Pauline Camilio','quam'),(413,'Demott Airds','varius integer ac leo pellentesque'),(416,'Thedric Crownshaw','suspendisse potenti cras in purus eu magna vulputate'),(418,'Simona Karslake','pretium iaculis justo in hac habitasse platea dictumst'),(421,'Kathleen Speedy','hendrerit at vulputate'),(423,'Rupert Meach','sed'),(424,'Claudelle Keatley','dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis'),(425,'Riane Van Halen','vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia'),(427,'Winna Alam','quam suspendisse potenti nullam porttitor lacus at turpis donec posuere'),(428,'Charmion Dwelling','vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia'),(430,'Wilmer Ewbach','praesent id massa id nisl'),(431,'Ermina Gerrelt','ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien'),(433,'Roxanne Hinz','non mauris morbi non lectus aliquam sit amet'),(434,'Marv Eynaud','odio odio elementum eu interdum'),(435,'Barton Cawley','vestibulum vestibulum ante ipsum primis in faucibus orci'),(436,'Vittorio Edelmann','magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt'),(437,'Towney Huertas','curae nulla'),(439,'Valdemar Bantick','neque vestibulum'),(440,'Ashley Vlasyev','bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui'),(443,'Benson Demageard','auctor gravida'),(444,'Andris Breeder','velit id pretium iaculis'),(445,'Lurline Torbett','vulputate'),(450,'Merle Jeram','adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien'),(452,'Xenos Humpatch','non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris'),(454,'Kerstin Yesichev','nonummy'),(455,'Dennie O\'Shee','lacus curabitur at ipsum ac'),(458,'Ancell Hele','venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet'),(460,'Deb Butson','morbi vel lectus in quam fringilla rhoncus'),(461,'Ray Fullard','aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam'),(462,'Kristofer Forsyth','nisi venenatis'),(465,'Danella Purdon','eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim'),(466,'Gil Castillon','congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis'),(467,'Adriane Yarnold','id nulla ultrices'),(469,'Kippy Boocock','morbi'),(472,'Moyna Geraud','fusce lacus purus aliquet at feugiat non pretium'),(473,'Bradan Rickell','ligula vehicula consequat morbi a ipsum integer a nibh in quis justo'),(474,'Fields Kennea','tellus semper interdum mauris'),(475,'Jarid Di Claudio','ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet'),(476,'Charlean Cordelet','ante ipsum primis in faucibus orci luctus et ultrices'),(477,'Adelaida Collen','tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia'),(478,'Susana Wife','ut erat id mauris vulputate elementum nullam varius'),(480,'Udall Lumly','in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae'),(481,'Carr Godsal','dui nec nisi volutpat eleifend'),(482,'Auria Neeves','dapibus dolor vel est donec'),(484,'Chelsae Beesley','orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat'),(486,'Maura MacCallum','quis orci eget orci'),(488,'Taddeo Ruffle','luctus cum sociis natoque penatibus'),(489,'Tresa Grenshields','eget tincidunt eget tempus'),(490,'Farlie Mattinson','aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam'),(492,'Karine Girardini','integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan'),(494,'Clair Segoe','congue elementum in hac habitasse platea dictumst morbi vestibulum velit'),(495,'Martie Dobbyn','platea dictumst maecenas ut massa quis augue luctus tincidunt nulla'),(496,'Buck Toler','est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-13 12:26:47
