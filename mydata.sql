-- MySQL dump 10.13  Distrib 5.1.45, for Win32 (ia32)
--
-- Host: localhost    Database: mydata
-- ------------------------------------------------------
-- Server version	5.1.45-community

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  `ccontact` varchar(10) DEFAULT NULL,
  `cqueryrelated` varchar(8) DEFAULT NULL,
  `cquerytype` varchar(15) DEFAULT NULL,
  `cquery` varchar(30) DEFAULT NULL,
  `cans` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'Durgesh','8013424743','Hardware','other','Screen_Problem','Contact to nearest Service centre.'),(3,'Shivam','9937862018','Hardware','Mouse','Hard_Disk_Problem','Buy a New One.'),(4,'Nitesh','8981172247','Hardware','Mouse','Right_button_not_working','Throw the mouse'),(5,'manoj','9614113721','Hardware','Mouse','Mouse Not Working','Pending'),(6,'Shivam','9614113721','Hardware','other','Keyboard problem','Pending'),(7,'Durgesh','8013424743','Hardware','Mouse','Right_Button_Problem','Use Left Button'),(8,'Durgesh','8013424743','Hardware','Mouse','mouse_not_working','Pending'),(9,'Shivam','9614113721','Hardware','other','Screen_problem','Pending'),(10,'manoj','9937862018','Hardware','Mouse','Right_button_problem','Pending'),(11,'Nitesh','9937862018','Software','other','Antivirus_problem','Pending');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `ename` varchar(25) DEFAULT NULL,
  `egender` varchar(6) DEFAULT NULL,
  `edob` varchar(10) DEFAULT NULL,
  `eaddress` varchar(40) DEFAULT NULL,
  `ecity` varchar(25) DEFAULT NULL,
  `estate` varchar(20) DEFAULT NULL,
  `ecountry` varchar(15) DEFAULT NULL,
  `epincode` varchar(6) DEFAULT NULL,
  `eemail` varchar(30) DEFAULT NULL,
  `econtact` varchar(10) DEFAULT NULL,
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `euname` varchar(20) DEFAULT NULL,
  `epass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Durgesh','Male','06-12-1994','N.N.Mukhrjee_Road','Kolkata2','West_Bengal','India','700114','gvhgv@gmail.com','8013424743',1,'gvhgv','8013424743'),('Prachi_pathak','Female','25-11-1994','hostel','Kolkata','West_Bengal','India','700114','pp123@vhgvhj','9876500005',2,'pp123','9876500005');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solved`
--

DROP TABLE IF EXISTS `solved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solved` (
  `queryId` int(11) NOT NULL AUTO_INCREMENT,
  `queryrelatedto` varchar(10) DEFAULT NULL,
  `querytype` varchar(20) DEFAULT NULL,
  `query` varchar(40) DEFAULT NULL,
  `queryans` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`queryId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solved`
--

LOCK TABLES `solved` WRITE;
/*!40000 ALTER TABLE `solved` DISABLE KEYS */;
INSERT INTO `solved` VALUES (2,'Hardware','Mouse','Hard_Disk_Problem','Buy a New One.'),(3,'Hardware','other','Screen_Problem','Contact to nearest Service centre.'),(4,'Hardware','Mouse','Right_button_not_working','Throw the mouse'),(10,'Hardware','Mouse','Right_Button_Problem','Use Left Button');
/*!40000 ALTER TABLE `solved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unsolved`
--

DROP TABLE IF EXISTS `unsolved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unsolved` (
  `queryId` int(11) NOT NULL AUTO_INCREMENT,
  `queryrelatedto` varchar(10) DEFAULT NULL,
  `querytype` varchar(20) DEFAULT NULL,
  `query` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`queryId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unsolved`
--

LOCK TABLES `unsolved` WRITE;
/*!40000 ALTER TABLE `unsolved` DISABLE KEYS */;
INSERT INTO `unsolved` VALUES (9,'Hardware','Mouse','mouse_not_working'),(10,'Hardware','other','Screen_problem'),(11,'Hardware','Mouse','Right_button_problem'),(12,'Software','other','Antivirus_problem');
/*!40000 ALTER TABLE `unsolved` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-12 15:30:36
