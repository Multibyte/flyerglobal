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
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flyer_photos_flyer_id_foreign` (`flyer_id`),
  CONSTRAINT `flyer_photos_flyer_id_foreign` FOREIGN KEY (`flyer_id`) REFERENCES `flyers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `flyer_photos` */

insert  into `flyer_photos`(`id`,`flyer_id`,`name`,`path`,`thumbnail_path`,`created_at`,`updated_at`) values 
(1,2,'8052878257aefcda57e48bc5119665fa37973c35.jpg','images/photos/8052878257aefcda57e48bc5119665fa37973c35.jpg','images/photos/tn-8052878257aefcda57e48bc5119665fa37973c35.jpg','2016-03-13 22:59:29','2016-03-13 22:59:29'),
(2,2,'09449ae235371f6dc1b0023d67333952dcde54bd.jpg','images/photos/09449ae235371f6dc1b0023d67333952dcde54bd.jpg','images/photos/tn-09449ae235371f6dc1b0023d67333952dcde54bd.jpg','2016-03-13 23:00:01','2016-03-13 23:00:01'),
(3,2,'762caebb716367a88daabaacc5e39e73a81bf2d1.jpg','images/photos/762caebb716367a88daabaacc5e39e73a81bf2d1.jpg','images/photos/tn-762caebb716367a88daabaacc5e39e73a81bf2d1.jpg','2016-03-13 23:00:01','2016-03-13 23:00:01'),
(4,2,'e2809e3738a245dd06487771325b70118a163a18.jpg','images/photos/e2809e3738a245dd06487771325b70118a163a18.jpg','images/photos/tn-e2809e3738a245dd06487771325b70118a163a18.jpg','2016-03-13 23:00:01','2016-03-13 23:00:01');

/*Table structure for table `flyers` */

DROP TABLE IF EXISTS `flyers`;

CREATE TABLE `flyers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `flyers` */

insert  into `flyers`(`id`,`user_id`,`street`,`city`,`zip`,`state`,`country`,`price`,`description`,`created_at`,`updated_at`) values 
(2,1,'500 Landfair Ave.','Los Angeles','90024','CA','us',2500000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. \r\n\r\nSed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. \r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. \r\n','2016-03-12 23:12:20','2016-03-12 23:12:20'),
(3,2,'1323 S. Carmelina Ave.','Los Angeles','90025','CA','us',450000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. \r\n\r\nSed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. \r\n\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam nec ante. Sed lacinia, urna non tincidunt mattis, tortor neque adipiscing diam, a cursus ipsum ante quis turpis. Nulla facilisi. Ut fringilla. Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet. Vestibulum sapien. Proin quam. Etiam ultrices. Suspendisse in justo eu magna luctus suscipit. Sed lectus. Integer euismod lacus luctus magna. Quisque cursus, metus vitae pharetra auctor, sem massa mattis sem, at interdum magna augue eget diam. \r\n','2016-03-13 14:08:34','2016-03-13 14:08:34');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'John Doe','john@gmail.com','$2y$10$FtU9DELQq2dOY9oaNLGHA.EDUSTaO7cfrlDx0D8apZ7avaAI2x00e','m7FEdOmVhj96o5AjOOOmqK0pgIg4FlQoehhICw1Dm5fITLcRmC3Ktkm2upLj','2016-03-12 22:44:06','2016-03-13 14:11:47'),
(2,'Jane Doe','jane@gmail.com','$2y$10$bWHRgK4HqK4WWoyszMFXFeM3MkRezd1UNoaAx7VFBj2kO6yKN9lii','Aw6hmNPuVo18TUsrdaYiChcDsOboeM5SvP4cUzwcdepBZGPiazwABuYGHjYb','2016-03-13 14:28:45','2016-03-13 18:04:07');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
