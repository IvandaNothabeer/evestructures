-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: evestructures
-- ------------------------------------------------------
-- Server version	10.1.25-MariaDB-1~xenial

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
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,'',1),(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),(16,2,'title','text','title',1,1,1,1,1,1,'',3),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),(25,2,'image','image','image',0,1,1,1,1,1,'',12),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',0,0,0,1,1,0,'',4),(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(34,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(35,5,'id','number','id',1,0,0,0,0,0,'',1),(36,5,'name','text','name',1,1,1,1,1,1,'',2),(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(39,4,'id','number','id',1,0,0,0,0,0,'',1),(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(41,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(42,4,'name','text','name',1,1,1,1,1,1,'',4),(43,4,'slug','text','slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(46,6,'id','number','id',1,0,0,0,0,0,'',1),(47,6,'name','text','Name',1,1,1,1,1,1,'',2),(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(53,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(54,7,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(55,7,'user_id','checkbox','User Id',1,0,0,0,0,0,NULL,2),(56,7,'character_id','checkbox','Character Id',1,0,0,0,0,0,NULL,3),(57,7,'corporation_id','checkbox','Corporation Id',1,0,0,0,0,0,NULL,4),(58,7,'corporation_name','checkbox','Corporation Name',1,1,1,0,0,0,NULL,6),(59,7,'character_name','checkbox','Character Name',1,1,1,0,0,0,NULL,5),(60,7,'access_token','checkbox','Access Token',1,0,0,0,0,0,NULL,7),(61,7,'refresh_token','checkbox','Refresh Token',1,0,0,0,0,0,NULL,8),(62,7,'expires','timestamp','Expires',1,0,0,0,0,0,NULL,9),(63,7,'last_fetch','timestamp','Last Fetch',0,1,1,0,0,0,NULL,10),(64,7,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,11),(65,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,12),(66,7,'discord_webhook','text','Discord Webhook',0,0,0,0,0,0,NULL,13),(67,7,'slack_webhook','text','Slack Webhook',0,0,0,0,0,0,NULL,14),(68,8,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(71,8,'corporation_id','checkbox','Corporation Id',1,0,0,0,0,0,NULL,2),(72,8,'structure_id','checkbox','Structure Id',1,0,0,0,0,0,NULL,3),(73,8,'structure_name','checkbox','Structure Name',1,1,1,0,0,0,NULL,4),(74,8,'type_id','checkbox','Type Id',1,0,0,0,0,0,NULL,6),(75,8,'type_name','checkbox','Type',1,1,1,0,0,0,NULL,7),(76,8,'system_id','checkbox','System Id',1,0,0,0,0,0,NULL,8),(77,8,'system_name','checkbox','System',1,0,1,0,0,0,NULL,9),(78,8,'profile_id','checkbox','Profile Id',1,0,1,0,0,0,NULL,10),(79,8,'fuel_expires','checkbox','Fuel Expires',0,1,1,0,0,0,NULL,11),(80,8,'fuel_time_left','checkbox','Fuel Time Left',0,1,1,0,0,0,NULL,12),(81,8,'fuel_days_left','checkbox','Fuel Days Left',0,1,1,0,0,0,NULL,13),(82,8,'unanchors_at','checkbox','Unanchors At',0,1,1,0,0,0,NULL,14),(83,8,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,15),(84,8,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,16),(94,8,'structure_hasmany_structure_service_relationship','relationship','Services',0,1,1,0,0,0,'{\"model\":\"App\\\\StructureService\",\"table\":\"structure_services\",\"type\":\"hasMany\",\"column\":\"structure_id\",\"key\":\"structure_id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}',18),(96,7,'character_hasmany_structure_relationship','relationship','Structures',0,1,1,0,0,0,'{\"model\":\"App\\\\Structure\",\"table\":\"structures\",\"type\":\"hasMany\",\"column\":\"corporation_id\",\"key\":\"corporation_id\",\"label\":\"structure_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}',15),(98,8,'state','checkbox','State',1,1,1,0,0,0,NULL,17),(99,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,4),(100,10,'structure_id','checkbox','Structure Id',1,0,0,0,0,0,NULL,5),(102,10,'state_timer_start','checkbox','State Timer Start',0,1,1,0,0,0,NULL,6),(103,10,'state_timer_end','checkbox','State Timer End',0,1,1,0,0,0,NULL,7),(104,10,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,8),(105,10,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,9),(106,10,'state','checkbox','State',1,1,1,0,0,0,NULL,3),(107,10,'structure_state_hasone_structure_relationship','relationship','Structure Name',0,1,1,0,0,0,'{\"model\":\"App\\\\Structure\",\"table\":\"structures\",\"type\":\"hasOne\",\"column\":\"structure_id\",\"key\":\"structure_id\",\"label\":\"structure_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}',1),(108,11,'id','checkbox','Id',1,0,0,0,0,0,NULL,2),(109,11,'structure_id','checkbox','Structure Id',1,0,0,0,0,0,NULL,3),(110,11,'day','checkbox','Day',1,1,1,0,0,0,NULL,4),(111,11,'hour','checkbox','Hour',1,1,1,0,0,0,NULL,5),(112,11,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,6),(113,11,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,11),(115,11,'next_day','checkbox','Next Day',0,1,1,0,0,0,NULL,8),(116,11,'next_hour','checkbox','Next Hour',0,1,1,0,0,0,NULL,9),(117,11,'next_reinforce_apply','checkbox','Next Reinforce Apply',0,1,1,0,0,0,NULL,10),(118,11,'structure_vul_hasone_structure_relationship','relationship','Structure Name',0,1,1,0,0,0,'{\"model\":\"App\\\\Structure\",\"table\":\"structures\",\"type\":\"hasOne\",\"column\":\"structure_id\",\"key\":\"structure_id\",\"label\":\"structure_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}',1),(119,13,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(120,13,'queue','checkbox','Queue',1,1,1,1,1,1,NULL,2),(121,13,'payload','checkbox','Payload',1,1,1,1,1,1,NULL,3),(122,13,'attempts','checkbox','Attempts',1,1,1,1,1,1,NULL,4),(123,13,'reserved_at','checkbox','Reserved At',0,1,1,1,1,1,NULL,5),(124,13,'available_at','checkbox','Available At',1,1,1,1,1,1,NULL,6),(125,13,'created_at','checkbox','Created At',1,1,1,1,1,1,NULL,7),(126,14,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(127,14,'connection','checkbox','Connection',1,1,1,1,1,1,NULL,2),(128,14,'queue','checkbox','Queue',1,1,1,1,1,1,NULL,3),(129,14,'payload','checkbox','Payload',1,1,1,1,1,1,NULL,4),(130,14,'exception','checkbox','Exception',1,1,1,1,1,1,NULL,5),(131,14,'failed_at','timestamp','Failed At',1,1,1,1,1,1,NULL,6),(134,15,'id','checkbox','Id',1,0,0,0,0,0,NULL,2),(135,15,'structure_id','checkbox','Structure Id',1,1,1,1,1,1,NULL,3),(136,15,'name','checkbox','Name',1,1,1,1,1,1,NULL,4),(137,15,'state','checkbox','State',1,1,1,1,1,1,NULL,5),(138,15,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,6),(139,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(140,15,'structure_service_belongsto_structure_relationship','relationship','structures',0,1,1,0,0,0,'{\"model\":\"App\\\\Structure\",\"table\":\"structures\",\"type\":\"hasOne\",\"column\":\"structure_id\",\"key\":\"structure_id\",\"label\":\"structure_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}',1),(141,8,'structure_hasone_character_relationship','relationship','Corp',0,1,1,0,0,0,'{\"model\":\"App\\\\Character\",\"table\":\"characters\",\"type\":\"hasOne\",\"column\":\"corporation_id\",\"key\":\"corporation_id\",\"label\":\"corporation_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}',5),(142,10,'structure_state_hasone_structure_relationship_1','relationship','Type',0,1,1,1,1,1,'{\"model\":\"App\\\\Structure\",\"table\":\"structures\",\"type\":\"hasOne\",\"column\":\"structure_id\",\"key\":\"structure_id\",\"label\":\"type_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}',2),(143,16,'id','checkbox','Id',1,0,0,0,0,0,NULL,3),(144,16,'user_id','checkbox','User Id',1,0,0,0,0,0,NULL,4),(145,16,'character_id','checkbox','Character Id',1,0,0,0,0,0,NULL,5),(146,16,'structure_id','checkbox','Structure Id',1,0,0,0,0,0,NULL,6),(147,16,'seven_day','checkbox','Seven Day',1,1,1,0,0,0,NULL,7),(148,16,'twentyfour_hour','checkbox','Twentyfour Hour',1,1,1,0,0,0,NULL,8),(149,16,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,9),(150,16,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,10),(151,16,'fuel_notice_hasone_character_relationship','relationship','Character',0,1,1,0,0,0,'{\"model\":\"App\\\\Character\",\"table\":\"characters\",\"type\":\"hasOne\",\"column\":\"character_id\",\"key\":\"character_id\",\"label\":\"character_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}',1),(152,16,'fuel_notice_hasone_structure_relationship','relationship','Structure',0,1,1,0,0,0,'{\"model\":\"App\\\\Structure\",\"table\":\"structures\",\"type\":\"hasOne\",\"column\":\"structure_id\",\"key\":\"structure_id\",\"label\":\"structure_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}',2);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,'2018-02-11 05:37:03','2018-02-11 05:37:03'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,'2018-02-11 05:37:03','2018-02-11 05:37:03'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,'2018-02-11 05:37:03','2018-02-11 05:37:03'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,'2018-02-11 05:37:03','2018-02-11 05:37:03'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,'2018-02-11 05:37:03','2018-02-11 05:37:03'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,'2018-02-11 05:37:03','2018-02-11 05:37:03'),(7,'characters','characters','Character','Characters','voyager-people','App\\Character',NULL,NULL,'Eve Online Characters',1,0,'2018-02-11 06:46:33','2018-02-11 06:46:33'),(8,'structures','structures','Structure','Structures','voyager-bookmark','App\\Structure',NULL,NULL,NULL,1,0,'2018-02-11 06:57:13','2018-02-11 06:57:13'),(10,'structure_states','structure-states','Structure State','Structure States','voyager-activity','App\\StructureState',NULL,NULL,NULL,1,0,'2018-02-17 05:11:08','2018-02-17 05:24:19'),(11,'structure_vuls','structure-vuls','Vulnerability Schedule','Vulnerability Schedules','voyager-fire','App\\StructureVul',NULL,NULL,NULL,1,0,'2018-02-17 05:16:18','2018-02-17 05:20:04'),(13,'jobs','jobs','Job','Jobs','voyager-hammer','App\\Job',NULL,NULL,NULL,1,0,'2018-02-17 06:02:13','2018-02-17 06:02:13'),(14,'failed_jobs','failed-jobs','Failed Job','Failed Jobs','voyager-skull','App\\FailedJob',NULL,NULL,NULL,1,0,'2018-02-17 06:03:16','2018-02-17 06:03:16'),(15,'structure_services','structure-services','Structure Service','Structure Services','voyager-shop','App\\StructureService',NULL,NULL,NULL,1,0,'2018-02-18 08:18:51','2018-02-18 08:18:51'),(16,'fuel_notices','fuel-notices','Fuel Notice','Fuel Notices',NULL,'App\\FuelNotice',NULL,NULL,NULL,1,0,'2018-02-18 10:23:05','2018-02-18 10:23:05');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Manage','','_self','voyager-boat','#000000',NULL,2,'2018-02-11 05:37:03','2018-02-18 08:15:44','voyager.dashboard','null'),(4,1,'Users','','_self','voyager-person',NULL,1,1,'2018-02-11 05:37:03','2018-02-17 05:14:20','voyager.users.index',NULL),(7,1,'Roles','','_self','voyager-lock',NULL,1,3,'2018-02-11 05:37:03','2018-02-17 05:18:40','voyager.roles.index',NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,3,'2018-02-11 05:37:03','2018-02-18 08:15:44',NULL,NULL),(9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2018-02-11 05:37:03','2018-02-11 06:41:25','voyager.menus.index',NULL),(10,1,'Database','','_self','voyager-data',NULL,8,2,'2018-02-11 05:37:03','2018-02-11 06:41:25','voyager.database.index',NULL),(11,1,'Compass','','_self','voyager-compass',NULL,8,3,'2018-02-11 05:37:03','2018-02-11 06:41:25','voyager.compass.index',NULL),(12,1,'Settings','','_self','voyager-settings',NULL,1,4,'2018-02-11 05:37:03','2018-02-17 05:18:40','voyager.settings.index',NULL),(13,1,'Hooks','','_self','voyager-hook',NULL,1,7,'2018-02-11 05:37:04','2018-02-17 06:03:37','voyager.hooks',NULL),(14,1,'Structures','','_self','voyager-company','#00ff00',NULL,1,'2018-02-11 06:40:09','2018-02-18 08:15:44',NULL,''),(15,1,'Characters','/admin/characters','_self','voyager-people',NULL,1,2,'2018-02-11 06:46:33','2018-02-17 05:18:40',NULL,NULL),(16,1,'Structures','/admin/structures','_self','voyager-bookmark','#000000',14,1,'2018-02-11 06:57:13','2018-02-18 08:15:50',NULL,''),(17,1,'Services','/admin/structure-services','_self','voyager-shop','#000000',14,2,'2018-02-11 07:00:50','2018-02-18 08:15:50',NULL,''),(22,1,'States','/admin/structure-states','_self','voyager-activity','#000000',14,3,'2018-02-17 05:11:08','2018-02-18 08:21:13',NULL,''),(23,1,'Vulnerability Schedules','/admin/structure-vuls','_self','voyager-fire','#000000',14,4,'2018-02-17 05:16:18','2018-02-18 08:15:50',NULL,''),(24,1,'Jobs','/admin/jobs','_self','voyager-hammer',NULL,1,5,'2018-02-17 06:02:13','2018-02-17 06:03:34',NULL,NULL),(25,1,'Failed Jobs','/admin/failed-jobs','_self','voyager-skull',NULL,1,6,'2018-02-17 06:03:16','2018-02-17 06:03:37',NULL,NULL),(27,1,'Fuel Notices','/admin/fuel-notices','_self',NULL,NULL,14,5,'2018-02-18 10:23:05','2018-02-18 10:29:14',NULL,NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-02-11 05:37:03','2018-02-11 05:37:03');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(2,1),(3,1),(4,1),(5,1),(5,3),(6,1),(6,3),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(15,3),(16,1),(16,3),(17,1),(18,1),(19,1),(20,1),(20,3),(21,1),(21,3),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(41,3),(42,1),(42,3),(43,1),(44,1),(45,1),(46,1),(46,3),(47,1),(47,3),(48,1),(49,1),(50,1),(56,1),(56,3),(57,1),(57,3),(58,1),(59,1),(60,1),(61,1),(61,3),(62,1),(62,3),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(76,3),(77,1),(77,3),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(2,'browse_database',NULL,'2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(3,'browse_media',NULL,'2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(4,'browse_compass',NULL,'2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(5,'browse_menus','menus','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(6,'read_menus','menus','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(7,'edit_menus','menus','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(8,'add_menus','menus','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(9,'delete_menus','menus','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(10,'browse_pages','pages','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(11,'read_pages','pages','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(12,'edit_pages','pages','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(13,'add_pages','pages','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(14,'delete_pages','pages','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(15,'browse_roles','roles','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(16,'read_roles','roles','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(17,'edit_roles','roles','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(18,'add_roles','roles','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(19,'delete_roles','roles','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(20,'browse_users','users','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(21,'read_users','users','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(22,'edit_users','users','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(23,'add_users','users','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(24,'delete_users','users','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(25,'browse_posts','posts','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(26,'read_posts','posts','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(27,'edit_posts','posts','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(28,'add_posts','posts','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(29,'delete_posts','posts','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(30,'browse_categories','categories','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(31,'read_categories','categories','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(32,'edit_categories','categories','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(33,'add_categories','categories','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(34,'delete_categories','categories','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(35,'browse_settings','settings','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(36,'read_settings','settings','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(37,'edit_settings','settings','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(38,'add_settings','settings','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(39,'delete_settings','settings','2018-02-11 05:37:03','2018-02-11 05:37:03',NULL),(40,'browse_hooks',NULL,'2018-02-11 05:37:04','2018-02-11 05:37:04',NULL),(41,'browse_characters','characters','2018-02-11 06:46:33','2018-02-11 06:46:33',NULL),(42,'read_characters','characters','2018-02-11 06:46:33','2018-02-11 06:46:33',NULL),(43,'edit_characters','characters','2018-02-11 06:46:33','2018-02-11 06:46:33',NULL),(44,'add_characters','characters','2018-02-11 06:46:33','2018-02-11 06:46:33',NULL),(45,'delete_characters','characters','2018-02-11 06:46:33','2018-02-11 06:46:33',NULL),(46,'browse_structures','structures','2018-02-11 06:57:13','2018-02-11 06:57:13',NULL),(47,'read_structures','structures','2018-02-11 06:57:13','2018-02-11 06:57:13',NULL),(48,'edit_structures','structures','2018-02-11 06:57:13','2018-02-11 06:57:13',NULL),(49,'add_structures','structures','2018-02-11 06:57:13','2018-02-11 06:57:13',NULL),(50,'delete_structures','structures','2018-02-11 06:57:13','2018-02-11 06:57:13',NULL),(56,'browse_structure_states','structure_states','2018-02-17 05:11:08','2018-02-17 05:11:08',NULL),(57,'read_structure_states','structure_states','2018-02-17 05:11:08','2018-02-17 05:11:08',NULL),(58,'edit_structure_states','structure_states','2018-02-17 05:11:08','2018-02-17 05:11:08',NULL),(59,'add_structure_states','structure_states','2018-02-17 05:11:08','2018-02-17 05:11:08',NULL),(60,'delete_structure_states','structure_states','2018-02-17 05:11:08','2018-02-17 05:11:08',NULL),(61,'browse_structure_vuls','structure_vuls','2018-02-17 05:16:18','2018-02-17 05:16:18',NULL),(62,'read_structure_vuls','structure_vuls','2018-02-17 05:16:18','2018-02-17 05:16:18',NULL),(63,'edit_structure_vuls','structure_vuls','2018-02-17 05:16:18','2018-02-17 05:16:18',NULL),(64,'add_structure_vuls','structure_vuls','2018-02-17 05:16:18','2018-02-17 05:16:18',NULL),(65,'delete_structure_vuls','structure_vuls','2018-02-17 05:16:18','2018-02-17 05:16:18',NULL),(66,'browse_jobs','jobs','2018-02-17 06:02:13','2018-02-17 06:02:13',NULL),(67,'read_jobs','jobs','2018-02-17 06:02:13','2018-02-17 06:02:13',NULL),(68,'edit_jobs','jobs','2018-02-17 06:02:13','2018-02-17 06:02:13',NULL),(69,'add_jobs','jobs','2018-02-17 06:02:13','2018-02-17 06:02:13',NULL),(70,'delete_jobs','jobs','2018-02-17 06:02:13','2018-02-17 06:02:13',NULL),(71,'browse_failed_jobs','failed_jobs','2018-02-17 06:03:16','2018-02-17 06:03:16',NULL),(72,'read_failed_jobs','failed_jobs','2018-02-17 06:03:16','2018-02-17 06:03:16',NULL),(73,'edit_failed_jobs','failed_jobs','2018-02-17 06:03:16','2018-02-17 06:03:16',NULL),(74,'add_failed_jobs','failed_jobs','2018-02-17 06:03:16','2018-02-17 06:03:16',NULL),(75,'delete_failed_jobs','failed_jobs','2018-02-17 06:03:16','2018-02-17 06:03:16',NULL),(76,'browse_structure_services','structure_services','2018-02-18 08:18:51','2018-02-18 08:18:51',NULL),(77,'read_structure_services','structure_services','2018-02-18 08:18:51','2018-02-18 08:18:51',NULL),(78,'edit_structure_services','structure_services','2018-02-18 08:18:51','2018-02-18 08:18:51',NULL),(79,'add_structure_services','structure_services','2018-02-18 08:18:51','2018-02-18 08:18:51',NULL),(80,'delete_structure_services','structure_services','2018-02-18 08:18:51','2018-02-18 08:18:51',NULL),(81,'browse_fuel_notices','fuel_notices','2018-02-18 10:23:05','2018-02-18 10:23:05',NULL),(82,'read_fuel_notices','fuel_notices','2018-02-18 10:23:05','2018-02-18 10:23:05',NULL),(83,'edit_fuel_notices','fuel_notices','2018-02-18 10:23:05','2018-02-18 10:23:05',NULL),(84,'add_fuel_notices','fuel_notices','2018-02-18 10:23:05','2018-02-18 10:23:05',NULL),(85,'delete_fuel_notices','fuel_notices','2018-02-18 10:23:05','2018-02-18 10:23:05',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-02-11 05:37:03','2018-02-11 05:37:03'),(2,'user','Normal User','2018-02-11 05:37:03','2018-02-11 05:37:03'),(3,'manager','Station Manager','2018-02-11 10:12:34','2018-02-11 10:12:53');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'evestructures'
--

--
-- Dumping routines for database 'evestructures'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-18 11:41:10
