/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.1.54-community : Database - book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `book`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`id`,`name`,`author`,`context`,`type`,`num`,`hot`,`sale`) values (12,'Java程序设计','孙媛','基础入门级','教育',18,5,50),(13,'JavaWeb应用开发技术与案例教程','董伟','JavaWeb基础入门','教育',19,2,50),(14,'Web服务开发学习实录','王瑞敏','进阶学习','教育',20,1,50);

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `bookReturn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `data` */

insert  into `data`(`id`,`name`,`user`,`bid`,`createDate`,`bookReturn`) values (14,'JavaWeb应用开发技术与案例教程','蛋蛋男爵',13,'2018-06-29 09:42:22','2018-06-26 22:52:46'),(15,'Java程序设计','蛋蛋男爵',12,'2018-06-26 12:05:54','2018-06-26 22:52:46'),(16,'Java程序设计','卡二',12,'2018-07-01 19:33:10','2018-07-01 19:33:10');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `auth` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `uflag` varchar(255) DEFAULT NULL,
  `bookquota` int(11) DEFAULT NULL,
  `amountborrowed` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`auth`,`createDate`,`account`,`uflag`,`bookquota`,`amountborrowed`) values (10,'admin','C4CA4238A0B923820DCC509A6F75849B',0,'2018-07-01 09:29:05',200,'否',5,0),(11,'蛋蛋男爵','C4CA4238A0B923820DCC509A6F75849B',1,'2018-07-04 22:13:51',200,'否',5,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
