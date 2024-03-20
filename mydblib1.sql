-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: mydblib
-- ------------------------------------------------------
-- Server version	8.2.0

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add book',7,'add_book'),(26,'Can change book',7,'change_book'),(27,'Can delete book',7,'delete_book'),(28,'Can view book',7,'view_book');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$0XoOlThlktj3HoRPrgNeCE$K9RRaFkMnoAzF/Dy/YU0z6tEfX2BHkocd8/nvIqcdI8=','2024-03-20 15:02:50.594199',1,'admin1','','','tmatv86@yandex.ru',1,1,'2024-02-04 13:37:17.960004'),(2,'pbkdf2_sha256$720000$V7t5vEw2os5HbogEADcSBp$kg0LA8T+wsIYFAMsmCd0MgYR0EGPCb7RjrBtLvmpwBs=','2024-02-09 06:32:33.678935',0,'matv86','','','tmatv86@gmail.com',1,1,'2024-02-08 13:58:49.000000'),(3,'pbkdf2_sha256$720000$yJAYbBNpbwC4u86sAQagzT$WWWkFyuAp2mB2ah3soZihpBEdu/FOFmRPaDF1GkLrwg=','2024-02-09 15:07:26.910156',0,'telepuzik','','','telepuzik@tel.tld',0,1,'2024-02-09 15:07:15.654499'),(4,'pbkdf2_sha256$720000$zx7XsUSOthK8nQ4s3jdLz4$i9Kxe8j83+qaiGOirVuBbM9Y9v4rNPOLf5xwYJpUsig=','2024-02-09 15:13:00.314105',0,'matvei','','','tmatv86@yandex.ru',0,1,'2024-02-09 15:12:36.625335'),(5,'pbkdf2_sha256$720000$q3ALEJ5aVYtDJPXBERLusT$HfWqz02UWW7o71Y3vgEmX2VnJHGsvlfTHbmv9xdpvtY=',NULL,0,'zeliboba','','','zeliboba@ggg.tld',0,1,'2024-03-20 15:00:32.905801');
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
-- Table structure for table `booklist_book`
--

DROP TABLE IF EXISTS `booklist_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booklist_book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `upload_date` datetime(6) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `genre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booklist_book`
--

LOCK TABLES `booklist_book` WRITE;
/*!40000 ALTER TABLE `booklist_book` DISABLE KEYS */;
INSERT INTO `booklist_book` VALUES (8,'М.Ю.Лермонтов','Мцыри','2024-02-05 00:00:00.000000',1,'Классическая литература'),(10,'Герберт Шилдт','Java для начинающих','2024-02-05 00:00:00.000000',1,'Программирование'),(32,'Н. Носов','Незнайка на Луне','2024-02-06 00:00:00.000000',0,'Детская литература'),(37,'А.С.Пушкин','Евгений Онегин','2024-02-06 00:00:00.000000',1,'Классическая литература'),(47,'Гербер Шилдт','Java программирование','2024-02-07 00:00:00.000000',1,'Программирование'),(67,'А.Гайдар','Тимур и его команда','2024-02-08 00:00:00.000000',1,'Детская литература'),(68,'А.Гайдар','Р.В.С.','2024-02-08 00:00:00.000000',0,'Детская литература'),(69,'Л.Н.Толстой','Война и Мир','2024-02-08 00:00:00.000000',1,'Классическая литература');
/*!40000 ALTER TABLE `booklist_book` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-02-04 13:48:05.182741','1','Book object (1)',1,'[{\"added\": {}}]',7,1),(2,'2024-02-04 13:52:23.196920','2','Л. Н. Толстой, Война и мир',1,'[{\"added\": {}}]',7,1),(3,'2024-02-04 14:13:08.962415','6','М.Шолохов, Тихий Дон, 2024-02-04 14:12:56.329551+00:00, True',3,'',7,1),(4,'2024-02-04 14:13:08.966784','5','М.Шолохов, Тихий Дон, 2024-02-04 14:11:31.809825+00:00, True',3,'',7,1),(5,'2024-02-04 14:13:08.968893','4','М.Шолохов, Тихий Дон, 2024-02-04 14:11:08.817281+00:00, True',3,'',7,1),(6,'2024-02-04 14:16:11.323370','7','М.Шолохов, Тихий Дон, 2024-02-04 14:13:18.983837+00:00, True',3,'',7,1),(7,'2024-02-08 13:58:49.276847','2','matv86',1,'[{\"added\": {}}]',4,1),(8,'2024-02-08 13:58:59.467792','2','matv86',2,'[]',4,1),(9,'2024-02-08 13:59:25.090906','2','matv86',2,'[{\"changed\": {\"fields\": [\"Email address\", \"Staff status\"]}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'booklist','book'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-02-04 12:23:56.889909'),(2,'auth','0001_initial','2024-02-04 12:23:56.975615'),(3,'admin','0001_initial','2024-02-04 12:23:56.996304'),(4,'admin','0002_logentry_remove_auto_add','2024-02-04 12:23:56.998750'),(5,'admin','0003_logentry_add_action_flag_choices','2024-02-04 12:23:57.000803'),(6,'contenttypes','0002_remove_content_type_name','2024-02-04 12:23:57.014083'),(7,'auth','0002_alter_permission_name_max_length','2024-02-04 12:23:57.023502'),(8,'auth','0003_alter_user_email_max_length','2024-02-04 12:23:57.032042'),(9,'auth','0004_alter_user_username_opts','2024-02-04 12:23:57.035394'),(10,'auth','0005_alter_user_last_login_null','2024-02-04 12:23:57.044664'),(11,'auth','0006_require_contenttypes_0002','2024-02-04 12:23:57.045111'),(12,'auth','0007_alter_validators_add_error_messages','2024-02-04 12:23:57.047451'),(13,'auth','0008_alter_user_username_max_length','2024-02-04 12:23:57.058477'),(14,'auth','0009_alter_user_last_name_max_length','2024-02-04 12:23:57.070532'),(15,'auth','0010_alter_group_name_max_length','2024-02-04 12:23:57.076044'),(16,'auth','0011_update_proxy_permissions','2024-02-04 12:23:57.078597'),(17,'auth','0012_alter_user_first_name_max_length','2024-02-04 12:23:57.089180'),(18,'sessions','0001_initial','2024-02-04 12:23:57.094869'),(19,'booklist','0001_initial','2024-02-04 13:28:37.101586'),(20,'booklist','0002_book_genre_alter_book_available','2024-02-04 14:27:58.923952');
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
INSERT INTO `django_session` VALUES ('4mcuvy1gd9hm6lob4fnpadr32b5ckmh3','.eJxVjDsOwyAQBe9CHSHBYj4p0-cMaJfFwUkEkrErK3ePkFwk7ZuZd4iI-1bi3vMaFxZXocXldyNMr1wH4CfWR5Op1W1dSA5FnrTLe-P8vp3u30HBXkY9e8BsTQIDpDw6rfSc0MKEyRvmiQJpzzkDQHBsFDhrQvDaEiqDVny-7LM3qQ:1rY5se:sZCjmQckZp0aCeCYnWiU0h7ZpBkKvUY2skZCaWyucQ4','2024-02-22 15:00:00.332350'),('63vmn25r9tvle7ku0ikxlvvth3f40alp','.eJxVjDsOwyAQBe9CHSHBYj4p0-cMaJfFwUkEkrErK3ePkFwk7ZuZd4iI-1bi3vMaFxZXocXldyNMr1wH4CfWR5Op1W1dSA5FnrTLe-P8vp3u30HBXkY9e8BsTQIDpDw6rfSc0MKEyRvmiQJpzzkDQHBsFDhrQvDaEiqDVny-7LM3qQ:1rY5q5:mmhi85huMEp7lYifq4i8mtP_6Wx8NXAVpme2lY0Jejo','2024-02-22 14:57:21.664471'),('bkxwpu9n1fpnk4kt7jtwlz8ng230laio','.eJxVjDkOwjAUBe_iGlnefhJT0nMG6y8ODiBHipMKcXeIlALaNzPvpRJua0lby0uaRJ2VVaffjZAfue5A7lhvs-a5rstEelf0QZu-zpKfl8P9OyjYyrdmQSEPGE2f2RnpeuMIyHCIEgYPZgDHGEa2AhA8oUcrETnLGLPnTr0_-BU4qg:1rmxSs:RImOX7B0VySLHA1z_xYykicHs9XG0lhi9in3TkZ2VAc','2024-04-03 15:02:50.595418'),('h9nubg40v098i2vokyu40ns802ouvxsb','.eJxVjDsOwyAQBe9CHSHBYj4p0-cMaJfFwUkEkrErK3ePkFwk7ZuZd4iI-1bi3vMaFxZXocXldyNMr1wH4CfWR5Op1W1dSA5FnrTLe-P8vp3u30HBXkY9e8BsTQIDpDw6rfSc0MKEyRvmiQJpzzkDQHBsFDhrQvDaEiqDVny-7LM3qQ:1rY5H1:riLxN1Lab6oWPeWa-sNWxUfOf9mGZdtvkk1GD5C-OZA','2024-02-22 14:21:07.638564'),('p8j60qsorb9ebik8n3y2mnrhoo7vk9f7','.eJxVjDsOwyAQBe9CHSHBYj4p0-cMaJfFwUkEkrErK3ePkFwk7ZuZd4iI-1bi3vMaFxZXocXldyNMr1wH4CfWR5Op1W1dSA5FnrTLe-P8vp3u30HBXkY9e8BsTQIDpDw6rfSc0MKEyRvmiQJpzzkDQHBsFDhrQvDaEiqDVny-7LM3qQ:1rY60q:JyicE44xSwaXxVa0RP56729V6omvV-5na93lGq0wMz8','2024-02-22 15:08:28.088520'),('wb03q7xf8mtbmp9tj744yokvhllk7kn3','.eJxVjDsOwyAQBe9CHSHBYj4p0-cMaJfFwUkEkrErK3ePkFwk7ZuZd4iI-1bi3vMaFxZXocXldyNMr1wH4CfWR5Op1W1dSA5FnrTLe-P8vp3u30HBXkY9e8BsTQIDpDw6rfSc0MKEyRvmiQJpzzkDQHBsFDhrQvDaEiqDVny-7LM3qQ:1rY5fh:zqdohCgsUJ3iRcIdAq25Esu2z8amjmKgn7_LIW9Nf2c','2024-02-22 14:46:37.064311');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_genres`
--

DROP TABLE IF EXISTS `id_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_genres` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `genre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_genres`
--

LOCK TABLES `id_genres` WRITE;
/*!40000 ALTER TABLE `id_genres` DISABLE KEYS */;
INSERT INTO `id_genres` VALUES (1,'Классическая литература'),(2,'Мистика'),(3,'Программирование'),(4,'Детская литература'),(5,'Детектив'),(7,'Комедии');
/*!40000 ALTER TABLE `id_genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-20 23:04:27
