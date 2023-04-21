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

/*Data for the table `aasregister` */

insert into `aasregister` values 
('Alex','alex@gmail.com','alex9999','9874563214','2019-11-17','Male','TS','India','Activated','D4kgPm1ijSCWe5bq'),
('Meghana','arumallameghana7@gmail.com','meghana9999','9849098490','2019-11-14','Female','AP','India','waiting','NotGenerated'),
('geetha','geetha@gmail.com','geetha9999','9849098490','2019-11-07','Female','TS','India','waiting','NotGenerated'),
('monika','monika@gmail.com','monika9999','9490069491','2019-11-12','Female','AP','India','waiting','NotGenerated'),
('Poojitha','poojithapeddineni@gmail.com','pooji9999','8465034941','1997-07-11','Female','AP','India','Activated','DwOr0FXmG9HWGJXx'),
('lakshmi','sumathi3796@gmail.com','pooji99@','8465034941','2019-11-09','Female','AP','India','Activated','Dp97dnP3z6NAkaMk'),
('sumathi','sumathi@gmail.com','sumathi9999','8963737333','2019-10-09','Female','TS','India','waiting','NotGenerated');

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

/*Data for the table `filerequest` */

insert into `filerequest` values 
(1,'poojithapeddineni@gmail.com','poojitha','2019-11-04','Poojitha','Doctor','poojithapeddineni@gmail.com','waiting','NotGenerated',1),
(2,'poojithapeddineni@gmail.com','poojitha','2019-11-04','Poojitha','Doctor','poojithapeddineni@gmail.com','Sent','DYUNYQVkvCmqLeYzFsVCk4xTTuEI6LIT',2),
(3,'poojithapeddineni@gmail.com','sumathi','2019-11-04','Poojitha','Doctor','poojithapeddineni@gmail.com','waiting','NotGenerated',3),
(5,'poojitha@gmail.com','poojithap','2019-11-04','Poojitha','Doctor','poojithapeddineni@gmail.com','Sent','Dw48AqluKJibtZvlOQzIViPZHeOysiTq',4),
(6,'poojitha@gmail.com','monika','2019-11-04','Poojitha','Doctor','poojithapeddineni@gmail.com','waiting','NotGenerated',5),
(4,'sumathi3796@gmail.com','meghana','2019-11-04','lakshmi','Surgen','sumathi3796@gmail.com','waiting','NotGenerated',6),
(4,'sumathi3796@gmail.com','meghana','2019-11-04','lakshmi','Surgen','sumathi3796@gmail.com','waiting','NotGenerated',7),
(4,'sumathi3796@gmail.com','meghana','2019-11-04','lakshmi','Surgen','sumathi3796@gmail.com','Sent','DplhpjlXeROz9UU8xPGdHMP0J8q5ivYf',8),
(1,'poojithapeddineni@gmail.com','poojitha','2019-11-04','Poojitha','Doctor','poojithapeddineni@gmail.com','waiting','NotGenerated',9),
(2,'poojithapeddineni@gmail.com','poojitha','2019-11-04','Poojitha','Doctor','poojithapeddineni@gmail.com','waiting','NotGenerated',10);

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

/*Data for the table `hspregister` */

insert into `hspregister` values 
('Alex','alex@gmail.com','alex9999','9874563214','2019-11-08','Male','TS','India','Activated','DSAUgEm8yctFJL2u','Insurance'),
('Meghana','arumallameghana7@gmail.com','Meghana@7','8465034941','2019-08-10','Female','AP','India','Activated','DHUIDtkVHNcvY3os','Hospital'),
('monika','monika@gmail.com','moni9999','9490069491','2019-11-08','Female','AP','India','waiting','NotGenerated','Hospital'),
('poojitha','poojitha@gmail.com','pooji9999','8465034941','2019-11-11','Female','AP','India','waiting','NotGenerated','Doctor'),
('Poojitha','poojithapeddineni@gmail.com','pooji9999','8465034941','2019-10-11','Female','AP','India','Activated','DdTyW2ch5fEwLfd6','Doctor'),
('lakshmi','sumathi3796@gmail.com','pooji99@','8465034941','2019-11-11','Female','AP','India','Activated','D9FZP0rcpBQURFdW','Surgen'),
('sumathi','sumathibhimavarapu746@gmail.com','sumathi9999','8465034941','2019-11-07','Female','TS','India','waiting','NotGenerated','Surgen');

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

/*Data for the table `patientfiles` */

insert into `patientfiles` values 
(1,'poojithapeddineni@gmail.com','poojitha','Hospital Doctor Insurance ','2019-11-04','hai hello poojitha, welcome to data point\r\nhow are you\r\ni am good\r\nand what are you doing '),
(2,'poojithapeddineni@gmail.com','poojitha','Hospital Doctor Insurance ','2019-11-04','hai hello poojitha, welcome to data point\r\nhow are you\r\ni am good\r\nand what are you doing '),
(3,'sumathibhimavarapu746@gmail.com','sumathi','Doctor Surgen ','2019-11-04','hai hello poojitha, welcome to data point\r\nhow are you\r\ni am good\r\nand what are you doing '),
(4,'sumathi3796@gmail.com','meghana','Surgen Insurance ','2019-11-04','hai hello poojitha, welcome to data point\r\nhow are you\r\ni am good\r\nand what are you doing '),
(5,'poojitha@gmail.com','poojithap','Doctor Surgen ','2019-11-04','i am from data point poojitha, welcome to data point\r\nhow are you\r\ni am good\r\nand what are you doing '),
(6,'poojitha@gmail.com','monika','Hospital Doctor Insurance ','2019-11-04','i am from data point poojitha, welcome to data point\r\nhow are you\r\ni am good\r\nand what are you doing '),
(7,'poojithapeddineni@gmail.com','test','Hospital Doctor ','2019-11-05','hai hello poojitha, welcome to data point\r\nhow are you\r\ni am good\r\nand what are you doing '),
(8,'poojithapeddineni@gmail.com','poojitha','Doctor ','2019-11-11','Hyderabad (/\'ha?d?r?b??d/ (About this soundlisten) HY-d?r-?-baad) is the capital and largest city of the Indian state of Telangana and de jure capital of Andhra Pradesh.[A] Occupying 650 square kilometres (250 sq mi) along the banks of the Musi River, located on the Deccan Plateau in the northern part of South India. At an average altitude of 542 metres (1,778 ft), much of Hyderabad is situated on hilly terrain around artificial lakes, including Hussain Sagar lake —predating the city\'s founding—north of the city centre. Hyderabad City has a population of about 6.9 million, with about 9.7 million in Hyderabad Metropolitan Region, making it the fourth-most populous city and sixth-most populous urban agglomeration in India. With an output of US$74 billion, Hyderabad is the fifth-largest contributor to India\'s overall gross domestic product.\r\n\r\nIn 1591 Qutb Shahi ruler Muhammad Quli Qutb Shah established Hyderabad to extend the capital beyond the fortified Golconda, in 1687 the city was annexed by the Mughals—in 1724 Mughal governor Nizam Asaf Jah I declared his sovereignty and founded the Asaf Jahi dynasty also known as the Nizams, Hyderabad served as the imperial capital of the Asaf Jahi from 1769-1948. As capital of the princely state of Hyderabad the city housed the British Residency and cantonment until Indian independence in 1947. Hyderabad was invaded and integrated into the Indian Union in 1948 and continues as a capital of Hyderabad State (1948–56), when States Reorganisation Act of 1956 was introduced Hyderabad was made the capital of the united Andhra Pradesh, in 2014 Telangana state was formed after bifurcation of Andhra—Hyderabad City became a joint capital of the two states, a transitional arrangement scheduled to end in 2025. Since 1956, the city houses the winter office of the President of India.\r\n\r\nRelics of the Qutb Shahi and Nizam rules remain visible today; the Charminar has come to symbolize the city. By the end of early modern era, the Mughal Empire declined in the Deccan and the Nizams\' patronage had attracted men of letters from different parts of the world. The amalgamation of local and migrated artisans had originated a distinctive culture, and the city emerged as the foremost centre of Oriental culture. Painting, handicraft, jewellery, litrature, dialect, clothing and cuisine (which includes biryani and haleem) and is prominent still today. The Telugu film industry based in the city is the country\'s second-largest producer of motion pictures.\r\n\r\nUntil 19th century Hyderabad was known for the pearl industry and was nicknamed the \"City of Pearls\", and the only diamond trading center in the world. Many of the city\'s historical and traditional bazaars remain open. Hyderabad\'s central location between the Deccan Plateau and the Western Ghats, and industrialisation throughout the 20th century attracted major Indian research, manufacturing, educational and financial institutions. Since the 1990s, the city emerged as an Indian hub of pharmaceuticals and biotechnology. The formation of Special economic zones and HITEC City dedicated to information technology has encouraged leading multinationals to set up operations in Hyderabad.');

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

/*Data for the table `patientregister` */

insert into `patientregister` values 
('Meghana','arumallameghana7@gmail.com','Meghu@141','9849098490','1995-10-31','Female','TS','India','Activated','DmuwDFc1LnkkEXbW'),
('moni','moni@gmail.com','monika9999','8465034941','2000-09-12','Female','AP','India','waiting','NotGenerated'),
('Poojitha','poojitha@gmail.com','pooji9999','8465034941','1997-07-11','Female','AP','India','Activated','Dnx3h1R70gqpmW4l'),
('Poojitha','poojithapeddineni@gmail.com','pooji9999','9849098490','1997-07-11','Female','AP','India','Activated','DYNj0B8rwaC96fhe'),
('sumathi','sumathi@gmail.com','sumathi9999','8963737333','1996-07-04','Female','AP','India','waiting','NotGenerated');
