-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: hris
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add employee',7,'add_employee'),(26,'Can change employee',7,'change_employee'),(27,'Can delete employee',7,'delete_employee'),(28,'Can view employee',7,'view_employee'),(29,'Can add attendance',8,'add_attendance'),(30,'Can change attendance',8,'change_attendance'),(31,'Can delete attendance',8,'delete_attendance'),(32,'Can view attendance',8,'view_attendance'),(33,'Can add recruit',9,'add_recruit'),(34,'Can change recruit',9,'change_recruit'),(35,'Can delete recruit',9,'delete_recruit'),(36,'Can view recruit',9,'view_recruit'),(37,'Can add background check',10,'add_backgroundcheck'),(38,'Can change background check',10,'change_backgroundcheck'),(39,'Can delete background check',10,'delete_backgroundcheck'),(40,'Can view background check',10,'view_backgroundcheck'),(41,'Can add user progress',11,'add_userprogress'),(42,'Can change user progress',11,'change_userprogress'),(43,'Can delete user progress',11,'delete_userprogress'),(44,'Can view user progress',11,'view_userprogress'),(45,'Can add screening',12,'add_screening'),(46,'Can change screening',12,'change_screening'),(47,'Can delete screening',12,'delete_screening'),(48,'Can view screening',12,'view_screening'),(49,'Can add final interview',13,'add_finalinterview'),(50,'Can change final interview',13,'change_finalinterview'),(51,'Can delete final interview',13,'delete_finalinterview'),(52,'Can view final interview',13,'view_finalinterview'),(53,'Can add payroll',14,'add_payroll'),(54,'Can change payroll',14,'change_payroll'),(55,'Can delete payroll',14,'delete_payroll'),(56,'Can view payroll',14,'view_payroll'),(57,'Can add payroll record',15,'add_payrollrecord'),(58,'Can change payroll record',15,'change_payrollrecord'),(59,'Can delete payroll record',15,'delete_payrollrecord'),(60,'Can view payroll record',15,'view_payrollrecord'),(61,'Can add payroll account',16,'add_payrollaccount'),(62,'Can change payroll account',16,'change_payrollaccount'),(63,'Can delete payroll account',16,'delete_payrollaccount'),(64,'Can view payroll account',16,'view_payrollaccount');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$PChumQ7KbLoKwnpJ1DBbwe$EK3xZaYYoNPlXM6fC6gTUywH0IDEPc4z/IY7psnsOBs=','2024-08-26 11:09:16.000000',1,'root','','','',1,1,'2024-08-15 12:47:38.000000'),(2,'pbkdf2_sha256$600000$XO3xp4GDt8cI9b8S4EskNH$wAFlEGwOK9CU+ow6iMNYqPzDJ7yUUS2I33u3jU38nn4=',NULL,0,'user','','','',0,1,'2024-08-15 12:50:13.700788');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-08-15 12:50:14.154958','2','user',1,'[{\"added\": {}}]',4,1),(2,'2024-08-26 11:10:25.903859','1','root',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(8,'users','attendance'),(10,'users','backgroundcheck'),(7,'users','employee'),(13,'users','finalinterview'),(14,'users','payroll'),(16,'users','payrollaccount'),(15,'users','payrollrecord'),(9,'users','recruit'),(12,'users','screening'),(11,'users','userprogress');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-08-15 12:45:32.002009'),(2,'auth','0001_initial','2024-08-15 12:45:58.191529'),(3,'admin','0001_initial','2024-08-15 12:46:05.167167'),(4,'admin','0002_logentry_remove_auto_add','2024-08-15 12:46:05.465115'),(5,'admin','0003_logentry_add_action_flag_choices','2024-08-15 12:46:05.768130'),(6,'contenttypes','0002_remove_content_type_name','2024-08-15 12:46:08.876101'),(7,'auth','0002_alter_permission_name_max_length','2024-08-15 12:46:11.721736'),(8,'auth','0003_alter_user_email_max_length','2024-08-15 12:46:12.206512'),(9,'auth','0004_alter_user_username_opts','2024-08-15 12:46:12.493944'),(10,'auth','0005_alter_user_last_login_null','2024-08-15 12:46:14.419920'),(11,'auth','0006_require_contenttypes_0002','2024-08-15 12:46:14.573671'),(12,'auth','0007_alter_validators_add_error_messages','2024-08-15 12:46:14.680865'),(13,'auth','0008_alter_user_username_max_length','2024-08-15 12:46:18.225947'),(14,'auth','0009_alter_user_last_name_max_length','2024-08-15 12:46:21.200678'),(15,'auth','0010_alter_group_name_max_length','2024-08-15 12:46:21.583910'),(16,'auth','0011_update_proxy_permissions','2024-08-15 12:46:21.822167'),(17,'auth','0012_alter_user_first_name_max_length','2024-08-15 12:46:26.403715'),(18,'sessions','0001_initial','2024-08-15 12:46:27.867400'),(19,'users','0001_initial','2024-08-15 12:46:29.037791'),(20,'users','0002_alter_employee_contacts','2024-08-15 23:35:05.913289'),(21,'users','0003_employee_profile_picture','2024-08-16 10:31:51.829558'),(22,'users','0004_alter_employee_id','2024-08-16 12:06:59.360034'),(23,'users','0005_attendance','2024-08-17 04:59:12.176391'),(24,'users','0006_alter_employee_id','2024-08-17 06:54:07.779570'),(25,'users','0007_recruit','2024-08-19 11:18:28.729927'),(26,'users','0008_alter_recruit_email_alter_recruit_first_name_and_more','2024-08-20 01:46:15.207963'),(27,'users','0009_recruit_pdf_file','2024-08-22 01:40:09.194747'),(28,'users','0010_recruit_rate_recruit_skills_recruit_work_experience','2024-08-22 03:51:29.497861'),(29,'users','0011_backgroundcheck','2024-08-22 13:02:08.929893'),(30,'users','0012_recruit_hiring_date_recruit_hiring_manager_and_more','2024-08-23 01:40:47.030912'),(31,'users','0013_recruit_father_address_recruit_father_name_and_more','2024-08-23 07:43:59.158284'),(32,'users','0014_userprogress','2024-08-23 14:06:56.156310'),(33,'users','0015_recruit_progress_stage','2024-08-24 02:32:44.720578'),(34,'users','0016_recruit_screening_date_recruit_staff_name','2024-08-24 05:36:01.991165'),(35,'users','0017_alter_recruit_screening_date','2024-08-24 05:36:04.892959'),(36,'users','0018_remove_recruit_screening_date_and_more','2024-08-24 06:34:03.285735'),(37,'users','0019_alter_screening_recruit','2024-08-24 08:35:37.993431'),(38,'users','0020_remove_recruit_father_address_and_more','2024-08-24 14:22:37.940716'),(39,'users','0021_backgroundcheck','2024-08-24 14:26:48.918978'),(40,'users','0022_alter_backgroundcheck_additional_social_media_accounts','2024-08-24 15:14:26.322799'),(41,'users','0023_alter_backgroundcheck_additional_social_media_accounts','2024-08-24 15:29:52.577329'),(42,'users','0024_alter_backgroundcheck_additional_social_media_accounts','2024-08-24 15:29:54.466707'),(43,'users','0025_alter_backgroundcheck_additional_social_media_accounts','2024-08-24 15:30:20.334909'),(44,'users','0026_alter_backgroundcheck_additional_social_media_accounts','2024-08-24 15:32:12.908726'),(45,'users','0027_remove_backgroundcheck_additional_social_media_accounts','2024-08-24 15:34:23.666306'),(46,'users','0028_backgroundcheck_additional_social_media_accounts','2024-08-24 15:36:48.960959'),(47,'users','0029_alter_backgroundcheck_current_address_and_more','2024-08-24 15:41:16.482641'),(48,'users','0030_alter_screening_recruit','2024-08-25 06:28:46.404915'),(49,'users','0031_alter_backgroundcheck_recruit','2024-08-25 07:09:51.434725'),(50,'users','0032_finalinterview','2024-08-25 08:42:19.570920'),(51,'users','0033_alter_finalinterview_recruit','2024-08-25 08:43:35.380846'),(52,'users','0034_payroll','2024-08-28 00:48:28.677437'),(53,'users','0035_alter_payroll_employee','2024-08-28 01:02:12.023583'),(54,'users','0036_payrollrecord','2024-08-28 03:45:43.951879'),(55,'users','0037_payrollrecord_bank_account_name_and_more','2024-08-28 06:39:01.533972'),(56,'users','0038_payrollaccount_delete_payrollrecord','2024-08-29 13:39:24.090511'),(57,'users','0039_alter_payrollaccount_employee_delete_payroll','2024-08-29 14:15:33.631207'),(58,'users','0040_remove_payrollaccount_bank_name_and_more','2024-08-29 14:47:04.015160'),(59,'users','0041_alter_payrollaccount_bank_account_name_and_more','2024-08-29 15:43:46.206810'),(60,'users','0042_payrollaccount_bank_name_and_more','2024-08-29 15:50:58.056654'),(61,'users','0043_remove_payrollaccount_bank_name_and_more','2024-08-29 22:49:52.794999'),(62,'users','0044_alter_payrollaccount_employee','2024-08-29 23:04:34.306746'),(63,'users','0045_payrollaccount_bank_name','2024-08-30 03:35:52.278455'),(64,'users','0002_alter_payrollaccount_employee','2024-08-30 06:15:01.253210'),(65,'users','0003_alter_payrollaccount_employee','2024-08-30 06:16:11.797882'),(66,'users','0004_alter_payrollaccount_bank_account_name_and_more','2024-08-30 12:10:33.929080'),(67,'users','0005_alter_employee_contacts_alter_employee_department_and_more','2024-08-31 01:50:03.875280'),(68,'users','0007_alter_employee_id','2024-08-31 05:06:30.029511'),(69,'users','0008_alter_employee_id','2024-08-31 05:08:23.920630'),(70,'users','0009_alter_employee_id','2024-08-31 05:11:23.506323'),(71,'users','0010_alter_payrollaccount_employee','2024-08-31 05:14:07.475391'),(72,'users','0011_alter_payrollaccount_employee','2024-08-31 05:15:12.027130'),(73,'users','0012_rename_id_employee_employee_id','2024-08-31 05:55:55.479060'),(74,'users','0013_rename_loan_cash_payrollaccount_gross_pay_and_more','2024-08-31 10:08:24.887137'),(75,'users','0014_rename_overtime_pay_payrollaccount_allowance_and_more','2024-08-31 14:12:27.362869'),(76,'users','0015_alter_payrollaccount_bank_account_and_more','2024-08-31 15:06:05.075141'),(77,'users','0016_alter_payrollaccount_allowance_and_more','2024-08-31 15:07:44.534463'),(78,'users','0017_alter_payrollaccount_department_and_more','2024-08-31 15:07:45.185882'),(79,'users','0018_alter_payrollaccount_department_and_more','2024-08-31 15:07:50.861210'),(80,'users','0019_alter_payrollaccount_department_and_more','2024-08-31 15:07:51.480612'),(81,'users','0020_alter_payrollaccount_gross_pay','2024-08-31 15:35:48.098860'),(82,'users','0021_alter_payrollaccount_bank_account_and_more','2024-08-31 15:40:15.785293'),(83,'users','0022_payroll','2024-09-01 09:47:16.903501');
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
INSERT INTO `django_session` VALUES ('b3a7v7y7ef9jgjyfobz4gb54fxhu2m1o','.eJxVjEEOwiAQRe_C2pDCFMq4dO8ZyAwDtmpKUtqV8e7apAvd_vfef6lI2zrGreUlTqLOyqjT78aUHnnegdxpvlWd6rwuE-td0Qdt-lolPy-H-3cwUhu_tYfOoXfF4IBsHYsEQ2j7EAr1XMhiBhPAggtd8jwMZNCLFODUFQuo3h_C-TdU:1seZtL:tN0xucgwgr2cLxxux4Y3FPK5y600jD09g017nIacgbc','2024-08-29 12:47:47.000990'),('m3wiyv8pvm3sz4f3sc0ry9ikx76yd5ux','.eJxVjEEOwiAQRe_C2pDCFMq4dO8ZyAwDtmpKUtqV8e7apAvd_vfef6lI2zrGreUlTqLOyqjT78aUHnnegdxpvlWd6rwuE-td0Qdt-lolPy-H-3cwUhu_tYfOoXfF4IBsHYsEQ2j7EAr1XMhiBhPAggtd8jwMZNCLFODUFQuo3h_C-TdU:1seyNd:sK6_yEmJXIx0hSU8vmXr3pRdfR2cEd5GY05ZLohk9io','2024-08-30 14:56:41.759033'),('swkrjrbwjh34e10ran4syy5b6o0zwhe9','.eJxVjEEOwiAQRe_C2pDCFMq4dO8ZyAwDtmpKUtqV8e7apAvd_vfef6lI2zrGreUlTqLOyqjT78aUHnnegdxpvlWd6rwuE-td0Qdt-lolPy-H-3cwUhu_tYfOoXfF4IBsHYsEQ2j7EAr1XMhiBhPAggtd8jwMZNCLFODUFQuo3h_C-TdU:1siXb2:89oC54BcvCKUE6rVl3vcQMek4oHh_1zsxqsUii4a_WI','2024-09-09 11:09:16.758817');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `contacts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_attendance`
--

DROP TABLE IF EXISTS `users_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_attendance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time_in` time(6) NOT NULL,
  `time_out` time(6) NOT NULL,
  `working_hours` decimal(5,2) NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_attendance_employee_id_5f8e4a3c_fk` (`employee_id`),
  CONSTRAINT `users_attendance_employee_id_5f8e4a3c_fk` FOREIGN KEY (`employee_id`) REFERENCES `users_employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_attendance`
--

LOCK TABLES `users_attendance` WRITE;
/*!40000 ALTER TABLE `users_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_backgroundcheck`
--

DROP TABLE IF EXISTS `users_backgroundcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_backgroundcheck` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `social_media_accounts` longtext,
  `current_address` varchar(255) DEFAULT NULL,
  `previous_addresses` longtext,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_address` varchar(255) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_address` varchar(255) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `previous_employers` longtext,
  `job_titles_responsibilities` longtext,
  `dates_of_employment` varchar(255) DEFAULT NULL,
  `reasons_for_leaving` longtext,
  `supervisor_information` longtext,
  `has_criminal_record` tinyint(1) NOT NULL,
  `criminal_record_details` longtext,
  `recruit_id` bigint DEFAULT NULL,
  `additional_social_media_accounts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_backgroundcheck_recruit_id_df7cf80c_fk_users_recruit_id` (`recruit_id`),
  CONSTRAINT `users_backgroundcheck_recruit_id_df7cf80c_fk_users_recruit_id` FOREIGN KEY (`recruit_id`) REFERENCES `users_recruit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_backgroundcheck`
--

LOCK TABLES `users_backgroundcheck` WRITE;
/*!40000 ALTER TABLE `users_backgroundcheck` DISABLE KEYS */;
INSERT INTO `users_backgroundcheck` VALUES (11,'bbbbbbbbbb','bbbbbbbbbbb','bbbbbbbbbbb','bbbbbbbbbbb','bbbbbbbbbbb','bbbbbbbbbbbbbbbbbbbbb','bbbbbbbbbbbbbbbbbbbbbbbbbbbb','bbbbbbbbbbbbbbbbbbbbbbbbbbbb','bbbbbbbbbbbbbbbbbbbbbbbbb','bbbbbbbbbbbbbbbb','bbbbbbbbbbbbbbbbbbbbbbbbb','bbbbbbbbb','bbbbbbbbbb','bbbbbbb',0,'',19,'bbbbbbbbb'),(13,'aaaaaaaaaaaaaaaaaaaa','dasdasda','asdas','aaaaaaaaaaaaaaaaaaaaaa','dasd','','','','','','','','','',1,'aaaaaaaaa',18,'asdasdasd'),(15,'aaaaaa','asd','','','','','','','','','','','','',0,'',21,'');
/*!40000 ALTER TABLE `users_backgroundcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_employee`
--

DROP TABLE IF EXISTS `users_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contacts` varchar(50) NOT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_employee`
--

LOCK TABLES `users_employee` WRITE;
/*!40000 ALTER TABLE `users_employee` DISABLE KEYS */;
INSERT INTO `users_employee` VALUES (44,'aaa','zzz','CCD','Full Time','Active','zz','zzzz','profile_pictures/fb2_SktEStn.jpg'),(50,'Johnray De Luna','Software Engineer','TID','Full Time','Active','Manila','09355618179','profile_pictures/PDS-JOHNRAY-copy_0nCFGn2.jpg'),(51,'Foomz','Programmer','DFL','Full Time','Active','Manila','09355618179','profile_pictures/PDS-JOHNRAY-copy-modified_gizSnb3.png'),(52,'zzzz','IT Specialist','CCD','Full Time','Active','Manila','09355618179','profile_pictures/PDS-JOHNRAY-copy-modified_J1S48c1.png'),(53,'zzzz','IT Specialist','CCD','Full Time','Active','Manila','09355618179','profile_pictures/PDS-JOHNRAY-copy-modified_cjLvV4E.png'),(54,'asadas','asd','CCD','Full Time','Active','Manila','09355618179','profile_pictures/IMG_20230215_141756_5sDTYBY.jpg');
/*!40000 ALTER TABLE `users_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_finalinterview`
--

DROP TABLE IF EXISTS `users_finalinterview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_finalinterview` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `passed` tinyint(1) NOT NULL,
  `manager_name` varchar(255) NOT NULL,
  `interview_date` date NOT NULL,
  `recruit_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_finalinterview_recruit_id_950e5644_fk_users_recruit_id` (`recruit_id`),
  CONSTRAINT `users_finalinterview_recruit_id_950e5644_fk_users_recruit_id` FOREIGN KEY (`recruit_id`) REFERENCES `users_recruit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_finalinterview`
--

LOCK TABLES `users_finalinterview` WRITE;
/*!40000 ALTER TABLE `users_finalinterview` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_finalinterview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_payroll`
--

DROP TABLE IF EXISTS `users_payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_payroll` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `worked_days` int unsigned NOT NULL,
  `basic_pay` decimal(10,2) NOT NULL,
  `over_time_pay` decimal(10,2) NOT NULL,
  `allowance` decimal(10,2) NOT NULL,
  `sss_contribution` decimal(10,2) NOT NULL,
  `gsis_contribution` decimal(10,2) NOT NULL,
  `phil_health_contribution` decimal(10,2) NOT NULL,
  `pag_ibig_contribution` decimal(10,2) NOT NULL,
  `gross_pay` decimal(10,2) DEFAULT NULL,
  `total_deductions` decimal(10,2) DEFAULT NULL,
  `net_pay` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `users_payroll_chk_1` CHECK ((`worked_days` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_payroll`
--

LOCK TABLES `users_payroll` WRITE;
/*!40000 ALTER TABLE `users_payroll` DISABLE KEYS */;
INSERT INTO `users_payroll` VALUES (15,'Johnray De Luna','Software Engineer','TID','2024-09-02','2024-09-13',22,590.75,0.00,0.00,0.00,0.00,0.00,0.00,12996.50,NULL,12996.50),(16,'aaaaaaaa','Software Engineer','TID','2024-10-01','2024-09-13',22,600.00,0.00,0.00,0.00,0.00,0.00,0.00,13200.00,NULL,13200.00),(17,'sssss','Software Engineer','TID','2024-10-16','2024-09-30',222,600.00,5.00,5.00,200.00,100.00,500.00,100.00,133200.00,900.00,132300.00),(18,'bbbbb','Software Engineer','TID','2024-11-01','2024-09-13',22,590.75,0.00,0.00,0.00,0.00,0.00,0.00,12996.50,NULL,12996.50);
/*!40000 ALTER TABLE `users_payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_payrollaccount`
--

DROP TABLE IF EXISTS `users_payrollaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_payrollaccount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_account` varchar(20) DEFAULT NULL,
  `basic_pay` varchar(15) DEFAULT NULL,
  `gross_pay` varchar(15) DEFAULT NULL,
  `over_time_pay` varchar(15) DEFAULT NULL,
  `allowance` varchar(15) NOT NULL,
  `sss_account` varchar(15) DEFAULT NULL,
  `sss_contribution` varchar(15) DEFAULT NULL,
  `gsis_account` varchar(15) DEFAULT NULL,
  `gsis_contribution` varchar(15) DEFAULT NULL,
  `phil_health_account` varchar(15) DEFAULT NULL,
  `phil_health_contribution` varchar(15) DEFAULT NULL,
  `pag_ibig_account` varchar(15) DEFAULT NULL,
  `pag_ibig_contribution` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_payrollaccount`
--

LOCK TABLES `users_payrollaccount` WRITE;
/*!40000 ALTER TABLE `users_payrollaccount` DISABLE KEYS */;
INSERT INTO `users_payrollaccount` VALUES (11,'Johnray De Luna','Software Engineer','TID','AUB','000000000000','590.75','0','0','0','000000000000','0','000000000000','0','000000000000','0','000000000000','0'),(12,'Jay Ar','Programmer','Infrastructure','MetroBank','aaaaaaaa','600','0','0','5','0','0','0','0','0','0','0','0'),(13,'aaaaaaaa','Software Engineer','TID','AUB','0','600','0','0','0','0','0','0','0','0','0','0','0'),(14,'bbbbb','Software Engineer','TID','MetroBank','000','590.75','0','0','0','0','0','0','0','0','0','0','0'),(15,'ccc','Programmer','Infrastructure','BDO','0','706','0','0','0','0','0','0','0','0','0','0','0'),(16,'zzzzz','Programmer','Infrastructure','BPI','0','1000','0','0','0','0','0','0','0','0','0','0','0'),(17,'sssss','Software Engineer','TID','LandBank','1','600','0','5','5','0','200','200','100','2','500','0','100'),(18,'qqqqq','Software Engineer','TID','BDO','a','600','0','5','60','0','91','0','26','0','200','0','16'),(19,'Mojako','Racer','Las Vegas','AUB','jhgfghvj','10000','0','0','0','5','100','500','200','200','200','200','200');
/*!40000 ALTER TABLE `users_payrollaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_recruit`
--

DROP TABLE IF EXISTS `users_recruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_recruit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_applied` varchar(100) NOT NULL,
  `pdf_file` varchar(100) DEFAULT NULL,
  `hiring_date` date DEFAULT NULL,
  `hiring_manager` varchar(255) DEFAULT NULL,
  `interview_manager` varchar(255) DEFAULT NULL,
  `progress_stage` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_recruit`
--

LOCK TABLES `users_recruit` WRITE;
/*!40000 ALTER TABLE `users_recruit` DISABLE KEYS */;
INSERT INTO `users_recruit` VALUES (18,'recruit_photos/me_WPVFNmu.png','Johnray','Mamaril','De Luna','1998-01-28','B7 L3a Apitong St Silanganan Subd Llano Rd Brgy167 Caloocan City','johnraydeluna20@gmail.com','09355618179','Male','Software Engineer','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_Vn9hSKA.pdf',NULL,NULL,NULL,3),(19,'recruit_photos/fb_CIcCOql.jpg','Foomz','JR','Cuteness','1998-01-28','Caloocan City','jdeluna@nbi.gov.ph','09355618179','Male','Python Dev','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_VrBVwLT.pdf',NULL,NULL,NULL,1),(20,'recruit_photos/fb2_tBMB0oN.jpg','JR','Mamaril','De Luna','1998-01-28','Caloocan City','johnraydeluna@gmail.com','09355618179','Male','System Administrator','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_pK3rzxf.pdf',NULL,NULL,NULL,2),(21,'recruit_photos/me_obfEkYQ.png','asdasdasd','asdasdas','asdasdas','2024-08-22','asdasdas','sadasdasd@sdasd.com','123123','Male','asdasd','recruit_pdfs/Johnray_De_Luna_Resume.pdf',NULL,NULL,NULL,3),(22,'recruit_photos/aws.jpg','dasdas','dasd','aasddas','2024-08-31','sdfsdfds','asdasdas@sdfsd.com','12312321','Male','asdasd','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_nNnH7Ub.pdf',NULL,NULL,NULL,0),(23,'recruit_photos/fb2_rggErXf.jpg','asdasdas','dsa','dasdas','2024-08-31','asdasd','asd@asdfa.com','12311','Male','asdasd','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_lmNL5P8.pdf',NULL,NULL,NULL,1),(24,'recruit_photos/PDS-JOHNRAY-copy-modified_EvintkU.png','asdasd','asdasd','asdas','2024-08-22','dasdas','asdasdas@asd.com','123','Male','asdasdas','recruit_pdfs/Johnray_De_Luna_DTR.pdf',NULL,NULL,NULL,0),(25,'recruit_photos/hacking-2_H7n8n8s.png','asdasdasd','asdasdasd','asdasd','2024-08-16','asdasdas','asdas@asd.com','23123','Male','asdasdas','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_IfalfIg.pdf',NULL,NULL,NULL,0),(26,'recruit_photos/PDS-JOHNRAY-copy-modified_TELNyFi.png','aa','aa','aaa','2024-08-17','aaaaaaaaaaa','aaaaa@a.com','111111111111','Male','aaaaaaaaaaaaa','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_P1HUPip.pdf',NULL,NULL,NULL,0),(27,'recruit_photos/hacking-2_PbF6rrM.png','a','zza','zz','2024-08-14','asdasd','asdas@asd.com','122','Male','adasd','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_vcp78rF.pdf',NULL,NULL,NULL,0),(28,'recruit_photos/IMG_20230215_141756_xYTJaHr.jpg','asfasdas','dasd','asdasd','2024-08-08','dasdas','asdas@asd.com','123','Male','adasda','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_GjEUFMa.pdf',NULL,NULL,NULL,1),(29,'recruit_photos/me_RRjjuQG.png','asdasd','dasdas','asdas','2024-08-19','asdasa','asdas@asd.com','123123','Male','aaaaaa','recruit_pdfs/Johnray-Resume.pdf',NULL,NULL,NULL,0),(30,'recruit_photos/IMG_20230215_141756_zLfGLlD.jpg','dfsfsfsfsfsdfsdf','asdasdas','dasdasdas','2024-08-17','asasda','asd@asd.com','123','Male','asdasd','recruit_pdfs/JOHNRAY_DE_LUNA_RESUME_HDnIwS6.pdf',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `users_recruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_screening`
--

DROP TABLE IF EXISTS `users_screening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_screening` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(100) NOT NULL,
  `screening_date` date NOT NULL,
  `recruit_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_screening_recruit_id_2457e2d3_fk_users_recruit_id` (`recruit_id`),
  CONSTRAINT `users_screening_recruit_id_2457e2d3_fk_users_recruit_id` FOREIGN KEY (`recruit_id`) REFERENCES `users_recruit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_screening`
--

LOCK TABLES `users_screening` WRITE;
/*!40000 ALTER TABLE `users_screening` DISABLE KEYS */;
INSERT INTO `users_screening` VALUES (16,'zzzzzzzzzzzzz','2024-08-03',20),(19,'ddddddddddddddd','2024-08-16',18),(20,'asd','2024-09-03',24),(21,'asdasd','2024-08-12',23),(23,'aa','2024-09-08',28);
/*!40000 ALTER TABLE `users_screening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprogress`
--

DROP TABLE IF EXISTS `users_userprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_userprogress` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `progress_stage` int NOT NULL,
  `recruit_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_userprogress_recruit_id_1abe9132_fk_users_recruit_id` (`recruit_id`),
  KEY `users_userprogress_user_id_3af9d33f_fk_auth_user_id` (`user_id`),
  CONSTRAINT `users_userprogress_recruit_id_1abe9132_fk_users_recruit_id` FOREIGN KEY (`recruit_id`) REFERENCES `users_recruit` (`id`),
  CONSTRAINT `users_userprogress_user_id_3af9d33f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprogress`
--

LOCK TABLES `users_userprogress` WRITE;
/*!40000 ALTER TABLE `users_userprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprogress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-30 14:59:50
