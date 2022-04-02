/*
SQLyog Ultimate v10.3 
MySQL - 5.5.5-10.5.8-MariaDB : Database - db_latihan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_latihan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_latihan`;

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `nisn` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  PRIMARY KEY (`nisn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `siswa` */

insert  into `siswa`(`nisn`,`nama_siswa`,`tempat_lahir`,`tanggal_lahir`,`jenis_kelamin`,`alamat`) values (4110,'Prof. Rosalinda Mitchell V','New York','2018-02-12','Perempuan','6568 Carter Mall\nLake Zena, PA 77221-9305'),(4292,'Franz Terry','Arizona','2007-12-19','Laki-Laki','468 Auer Mall Suite 964\nLake Jamelberg, NE 77765'),(4325,'Ryley Goldner','California','2017-07-05','Laki-Laki','879 Remington Drives Apt. 029\nPort Myron, MT 30402-5595'),(4389,'Angelo Bergstrom','Wisconsin','1994-12-27','Laki-Laki','800 Casper Causeway\nTurnershire, IL 35583'),(4773,'Jevon Carroll','Texas','1999-09-07','Laki-Laki','59947 Bailey Gateway\nRoderickland, WY 96623'),(4986,'Cecelia Heaney','Connecticut','1996-01-18','Perempuan','1103 Kovacek Valleys\nFurmanmouth, MO 51669-1367'),(5074,'Albertha Champlin IV','Oklahoma','1995-07-13','Perempuan','5755 Mraz Orchard Apt. 791\nGreenfelderberg, TN 57061'),(5181,'Timmothy Schamberger','Indiana','2002-08-10','Perempuan','926 Myrtice Crossing Suite 002\nWaterston, MO 10476-4374'),(5722,'Prof. Sterling Batz','New Mexico','1997-11-18','Perempuan','97233 Sauer Islands Suite 642\nLake Zelda, MT 52851'),(5987,'Gage Howe','Michigan','2010-02-01','Perempuan','5657 Turner Key Suite 495\nEast Dejon, HI 10777-5477'),(6204,'Kadin Murray','Wisconsin','2007-04-29','Laki-Laki','9839 Hansen Bypass\nAmericabury, DE 77094-0027'),(6447,'Larissa Dibbert DVM','Delaware','0000-00-00','Perempuan','195 Morissette Isle Suite 739\nLindgrentown, CT 48914-3223'),(6450,'Cielo Lesch','New Mexico','1995-12-29','Laki-Laki','47660 Kuhlman Turnpike Suite 902\nLake Aldenhaven, TX 21357-8022'),(7314,'Walter Mayert','Massachusetts','2000-11-15','Laki-Laki','69523 Bette Summit Suite 868\nSipesberg, VT 95099'),(7674,'Jerrell Bartoletti','South Carolina','2019-12-22','Perempuan','4235 Meggie Forks\nWeberland, WY 97052'),(7859,'Dr. Joaquin Gorczany','Oklahoma','2007-02-23','Perempuan','1803 Heathcote Greens\nLake Barneyhaven, AR 11635'),(8003,'Mrs. Cydney Feest I','Alaska','2005-07-22','Perempuan','5506 Nolan Mountain Apt. 899\nJesseton, TX 31839-1149'),(8158,'Jameson Cronin','Rhode Island','2012-11-01','Perempuan','932 Williamson Ranch Suite 646\nNew Blaze, ND 32855'),(8197,'Diana Bruen','Iowa','2002-06-14','Perempuan','59844 Colten Canyon Apt. 176\nLake Sigurd, CA 29384'),(8484,'Dr. Genevieve Donnelly III','Idaho','2004-03-14','Perempuan','29526 Schimmel Fall Apt. 040\nNew Garrison, UT 50158-8318'),(9297,'Madge Carter','California','2003-11-13','Laki-Laki','737 Keebler Plain Suite 057\nCassandrafort, OH 54030'),(9309,'Mr. Destin Roob DVM','Rhode Island','1990-07-05','Laki-Laki','2123 Daniella Mountains\nLake Alisonhaven, OR 02952-6820'),(9354,'Cornell Watsica','Iowa','1992-08-17','Laki-Laki','27226 Devonte Points Suite 133\nLake Cecileshire, WY 23485-3240'),(9516,'Rico McCullough','New Hampshire','2018-09-07','Perempuan','1575 Schumm Plains Suite 360\nSouth Clark, CO 16052-4253'),(9571,'Prof. Sienna Fisher','Indiana','2011-03-19','Laki-Laki','33709 Jones Knolls\nPort Christelleport, FL 92025'),(9798,'Mrs. Carole McGlynn PhD','Washington','2013-04-19','Laki-Laki','2506 Yundt Forks Apt. 939\nNew Marciastad, AZ 22148'),(9933,'Prof. Ruthe Price MD','Wyoming','0000-00-00','Laki-Laki','89824 Quigley Island Suite 509\nLelandfort, KS 97968-7034');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
