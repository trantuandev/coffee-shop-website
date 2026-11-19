-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: coffeeshopmanagement
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `receiver_name` varchar(100) DEFAULT NULL,
  `receiver_phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `address_type` enum('home','work','other') DEFAULT 'home',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_address_user` (`user_id`),
  CONSTRAINT `fk_address_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (2,5,'Ty','0123456753','Khu Giáo dục và Đào tạo – Khu Công nghệ cao Hòa Lạc, Km29 Đại lộ Thăng Long, xã Thạch Hòa, huyện Thạch Thất, TP. Hà Nội',1,'home',0,'2026-03-31 06:41:10','2026-03-31 06:41:10');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'suong',NULL),(2,'Tầng 1',NULL),(3,'Tầng 2',NULL),(4,'System Diagnostic Tool','https://res.cloudinary.com/dgm1gz0tv/image/upload/v1773152531/coffee-shop/others/e2w2yj3v8fd27rh1pt3q.jpg'),(8,'Tuan','https://res.cloudinary.com/dgm1gz0tv/image/upload/v1773620558/coffee-shop/others/jbkgmedmspomssysrt0z.png');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` text,
  `image_url` text NOT NULL,
  `button_text` varchar(100) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (49,'Cà phê rang xay nguyên chất đậm vị','Thưởng thức hương vị cà phê đậm đà từ hạt Arabica tuyển chọn.','https://images.unsplash.com/photo-1509042239860-f550ce710b93','Khám phá ngay','/products','2026-01-01 00:00:00','2026-12-31 23:59:00',1,'2026-03-13 21:03:33','2026-03-16 00:34:04'),(50,'Ưu đãi mùa hè','Giảm ngay 20% cho tất cả các loại đá xay.','https://images.unsplash.com/photo-1511920170033-f8396924c348','Mua ngay','/products','2026-05-01 00:00:00','2026-08-31 23:59:59',1,'2026-03-13 21:03:33','2026-03-13 21:03:33'),(51,'Matcha Latte đặc biệt','Hương vị matcha Nhật Bản kết hợp sữa tươi béo ngậy.','https://images.unsplash.com/photo-1515823662972-da6a2e4d3002','Thử ngay','/products','2026-01-01 00:00:00','2026-03-10 23:59:00',0,'2026-03-13 21:03:33','2026-03-13 21:23:00'),(52,'Bữa sáng cùng cà phê','Combo bánh mì và cà phê chỉ từ 39K.','https://images.unsplash.com/photo-1504674900247-0877df9cc836','Xem combo','/products','2026-01-01 00:00:00','2026-12-31 23:59:59',1,'2026-03-13 21:03:33','2026-03-13 21:03:33'),(53,'Cold Brew mát lạnh','Cà phê ủ lạnh 24 giờ cho hương vị dịu nhẹ.','https://images.unsplash.com/photo-1495474472287-4d71bcdd2085','Thử ngay','/products','2026-03-05 00:00:00','2026-03-07 23:59:00',1,'2026-03-13 21:03:33','2026-03-13 21:32:22'),(54,'Khuyến mãi cuối tuần','Giảm 15% cho tất cả đơn hàng online.','https://images.unsplash.com/photo-1504754524776-8f4f37790ca0','Đặt ngay','/products','2026-03-03 00:00:00','2026-03-12 23:59:00',0,'2026-03-13 21:03:33','2026-03-16 23:45:44'),(56,'Latte nghệ thuật','Trải nghiệm latte art độc đáo từ barista chuyên nghiệp.','https://images.unsplash.com/photo-1461023058943-07fcbe16d735','Khám phá','/products','2026-03-10 00:00:00','2026-03-15 23:59:00',0,'2026-03-13 21:03:33','2026-03-16 23:46:00'),(57,'Đặt hàng nhanh chóng','Đặt cà phê online – nhận tại cửa hàng chỉ trong vài phút.','https://images.unsplash.com/photo-1521017432531-fbd92d768814','Đặt ngay','/products','2026-01-01 00:00:00','2026-12-31 23:59:59',0,'2026-03-13 21:03:33','2026-03-13 21:04:52'),(58,'Không gian cà phê thư giãn','Thưởng thức cà phê trong không gian yên tĩnh và hiện đại.','https://images.unsplash.com/photo-1501339847302-ac426a4a7cbb','Ghé thăm','/about','2026-02-16 00:00:00','2026-03-10 23:59:00',0,'2026-03-13 21:03:33','2026-03-16 23:46:19');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (11,'BM-01','banh-mi-que','Bánh mì que',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775059671/categories/g70zcjvzx9b7rvftis8t.png'),(23,'CF-01','ca-phe','Cà phê',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075366/categories/ipfmqolj7lljqjjf4x7s.jpg'),(24,'TS-04','tra-sua','Trà sữa',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075600/categories/t2au9cv16ntobk4gykkg.png'),(25,'TTC-01','tra-trai-cay','Trà trái cây',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075621/categories/gq7j57kmbaimrkzfsi0k.webp'),(26,'ST-02','sinh-to','Sinh tố',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075551/categories/govcf1b7fpfl7chpi57y.png'),(27,'NE-01','nuoc-ep','Nước ép',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075510/categories/n0llcvjf8yejaho4r0pv.jpg'),(28,'DX-01','da-xay','Đá xay',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075405/categories/mr9nuqgspj35uexuummv.webp'),(29,'BN-01','banh-ngot','Bánh ngọt',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075346/categories/jhygsivqzydysqwz3x9v.png'),(30,'SN-01','snack','Snack',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075574/categories/jkqqusfusd39y7jwqosf.webp'),(31,'NC-01','nuoc-ngot','Nước ngọt',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075532/categories/qxxv67q4ihs2bwkr7hj2.webp'),(32,'AN-01','do-an-nhe','Đồ ăn nhẹ',0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775075461/categories/uzk60ybngwtbnh5go60s.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `min_order_amount` decimal(10,2) DEFAULT '0.00',
  `max_discount_amount` decimal(10,2) DEFAULT NULL,
  `usage_limit` int DEFAULT NULL,
  `used_count` int DEFAULT '0',
  `valid_from` datetime DEFAULT CURRENT_TIMESTAMP,
  `valid_until` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,'SALE10','Giảm 10%',10.00,70000.00,200000.00,100,0,'2026-02-18 01:25:00','2026-04-18 01:25:00',NULL,'2026-02-18 15:25:58','2026-03-24 19:10:02'),(2,'SALE20','Giảm 20%',20.00,150000.00,160000.00,50,2,'2026-02-18 01:25:00','2026-03-20 01:25:00',NULL,'2026-02-18 15:25:58','2026-03-03 22:55:31'),(23,'WELCOME10','Giảm 10% cho khách hàng mới',10.00,50000.00,20000.00,500,120,'2026-01-01 00:00:00','2026-12-31 23:59:59',NULL,'2026-03-08 00:14:08','2026-03-08 22:28:48'),(24,'COFFEE15__deleted__24__1772983693828','Giảm 15% cho tất cả đồ uống cà phê',15.00,80000.00,30000.00,300,80,'2026-01-10 00:00:00','2026-12-31 23:59:59','2026-03-08 22:28:13','2026-03-08 00:14:08','2026-03-08 22:28:13'),(25,'LATTE20','Ưu đãi Latte giảm 20%',20.00,70000.00,25000.00,200,60,'2026-02-01 00:00:00','2026-10-01 23:59:59',NULL,'2026-03-08 00:14:08','2026-03-08 00:14:08'),(28,'FREESHIP5','Giảm 5% hỗ trợ phí giao hàng',5.00,60000.00,10000.00,500,100,'2026-02-15 00:00:00','2026-12-31 23:59:59',NULL,'2026-03-08 00:14:08','2026-03-08 00:14:08'),(29,'SUMMER25','Khuyến mãi mùa hè giảm 25%',25.00,120000.00,50000.00,100,20,'2026-05-01 00:00:00','2026-08-31 23:59:59',NULL,'2026-03-08 00:14:08','2026-03-08 00:14:08'),(31,'VIP30','Voucher VIP giảm 30%',30.00,150000.00,70000.00,50,10,'2026-01-01 00:00:00','2026-12-31 23:59:59',NULL,'2026-03-08 00:14:08','2026-03-08 00:14:08'),(32,'NEWYEAR20__deleted__32__1773385942350','Khuyến mãi năm mới',20.00,100000.00,40000.00,200,150,'2026-01-01 00:00:00','2026-02-01 23:59:59','2026-03-13 14:12:22','2026-03-08 00:14:08','2026-03-13 14:12:22');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_verifications`
--

DROP TABLE IF EXISTS `email_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_verifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `otp_hash` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `failed_attempts` int DEFAULT '0',
  `is_used` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `email_verifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_verifications`
--

LOCK TABLES `email_verifications` WRITE;
/*!40000 ALTER TABLE `email_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_favorites_user_product` (`user_id`,`product_id`),
  KEY `fk_favorites_product` (`product_id`),
  CONSTRAINT `fk_favorites_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_favorites_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (6,5,17,'2026-03-15 23:44:57'),(10,5,67,'2026-04-01 20:10:42');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_sale_items`
--

DROP TABLE IF EXISTS `flash_sale_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_sale_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flash_sale_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_flash_sale_product` (`flash_sale_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `flash_sale_items_ibfk_1` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`) ON DELETE CASCADE,
  CONSTRAINT `flash_sale_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_sale_items`
--

LOCK TABLES `flash_sale_items` WRITE;
/*!40000 ALTER TABLE `flash_sale_items` DISABLE KEYS */;
INSERT INTO `flash_sale_items` VALUES (41,1,18,'2026-03-28 18:30:37'),(69,2,60,'2026-04-01 21:50:51'),(70,2,64,'2026-04-01 21:50:51'),(71,2,66,'2026-04-01 21:50:51'),(75,3,18,'2026-04-02 12:10:17'),(76,3,20,'2026-04-02 12:10:17'),(77,3,61,'2026-04-02 12:10:17');
/*!40000 ALTER TABLE `flash_sale_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_sales`
--

DROP TABLE IF EXISTS `flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `discount_percent` int NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_sales`
--

LOCK TABLES `flash_sales` WRITE;
/*!40000 ALTER TABLE `flash_sales` DISABLE KEYS */;
INSERT INTO `flash_sales` VALUES (1,'Giờ Vàng Giá Sốc','2026-03-29 01:15:00','2026-03-29 14:49:00',5,'inactive','2026-03-24 05:48:49','2026-03-28 18:30:37',0),(2,'Giờ Vàng','2026-04-02 03:16:00','2026-04-02 14:16:00',10,'active','2026-03-28 18:17:14','2026-04-01 21:42:00',0),(3,'Siêu Hot Giờ Chiều','2026-04-02 17:10:00','2026-04-02 22:10:00',6,'active','2026-04-02 10:10:37','2026-04-02 12:10:17',0);
/*!40000 ALTER TABLE `flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `unit_type` varchar(25) NOT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Coffee Beans Arabica','weight','g',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(2,'Coffee Beans Robusta','weight','g',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(3,'Espresso Shot','volume','ml',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(4,'Fresh Milk','volume','ml',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(5,'Condensed Milk','volume','ml',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(6,'Whipping Cream','volume','ml',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(7,'Sugar Syrup','volume','ml',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(8,'Kem','volume','ml',0,'2026-03-09 22:11:52','2026-03-30 05:02:26'),(9,'Vanilla Syrup','volume','ml',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(10,'Chocolate Syrup','volume','ml',0,'2026-03-09 22:11:52','2026-03-30 00:54:29'),(11,'Matcha Powder','weight','g',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(12,'Cocoa Powder','weight','g',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(13,'Ice','kl','g',1,'2026-03-09 22:11:52','2026-03-30 04:57:13'),(14,'Chuối','quả','quả',0,'2026-03-09 22:11:52','2026-03-30 04:55:57'),(15,'Green Tea','weight','g',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(16,'Lemon','piece','pcs',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(17,'Mint Leaves','piece','leaf',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(18,'Pearl (Boba)','weight','g',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(19,'Cheese Foam','volume','ml',1,'2026-03-09 22:11:52','2026-03-30 05:03:48'),(20,'Salted Cream','volume','ml',0,'2026-03-09 22:11:52','2026-03-09 22:11:52'),(21,'TuanCofee','g','g',1,'2026-03-29 01:35:34','2026-03-29 08:15:01');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_requests`
--

DROP TABLE IF EXISTS `leave_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shift_id` int DEFAULT NULL,
  `reason` text,
  `status` enum('pending','cancelled','approved','rejected') DEFAULT 'pending',
  `reviewed_by` int DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `fk_leave_shift` (`shift_id`),
  KEY `fk_leave_reviewer` (`reviewed_by`),
  CONSTRAINT `fk_leave_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_leave_shift` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`),
  CONSTRAINT `leave_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_requests`
--

LOCK TABLES `leave_requests` WRITE;
/*!40000 ALTER TABLE `leave_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `summary` text,
  `content` longtext NOT NULL,
  `created_by` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `views` int DEFAULT '0',
  `tag` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `fk_news_user` (`created_by`),
  CONSTRAINT `fk_news_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (2,'Chill hè cùng Coffee','chill-he-cung-coffee','https://images.unsplash.com/photo-1495474472287-4d71bcdd2085','Thanh mát, sảng khoái mỗi ngày.','<p>Mùa hè này, thưởng thức những ly cà phê mát lạnh cùng bạn bè.</p>\n   <ul>\n     <li>Cold Brew</li>\n     <li>Matcha Latte</li>\n     <li>Smoothie trái cây</li>\n   </ul>',1,'2026-02-16 17:32:08','2026-04-02 17:45:28',3,'#2'),(3,'Ưu đãi cuối tuần','uu-dai-cuoi-tuan','https://images.unsplash.com/photo-1511920170033-f8396924c348','Giảm giá 20% toàn bộ menu.','<p>Chỉ trong 2 ngày cuối tuần, khách hàng sẽ được giảm <strong>20%</strong> toàn bộ menu.</p>\n   <p>Áp dụng tại tất cả chi nhánh.</p>',1,'2026-02-16 17:32:08','2026-03-16 23:39:22',2,'#2'),(4,'Bộ sưu tập cà phê mùa hè 2026','bo-suu-tap-ca-phe-mua-he-2026','https://images.unsplash.com/photo-1495474472287-4d71bcdd2085','Khám phá những hương vị tươi mát, đánh thức mùa hè của bạn.','Chúng tôi ra mắt bộ sưu tập cà phê mùa hè với các hương vị trái cây tươi mát kết hợp cùng espresso rang đậm. Đây là lựa chọn hoàn hảo cho những ngày nắng nóng.',1,'2026-02-16 22:18:50','2026-03-04 05:04:01',0,'#df'),(5,'Workshop pha chế miễn phí cuối tuần','workshop-pha-che-mien-phi-cuoi-tuan','https://images.unsplash.com/photo-1509042239860-f550ce710b93','Tham gia workshop để học cách pha chế như barista chuyên nghiệp.','Workshop đặc biệt dành cho khách hàng yêu thích cà phê. Bạn sẽ được hướng dẫn cách tạo latte art và pha espresso chuẩn vị bởi đội ngũ barista của chúng tôi.',1,'2026-02-16 22:18:50','2026-03-15 23:37:27',2,NULL),(6,'Ra mắt không gian check-in mới','ra-mat-khong-gian-check-in-moi','https://images.unsplash.com/photo-1554118811-1e0d58224f24','Không gian mới hiện đại, lý tưởng cho làm việc và gặp gỡ bạn bè.','Coffee Shop vừa hoàn thiện khu vực check-in mới với thiết kế tối giản, ánh sáng tự nhiên và nhiều góc sống ảo dành cho khách hàng.',1,'2026-02-16 22:18:50','2026-02-16 22:18:50',0,NULL),(7,'Ưu đãi sinh viên tháng 7','uu-dai-sinh-vien-thang-7','https://images.unsplash.com/photo-1521017432531-fbd92d768814','Giảm giá 15% cho tất cả sinh viên trong tháng 7.','Chỉ cần xuất trình thẻ sinh viên, bạn sẽ nhận ngay ưu đãi 15% cho toàn bộ menu đồ uống trong tháng 7 này.',1,'2026-02-16 22:18:50','2026-04-02 04:10:31',3,NULL),(8,'Hành trình tìm kiếm hạt cà phê chất lượng','hanh-trinh-tim-kiem-hat-ca-phe-chat-luong','https://images.unsplash.com/photo-1461023058943-07fcbe16d735','Từ nông trại đến tách cà phê – câu chuyện phía sau mỗi hạt cà phê.','Chúng tôi hợp tác trực tiếp với nông trại tại Đà Lạt để tuyển chọn những hạt cà phê Arabica chất lượng cao, đảm bảo hương vị nguyên bản và bền vững.',1,'2026-02-16 22:18:50','2026-02-16 22:18:50',0,NULL),(52,'Top 5 Loại Cà Phê Được Yêu Thích Nhất Tại Quán','top-5-loai-ca-phe-duoc-yeu-thich','https://picsum.photos/seed/coffee3/600/400','Khám phá những món cà phê được khách hàng gọi nhiều nhất.','Espresso, Cappuccino, Latte, Cold Brew và Bạc Xỉu là những loại cà phê được khách hàng yêu thích nhất tại quán.',1,'2026-03-08 00:10:07','2026-04-02 02:18:59',226,'Menu'),(53,'Khuyến Mãi Cuối Tuần: Giảm 20% Tất Cả Đồ Uống','khuyen-mai-cuoi-tuan-giam-20','https://picsum.photos/seed/coffee4/600/400','Chương trình ưu đãi đặc biệt dành cho khách hàng vào cuối tuần.','Từ thứ 6 đến chủ nhật, tất cả đồ uống tại quán sẽ được giảm giá 20%. Đừng bỏ lỡ cơ hội thưởng thức cà phê ngon với giá ưu đãi.',1,'2026-03-08 00:10:07','2026-03-30 22:56:48',183,'Promotion'),(54,'Sự Khác Biệt Giữa Arabica Và Robusta','su-khac-biet-arabica-robusta','https://picsum.photos/seed/coffee5/600/400','Arabica và Robusta là hai giống cà phê phổ biến nhất thế giới.','<p>Arabica có hương vị nhẹ nhàng, chua thanh trong khi Robusta đậm vị và chứa nhiều caffeine hơn. Arabica có hương vị nhẹ nhàng, chua thanh trong khi Robusta đậm vị và chứa nhiều caffeine hơn.</p>',1,'2026-03-08 00:10:07','2026-04-02 04:16:23',108,'#coffee'),(55,'Cold Brew Là Gì? Vì Sao Giới Trẻ Yêu Thích','cold-brew-la-gi','https://picsum.photos/seed/coffee6/600/400','Cold Brew đang trở thành xu hướng cà phê hiện đại.','<p>Cold Brew được pha bằng cách ủ cà phê với nước lạnh trong nhiều giờ, tạo nên hương vị dịu nhẹ và ít đắng. ok Arabica có hương vị nhẹ nhàng, chua thanh trong khi Robusta đậm vị và chứa nhiều caffeine hơn.</p>',1,'2026-03-08 00:10:07','2026-04-02 18:02:38',179,'#coffee'),(56,'3 Bí Quyết Chọn Hạt Cà Phê Ngon','3-bi-quyet-chon-hat-ca-phe-ngon','https://picsum.photos/seed/coffee7/600/400','Chọn hạt cà phê chất lượng là bước quan trọng để có ly cà phê ngon.','Hãy chú ý đến nguồn gốc hạt cà phê, mức độ rang và mùi hương khi chọn mua.',1,'2026-03-08 00:10:07','2026-04-02 04:11:28',62,'Tips'),(57,'Không Gian Quán Cà Phê Lý Tưởng Để Làm Việc','khong-gian-ca-phe-lam-viec','https://picsum.photos/seed/coffee8/600/400','Một quán cà phê yên tĩnh là nơi lý tưởng để học tập và làm việc.','Không gian thoải mái, wifi ổn định và cà phê ngon giúp khách hàng tập trung làm việc hiệu quả.',1,'2026-03-08 00:10:07','2026-04-01 22:21:47',50,'Lifestyle'),(58,'Câu Chuyện Đằng Sau Ly Espresso','cau-chuyen-dang-sau-espresso','https://picsum.photos/seed/coffee9/600/400','Espresso là nền tảng của nhiều loại cà phê nổi tiếng.','Được phát minh tại Ý, espresso được pha bằng cách ép nước nóng qua bột cà phê mịn dưới áp suất cao.',1,'2026-03-08 00:10:07','2026-03-08 21:02:45',114,'Coffee'),(59,'Cách Bảo Quản Cà Phê Để Giữ Hương Vị','cach-bao-quan-ca-phe','https://picsum.photos/seed/coffee10/600/400','Bảo quản đúng cách giúp cà phê giữ được hương vị lâu hơn.','Bạn nên bảo quản cà phê trong hộp kín, tránh ánh sáng và độ ẩm để giữ được mùi thơm tự nhiên.',1,'2026-03-08 00:10:07','2026-04-02 04:11:38',71,'Tips'),(66,'Cà phê chuồn ngon nhất thế giới','ca-phe-chuon-ngon-nhat-the-gioi','https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774374382/coffee-shop/news/zhece2ax7xt87kuzoybu.webp','Hành trình khám phá Cà phê Chuồn – huyền thoại hương vị ẩn mình. Điều gì khiến nó trở thành đỉnh cao nghệ thuật cà phê, chinh phục cả những tín đồ khó tính nhất? Đắm mình vào trải nghiệm có một không hai!','<p>Trong thế giới cà phê rộng lớn, nơi hàng ngàn hương vị và câu chuyện đan xen, luôn tồn tại một khát vọng không ngừng nghỉ về sự hoàn hảo tuyệt đối. Một ly cà phê không chỉ đánh thức giác quan mà còn chạm đến tâm hồn, một trải nghiệm vượt lên trên mọi giới hạn. Đó chính là huyền thoại về <em>Cà phê Chuồn</em> – cái tên gợi lên sự tinh tế, thanh thoát và khó nắm bắt, như một cánh chuồn chuồn lướt nhẹ trên mặt nước, chỉ xuất hiện khi mọi yếu tố hội tụ một cách hoàn hảo nhất. Nó không đơn thuần là một loại hạt, mà là một triết lý, một đỉnh cao của nghệ thuật chế biến và thưởng thức, được mệnh danh là “ngon nhất thế giới”.</p><p>Tại sao Cà phê Chuồn lại có thể chiếm giữ vị trí độc tôn này trong lòng những tín đồ cà phê sành điệu nhất? Liệu đó có phải là một loại hạt hiếm có, một quy trình chế biến bí truyền, hay một sự kết hợp diệu kỳ của tất cả các yếu tố? Bài viết này sẽ đưa bạn vào một cuộc hành trình sâu sắc, vén màn những bí ẩn đằng sau cái tên huyền thoại ấy, khám phá từng khía cạnh từ lịch sử, nguồn gốc, quy trình pha chế tinh xảo, đến trải nghiệm hương vị mê hoặc và văn hóa thưởng thức độc đáo mà nó mang lại. Hãy cùng chúng tôi đi tìm định nghĩa đích thực của sự hoàn hảo trong từng giọt cà phê.</p><h2>Lịch Sử và Nguồn Gốc Huyền Thoại của',1,'2026-03-25 00:46:23','2026-04-02 04:48:24',22,'#caphechuon'),(67,'Cà phê có nguồn gốc từ đâu nhỉ','ca-phe-co-nguon-goc-tu-djau-nhi','https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774375268/coffee-shop/news/tvmomyhwotwd7n3njplo.jpg','Từ những cao nguyên huyền bí Ethiopia đến ly cà phê bạn đang thưởng thức, hành trình của thức uống diệu kỳ này ẩn chứa bao câu chuyện lịch sử, văn hóa và hương vị. Khám phá ngay!','<h2>Huyền Thoại Khởi Nguồn: Từ Cao Nguyên Ethiopia Đến Thế Giới Hồi Giáo</h2><ul><li><p><strong>Những cột mốc khởi nguyên quan trọng:</strong></p></li><li><p><em>Thế kỷ 9:</em> Truyền thuyết Kaldi và những con dê hiếu động ở Ethiopia.</p></li><li><p><em>Thế kỷ 15:</em> Cà phê đến Yemen, được sử dụng rộng rãi bởi các tu sĩ Sufi.</p></li><li><p><em>Thế kỷ 16:</em> Xuất hiện các quán cà phê (Kaveh Kanes) đầu tiên ở Mecca, Cairo, Istanbul.</p></li><li><p><em>Đầu thế kỷ 17:</em> Hạt cà phê bắt đầu hành trình đến châu Âu.</p></li></ul><h2>Cà Phê Chinh Phục Thế Giới: Từ Cấm Đoán Đến Đồ Uống Toàn Cầu</h2><p>Sự phổ biến của cà phê bùng nổ mạnh mẽ trong <strong>Đế chế Ottoman</strong>. Các quán cà phê, hay <em>Kaveh Kanes</em>, mọc lên như nấm ở các thành phố lớn như Mecca, Cairo, Damascus và đặc biệt là Istanbul. Những quán cà phê này nhanh chóng trở thành trung tâm của đời sống xã hội, chính trị và trí tuệ. Đây là nơi mọi người tụ tập để trò chuyện, bàn luận chính sự, chơi cờ, nghe kể chuyện và thưởng thức một tách cà phê nóng. Chúng được mệnh danh là \'trường học của những người khôn ngoan\' bởi đây là nơi các ý tưởng được trao đổi, thông tin được lan truyền và các cuộc tranh luận sôi nổi diễn ra. Tuy nhiên, không phải ai cũng hoan nghênh sự xuất hiện của cà phê.</p><h2>Hành Trình Đến Châu Mỹ và Sự Phát Triển Công Nghiệp</h2><p>Bước ngoặt lớn tiếp theo trong hành trình của cà phê là khi nó đặt chân đến <strong>châu Mỹ</strong>. Câu chuyện nổi tiếng nhất về sự kiện này gắn liền với <strong>Gabriel de Clieu</strong>, một sĩ quan hải quân Pháp. Vào năm 1723, de Clieu đã thực hiện một chuyến đi đầy gian nan từ Paris đến thuộc địa Martinique ở Caribe, mang theo một cây cà phê non. Trên hành trình vượt đại dương khắc nghiệt, ông phải đối mặt với bão tố, cướp biển và thậm chí là việc chia sẻ khẩu phần nước uống quý giá của mình với cây cà phê để giữ cho nó sống sót. Nỗ lực phi thường của de Clieu đã được đền đáp khi cây cà phê non sống sót và phát triển mạnh mẽ ở Martinique, trở thành tổ tiên của hàng triệu cây cà phê đang được trồng khắp vùng Caribe và Mỹ Latinh ngày nay.</p>',1,'2026-03-25 01:01:10','2026-04-02 18:48:14',30,'#nguongoccaphe');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_recipients`
--

DROP TABLE IF EXISTS `notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_recipients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notification_id` int NOT NULL,
  `user_id` int NOT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `read_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_notification_user` (`notification_id`,`user_id`),
  KEY `idx_recipient_user_read` (`user_id`,`is_read`),
  KEY `idx_recipient_notification` (`notification_id`),
  CONSTRAINT `fk_notification_recipient_notification` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_notification_recipient_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_recipients`
--

LOCK TABLES `notification_recipients` WRITE;
/*!40000 ALTER TABLE `notification_recipients` DISABLE KEYS */;
INSERT INTO `notification_recipients` VALUES (1,1,1,1,'2026-03-11 15:31:26','2026-03-08 01:33:07'),(2,2,1,1,'2026-03-11 15:31:26','2026-03-08 01:37:12'),(3,3,1,1,'2026-03-11 15:31:26','2026-03-08 01:40:24'),(4,4,1,1,'2026-03-11 15:31:26','2026-03-08 01:44:16'),(5,5,1,1,'2026-03-11 15:31:26','2026-03-08 01:56:41'),(6,6,1,1,'2026-03-11 15:31:26','2026-03-08 02:03:43'),(7,7,1,1,'2026-03-11 15:31:26','2026-03-08 02:04:06'),(8,8,1,1,'2026-03-11 15:31:26','2026-03-08 02:04:18'),(9,9,1,1,'2026-03-11 15:31:26','2026-03-08 02:25:19'),(10,10,1,1,'2026-03-11 15:31:26','2026-03-08 19:14:58'),(11,11,1,1,'2026-03-11 15:31:26','2026-03-09 15:32:23'),(12,12,1,1,'2026-03-11 15:31:26','2026-03-09 15:42:22'),(13,13,1,1,'2026-03-11 15:31:26','2026-03-09 15:50:20'),(14,14,1,1,'2026-03-11 15:31:26','2026-03-09 15:51:06'),(15,15,1,1,'2026-03-11 15:31:26','2026-03-09 15:55:20'),(16,16,1,1,'2026-03-11 15:31:26','2026-03-09 15:55:52'),(17,17,1,1,'2026-03-11 15:31:26','2026-03-10 17:04:23'),(18,18,1,1,'2026-03-11 15:31:26','2026-03-10 17:20:13'),(19,19,1,1,'2026-03-11 15:31:26','2026-03-10 17:20:42'),(20,20,1,1,'2026-03-11 15:31:26','2026-03-10 20:06:56'),(21,21,1,1,'2026-03-11 15:31:26','2026-03-10 20:11:48'),(22,22,1,1,'2026-03-11 15:31:26','2026-03-11 01:16:58'),(23,23,1,1,'2026-03-11 15:31:26','2026-03-11 01:17:18'),(24,24,1,1,'2026-03-11 15:31:26','2026-03-11 02:53:12'),(25,25,1,1,'2026-03-11 15:31:26','2026-03-11 02:54:19'),(26,26,1,1,'2026-03-12 06:18:07','2026-03-11 15:49:21'),(27,27,1,1,'2026-03-12 06:18:07','2026-03-11 22:56:21'),(28,28,1,1,'2026-03-12 06:18:07','2026-03-12 06:17:32'),(29,29,1,1,'2026-03-13 00:12:50','2026-03-12 07:59:49'),(30,30,1,1,'2026-03-13 20:26:57','2026-03-13 00:13:55'),(31,31,1,1,'2026-03-20 23:40:59','2026-03-17 21:57:20'),(32,32,1,1,'2026-03-20 23:40:59','2026-03-17 21:57:33'),(33,33,3,1,'2026-03-25 02:53:46','2026-03-24 19:44:56'),(35,34,4,1,'2026-03-30 04:11:38','2026-03-24 19:44:56'),(36,35,3,1,'2026-03-25 02:53:46','2026-03-24 19:45:01'),(38,36,4,1,'2026-03-30 04:11:38','2026-03-24 19:45:01'),(39,37,3,1,'2026-03-25 02:53:46','2026-03-24 19:45:11'),(41,38,4,1,'2026-03-30 04:11:38','2026-03-24 19:45:11'),(42,39,3,1,'2026-03-25 02:53:46','2026-03-24 19:54:18'),(44,40,4,1,'2026-03-30 04:11:38','2026-03-24 19:54:18'),(45,41,3,1,'2026-03-25 02:53:46','2026-03-24 19:54:32'),(47,42,4,1,'2026-03-30 04:11:38','2026-03-24 19:54:32'),(48,43,3,1,'2026-03-30 17:12:27','2026-03-28 23:53:59'),(50,44,4,1,'2026-03-30 04:11:38','2026-03-28 23:53:59'),(51,45,3,1,'2026-03-29 00:10:34','2026-03-29 00:09:50'),(53,46,4,1,'2026-03-29 00:22:18','2026-03-29 00:09:50'),(54,47,3,1,'2026-03-29 00:10:22','2026-03-29 00:09:55'),(56,48,4,1,'2026-03-30 04:11:38','2026-03-29 00:09:55'),(58,49,4,1,'2026-03-30 04:11:38','2026-03-29 00:12:16'),(60,50,4,1,'2026-03-30 04:11:38','2026-03-29 00:14:30'),(62,51,4,1,'2026-03-30 04:11:38','2026-03-29 00:20:42'),(63,52,3,1,'2026-03-30 17:12:27','2026-03-29 00:45:14'),(65,53,4,1,'2026-03-30 04:11:38','2026-03-29 00:45:14'),(67,54,4,1,'2026-03-30 04:11:38','2026-03-29 00:46:27'),(68,55,3,1,'2026-03-30 17:12:27','2026-03-29 01:30:50'),(70,56,4,1,'2026-03-30 04:11:38','2026-03-29 01:30:50'),(71,57,3,1,'2026-03-30 17:12:27','2026-03-29 01:30:53'),(73,58,4,1,'2026-03-30 04:11:38','2026-03-29 01:30:53'),(74,59,3,1,'2026-03-30 17:12:27','2026-03-29 01:45:33'),(76,60,4,1,'2026-03-30 04:11:38','2026-03-29 01:45:33'),(77,61,3,1,'2026-03-30 17:12:27','2026-03-29 01:46:06'),(79,62,4,1,'2026-03-30 04:11:38','2026-03-29 01:46:06'),(80,63,3,1,'2026-03-30 17:12:27','2026-03-29 01:49:22'),(82,64,4,1,'2026-03-30 04:11:38','2026-03-29 01:49:22'),(83,65,3,1,'2026-03-30 17:12:27','2026-03-29 01:49:25'),(85,66,4,1,'2026-03-30 04:11:38','2026-03-29 01:49:25'),(86,67,3,1,'2026-03-30 17:12:27','2026-03-29 03:05:13'),(88,68,4,1,'2026-03-30 04:11:38','2026-03-29 03:05:13'),(89,69,3,1,'2026-03-30 17:12:27','2026-03-29 03:05:47'),(91,70,4,1,'2026-03-30 04:11:38','2026-03-29 03:05:47'),(92,71,3,1,'2026-03-30 17:12:27','2026-03-29 03:07:14'),(94,72,4,1,'2026-03-30 04:11:38','2026-03-29 03:07:14'),(95,73,3,1,'2026-03-30 17:12:27','2026-03-29 03:07:18'),(97,74,4,1,'2026-03-30 04:11:38','2026-03-29 03:07:18'),(98,75,3,1,'2026-03-30 17:12:27','2026-03-29 04:08:23'),(100,76,4,1,'2026-03-30 04:11:38','2026-03-29 04:08:24'),(101,77,3,1,'2026-03-30 17:12:27','2026-03-29 04:08:41'),(103,78,4,1,'2026-03-30 04:11:38','2026-03-29 04:08:41'),(104,79,3,1,'2026-03-30 17:12:27','2026-03-29 04:10:12'),(106,80,4,1,'2026-03-30 04:11:38','2026-03-29 04:10:12'),(107,81,3,1,'2026-03-30 17:12:27','2026-03-29 16:54:57'),(109,82,4,1,'2026-03-30 04:11:38','2026-03-29 16:54:57'),(110,83,3,0,NULL,'2026-03-30 17:36:18'),(112,84,4,1,'2026-04-01 05:43:24','2026-03-30 17:36:18'),(113,85,3,0,NULL,'2026-03-30 17:37:39'),(115,86,4,1,'2026-04-01 05:43:24','2026-03-30 17:37:39'),(116,87,3,0,NULL,'2026-03-31 05:27:32'),(118,88,4,1,'2026-04-01 05:43:24','2026-03-31 05:27:32'),(119,89,3,0,NULL,'2026-03-31 05:28:13'),(121,90,4,1,'2026-04-01 05:43:24','2026-03-31 05:28:13'),(122,91,3,0,NULL,'2026-03-31 05:28:18'),(124,92,4,1,'2026-04-01 05:43:24','2026-03-31 05:28:18'),(125,93,3,0,NULL,'2026-04-01 02:29:18'),(127,94,4,1,'2026-04-01 05:43:24','2026-04-01 02:29:18'),(128,95,3,0,NULL,'2026-04-01 03:10:56'),(130,96,4,1,'2026-04-01 05:43:24','2026-04-01 03:10:56'),(131,97,3,0,NULL,'2026-04-01 04:16:39'),(133,98,4,1,'2026-04-01 05:43:24','2026-04-01 04:16:39'),(134,99,3,0,NULL,'2026-04-01 22:52:17'),(136,100,4,0,NULL,'2026-04-01 22:52:17'),(137,101,3,0,NULL,'2026-04-02 03:26:35'),(139,102,4,0,NULL,'2026-04-02 03:26:35'),(140,103,3,0,NULL,'2026-04-02 19:09:03'),(141,104,4,0,NULL,'2026-04-02 19:09:03');
/*!40000 ALTER TABLE `notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `entity_type` varchar(50) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_notifications_type` (`type`),
  KEY `idx_notifications_entity` (`entity_type`,`entity_id`),
  KEY `idx_notifications_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'newsletter','Email đăng ký mới','hung2@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',16,'2026-03-08 01:33:07'),(2,'newsletter','Email đăng ký mới','o@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',17,'2026-03-08 01:37:12'),(3,'newsletter','Email đăng ký mới','ko@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',18,'2026-03-08 01:40:24'),(4,'newsletter','Email đăng ký mới','aomoi@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',19,'2026-03-08 01:44:16'),(5,'newsletter','Email đăng ký mới','inhn@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',20,'2026-03-08 01:56:41'),(6,'newsletter','Email đăng ký mới','xtyt@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',21,'2026-03-08 02:03:43'),(7,'newsletter','Email đăng ký mới','xtuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',22,'2026-03-08 02:04:06'),(8,'newsletter','Email đăng ký mới','he173048teranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',23,'2026-03-08 02:04:18'),(9,'newsletter','Email đăng ký mới','vtranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',24,'2026-03-08 02:25:19'),(10,'newsletter','Email đăng ký mới','kntuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',25,'2026-03-08 19:14:58'),(11,'newsletter','Email đăng ký mới','he173048tranvasntuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',33,'2026-03-09 15:32:23'),(12,'newsletter','Email đăng ký mới','he173048sstranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',34,'2026-03-09 15:42:22'),(13,'newsletter','Email đăng ký mới','he173vvv048tranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',35,'2026-03-09 15:50:20'),(14,'newsletter','Email đăng ký mới','mmn@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',36,'2026-03-09 15:51:06'),(15,'newsletter','Email đăng ký mới','hednvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',37,'2026-03-09 15:55:20'),(16,'newsletter','Email đăng ký mới','chuthevan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',38,'2026-03-09 15:55:52'),(17,'news-letter','Email đăng ký mới','luan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',39,'2026-03-10 17:04:23'),(18,'news-letter','Email đăng ký mới','he173d048tranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',40,'2026-03-10 17:20:13'),(19,'news-letter','Email đăng ký mới','he17304dd8tranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',41,'2026-03-10 17:20:42'),(20,'news-letter','Email đăng ký mới','okkkkk@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',42,'2026-03-10 20:06:56'),(21,'news-letter','Email đăng ký mới','minhuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',43,'2026-03-10 20:11:48'),(22,'news-letter','Email đăng ký mới','he173048tranlvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',44,'2026-03-11 01:16:58'),(23,'news-letter','Email đăng ký mới','okiiii@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',45,'2026-03-11 01:17:18'),(24,'news-letter','Email đăng ký mới','he173048tranvllooooooooooooooantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',46,'2026-03-11 02:53:12'),(25,'news-letter','Email đăng ký mới','meo@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',47,'2026-03-11 02:54:19'),(26,'news-letter','Email đăng ký mới','he173048tranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',48,'2026-03-11 15:49:21'),(27,'news-letter','Email đăng ký mới','tranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',49,'2026-03-11 22:56:21'),(28,'news-letter','Email đăng ký mới','x48tranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',50,'2026-03-12 06:17:32'),(29,'news-letter','Email đăng ký mới','he17304l8tranvantuan@gmail.com vừa đăng ký nhận tin','/admin/news-letter','newsletter_subscriber',51,'2026-03-12 07:59:49'),(30,'subscriber','Email đăng ký mới','mnnvantuan@gmail.com vừa đăng ký nhận tin','/admin/subscriner','email_subscriber',52,'2026-03-13 00:13:55'),(31,'subscriber','Email đăng ký mới','he173048tsrdanvantuan@gmail.com vừa đăng ký nhận tin','/admin/subscriner','email_subscriber',53,'2026-03-17 21:57:20'),(32,'subscriber','Email đăng ký mới','he1730sss48tranvantuan@gmail.com vừa đăng ký nhận tin','/admin/subscriner','email_subscriber',54,'2026-03-17 21:57:33'),(33,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #64','/staff/delivery','order',64,'2026-03-24 19:44:56'),(34,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #64','/staff/delivery','order',64,'2026-03-24 19:44:56'),(35,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #65','/staff/delivery','order',65,'2026-03-24 19:45:01'),(36,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #65','/staff/delivery','order',65,'2026-03-24 19:45:01'),(37,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #66','/staff/delivery','order',66,'2026-03-24 19:45:11'),(38,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #66','/staff/delivery','order',66,'2026-03-24 19:45:11'),(39,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #67','/staff/delivery','order',67,'2026-03-24 19:54:18'),(40,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #67','/staff/delivery','order',67,'2026-03-24 19:54:18'),(41,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #68','/staff/delivery','order',68,'2026-03-24 19:54:32'),(42,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #68','/staff/delivery','order',68,'2026-03-24 19:54:32'),(43,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #69','/staff/delivery','order',69,'2026-03-28 23:53:59'),(44,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #69','/staff/delivery','order',69,'2026-03-28 23:53:59'),(45,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #70','/staff/delivery','order',70,'2026-03-29 00:09:50'),(46,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #70','/staff/delivery','order',70,'2026-03-29 00:09:50'),(47,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #71','/staff/delivery','order',71,'2026-03-29 00:09:55'),(48,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #71','/staff/delivery','order',71,'2026-03-29 00:09:55'),(49,'order_prepare_requested','Có đơn cần pha chế','Đơn #71 đã được nhân viên xác nhận, vui lòng bắt đầu pha chế','/barista/kitchen','order',71,'2026-03-29 00:12:16'),(50,'order_prepare_requested','Có đơn cần pha chế','Đơn #70 đã được nhân viên xác nhận, vui lòng bắt đầu pha chế','/barista/kitchen','order',70,'2026-03-29 00:14:30'),(51,'order_prepare_requested','Có đơn cần pha chế','Đơn #16 đã được nhân viên xác nhận, vui lòng bắt đầu pha chế','/barista/kitchen','order',16,'2026-03-29 00:20:42'),(52,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #72','/staff/delivery','order',72,'2026-03-29 00:45:14'),(53,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #72','/staff/delivery','order',72,'2026-03-29 00:45:14'),(54,'order_prepare_requested','Có đơn cần pha chế','Đơn #72 đã được nhân viên xác nhận, vui lòng bắt đầu pha chế','/barista/kitchen','order',72,'2026-03-29 00:46:27'),(55,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #73','/staff/delivery','order',73,'2026-03-29 01:30:50'),(56,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #73','/staff/delivery','order',73,'2026-03-29 01:30:50'),(57,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #74','/staff/delivery','order',74,'2026-03-29 01:30:53'),(58,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #74','/staff/delivery','order',74,'2026-03-29 01:30:53'),(59,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #75','/staff/delivery','order',75,'2026-03-29 01:45:33'),(60,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #75','/staff/delivery','order',75,'2026-03-29 01:45:33'),(61,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #76','/staff/delivery','order',76,'2026-03-29 01:46:06'),(62,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #76','/staff/delivery','order',76,'2026-03-29 01:46:06'),(63,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #77','/staff/delivery','order',77,'2026-03-29 01:49:22'),(64,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #77','/staff/delivery','order',77,'2026-03-29 01:49:22'),(65,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #78','/staff/delivery','order',78,'2026-03-29 01:49:25'),(66,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #78','/staff/delivery','order',78,'2026-03-29 01:49:25'),(67,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #79','/staff/delivery','order',79,'2026-03-29 03:05:13'),(68,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #79','/staff/delivery','order',79,'2026-03-29 03:05:13'),(69,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #80','/staff/delivery','order',80,'2026-03-29 03:05:47'),(70,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #80','/staff/delivery','order',80,'2026-03-29 03:05:47'),(71,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #81','/staff/delivery','order',81,'2026-03-29 03:07:14'),(72,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #81','/staff/delivery','order',81,'2026-03-29 03:07:14'),(73,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #82','/staff/delivery','order',82,'2026-03-29 03:07:18'),(74,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #82','/staff/delivery','order',82,'2026-03-29 03:07:18'),(75,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #83','/staff/delivery','order',83,'2026-03-29 04:08:23'),(76,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #83','/staff/delivery','order',83,'2026-03-29 04:08:23'),(77,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #84','/staff/delivery','order',84,'2026-03-29 04:08:41'),(78,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #84','/staff/delivery','order',84,'2026-03-29 04:08:41'),(79,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #85','/staff/delivery','order',85,'2026-03-29 04:10:12'),(80,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #85','/staff/delivery','order',85,'2026-03-29 04:10:12'),(81,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #86','/staff/delivery','order',86,'2026-03-29 16:54:57'),(82,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #86','/staff/delivery','order',86,'2026-03-29 16:54:57'),(83,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #87','/staff/delivery','order',87,'2026-03-30 17:36:18'),(84,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #87','/staff/delivery','order',87,'2026-03-30 17:36:18'),(85,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #88','/staff/delivery','order',88,'2026-03-30 17:37:39'),(86,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #88','/staff/delivery','order',88,'2026-03-30 17:37:39'),(87,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #89','/staff/delivery','order',89,'2026-03-31 05:27:32'),(88,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #89','/staff/delivery','order',89,'2026-03-31 05:27:32'),(89,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #90','/staff/delivery','order',90,'2026-03-31 05:28:13'),(90,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #90','/staff/delivery','order',90,'2026-03-31 05:28:13'),(91,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #91','/staff/delivery','order',91,'2026-03-31 05:28:18'),(92,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #91','/staff/delivery','order',91,'2026-03-31 05:28:18'),(93,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #92','/staff/delivery','order',92,'2026-04-01 02:29:18'),(94,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #92','/staff/delivery','order',92,'2026-04-01 02:29:18'),(95,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #93','/staff/delivery','order',93,'2026-04-01 03:10:56'),(96,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #93','/staff/delivery','order',93,'2026-04-01 03:10:56'),(97,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #94','/staff/delivery','order',94,'2026-04-01 04:16:39'),(98,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #94','/staff/delivery','order',94,'2026-04-01 04:16:39'),(99,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #95','/staff/delivery','order',95,'2026-04-01 22:52:17'),(100,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #95','/staff/delivery','order',95,'2026-04-01 22:52:17'),(101,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #96','/staff/delivery','order',96,'2026-04-02 03:26:35'),(102,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #96','/staff/delivery','order',96,'2026-04-02 03:26:35'),(103,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #97','/staff/delivery','order',97,'2026-04-02 19:09:02'),(104,'new_order','Đơn giao hàng mới','Có đơn giao hàng mới #97','/staff/delivery','order',97,'2026-04-02 19:09:03');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_delivery_info`
--

DROP TABLE IF EXISTS `order_delivery_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_delivery_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `receiver_name` varchar(100) DEFAULT NULL,
  `receiver_phone` varchar(20) DEFAULT NULL,
  `receiver_email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  CONSTRAINT `order_delivery_info_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_delivery_info`
--

LOCK TABLES `order_delivery_info` WRITE;
/*!40000 ALTER TABLE `order_delivery_info` DISABLE KEYS */;
INSERT INTO `order_delivery_info` VALUES (70,96,'Ty','0123456753','cus1@gmail.com','Khu Giáo dục và Đào tạo – Khu Công nghệ cao Hòa Lạc, Km29 Đại lộ Thăng Long, xã Thạch Hòa, huyện Thạch Thất, TP. Hà Nội',NULL),(71,97,'Ty','0123456753','cus1@gmail.com','Khu Giáo dục và Đào tạo – Khu Công nghệ cao Hòa Lạc, Km29 Đại lộ Thăng Long, xã Thạch Hòa, huyện Thạch Thất, TP. Hà Nội',NULL);
/*!40000 ALTER TABLE `order_delivery_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail_toppings`
--

DROP TABLE IF EXISTS `order_detail_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail_toppings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_detail_id` int NOT NULL,
  `topping_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_detail_id` (`order_detail_id`),
  KEY `topping_id` (`topping_id`),
  CONSTRAINT `order_detail_toppings_ibfk_1` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_detail_toppings_ibfk_2` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail_toppings`
--

LOCK TABLES `order_detail_toppings` WRITE;
/*!40000 ALTER TABLE `order_detail_toppings` DISABLE KEYS */;
INSERT INTO `order_detail_toppings` VALUES (51,140,4,1,3000.00);
/*!40000 ALTER TABLE `order_detail_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_size_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_size_id` (`product_size_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_size_id`) REFERENCES `product_sizes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (137,96,82,1,6000.00,NULL),(138,96,107,1,15000.00,NULL),(139,96,74,1,100000.00,NULL),(140,96,115,1,17000.00,NULL),(141,97,115,1,14000.00,NULL);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_payments`
--

DROP TABLE IF EXISTS `order_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `payment_method` enum('cash','payos') NOT NULL,
  `payment_status` enum('pending','paid','refunded') DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `paid_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cash_received` int NOT NULL DEFAULT '0',
  `change_amount` int NOT NULL DEFAULT '0',
  `adjustment_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(100) DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  CONSTRAINT `fk_payment_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_payments`
--

LOCK TABLES `order_payments` WRITE;
/*!40000 ALTER TABLE `order_payments` DISABLE KEYS */;
INSERT INTO `order_payments` VALUES (70,96,'cash','pending',158000.00,0.00,0,0,0.00,NULL,NULL,'2026-04-02 03:26:35','2026-04-02 03:26:35'),(71,97,'payos','pending',34000.00,0.00,0,0,0.00,NULL,NULL,'2026-04-02 19:09:02','2026-04-02 19:09:02');
/*!40000 ALTER TABLE `order_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `order_type` enum('dine-in','takeaway','delivery') NOT NULL,
  `table_id` int DEFAULT NULL,
  `discount_id` int DEFAULT NULL,
  `status` enum('pending','preparing','served','delivering','completed','cancelled') DEFAULT 'pending',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `paid_at` datetime DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT '0',
  `total_amount` decimal(15,2) DEFAULT NULL,
  `customer_type` enum('guest','registered') NOT NULL DEFAULT 'guest',
  `assigned_barista_id` int DEFAULT NULL,
  `receipt_snapshot` json DEFAULT NULL,
  `print_status` enum('PENDING','SUCCESS','FAILED') DEFAULT 'PENDING',
  `session_id` varchar(255) DEFAULT NULL,
  `used_points` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_order_user` (`user_id`),
  KEY `fk_order_created_by` (`created_by`),
  KEY `fk_order_table` (`table_id`),
  KEY `fk_order_discount` (`discount_id`),
  KEY `fk_order_barista` (`assigned_barista_id`),
  CONSTRAINT `fk_order_barista` FOREIGN KEY (`assigned_barista_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_order_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_order_discount` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`),
  CONSTRAINT `fk_order_table` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (96,5,5,'delivery',NULL,NULL,'pending','2026-04-02 03:26:35',NULL,0,158000.00,'registered',NULL,NULL,'PENDING',NULL,0),(97,5,5,'delivery',NULL,NULL,'pending','2026-04-02 19:09:02',NULL,0,34000.00,'registered',NULL,NULL,'PENDING',NULL,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overtime_requests`
--

DROP TABLE IF EXISTS `overtime_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overtime_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `overtimeDate` datetime DEFAULT NULL,
  `hours` decimal(4,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `overtime_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overtime_requests`
--

LOCK TABLES `overtime_requests` WRITE;
/*!40000 ALTER TABLE `overtime_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `overtime_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_transactions`
--

DROP TABLE IF EXISTS `point_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` enum('EARN','SPEND','REFUND','ADJUST') NOT NULL,
  `points` int NOT NULL,
  `source` varchar(50) NOT NULL,
  `reference_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_pt_user` (`user_id`),
  KEY `idx_pt_ref` (`reference_id`),
  CONSTRAINT `point_transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_transactions`
--

LOCK TABLES `point_transactions` WRITE;
/*!40000 ALTER TABLE `point_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `point_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `isThumbnail` tinyint(1) DEFAULT '0',
  `image_url` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (11,9,1,'https://images.unsplash.com/photo-1558857563-b371033873b8',1,'2026-02-18 17:23:06','2026-04-02 03:18:30'),(12,9,0,'https://images.unsplash.com/photo-1617196038435-3c0b1c5a2e4f',1,'2026-02-18 17:23:06','2026-04-01 10:29:14'),(13,10,1,'https://images.unsplash.com/photo-1515823064-d6e0c04616a7',0,'2026-02-18 17:23:06','2026-02-18 17:23:06'),(14,10,0,'https://images.unsplash.com/photo-1582727461387-5a74b1b87c08',1,'2026-02-18 17:23:06','2026-03-16 01:38:15'),(15,11,1,'https://images.unsplash.com/photo-1600271886742-f049cd451bba',0,'2026-02-18 17:23:06','2026-02-18 17:23:06'),(16,11,0,'https://images.unsplash.com/photo-1580910051073-3eb694886505',1,'2026-02-18 17:23:06','2026-04-01 11:05:47'),(26,17,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1773136820/products/iz6jj4kz0sipztj8fr9r.jpg',1,'2026-03-10 17:00:24','2026-03-30 04:58:25'),(27,17,0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1773136821/products/zrqzeilkd0sxsvptlip3.webp',1,'2026-03-10 17:00:24','2026-03-30 04:58:26'),(28,17,0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1773136823/products/fkbw1u3h4enmqkhfnz2k.jpg',1,'2026-03-10 17:00:24','2026-03-30 04:58:27'),(29,18,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1773385690/products/kvaoulckt4bxyf6erjtw.webp',1,'2026-03-13 14:08:12','2026-03-30 05:00:06'),(30,18,0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1773385691/products/ltvkmsdffy02iqx4quty.jpg',1,'2026-03-13 14:08:12','2026-03-30 05:00:07'),(31,17,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774821504/products/fb8qah70nbon9tfg9nc9.webp',0,'2026-03-30 04:58:27','2026-03-30 04:58:27'),(32,18,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774821605/products/u9ynin7sp8o534ehwsp7.webp',0,'2026-03-30 05:00:08','2026-03-30 05:00:08'),(33,19,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774864747/products/wyluqv51y2ydfgpvmdry.jpg',1,'2026-03-30 16:59:07','2026-04-02 02:45:07'),(34,11,0,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775016346/products/aqf3zsnvw7dm6datnzmu.jpg',0,'2026-04-01 11:05:47','2026-04-01 11:05:47'),(35,20,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775059720/products/ouaoaaqxxp24anvoxzj2.jpg',0,'2026-04-01 23:08:42','2026-04-01 23:08:42'),(36,21,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775059820/products/dtoqrd2rywpbqs97xiuh.jpg',0,'2026-04-01 23:10:22','2026-04-01 23:10:22'),(39,55,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775072376/products/pvqlolfehypkzgog5o8s.jpg',0,'2026-04-02 02:39:36','2026-04-02 02:39:36'),(40,54,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775072411/products/kiiqrks3oidfjpt5kegh.jpg',0,'2026-04-02 02:40:12','2026-04-02 02:40:12'),(41,19,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775072706/products/tawgnfcwta4n60mybpy1.jpg',0,'2026-04-02 02:45:07','2026-04-02 02:45:07'),(42,63,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775073091/products/oll5kb6ed2wgcnms7vsf.jpg',0,'2026-04-02 02:51:32','2026-04-02 02:51:32'),(43,64,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775073200/products/hwskjjfoynpa2frn7cs3.png',0,'2026-04-02 02:53:21','2026-04-02 02:53:21'),(44,65,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775073465/products/ljpquegsvyzxofowntob.jpg',0,'2026-04-02 02:57:46','2026-04-02 02:57:46'),(45,66,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074160/products/p5ijgjk6flkyzahd8ecz.jpg',0,'2026-04-02 03:09:21','2026-04-02 03:09:21'),(46,67,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074217/products/vjz1pzikkip97dn84l8o.webp',0,'2026-04-02 03:10:18','2026-04-02 03:10:18'),(47,61,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074328/products/ba6qzmjkizmhxkxx35yu.png',0,'2026-04-02 03:12:09','2026-04-02 03:12:09'),(48,60,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074383/products/oqrum110vbawzhlddg8k.png',0,'2026-04-02 03:13:05','2026-04-02 03:13:05'),(49,68,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074521/products/shiltwfkdrs6h7bui3uy.webp',0,'2026-04-02 03:15:23','2026-04-02 03:15:23'),(50,56,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074659/products/tb2ecwpmsdo8irhwxke0.png',0,'2026-04-02 03:17:41','2026-04-02 03:17:41'),(51,9,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074709/products/zgrmb5tg8nakzbq4gs92.png',0,'2026-04-02 03:18:30','2026-04-02 03:18:30'),(52,57,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074772/products/kvqhyv4qbyfcoihegcvn.jpg',0,'2026-04-02 03:19:33','2026-04-02 03:19:33'),(53,58,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074877/products/aocakyzyhezpnqgkztr7.jpg',0,'2026-04-02 03:21:18','2026-04-02 03:21:18'),(54,59,1,'https://res.cloudinary.com/dgm1gz0tv/image/upload/v1775074905/products/x105aprgcryh1m3pp6wi.jpg',0,'2026-04-02 03:21:45','2026-04-02 03:21:45');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `size` enum('S','M','L') NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`,`size`),
  CONSTRAINT `product_sizes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sizes`
--

LOCK TABLES `product_sizes` WRITE;
/*!40000 ALTER TABLE `product_sizes` DISABLE KEYS */;
INSERT INTO `product_sizes` VALUES (35,9,'M',28000.00,0),(37,11,'M',42000.00,1),(38,10,'M',35000.00,0),(49,17,'S',40000.00,0),(50,17,'M',60000.00,0),(51,17,'L',80000.00,0),(68,18,'S',15000.00,0),(69,18,'M',25000.00,0),(70,18,'L',34999.00,0),(74,19,'S',100000.00,0),(75,19,'M',150000.00,0),(76,19,'L',200000.00,0),(79,20,'S',5000.00,0),(80,20,'M',8000.00,0),(81,20,'L',13998.00,0),(82,21,'S',6000.00,0),(83,21,'M',10000.00,0),(84,21,'L',15997.00,0),(88,64,'S',15000.00,0),(89,64,'M',15000.00,1),(90,64,'L',21000.00,1),(91,55,'S',20000.00,0),(92,55,'M',26000.00,0),(93,55,'L',34000.00,0),(94,54,'S',20500.00,0),(95,54,'M',27000.00,0),(96,54,'L',33000.00,0),(98,65,'S',12500.00,0),(99,65,'M',16000.00,0),(100,65,'L',22997.00,0),(101,63,'S',17000.00,0),(102,63,'M',20000.00,0),(103,63,'L',24000.00,0),(104,11,'S',14500.00,0),(105,11,'L',29998.00,0),(106,66,'M',12000.00,0),(107,67,'M',15000.00,0),(108,61,'S',25000.00,0),(109,61,'M',30000.00,0),(110,61,'L',40000.00,0),(111,60,'S',20000.00,0),(112,60,'M',25000.00,0),(113,60,'L',31197.00,0),(114,68,'S',9000.00,0),(115,68,'M',14000.00,0),(116,56,'S',18000.00,0),(117,56,'M',25000.00,0),(118,56,'L',35997.00,0),(119,9,'S',21000.00,0),(121,9,'L',34000.00,0),(122,57,'S',15000.00,0),(123,57,'M',20000.00,0),(124,57,'L',25000.00,0),(125,58,'S',15000.00,0),(126,58,'M',20500.00,0),(127,58,'L',31000.00,0),(128,59,'S',14500.00,0),(129,59,'M',18500.00,0),(130,59,'L',23000.00,0);
/*!40000 ALTER TABLE `product_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` int NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `description` longtext,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (9,'TS-01','Trà sữa trân châu',24,'tra-sua-tran-chau','available','Best seller',0),(10,'MC-01','Matcha Latte',26,'matcha-latte','available','Matcha Nhật',0),(11,'NC-01','Nước cam',27,'nuoc-cam','available','Cam tươi',0),(17,'CF-01','Bánh kem',29,'banh-kem','available','<p><em>Ngon bổ rẻ</em></p>',0),(18,'CF-99','Sữa chua',32,'sua-chua','available','Chua quá đê',0),(19,'CF-12','Geisha Cat Cafe',23,'geisha-cat-cafe','available','<p><em>Cà phê đặc biệt uống cùng với mèo cưng</em></p>',0),(20,'BM-01','Bánh Mì Que Pate',11,'banh-mi-que-pate','available','<p><strong>Thơm ngon nhiều pate</strong></p>',0),(21,'BM-02','Bánh Mì Que Gà Phô Mai',11,'banh-mi-que-ga-pho-mai','available','<p><em>Đậm vị pho mai que</em></p>',0),(54,'P-01','Cà phê sữa đá',23,'ca-phe-sua-dja','available','Ngon',0),(55,'P-02','Cà phê đen',23,'ca-phe-djen','available','Đậm đà',0),(56,'P-03','Trà sữa truyền thống',24,'tra-sua-truyen-thong','available','Ngọt',0),(57,'P-04','Trà sữa matcha',24,'tra-sua-matcha','available','<p><strong><em>Matcha thơm</em></strong></p>',0),(58,'P-05','Trà đào',25,'tra-djao','available','<p><em>Thanh mát</em></p>',0),(59,'P-06','Trà vải',25,'tra-vai','available','Ngọt dịu',0),(60,'P-07','Sinh tố bơ',26,'sinh-to-bo','available','<p>Béo ngậy</p>',0),(61,'P-08','Sinh tố dâu',26,'sinh-to-dau','available','<p>Chua ngọt từ dâu tây xứ lạng</p>',0),(63,'P-10','Nước ép táo',27,'nuoc-ep-tao','available','<p>Tươi vị chua thanh</p>',0),(64,'BT-01','Bánh tiramisu',29,'banh-tiramisu','available','<h3><em>Mềm mớp</em></h3><p></p>',0),(65,'VQ-01','Việt quất đá xay',28,'viet-quat-da-xay','available','<p><em>Đá mát lạnh</em></p>',0),(66,'CO-01','Coca',31,'coca','available','<p>Coca cola</p>',0),(67,'BH-01','Bò húc',31,'bo-huc','available','<h3>Rét bun</h3><p></p>',0),(68,'BB-01','Bim bim',30,'bim-bim','available','<p>Bim bim</p>',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt_settings`
--

DROP TABLE IF EXISTS `receipt_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `header_lines` json DEFAULT NULL,
  `footer_lines` json DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `open_time` varchar(10) DEFAULT '07:00',
  `close_time` varchar(10) DEFAULT '22:30',
  `reputation_rules` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt_settings`
--

LOCK TABLES `receipt_settings` WRITE;
/*!40000 ALTER TABLE `receipt_settings` DISABLE KEYS */;
INSERT INTO `receipt_settings` VALUES (1,'Tuấn Cà Phê','Hà Nội','0999999999','[]','[]','https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774907410/coffee-shop/receipt-settings/hnzmrolfkpispnqrgdgm.jpg',1,'2026-04-01 21:13:33','07:30','23:20','\"[{\\\"minScore\\\":0,\\\"maxCash\\\":0},{\\\"minScore\\\":20,\\\"maxCash\\\":30000},{\\\"minScore\\\":40,\\\"maxCash\\\":50000},{\\\"minScore\\\":60,\\\"maxCash\\\":100000},{\\\"minScore\\\":80,\\\"maxCash\\\":null}]\"');
/*!40000 ALTER TABLE `receipt_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes_by_size`
--

DROP TABLE IF EXISTS `recipes_by_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes_by_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_size_id` int NOT NULL,
  `ingredient_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_size_id` (`product_size_id`,`ingredient_id`),
  KEY `ingredient_id` (`ingredient_id`),
  CONSTRAINT `recipes_by_size_ibfk_1` FOREIGN KEY (`product_size_id`) REFERENCES `product_sizes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipes_by_size_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes_by_size`
--

LOCK TABLES `recipes_by_size` WRITE;
/*!40000 ALTER TABLE `recipes_by_size` DISABLE KEYS */;
INSERT INTO `recipes_by_size` VALUES (4,50,13,10.00),(5,49,8,21.00),(6,51,19,1.00),(7,51,8,2.00),(8,51,9,3.00),(9,68,14,1.00),(10,68,8,10.00),(11,69,15,12.00),(12,70,3,13.00),(13,70,7,2.00);
/*!40000 ALTER TABLE `recipes_by_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_history`
--

DROP TABLE IF EXISTS `reputation_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reputation_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `order_id` int DEFAULT NULL,
  `score_before` int NOT NULL,
  `change_amount` int NOT NULL,
  `score_after` int NOT NULL,
  `applied_multiplier` decimal(3,1) DEFAULT '1.0',
  `reason_type` enum('INITIAL_GIFT','ORDER_SUCCESS','PAYOS_BONUS','USER_CANCEL','BOOM_ORDER','ABUSIVE_BEHAVIOR','ADMIN_ADJUST') NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `reputation_history_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `reputation_profiles` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_history`
--

LOCK TABLES `reputation_history` WRITE;
/*!40000 ALTER TABLE `reputation_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `reputation_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_profiles`
--

DROP TABLE IF EXISTS `reputation_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reputation_profiles` (
  `phone_number` varchar(15) NOT NULL,
  `current_score` int DEFAULT '50',
  `total_orders_completed` int DEFAULT '0',
  `total_orders_cancelled` int DEFAULT '0',
  `is_frozen` tinyint(1) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_profiles`
--

LOCK TABLES `reputation_profiles` WRITE;
/*!40000 ALTER TABLE `reputation_profiles` DISABLE KEYS */;
INSERT INTO `reputation_profiles` VALUES ('0123453456',93,0,0,0,'2026-03-31 20:10:45'),('0123456753',90,0,0,0,'2026-03-28 16:26:26');
/*!40000 ALTER TABLE `reputation_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `images` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_reviews_user_product` (`user_id`,`product_id`),
  KEY `fk_reviews_product` (`product_id`),
  CONSTRAINT `fk_reviews_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_reviews_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chk_reviews_rating` CHECK (((`rating` >= 1) and (`rating` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (7,5,10,5,'Công nhận ngon thật ấy? Nghiện mất rùi','2026-03-16 00:23:20','2026-04-02 12:11:50','[{\"url\": \"https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774987006/reviews/weeehdjqatizlftd2nbs.jpg\", \"public_id\": \"reviews/weeehdjqatizlftd2nbs\"}, {\"url\": \"https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774987007/reviews/u60savhmlocakxds55cf.webp\", \"public_id\": \"reviews/u60savhmlocakxds55cf\"}]'),(8,5,17,3,NULL,'2026-03-30 09:56:31','2026-03-31 19:32:26',NULL),(9,6,10,4,'Cho 10 điểm, chuẩn vị','2026-03-31 20:12:56','2026-04-02 12:11:50','[{\"url\": \"https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774987973/reviews/upwphna0c90x9m5wbv0y.png\", \"public_id\": \"reviews/upwphna0c90x9m5wbv0y\"}, {\"url\": \"https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774987974/reviews/yzhemfforcmryiovskyb.jpg\", \"public_id\": \"reviews/yzhemfforcmryiovskyb\"}, {\"url\": \"https://res.cloudinary.com/dgm1gz0tv/image/upload/v1774987975/reviews/lt2f3h3klmqezrpi9sal.webp\", \"public_id\": \"reviews/lt2f3h3klmqezrpi9sal\"}]');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'manager'),(2,'staff'),(3,'barista'),(4,'customer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift_registrations`
--

DROP TABLE IF EXISTS `shift_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift_registrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shift_id` int DEFAULT NULL,
  `status` enum('registered','cancelled','swapped_out','swapped_in') DEFAULT 'registered',
  `leave_request_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_reg_user_shift` (`user_id`,`shift_id`),
  KEY `shift_id` (`shift_id`),
  KEY `fk_reg_leave` (`leave_request_id`),
  CONSTRAINT `fk_reg_leave` FOREIGN KEY (`leave_request_id`) REFERENCES `leave_requests` (`id`),
  CONSTRAINT `shift_registrations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `shift_registrations_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift_registrations`
--

LOCK TABLES `shift_registrations` WRITE;
/*!40000 ALTER TABLE `shift_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `shift_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift_templates`
--

DROP TABLE IF EXISTS `shift_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `color` varchar(20) NOT NULL DEFAULT 'red',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift_templates`
--

LOCK TABLES `shift_templates` WRITE;
/*!40000 ALTER TABLE `shift_templates` DISABLE KEYS */;
INSERT INTO `shift_templates` VALUES (3,'cá sáng','01:33:00','13:33:00','red'),(4,'ca đêm','18:48:00','22:48:00','orange');
/*!40000 ALTER TABLE `shift_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shifts`
--

DROP TABLE IF EXISTS `shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shifts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_id` int DEFAULT NULL,
  `shift_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_shift_date_template` (`shift_date`,`template_id`),
  KEY `template_id` (`template_id`),
  CONSTRAINT `shifts_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `shift_templates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shifts`
--

LOCK TABLES `shifts` WRITE;
/*!40000 ALTER TABLE `shifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablereservation`
--

DROP TABLE IF EXISTS `tablereservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tablereservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tableId` int NOT NULL,
  `reservationTime` datetime NOT NULL,
  `customerId` int DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `customerName` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `tableId` (`tableId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `tablereservation_ibfk_1` FOREIGN KEY (`tableId`) REFERENCES `tables` (`id`),
  CONSTRAINT `tablereservation_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablereservation`
--

LOCK TABLES `tablereservation` WRITE;
/*!40000 ALTER TABLE `tablereservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tablereservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area_id` int NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `code` varchar(20) DEFAULT NULL,
  `seatNumber` int DEFAULT '4',
  `qrUrl` longtext,
  `current_session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `area_id` (`area_id`),
  CONSTRAINT `tables_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES (1,1,'available',1,NULL,4,NULL,NULL),(2,1,'available',0,NULL,4,NULL,NULL),(3,1,'available',0,NULL,4,NULL,NULL),(4,1,'available',0,NULL,4,NULL,NULL),(5,1,'available',0,NULL,4,NULL,NULL),(6,2,'available',0,NULL,4,NULL,NULL),(7,2,'available',1,'TB-01-del-7',4,NULL,NULL),(8,1,'available',0,'TB-01',4,'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJQAAACUCAYAAAB1PADUAAAAAklEQVR4AewaftIAAATBSURBVO3BQY4jRxAEwfAC//9l1xzzVECjk6PVKszwR6qWnFQtOqladFK16KRq0UnVopOqRSdVi06qFp1ULTqpWnRSteikatFJ1aKTqkUnVYs+eQnIb1JzA+RGzRtAvknNBOQ3qXnjpGrRSdWik6pFnyxTswnIG2omIDdqbtTcAJnU3AB5Qs0mIJtOqhadVC06qVr0yZcBeULNE0BugLwBZFIzAZnU3ADZBOQJNd90UrXopGrRSdWiT/5yat5Qc6NmAjKpuVHzNzmpWnRSteikatEnfxk1N0AmNROQJ9RMav7PTqoWnVQtOqla9MmXqfmTqPkmIDdqJiCTmifU/ElOqhadVC06qVr0yTIgfxIgk5oJyKRmAjKpmYBMaiYgm4D8yU6qFp1ULTqpWvTJS2r+ZGqeADKpmYBMap4AMqm5UfNfclK16KRq0UnVok9eAjKpmYBsUjOpmYBMap5QMwGZ1ExAbtTcAJnUTEA2qfmmk6pFJ1WLTqoW4Y98EZAbNU8A+SY1m4DcqJmAvKHmCSCTmjdOqhadVC06qVr0yb8MyBNqJiA3am6APAHkRs2k5gbIE2omIG+o2XRSteikatFJ1aJPvkzNBGRSMwGZ1NyomYBMQN4A8gaQN9RMQCY1TwCZ1Gw6qVp0UrXopGoR/sgLQJ5QMwGZ1ExAJjVPAJnUTEAmNU8AuVFzA2RS8waQGzXfdFK16KRq0UnVIvyRXwTkCTVPALlRcwPkRs0TQG7UTEDeUDMBmdRMQCY1b5xULTqpWnRSteiTZUBu1NwAmYDcqHkCyKTmCSA3aiY1N0AmNROQb1Kz6aRq0UnVopOqRZ+8BGRS8wSQGzU3QCY1m9RMQDapeULNBORGzQRkUrPppGrRSdWik6pF+CMvAJnUTEAmNU8AeUPNG0Bu1ExAJjU3QCY1m4BMar7ppGrRSdWik6pFnywD8gSQSc2kZgIyqZmA3AC5UTOpuQEyqbkBMqm5AfJNQCY1b5xULTqpWnRSteiTZWpugNwAuVEzAXlCzQTkCSCTmgnIjZoJyI2aCcikZgLyhJpNJ1WLTqoWnVQt+uSXqZmATGo2AZnUPAHkBsikZgLyhJoJyKRmAjKpuQEyqdl0UrXopGrRSdWiT74MyBNA3lCzSc0TQN4AcgPkCSA3QCY1b5xULTqpWnRStQh/5D8MyKRmArJJzQTkRs0E5EbNE0A2qXnjpGrRSdWik6pFn7wE5DepmdT8JiCTmgnIJiCTmjfUfNNJ1aKTqkUnVYs+WaZmE5AbIDdqboDcqHlCzY2aCciNmjfU3ACZ1LxxUrXopGrRSdWiT74MyBNq3lDzhJobIDdqJiCTmieAvKFmAnKjZtNJ1aKTqkUnVYs++csAuVEzAZnUTGpugExq3lDzBpAngExq3jipWnRSteikatEnfxk1E5AJyBtAfhOQJ9TcAJnUbDqpWnRSteikatEnX6bmm9TcqHkCyKTmRs0NkDfUTEAmNROQSc1vOqladFK16KRq0SfLgPwmIDdqJiBPAHkCyKTmCSCTmifUTEAmNd90UrXopGrRSdUi/JGqJSdVi06qFp1ULTqpWnRSteikatFJ1aKTqkUnVYtOqhadVC06qVp0UrXopGrRSdWifwDZyy0zWdHxRwAAAABJRU5ErkJggg==',NULL);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppings`
--

DROP TABLE IF EXISTS `toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toppings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppings`
--

LOCK TABLES `toppings` WRITE;
/*!40000 ALTER TABLE `toppings` DISABLE KEYS */;
INSERT INTO `toppings` VALUES (1,'Trân châu đen',5000.00,1,'2026-03-05 09:33:09','2026-03-29 04:05:02'),(2,'Thạch đào',7000.00,0,'2026-03-05 09:33:09','2026-03-29 08:37:13'),(3,'Kem cheese',10000.00,0,'2026-03-05 09:33:09','2026-03-30 04:39:18'),(4,'Chuối',3000.00,0,'2026-03-09 17:41:26','2026-03-30 04:27:56'),(5,'Xoài non',10555.00,0,'2026-03-10 17:04:03','2026-03-30 05:17:57'),(6,'Sốt',7500.00,0,'2026-03-29 03:01:07','2026-03-30 00:44:31'),(7,'Trân châu',12500.00,1,'2026-03-29 04:04:47','2026-03-29 15:26:31'),(8,'Me đen',3900.00,0,'2026-03-30 02:13:07','2026-03-30 02:13:07');
/*!40000 ALTER TABLE `toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_loyalties`
--

DROP TABLE IF EXISTS `user_loyalties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_loyalties` (
  `user_id` int NOT NULL,
  `total_points` int NOT NULL DEFAULT '0',
  `lifetime_points` int NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_loyalties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chk_total_points` CHECK ((`total_points` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_loyalties`
--

LOCK TABLES `user_loyalties` WRITE;
/*!40000 ALTER TABLE `user_loyalties` DISABLE KEYS */;
INSERT INTO `user_loyalties` VALUES (5,0,0,'2026-04-02 10:45:18');
/*!40000 ALTER TABLE `user_loyalties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_oauth_providers`
--

DROP TABLE IF EXISTS `user_oauth_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_oauth_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `provider` varchar(50) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `access_token` varchar(500) DEFAULT NULL,
  `refresh_token` varchar(500) DEFAULT NULL,
  `linked_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_provider_user` (`provider`,`provider_id`),
  KEY `fk_oauth_user` (`user_id`),
  CONSTRAINT `fk_oauth_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_oauth_providers`
--

LOCK TABLES `user_oauth_providers` WRITE;
/*!40000 ALTER TABLE `user_oauth_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_oauth_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(100) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `role_id` int NOT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isVerified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `fk_user_role` (`role_id`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'0123456789','ad','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','admin@gmail.com','Tuan','Tran',1,1,'2026-02-11 21:24:57','2026-03-30 18:13:52',0),(3,NULL,'nv','$2a$12$qjQjbhtMWEL.kZi/fpSBH.5i.j9xrObRvaBn7f86q6y9Bf29p1x4S','staff1@gmail.com','Staff','One',2,1,'2026-02-18 15:12:22','2026-03-30 18:13:52',1),(4,NULL,'br','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','barista1@gmail.com','Barista','One',3,1,'2026-02-18 15:12:22','2026-03-30 18:13:52',1),(5,'0395245251','cus','$2a$12$k0LDsxc.408d/8XTDjU6muPkRhh6XBgbibGLV9kiFr0t2HQswrDvO','cus1@gmail.com','Xù','Ma',4,1,'2026-02-18 15:12:22','2026-04-02 18:43:15',1),(6,'0123453456','customer11','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','cus2@gmail.com','Xương','Nguyễn',4,1,'2026-02-18 15:12:22','2026-04-02 18:46:25',1),(18,'0912345601','customer1','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer1@gmail.com','Nam','Văn',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0),(19,'0912345602','customer2','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer2@gmail.com','Hoàng','Trần',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0),(20,'0912345603','customer3','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer3@gmail.com','Chính','Lê',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0),(21,'0912345604','customer4','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer4@gmail.com','Thịnh','Nguyễn',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0),(22,'0912345605','customer5','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer5@gmail.com','Minh','Lê',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0),(23,'0912345606','customer6','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer6@gmail.com','Hương','Thị',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0),(24,'0912345607','customer7','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer7@gmail.com','Suối','Nước',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0),(25,'0912345608','customer8','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer8@gmail.com','Nữ','Xử',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0),(26,'0912345609','customer9','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer9@gmail.com','Huy','Trần',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0),(27,'0912345610','customer10','$2a$12$Fssf2HkSg9dE8plHsUib8uR/p9qm27MyuWA13s/OSAhkOQYEEX4T6','customer10@gmail.com','Nguyện','Bui',4,1,'2026-02-11 21:24:57','2026-04-02 18:46:25',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_log`
--

DROP TABLE IF EXISTS `work_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `checkIn` datetime DEFAULT NULL,
  `checkOut` datetime DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `work_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_log`
--

LOCK TABLES `work_log` WRITE;
/*!40000 ALTER TABLE `work_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-02 19:19:25
