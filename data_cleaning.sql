-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: data_cleaning
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John Smith','johnsmith@gmail.com',29,'Male','2022-01-10','USA'),(2,'jane doe','',25,'female','2022-02-15','usa'),(3,'Alice Johnson','alice@gmail.com',NULL,'F','2022-03-20','Canada'),(4,'Bob Brown','bob_brown@gmail.com',200,'Male','2022-04-01','CANADA'),(5,'John Smith','johnsmith@gmail.com',29,'Male','2022-01-10','USA'),(6,'   Sarah  Adams  ','sarah_adams@gmail.com',34,'FEMALE','2022-05-22',''),(7,NULL,'no_name@gmail.com',40,'M','2022-06-12','South Africa'),(8,'Tom O\'Brien','tomobrien@gmail.com',-5,'Male','2022-07-19','south africa');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

--
-- Table structure for table `customers_manipulation`
--

DROP TABLE IF EXISTS `customers_manipulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_manipulation` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_manipulation`
--

/*!40000 ALTER TABLE `customers_manipulation` DISABLE KEYS */;
INSERT INTO `customers_manipulation` VALUES (1,'John Smith','johnsmith@gmail.com',29,'Male','2022-01-10','USA'),(2,'jane doe','noemail@domain.com',25,'FEMALE','2022-02-15','USA'),(4,'Bob Brown','bob_brown@gmail.com',200,'Male','2022-04-01','CANADA'),(5,'John Smith','johnsmith@gmail.com',29,'Male','2022-01-10','USA'),(6,'Sarah  Adams','sarah_adams@gmail.com',34,'FEMALE','2022-05-22','not provided country'),(8,'Tom O\'Brien','tomobrien@gmail.com',20,'Male','2022-07-19','south africa');
/*!40000 ALTER TABLE `customers_manipulation` ENABLE KEYS */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,120.00,'2023-12-10','completed'),(2,2,NULL,'2023-12-15','pending'),(3,3,250.00,NULL,'shipped'),(4,4,-75.00,'2024-01-05','cancelled'),(5,5,300.00,'2024-02-01','completed'),(6,NULL,500.00,'2024-02-12','failed'),(7,6,0.00,'2024-02-15','completed'),(8,7,150.00,'2024-03-01','shipped');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

--
-- Table structure for table `orders_manipulation`
--

DROP TABLE IF EXISTS `orders_manipulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_manipulation` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_manipulation`
--

/*!40000 ALTER TABLE `orders_manipulation` DISABLE KEYS */;
INSERT INTO `orders_manipulation` VALUES (1,1,120.00,'2023-12-10','completed'),(2,2,NULL,'2023-12-15','pending'),(3,3,250.00,NULL,'shipped'),(4,4,-75.00,'2024-01-05','cancelled'),(5,5,300.00,'2024-02-01','completed'),(6,NULL,500.00,'2024-02-12','failed'),(7,6,0.00,'2024-02-15','completed'),(8,7,150.00,'2024-03-01','shipped');
/*!40000 ALTER TABLE `orders_manipulation` ENABLE KEYS */;

--
-- Dumping routines for database 'data_cleaning'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-15 23:45:29

--QUERIES--

INSERT  customers_manipulation
SELECT * 
FROM customers;
--checking duplicates rows using CTE-Common Table Expression
WITH duplicate_CTE As(
SELECT *,
ROW_NUMBER() OVER(PARTITION BY id, name, email, age, gender, signup_date, country) AS row_num
 FROM customers_manipulation
 )
SELECT *
FROM duplicate_CTE 
WHERE row_num > 1;

--Deleting rows with NULL values
DELETE FROM customers_manipulation
WHERE name IS NULL OR email IS NULL OR age IS NULL OR gender IS NULL OR country IS NULL;

SELECT * FROM customers_manipulation

--Removing leading and trailing spaces using TRIM()
UPDATE customers_manipulation
SET
   name= TRIM(name),
   email= TRIM(email),
   country=TRIM(country)
WHERE 
     name  LIKE ' %' OR name LIKE '% ' OR
     email  LIKE ' %' OR email LIKE '% ' OR
     country LIKE ' %' OR country LIKE '% ';

--Filling blank spaces from table by filling with a text
UPDATE customers_manipulation
SET name = 'not provided name'
WHERE name IS NULL OR TRIM(name) = '';

UPDATE customers_manipulation
SET email = 'noemail@domain.com'
WHERE email IS NULL OR TRIM(email) = '';

UPDATE customers_manipulation
SET country = 'not provided country'
WHERE country IS NULL OR TRIM(country) = '';

--Representing USA for all individuals even those with 'usa' same as FEMALE typed as 'female'
UPDATE customers_manipulation
SET country = 'USA'
WHERE LOWER(TRIM(country)) = 'usa';

UPDATE customers_manipulation
SET gender = 'FEMALE'
WHERE LOWER(TRIM(gender)) = 'female';

UPDATE customers_manipulation
SET age = 20
WHERE age < 0 

SELECT * FROM customers_manipulation;
