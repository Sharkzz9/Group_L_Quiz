CREATE DATABASE  IF NOT EXISTS `quizdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quizdb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: quizdb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `questiontable1`
--

DROP TABLE IF EXISTS `questiontable1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questiontable1` (
  `Quest_no` int NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Option_1` varchar(255) DEFAULT NULL,
  `Option_2` varchar(255) DEFAULT NULL,
  `Option_3` varchar(255) DEFAULT NULL,
  `Option_4` varchar(255) DEFAULT NULL,
  `Answer` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questiontable1`
--

LOCK TABLES `questiontable1` WRITE;
/*!40000 ALTER TABLE `questiontable1` DISABLE KEYS */;
INSERT INTO `questiontable1` VALUES (1,'Which statement is true about Java?','a) Java is a sequence-dependent programming language','b) Java is a code dependent programming language','c) Java is a platform-dependent programming language','d) Java is a platform-independent programming language','d'),(2,'What is the extension of java code files?','a) .js','b) .txt','c) .class','d) .java','d'),(3,'Who invented Java Programming?','a) Guido van Rossum','b) James Gosling','c) Dennis Ritchie','d) Bjarne Stroustrup','b'),(4,'Which one of the following is not a Java feature?','a) Object-oriented','b) Use of pointers','c) Portable','d) Dynamic and Extensible','b'),(5,'Which of these cannot be used for a variable name in Java?','a) identifier & keyword','b) identifier','c) keyword','d) none of the mentioned','c'),(6,'Find the output of the following code.\nint Integer = 24;\nchar String  = ‘I’;\nSystem.out.print(Integer);\nSystem.out.print(String);','a) Compile Error','b) Throws Exception','c) I','d) 24 I','d'),(7,'Which environment variable is used to set the java path?','a) MAVEN_Path','b) JavaPATH','c) JAVA','d) JAVA_HOME','d'),(8,'Which component is used to compile, debug and execute the java programs?','a) JRE','b) JIT','c) JDK','d) JVM','c'),(9,'What is not the use of “this” keyword in Java?','a) Referring to the instance variable when a local variable has the same name','b) Passing itself to the method of the same class','c) Passing itself to another method','d) Calling another constructor in constructor chaining','b'),(10,'Which of the following is a type of polymorphism in Java Programming?','a) Multiple polymorphism','b) Compile time polymorphism','c) Multilevel polymorphism','d) Execution time polymorphism','b');
/*!40000 ALTER TABLE `questiontable1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-06 19:42:51
