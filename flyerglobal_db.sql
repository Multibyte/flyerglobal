/*
SQLyog Ultimate v12.2.1 (64 bit)
MySQL - 5.5.47-0ubuntu0.14.04.1 : Database - flyerglobal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`flyerglobal` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `flyerglobal`;

/*Table structure for table `flyer_photos` */

DROP TABLE IF EXISTS `flyer_photos`;

CREATE TABLE `flyer_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flyer_id` int(10) unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flyer_photos_flyer_id_foreign` (`flyer_id`),
  CONSTRAINT `flyer_photos_flyer_id_foreign` FOREIGN KEY (`flyer_id`) REFERENCES `flyers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `flyer_photos` */

insert  into `flyer_photos`(`id`,`flyer_id`,`path`,`created_at`,`updated_at`) values 
(1,2,'flyers/photos/1457422917house-01.jpg','2016-03-07 23:41:57','2016-03-07 23:41:57'),
(2,2,'flyers/photos/1457422917house-02.jpg','2016-03-07 23:41:57','2016-03-07 23:41:57'),
(3,2,'flyers/photos/1457422917house-03.jpg','2016-03-07 23:41:57','2016-03-07 23:41:57'),
(4,2,'flyers/photos/1457422917house-04.jpg','2016-03-07 23:41:57','2016-03-07 23:41:57');

/*Table structure for table `flyers` */

DROP TABLE IF EXISTS `flyers`;

CREATE TABLE `flyers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `flyers` */

insert  into `flyers`(`id`,`street`,`city`,`zip`,`state`,`country`,`price`,`description`,`created_at`,`updated_at`) values 
(1,'1323 S. Carmelina Ave.','Los Angeles','90025','CA','us',500000,'Nice apartment for sale in West Los Angeles.','2016-03-06 00:00:47','2016-03-06 00:00:47'),
(2,'500 Landfair Ave.','Los Angeles','90024','CA','us',2500000,'Multi-story building in Westwood, Los Angeles is for sale. Walking distance from UCLA campus. \r\nAlso, very close to theaters, restaurants, and bars in Westwood.\r\n','2016-03-06 16:06:52','2016-03-06 16:06:52');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values 
('2014_10_12_000000_create_users_table',1),
('2014_10_12_100000_create_password_resets_table',1),
('2016_03_05_181601_create_flyers_table',1),
('2016_03_05_182748_create_flyer_photos_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
