/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 8.0.13 : Database - shopping
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shopping` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shopping`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `userPhone` char(11) DEFAULT NULL,
  `province` varchar(10) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `county` varchar(10) DEFAULT NULL,
  `detailedAddress` varchar(50) DEFAULT NULL,
  KEY `fk_userPhone` (`userPhone`),
  CONSTRAINT `fk_userPhone` FOREIGN KEY (`userPhone`) REFERENCES `user_main_message` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`userPhone`,`province`,`city`,`county`,`detailedAddress`) values 
('13980721384','四川','绵阳市','盐亭县','宗海乡场镇'),
('15828450332','四川','成都市','双流县','秀苑花苑');

/*Table structure for table `classify` */

DROP TABLE IF EXISTS `classify`;

CREATE TABLE `classify` (
  `name` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `classify` */

insert  into `classify`(`name`) values 
('men'),
('women');

/*Table structure for table `clothing` */

DROP TABLE IF EXISTS `clothing`;

CREATE TABLE `clothing` (
  `id` char(32) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `inventory` int(5) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `newStockTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `clothing` */

insert  into `clothing`(`id`,`name`,`src`,`price`,`inventory`,`description`,`newStockTime`) values 
('0166e43d638a4ccb9cf887a23d9dc6a9','韵味西装','images/photos/2.jpg',500,9,'成熟，稳重，心止如水，成熟男人的韵味','2018-12-25 13:18:03'),
('7082fb6e79b24970a1a1aae3382de6e7','牛仔短裤','images/photos/6.jpg',100,6,'夏天里有它，又清凉又吸睛','2018-12-25 13:27:10'),
('965c5666aa0b4c969739eb7c23b25503','修身夏装','images/photos/5.jpg',328.5,40,'阳光俏皮，此衣在身，让你如邻家女孩一般','2018-12-25 13:27:34'),
('9e596c987fe14fdcb89a2b4e56f83e84','休闲外套','images/photos/4.jpg',398,97,'工作累了？周末换上它出去走走吧，岁月静好','2018-12-25 13:27:50'),
('a1aca4dc91d7486b8bdf21563e597750','温暖羽绒','images/photos/7.jpg',600.6,34,'在这北方的寒冬里，大雪纷飞，你在温暖的羽绒里，打着瞌睡','2018-12-25 20:30:46'),
('b7397c74382e4fa6966e51e090bf7393','纯白毛衣','images/photos/1.jpg',199,35,'黑白配，很配','2018-12-25 15:10:20'),
('ec1639f7941e45cc987cac61117a94c8','条纹马甲','images/photos/3.jpg',138.5,275,'我就不知道这扶墙的动作是啥意思','2018-12-26 10:27:46');

/*Table structure for table `clothing_classify` */

DROP TABLE IF EXISTS `clothing_classify`;

CREATE TABLE `clothing_classify` (
  `classify_name` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clothing_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`classify_name`,`clothing_id`),
  KEY `fk_clothing_id` (`clothing_id`),
  CONSTRAINT `fk_classify_name` FOREIGN KEY (`classify_name`) REFERENCES `classify` (`name`),
  CONSTRAINT `fk_clothing_id` FOREIGN KEY (`clothing_id`) REFERENCES `clothing` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `clothing_classify` */

insert  into `clothing_classify`(`classify_name`,`clothing_id`) values 
('men','0166e43d638a4ccb9cf887a23d9dc6a9'),
('women','7082fb6e79b24970a1a1aae3382de6e7'),
('women','965c5666aa0b4c969739eb7c23b25503'),
('men','9e596c987fe14fdcb89a2b4e56f83e84'),
('women','a1aca4dc91d7486b8bdf21563e597750'),
('women','b7397c74382e4fa6966e51e090bf7393'),
('women','ec1639f7941e45cc987cac61117a94c8');

/*Table structure for table `evaluation` */

DROP TABLE IF EXISTS `evaluation`;

CREATE TABLE `evaluation` (
  `commodityId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `evaluation` varchar(100) DEFAULT NULL,
  KEY `fk_commodityId` (`commodityId`),
  CONSTRAINT `fk_commodityId` FOREIGN KEY (`commodityId`) REFERENCES `clothing` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `evaluation` */

insert  into `evaluation`(`commodityId`,`evaluation`) values 
('9e596c987fe14fdcb89a2b4e56f83e84','嗯，巴适'),
('9e596c987fe14fdcb89a2b4e56f83e84','这衣服穿起来咋这么土啊'),
('7082fb6e79b24970a1a1aae3382de6e7','清凉'),
('a1aca4dc91d7486b8bdf21563e597750','快递很快，衣服很保暖'),
('0166e43d638a4ccb9cf887a23d9dc6a9','很好，穿着很帅气'),
('965c5666aa0b4c969739eb7c23b25503','');

/*Table structure for table `orderform` */

DROP TABLE IF EXISTS `orderform`;

CREATE TABLE `orderform` (
  `id` char(32) NOT NULL,
  `commodity_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_phone` char(11) DEFAULT NULL,
  `quatity` int(5) DEFAULT '1',
  `remark` varchar(50) DEFAULT NULL,
  `status` int(3) DEFAULT NULL,
  `delivery_time` varchar(30) DEFAULT NULL,
  `delivery_address` varchar(30) DEFAULT '某某服装商城，坐落于天府之国',
  `receipt_time` varchar(30) DEFAULT NULL,
  `receipt_address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_commodity_id` (`commodity_id`),
  KEY `fk_user_phone` (`user_phone`),
  CONSTRAINT `fk_commodity_id` FOREIGN KEY (`commodity_id`) REFERENCES `clothing` (`id`),
  CONSTRAINT `fk_user_phone` FOREIGN KEY (`user_phone`) REFERENCES `user_main_message` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderform` */

insert  into `orderform`(`id`,`commodity_id`,`user_phone`,`quatity`,`remark`,`status`,`delivery_time`,`delivery_address`,`receipt_time`,`receipt_address`) values 
('1e0de007db3d47fab54e15427e7066fc','a1aca4dc91d7486b8bdf21563e597750','13980721384',6,'快点儿送，冷死了',5,'2019-01-03 09:26:59','某某服装商城，坐落于天府之国','2019-01-03 09:27:03','四川省四川绵阳市盐亭县宗海乡场镇'),
('25c2d123e97d48928871095de7676e8a','9e596c987fe14fdcb89a2b4e56f83e84','13980721384',1,'',3,'2019-03-27 16:41:35','某某服装商城，坐落于天府之国','2019-03-26 21:34:22','四川省四川绵阳市盐亭县宗海乡场镇'),
('37c4d00736cd441f959ff1ad3d18aa3b','9e596c987fe14fdcb89a2b4e56f83e84','15828450332',8,'慢慢送，不急',5,'2019-01-02 14:11:24','某某服装商城，坐落于天府之国','2019-01-02 14:11:43','四川省四川成都市双流县秀苑花苑'),
('49f8d5276f85468db6c2e32359460e09','a1aca4dc91d7486b8bdf21563e597750','15828450332',6,'慢慢送，不急',5,'2019-01-02 14:11:25','某某服装商城，坐落于天府之国','2019-01-02 14:11:43','四川省四川成都市双流县秀苑花苑'),
('5022fd13e80f41cc9ea3daced2c70a94','965c5666aa0b4c969739eb7c23b25503','13980721384',3,NULL,5,NULL,'某某服装商城，坐落于天府之国',NULL,NULL),
('93f1fbdb564145108e629ef6d0c469d7','965c5666aa0b4c969739eb7c23b25503','13980721384',10,'隐私包装',5,'2019-01-02 11:48:20','某某服装商城，坐落于天府之国','2019-01-02 11:48:47','四川省四川绵阳市盐亭县宗海乡场镇'),
('9b95fa9d5f984398821f5886af331562','7082fb6e79b24970a1a1aae3382de6e7','15828450332',2,'慢慢送，不急',5,'2019-01-02 14:11:25','某某服装商城，坐落于天府之国','2019-01-02 14:11:44','四川省四川成都市双流县秀苑花苑'),
('c375c84c4c8941deadd378fafc4aae4c','a1aca4dc91d7486b8bdf21563e597750','13980721384',3,'尽快送达',5,'2019-01-02 13:54:19','某某服装商城，坐落于天府之国','2019-01-02 13:54:24','四川省四川绵阳市盐亭县宗海乡场镇'),
('c59ca66699804246904b224f819c5645','7082fb6e79b24970a1a1aae3382de6e7','13980721384',2,'尽快送达',5,'2019-01-02 13:54:20','某某服装商城，坐落于天府之国','2019-01-02 13:54:25','四川省四川绵阳市盐亭县宗海乡场镇'),
('e18d871ae7b84f20ac902c25871b895a','0166e43d638a4ccb9cf887a23d9dc6a9','13980721384',1,'喷香',5,'2019-01-03 15:35:03','某某服装商城，坐落于天府之国','2019-01-03 15:35:37','四川省四川绵阳市盐亭县宗海乡场镇');

/*Table structure for table `user_main_message` */

DROP TABLE IF EXISTS `user_main_message`;

CREATE TABLE `user_main_message` (
  `userName` varchar(13) DEFAULT NULL,
  `password` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_main_message` */

insert  into `user_main_message`(`userName`,`password`,`phone`) values 
('CJL','CJL276757','13980721384'),
('Fation','CJL276757','15828450332');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
