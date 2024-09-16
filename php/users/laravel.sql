/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	10.6.18-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_09_16_062315_create_userss_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0HycH0I2ThVEi8MRjvBHP6NTrTSp7XNsrONLtaKo',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoia252REJjRWZ5T0t4VlJqV0sxcVhTTVdBbmltZDMzb0F6ZVpXSTlhWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726498747),('0ttua1TtscG2PilP6FshWNfIh3dsbXXAWFNWEjIZ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXdrSUxDSWZva0lFNUx1RWZLa3VOUlZJM2NvZGxKMTlYT0gxQnE5RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9QSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726498745),('1MJExTX7hswvtDDWHiV27syo4j5X4ssNovHBY6vH',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXVXMUNHc3ZWUEY2bHltRkNlNTZlQU5xVGpPeElZQ2c5eDBic0VUTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9JUQxJTg0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1726498817),('cBloj6G9eFzopXgIW1LqubxbGKWI0UGe3goRGoXy',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoieWN6MnlKbEVhbnlrM3RXQ2RVd214a3pOczdENjZPcmhaV1Z0OHJWaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9QkxBQ0tUQUlMIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1726499637),('GZoKIk04knkOE44hUlKwnNl6ium1sRTrk052y7VQ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZE9neDI3d0l4aUFOOUFrekVocnVtVE01Y2Z6QUJtTm5CcmFDWmdTVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9aiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726498738),('K2NXFB3y5Fuc0UPAleyhvxqmPTE465nULBE91T6y',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoib3JPNWNwNmNiSzRGQXhFbVNTSXI3bFJ5dEtBM0hTcmIzRk1RVldyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726498818),('kIzpoeJ4sliBTZOUtzao2NdfEfyVqP4dW9cLNi94',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFpCaXNobExEZFBONjR1eTdOTWFxVDNMU2pXV2ZPVFJOSmVVdkVWRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726499579),('o2o0J5hTVmaKu3bxlBfK5mXoSMj0FGlGCCgBa0rV',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibVV2YlJvTWM2NzJJSUs1cVNreFlWQkh2dzJXaThsaTR5YWNONUxDUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726498844),('oM4F4er3JpyMiEBAMjLix18FyyVlLazNMISgDnje',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibnIzOGJ6T1ZoVG5xZ0hOVzdkYUZOM2hISFJKTXJaVEF5YWlUWEwzQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9YiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726499634),('X9JzN3aLVTWR02C0iC0av96FV3POqeVzHemPCPrR',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN09jM3VZbEpyNDdHMFRCUk55djBaZTVhaDRCRjNpNnJTdlFvZ1BMaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726499025),('XczjJmJj65ECAImLvJOMCxKSRtdrrc4mJtnCus6n',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEFOeFhjdlo1VG1QQmpJR3c2c1JrQjNaZWlRbjRZRW03RXJiY1VpUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy8xMDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1726500574),('zhzeFptzUapZolrULUELVxiBe4tK2bmQKgZZge8M',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoia2Z5S2k5aWpmQ0R5dmc3aTJyMUxLOEdlVmlPV0JCWW9zMWNlNm5BNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9JUQxJTg0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1726499024),('Zifh8TqXSAJYqQ7ajtFlUoWXPsr6nTtvx9BsvrMs',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVA5Q2U0OVJnTHIzWjl2ZGFiUDNmdUVlM3VYSnFIeGUyS2FybHV0USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9YiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726499712),('ZvAZ0EV8s8Ge1TDtyRvr2397n0Yk6fjwKEgrQpOx',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiak1mTll3M2daWkJQWHVuZVdMdjB6Nng1YjJGNkNuQmY2QUZtN045WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycy9zZWFyY2g/cXVlcnk9YyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1726499730);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userss`
--

DROP TABLE IF EXISTS `userss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userss` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userss`
--

LOCK TABLES `userss` WRITE;
/*!40000 ALTER TABLE `userss` DISABLE KEYS */;
INSERT INTO `userss` VALUES (1,'Rosalee Klein','Streich','grady.keshaun@gmail.com','+14789163883','Et autem delectus veniam dolor minima voluptatibus ipsum quo. Libero mollitia ut molestiae nihil ut. Voluptatem cum delectus molestiae quam eum accusamus aspernatur.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(2,'Prof. Geovanny Jenkins III','Schaefer','rogahn.scarlett@nolan.com','+1.520.652.7954','Voluptas ea eos tempore quibusdam ad. Nemo corrupti facilis qui similique tenetur libero asperiores error. Vitae illum molestias qui quis.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(3,'Serenity Kub','Parker','hrolfson@gmail.com','+1 (872) 229-1761','Voluptatem velit aspernatur minima excepturi sunt ut voluptatum. Modi vero itaque nemo voluptatum possimus sunt aut. Nesciunt veritatis neque qui ullam odio qui quis.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(4,'Dasia Wintheiser','Rowe','zane.lakin@powlowski.com','1-646-834-0769','Corrupti eum sequi illum quo tempora quia iste vel. Nemo aut quia officiis maiores ipsum voluptatem sapiente. Et voluptas quibusdam odit eaque sint perspiciatis facilis.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(5,'Bennie Barton','O\'Kon','myra.jenkins@hilpert.com','743-892-1805','Quibusdam provident rerum ut nostrum inventore. Quidem numquam non asperiores animi perferendis ratione molestiae. Est in quo nesciunt iusto.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(6,'Edgar Hudson','McGlynn','mcdermott.ed@hotmail.com','(931) 861-9333','Voluptatibus consequatur est omnis. Repellendus quaerat neque nemo dolores.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(7,'Xander Prosacco','Cassin','mills.adelbert@gmail.com','470.326.9124','Aliquid recusandae quis amet possimus. Vero qui minus alias ut architecto non. Voluptates doloremque alias numquam sint est veniam nihil. Vitae nemo magni et culpa a.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(8,'Sammy Braun','Cassin','sophia91@mohr.com','352-460-2379','Occaecati ut rerum nobis nulla sed molestiae. Architecto dolores corporis et repellendus voluptate et. Et nemo numquam autem eveniet sit vel libero.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(9,'Mazie Cormier V','Wunsch','dorris.kiehn@hotmail.com','+1-984-990-3749','Sint ut nulla quia. Est corrupti velit quos aut veniam cupiditate. Nobis necessitatibus aperiam modi id. Et quo a et est.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(10,'Prof. Tess Fritsch','Fadel','borer.moses@hotmail.com','240.494.3025','Minus aut fugit culpa. Ipsum possimus sapiente iste dolorem. Omnis ut ut aut dolorem. Cumque corporis odio laboriosam est rerum sequi et soluta. Laborum iusto qui in. Ut nobis quam quibusdam autem.','2024-09-16 01:52:47','2024-09-16 01:52:47'),(11,'Rashad Kuhic DDS','Stanton','myrtie.dickens@maggio.com','(351) 727-3715','Est tempore libero omnis in consectetur. Quo vitae quas quasi sequi similique ad.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(12,'Fidel Hagenes','Adams','fahey.kariane@yahoo.com','(959) 262-8182','Ipsam ipsa nam odio qui fuga ut voluptas. Quo et inventore corrupti ut adipisci ut. Ipsum et voluptate molestiae ut ex natus quasi repudiandae. Qui ut assumenda quos quam voluptatum eos.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(13,'Myrtie Bins','Schinner','wilbert.reichel@yahoo.com','+1.320.257.9654','Cupiditate non et et impedit in in. Quibusdam et modi porro fugit. Ea ratione velit dignissimos ab.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(14,'Mrs. Patience Kreiger V','Mraz','carmella14@gmail.com','+1 (424) 780-0978','Tempora a aliquam molestiae. Ipsa quam qui expedita atque. Sint vero et laborum voluptas eos. Consectetur quo quis quas perferendis.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(15,'Polly Cronin','Heathcote','chris.rice@yahoo.com','310.294.6090','Placeat voluptatem et deserunt cumque ullam minima. Rerum est rerum et et soluta. Beatae pariatur iure dolorem nisi id.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(16,'Mr. Alexys Erdman','Rutherford','karen32@stamm.org','(308) 360-5499','Repudiandae architecto rerum magni ipsa omnis qui nostrum. Id dicta doloribus velit qui voluptate. Tempore vel corporis ratione et aut harum. Atque maxime aut occaecati maxime tempore.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(17,'Fabiola Hyatt I','Murray','hackett.otilia@thiel.info','757-843-9481','Culpa odit eveniet molestiae minima ducimus et est. Autem quo quis et magnam totam vel. Corrupti eius odit ut est id ipsum.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(18,'Xzavier Dietrich','Mitchell','garrett.pfannerstill@hotmail.com','534.566.6911','Deleniti et aut earum. Consequatur ea qui ut ut autem error quae. Magni eveniet porro molestias eum. Quia sunt distinctio laudantium occaecati maiores possimus quo.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(19,'Barbara Larson','Braun','schimmel.toy@nienow.com','1-743-222-7390','Tenetur expedita et quos laudantium enim voluptatum. Sint incidunt ut aperiam commodi est ullam laudantium. Illo rerum omnis in. Fuga consequuntur harum itaque quod.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(20,'Jillian Wyman','Erdman','tromp.ettie@keeling.com','301-216-0347','Ut natus iure vel natus. Iusto unde ipsa accusamus similique natus consequatur. Ipsum consequatur rem eum.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(21,'Desmond Schuster','Hirthe','arch.smith@hotmail.com','574-202-0549','Rem adipisci est saepe occaecati et ipsa tenetur. Praesentium autem voluptates alias quis delectus. Voluptate quisquam minima non ipsam quas tempora nam et.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(22,'Keyon Kassulke','Zboncak','xconnelly@gmail.com','(272) 872-1823','Qui necessitatibus maxime quisquam nobis ut nesciunt voluptates. Maiores tempora corrupti reprehenderit vel quasi cumque dolor harum. Voluptate inventore unde aut dolores dicta est delectus.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(23,'Agustina Vandervort','Hessel','pascale85@larson.com','551.978.7610','Rerum qui recusandae exercitationem eos et modi officia excepturi. Fuga maiores rerum aliquam alias dolorem in. Tempore nulla dolorem minima in aperiam architecto est.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(24,'Dr. Rosa Pagac Jr.','Koch','maximillia.bednar@hickle.info','1-585-704-4789','Ut sit ex fugit suscipit porro. Fugiat iure in odit temporibus a. Quisquam maiores ut accusamus ex ut beatae voluptatem voluptatem. Harum aut deserunt dolor vel ut ratione eos aperiam.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(25,'Naomi DuBuque','Leuschke','bailee.medhurst@gmail.com','+13303432422','Accusamus error voluptatem numquam dolor consequatur magni ut. Eum non mollitia quasi delectus. Eum voluptatem harum distinctio ut sint sit.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(26,'Shanelle Monahan','Raynor','rebekah47@hotmail.com','970.624.2463','Ea dolorem omnis ipsum sequi nisi aspernatur voluptates. Et officia voluptatem vitae aliquid. Beatae numquam sed eum nostrum. Sunt et architecto qui perferendis delectus.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(27,'Reinhold Powlowski','Donnelly','jkeebler@morissette.com','1-321-314-3395','Commodi aperiam corrupti in et ipsa sed. Facere sed aliquid necessitatibus. Est iusto consectetur iure. Doloremque debitis veritatis quod rerum non autem.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(28,'Prof. Kip Labadie','Thompson','lizeth96@moore.org','+1.860.702.0316','Modi minima cumque enim magnam sunt numquam. Dolorem vel voluptatem nihil velit dolor deserunt. Sed atque officiis aliquam aliquid dolor. Eius itaque aliquid minus rerum praesentium consequatur.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(29,'Sincere Nolan','Kshlerin','tromp.blanche@gmail.com','1-831-347-6267','Accusamus cum qui tempore cupiditate nisi voluptatem. Veniam velit quasi doloremque ut consectetur rem est. Soluta consequatur aut et consequatur eum.','2024-09-16 01:52:48','2024-09-16 01:52:48'),(30,'Ms. Stephanie Ritchie MD','Franecki','velma58@hotmail.com','(352) 674-6973','Voluptatem ut tempore aut est molestiae et sed. Sed consequuntur sequi eum dolor placeat sequi. Dolorem dolores ratione voluptatem quasi qui et quis aspernatur.','2024-09-16 01:52:48','2024-09-16 01:52:48');
/*!40000 ALTER TABLE `userss` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16 20:55:38
