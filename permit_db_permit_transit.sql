-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: permit_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `permit_transit`
--

DROP TABLE IF EXISTS `permit_transit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permit_transit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permit_number` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `validity_from` datetime DEFAULT NULL,
  `validity_till` datetime DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_till` time DEFAULT NULL,
  `items` text,
  `quantity` int DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `mmca_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `mobile` varchar(20) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `vrange` varchar(255) DEFAULT NULL,
  `kist` varchar(255) DEFAULT NULL,
  `etp_number` varchar(255) DEFAULT NULL,
  `transit_module` varchar(255) DEFAULT NULL,
  `transit_item` varchar(255) DEFAULT NULL,
  `transit_quantity` int DEFAULT NULL,
  `mahal` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `valid_from_date` datetime DEFAULT NULL,
  `valid_from_time` time DEFAULT NULL,
  `valid_to_date` datetime DEFAULT NULL,
  `valid_to_time` time DEFAULT NULL,
  `vehicle_number` varchar(255) DEFAULT NULL,
  `driver_info` text,
  `transit_division` varchar(255) DEFAULT NULL,
  `transit_range` varchar(255) DEFAULT NULL,
  `transit_permit_number` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Submitted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permit_transit`
--

LOCK TABLES `permit_transit` WRITE;
/*!40000 ALTER TABLE `permit_transit` DISABLE KEYS */;
INSERT INTO `permit_transit` VALUES (1,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','01:38:00','13:38:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','Argeng Narzary','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','01:39:00','2024-11-17 00:00:00','13:39:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(2,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','01:59:00','13:59:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','02:00:00','2024-11-17 00:00:00','14:00:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(3,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','02:39:00','14:39:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','02:39:00','2024-11-17 00:00:00','14:39:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(4,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','09:11:00','21:11:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','09:12:00','2024-11-17 00:00:00','21:12:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(5,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','09:16:00','21:16:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','09:17:00','2024-11-17 00:00:00','21:17:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(6,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','09:19:00','21:19:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','09:19:00','2024-11-17 00:00:00','21:20:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(7,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','09:21:00','21:21:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','09:21:00','2024-11-17 00:00:00','21:21:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(8,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','09:23:00','21:23:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','09:24:00','2024-11-17 00:00:00','21:24:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(9,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','09:27:00','21:27:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','09:27:00','2024-11-17 00:00:00','21:28:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(10,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','09:42:00','21:43:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','09:43:00','2024-11-17 00:00:00','21:43:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(11,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','09:47:00','21:47:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','09:48:00','2024-11-17 00:00:00','21:48:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(12,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','09:52:00','21:52:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','09:53:00','2024-11-17 00:00:00','21:53:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted'),(13,'7937447808','MMCA','2024-11-17 00:00:00','2024-11-17 00:00:00','10:15:00','22:15:00','Sand Gravel',20,'5280000.00','Chitila 2 Sand and Stone Materials Mahal','HIREN PATADORA','SANGOLIA','9678413649','Kachugon','Gossaigoan Forest Dept','7','8615699174','MMCA','Sand Gravel',20,'Chitila 2 Sand and Stone Materials Mahal','Dhubri','2024-11-17 00:00:00','10:15:00','2024-11-17 00:00:00','22:15:00','AS16AC2680','HIREN PATADORA','Kachugon','Gossaigaon Forest Depot','7937447808','Submitted');
/*!40000 ALTER TABLE `permit_transit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 10:40:55
