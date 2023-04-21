/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.16-nt : Database - gcloud
*********************************************************************
Server version : 5.0.16-nt
*/


create database if not exists `gcloud`;

USE `gcloud`;

/*Table structure for table `aasregister` */

DROP TABLE IF EXISTS `aasregister`;

CREATE TABLE `aasregister` (
  `patientname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pswd` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `filerequest` */

DROP TABLE IF EXISTS `filerequest`;

CREATE TABLE `filerequest` (
  `fileid` int(50) NOT NULL,
  `patientname` varchar(80) NOT NULL,
  `reportname` varchar(60) NOT NULL,
  `cdate` varchar(50) NOT NULL,
  `hspName` varchar(50) NOT NULL,
  `hsRole` varchar(50) NOT NULL,
  `hspemail` varchar(80) NOT NULL,
  `sts` varchar(50) NOT NULL,
  `accesKey` varchar(50) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hspregister` */

DROP TABLE IF EXISTS `hspregister`;

CREATE TABLE `hspregister` (
  `patientname` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `pswd` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  `role` varchar(50) default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patientfiles` */

DROP TABLE IF EXISTS `patientfiles`;

CREATE TABLE `patientfiles` (
  `id` int(11) NOT NULL auto_increment,
  `pemail` varchar(80) NOT NULL,
  `filename` varchar(80) NOT NULL,
  `accessibility` varchar(80) NOT NULL,
  `cdate` date default NULL,
  `cfile` longblob NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patientregister` */

DROP TABLE IF EXISTS `patientregister`;

CREATE TABLE `patientregister` (
  `patientname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pswd` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
