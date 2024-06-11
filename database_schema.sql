-- MySQL dump 10.13  Distrib 8.4.0, for macos14 (arm64)
--
-- Host: localhost    Database: OnboardingDB
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `AccessTypes`
--

DROP TABLE IF EXISTS `AccessTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AccessTypes` (
  `AccessTypeID` int NOT NULL,
  `AccessTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AccessTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccessTypes`
--

LOCK TABLES `AccessTypes` WRITE;
/*!40000 ALTER TABLE `AccessTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `AccessTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobRoleAccess`
--

DROP TABLE IF EXISTS `JobRoleAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JobRoleAccess` (
  `JobRoleID` int NOT NULL,
  `AccessTypeID` int NOT NULL,
  PRIMARY KEY (`JobRoleID`,`AccessTypeID`),
  KEY `AccessTypeID` (`AccessTypeID`),
  CONSTRAINT `jobroleaccess_ibfk_1` FOREIGN KEY (`JobRoleID`) REFERENCES `JobRoles` (`JobRoleID`),
  CONSTRAINT `jobroleaccess_ibfk_2` FOREIGN KEY (`AccessTypeID`) REFERENCES `AccessTypes` (`AccessTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobRoleAccess`
--

LOCK TABLES `JobRoleAccess` WRITE;
/*!40000 ALTER TABLE `JobRoleAccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobRoleAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobRoles`
--

DROP TABLE IF EXISTS `JobRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JobRoles` (
  `JobRoleID` int NOT NULL,
  `JobRoleName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`JobRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobRoles`
--

LOCK TABLES `JobRoles` WRITE;
/*!40000 ALTER TABLE `JobRoles` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobRoleSoftware`
--

DROP TABLE IF EXISTS `JobRoleSoftware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JobRoleSoftware` (
  `JobRoleID` int NOT NULL,
  `SoftwareID` int NOT NULL,
  PRIMARY KEY (`JobRoleID`,`SoftwareID`),
  KEY `SoftwareID` (`SoftwareID`),
  CONSTRAINT `jobrolesoftware_ibfk_1` FOREIGN KEY (`JobRoleID`) REFERENCES `JobRoles` (`JobRoleID`),
  CONSTRAINT `jobrolesoftware_ibfk_2` FOREIGN KEY (`SoftwareID`) REFERENCES `Software` (`SoftwareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobRoleSoftware`
--

LOCK TABLES `JobRoleSoftware` WRITE;
/*!40000 ALTER TABLE `JobRoleSoftware` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobRoleSoftware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Software`
--

DROP TABLE IF EXISTS `Software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Software` (
  `SoftwareID` int NOT NULL,
  `SoftwareName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SoftwareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Software`
--

LOCK TABLES `Software` WRITE;
/*!40000 ALTER TABLE `Software` DISABLE KEYS */;
/*!40000 ALTER TABLE `Software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamAccess`
--

DROP TABLE IF EXISTS `TeamAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TeamAccess` (
  `TeamID` int NOT NULL,
  `AccessTypeID` int NOT NULL,
  PRIMARY KEY (`TeamID`,`AccessTypeID`),
  KEY `AccessTypeID` (`AccessTypeID`),
  CONSTRAINT `teamaccess_ibfk_1` FOREIGN KEY (`TeamID`) REFERENCES `Teams` (`TeamID`),
  CONSTRAINT `teamaccess_ibfk_2` FOREIGN KEY (`AccessTypeID`) REFERENCES `AccessTypes` (`AccessTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamAccess`
--

LOCK TABLES `TeamAccess` WRITE;
/*!40000 ALTER TABLE `TeamAccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `TeamAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teams` (
  `TeamID` int NOT NULL,
  `TeamName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamSoftware`
--

DROP TABLE IF EXISTS `TeamSoftware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TeamSoftware` (
  `TeamID` int NOT NULL,
  `SoftwareID` int NOT NULL,
  PRIMARY KEY (`TeamID`,`SoftwareID`),
  KEY `SoftwareID` (`SoftwareID`),
  CONSTRAINT `teamsoftware_ibfk_1` FOREIGN KEY (`TeamID`) REFERENCES `Teams` (`TeamID`),
  CONSTRAINT `teamsoftware_ibfk_2` FOREIGN KEY (`SoftwareID`) REFERENCES `Software` (`SoftwareID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamSoftware`
--

LOCK TABLES `TeamSoftware` WRITE;
/*!40000 ALTER TABLE `TeamSoftware` DISABLE KEYS */;
/*!40000 ALTER TABLE `TeamSoftware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrainingModules`
--

DROP TABLE IF EXISTS `TrainingModules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TrainingModules` (
  `TrainingID` int NOT NULL,
  `TrainingName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`TrainingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrainingModules`
--

LOCK TABLES `TrainingModules` WRITE;
/*!40000 ALTER TABLE `TrainingModules` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrainingModules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `UserID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `JobRoleID` int DEFAULT NULL,
  `TeamID` int DEFAULT NULL,
  `LineManagerID` int DEFAULT NULL,
  `IsLineManager` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  KEY `JobRoleID` (`JobRoleID`),
  KEY `TeamID` (`TeamID`),
  KEY `LineManagerID` (`LineManagerID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`JobRoleID`) REFERENCES `JobRoles` (`JobRoleID`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`TeamID`) REFERENCES `Teams` (`TeamID`),
  CONSTRAINT `users_ibfk_3` FOREIGN KEY (`LineManagerID`) REFERENCES `Users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-11 11:36:04
