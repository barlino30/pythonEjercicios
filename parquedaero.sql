/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.1.40-MariaDB : Database - db_parqueadero
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_parqueadero` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_parqueadero`;

/*Table structure for table `tbl_parqueadero` */

DROP TABLE IF EXISTS `tbl_parqueadero`;

CREATE TABLE `tbl_parqueadero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Placa` varchar(100) DEFAULT NULL,
  `Entrada` datetime(6) DEFAULT NULL,
  `Salida` datetime(6) DEFAULT NULL,
  `CobrarT` float(6,2) DEFAULT NULL,
  `IdTipoT` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_parqueadero` */

/*Table structure for table `tbl_tarifa` */

DROP TABLE IF EXISTS `tbl_tarifa`;

CREATE TABLE `tbl_tarifa` (
  `IdTipoT` int(11) NOT NULL AUTO_INCREMENT,
  `IdVehiculo` int(11) DEFAULT NULL,
  `Precio` float(6,2) DEFAULT NULL,
  `Tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdTipoT`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tarifa` */

insert  into `tbl_tarifa`(`IdTipoT`,`IdVehiculo`,`Precio`,`Tipo`) values 
(1,1,2500.00,'1 Hora'),
(2,1,1200.00,'1/2 Hora'),
(3,2,1500.00,'1 Hora'),
(4,2,800.00,'1/2 Hora');

/*Table structure for table `tbl_vehiculo` */

DROP TABLE IF EXISTS `tbl_vehiculo`;

CREATE TABLE `tbl_vehiculo` (
  `IdVehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `Vechiculo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdVehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_vehiculo` */

insert  into `tbl_vehiculo`(`IdVehiculo`,`Vechiculo`) values 
(1,'Carro'),
(2,'Moto');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
