# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: aslgroup
# Generation Time: 2012-01-16 20:17:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `projectId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned NOT NULL,
  `projectTitle` varchar(255) NOT NULL DEFAULT '',
  `projectDate` timestamp NULL DEFAULT NULL,
  `projectDescription` text,
  PRIMARY KEY (`projectId`),
  KEY `userId` (`userId`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;

INSERT INTO `projects` (`projectId`, `userId`, `projectTitle`, `projectDate`, `projectDescription`)
VALUES
	(1,1,'Test Project Title','2012-01-09 12:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed urna ligula, sed sodales eros. Nulla nibh libero, scelerisque nec mattis in, aliquet a felis. Nulla facilisi. Cras suscipit tortor vitae augue vulputate imperdiet. Sed nec nulla eu felis dignissim condimentum ac sed est. Curabitur eu tortor non dui consectetur elementum. Proin ac sem sit amet nisi imperdiet sodales. Nunc mi sapien, sodales eget congue sit amet, venenatis id ipsum.'),
	(2,2,'Diem','2012-01-09 12:00:00','Aliquam eu orci est. Phasellus rutrum nulla at nisl feugiat tempor. Nam non bibendum orci. Sed sit amet nisi nec nulla lacinia adipiscing. Aliquam ornare, dolor ut commodo posuere, eros quam semper est, vitae dictum odio velit et tortor. Nulla facilisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut sit amet ligula nulla, at dignissim tellus. Phasellus egestas auctor quam, at ultrices dui mollis nec. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. '),
	(3,3,'Broil','2012-01-09 12:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed urna ligula, sed sodales eros. Nulla nibh libero, scelerisque nec mattis in, aliquet a felis. Nulla facilisi. Cras suscipit tortor vitae augue vulputate imperdiet. Sed nec nulla eu felis dignissim condimentum ac sed est. Curabitur eu tortor non dui consectetur elementum. Proin ac sem sit amet nisi imperdiet sodales. Nunc mi sapien, sodales eget congue sit amet, venenatis id ipsum.\n\nAliquam eu orci est. Phasellus rutrum nulla at nisl feugiat tempor. Nam non bibendum orci. Sed sit amet nisi nec nulla lacinia adipiscing. Aliquam ornare, dolor ut commodo posuere, eros quam semper est, vitae dictum odio velit et tortor. Nulla facilisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut sit amet ligula nulla, at dignissim tellus. Phasellus egestas auctor quam, at ultrices dui mollis nec. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. '),
	(4,4,'QuickTask','2012-01-09 12:00:00','Nunc ut auctor tellus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean ac neque metus, viverra porttitor nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi purus mauris, viverra adipiscing feugiat eu, egestas vitae velit. Aliquam faucibus varius lectus, non ornare justo auctor tincidunt. In suscipit luctus sapien, in euismod quam consectetur non. Mauris turpis arcu, consequat vel placerat at, posuere sit amet velit. '),
	(5,5,'Nobody Project','2012-01-09 12:00:00','Nam lectus enim, venenatis eu dictum ac, commodo quis augue. Nullam malesuada lectus fermentum ligula consequat ut rhoncus eros aliquet. Cras condimentum nunc non nulla fermentum sed tristique lacus pellentesque. Proin sit amet sodales mauris. Vivamus augue ligula, semper vitae gravida at, rhoncus non lorem. Quisque auctor adipiscing ipsum non blandit. Fusce quis nibh vitae lorem aliquet commodo. Proin ut velit quis elit porta varius. '),
	(6,5,'Nobody\'s Other Project','2012-01-09 12:00:00','This is testing the featured project boolean.\n\nHasellus rutrum nulla at nisl feugiat tempor. Nam non bibendum orci. Sed sit amet nisi nec nulla lacinia adipiscing. Aliquam ornare, dolor ut commodo posuere, eros quam semper est, vitae dictum odio velit et tortor. Nulla facilisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut sit amet ligula nulla, at dignissim tellus. Phasellus egestas auctor quam, at ultrices dui mollis nec. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla facilisi. '),
	(7,3,'Project 2','2012-01-09 12:00:00','Test 2'),
	(8,3,'Project 3','2012-01-09 12:00:00','Test 3'),
	(31,2,'Testing','2012-01-09 12:00:00','6666'),
	(32,2,'Testing Another','2012-01-09 12:00:00','888'),
	(33,14,'Awesome New Project','2012-01-09 12:00:00','This is a description for a new project.');

/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table projectScreenshots
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projectScreenshots`;

CREATE TABLE `projectScreenshots` (
  `projectScreenshotId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `projectId` int(11) unsigned NOT NULL,
  `projectScreenshotFilePath` varchar(255) NOT NULL DEFAULT '',
  `projectScreenThumbFilePath` varchar(255) NOT NULL DEFAULT '',
  `projectScreenFeaturedThumbFilePath` varchar(255) NOT NULL DEFAULT '',
  `projectScreenshotTitle` varchar(50) DEFAULT NULL,
  `projectScreenshotDescription` text,
  PRIMARY KEY (`projectScreenshotId`),
  KEY `projectId` (`projectId`),
  CONSTRAINT `projectScreenshots_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `projects` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `projectScreenshots` WRITE;
/*!40000 ALTER TABLE `projectScreenshots` DISABLE KEYS */;

INSERT INTO `projectScreenshots` (`projectScreenshotId`, `projectId`, `projectScreenshotFilePath`, `projectScreenThumbFilePath`, `projectScreenFeaturedThumbFilePath`, `projectScreenshotTitle`, `projectScreenshotDescription`)
VALUES
	(1,1,'images/featuredProject_img.png','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(2,1,'images/thumbMail_img.png','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(3,2,'images/featuredProject_img.png','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(4,2,'images/thumbMail_img.png','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(5,3,'images/screenshots/screen1.jpg','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(6,3,'images/screenshots/screen2.jpg','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(7,4,'images/screenshots/screen1.jpg','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(8,4,'images/screenshots/screen2.jpg','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(9,5,'images/screenshots/screen1.jpg','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(10,5,'images/screenshots/screen2.jpg','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(11,6,'images/screenshots/screen1.jpg','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(12,6,'images/screenshots/screen2.jpg','images/thumbMail_img.png','images/featuredProject_img.png','Screenshot','Description of screenshot goes here.'),
	(13,8,'images/featuredProject_img.png','images/thumbMail_img.png','images/featuredProject_img.png','Featured!!','Test test test');

/*!40000 ALTER TABLE `projectScreenshots` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userTypeId` int(11) unsigned NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `jobtitle` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`userId`),
  KEY `userTypeId` (`userTypeId`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`userTypeId`) REFERENCES `userType` (`userTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`userId`, `userTypeId`, `username`, `password`, `email`, `firstname`, `lastname`, `jobtitle`, `avatar`, `description`)
VALUES
	(1,1,'admin','admin','admin@admin.com','Admin','Istrator','Overlord',NULL,'This is a nameless adminstrator account.'),
	(2,1,'troy','password','Tr5978@fullsail.edu','Troy','Grant','Back-End Developer','images/user/tgrant.jpg','I am a back end developer.'),
	(3,1,'marcos','password','reddoggato@gmail.com','Marcos','DeSousa','Full Sail University ','images/user/mdesousa.jpg','I am 21 yrs old, Born in Goiania - Goias, Brasil. Moved to United States in 1996, attended Hyannis East Elementary School. From 1996 and 2001 I kept moving back and forth, and decided that i needed to stay here to get my  education going :D. I attended Hyannis Middle School on route 28 in Hyannis MA. loved that School, in 2006 I decided to go to Cape Cod Technical High School in Harwhich MA in Information Technologies department, where I learned numerous of skills. And here i am today in one of the greatest College  In my opinion, doing what I love (Web Design), Mr. Lawson once said, \"live like no one else today, so that later in your life you can life like no one else.\" I hope that all this will be worth one day, because I left many friends and family behind. But of course, I will never forget any of them.I am 21 yrs old, Born in Goiania - Goias, Brasil. Moved to United States in 1996, attended Hyannis East Elementary School. From 1996 and moving back and forth, and decided that i needed to stay here to get my education going :D. I attended Hyannis Middle School on route 28 in Hyannis MA. loved that School, in 2006 I decided to go to Cape Cod Technical High School in Harwhich MA in Information Technologies department, where I learned numerous of skills. And here i am today in one of the greatest College  In my opinion, doing what I love (Web Design), Mr. Lawson once said, \"live  like no one else today, so that later in your life you can life like no one else.\"  I hope that all this will be worth one day, because I left many friends and  family behind. But of course, I will never forget any of them. Cape Cod Technical High learned numerous of skills. And here i am today in one of the greatest College  In my opinion, doing what I love (Web Design), Mr. Lawson once said, \"live  like no one else today, so that later in your life you can life like no one else.\"  I hope that all this will be worth one day, because I left many friends and  family behind. But of course, I will never forget any of them.'),
	(4,1,'robert','password','robert@zaphyous.com','Robert','Babcock','Zaphyous',NULL,'The lysine contingency - it\'s intended to prevent the spread of the animals is case they ever got off the island. Dr. Wu inserted a gene that makes a single faulty enzyme in protein metabolism. The animals can\'t manufacture the amino acid lysine. Unless they\'re continually supplied with lysine by us, they\'ll slip into a coma and die.\r\n\r\nDo you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that\'s what you see at a toy store. And you must think you\'re in a toy store, because you\'re here shopping for an infant named Jeb.'),
	(5,2,'john','password','awer@doe.com','Barack','Obama','President',NULL,'fsfgsfdg'),
	(11,2,'pppyou','ppyou','pppyou@you.com','You','Lost','The Game','images/userUpload/DEC25F7A-CB43-4165-B27149A82C6D1305_avatar.jpg','Entering my description like a bawss.'),
	(12,2,'yummy','mememe','youandme@moo.com',NULL,NULL,NULL,'images/user/EE94AD26-2F2B-4FFD-8B080555457DDDD4_avatar.jpg',NULL),
	(13,2,'theman','theman','theman@awesome.com','John','Doe','Crazyguy','images/user/D4DE1466-C30E-45BB-B28959016ABF63D8_avatar.jpg','I\'m typing stuff.'),
	(14,2,'awesomedude','awesome','awesome@awesome.com','Richard','Castle','Author','images/user/057D1219-F4D8-4DF3-9014979F45BAC4C7_avatar.jpg','I\'m typing stuff.');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table userSocialMedia
# ------------------------------------------------------------

DROP TABLE IF EXISTS `userSocialMedia`;

CREATE TABLE `userSocialMedia` (
  `userSocialMediaId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned NOT NULL,
  `userSocialMediaUrl` varchar(255) NOT NULL DEFAULT '',
  `userSocialMediaTypeId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`userSocialMediaId`),
  KEY `userId` (`userId`),
  KEY `userSocialMediaTypeId` (`userSocialMediaTypeId`),
  CONSTRAINT `userSocialMedia_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  CONSTRAINT `userSocialMedia_ibfk_2` FOREIGN KEY (`userSocialMediaTypeId`) REFERENCES `userSocialMediaType` (`userSocialMediaTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `userSocialMedia` WRITE;
/*!40000 ALTER TABLE `userSocialMedia` DISABLE KEYS */;

INSERT INTO `userSocialMedia` (`userSocialMediaId`, `userId`, `userSocialMediaUrl`, `userSocialMediaTypeId`)
VALUES
	(1,1,'www.facebook.com',1),
	(2,2,'http://www.facebook.com/Tr5978',1),
	(3,2,'http://www.twitter.com/TroyXero',2),
	(4,2,'https://plus.google.com/u/0/110290418428729028627/posts',3),
	(5,3,'http://www.facebook.com/mvdesousa',1),
	(6,3,'http://twitter.com/reddogcct',2),
	(7,3,'http://plus.google.com/u/0/116106633205054416021/posts',3),
	(8,4,'http://www.facebook.com/profile.php?id=100000776090940',1),
	(9,4,'http://twitter.com/Zarnithon',2),
	(10,4,'https://plus.google.com/u/0/100876181452710170356/posts',3),
	(11,5,'www.twitter.com',2),
	(12,5,'www.facebook.com',1);

/*!40000 ALTER TABLE `userSocialMedia` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table userSocialMediaType
# ------------------------------------------------------------

DROP TABLE IF EXISTS `userSocialMediaType`;

CREATE TABLE `userSocialMediaType` (
  `userSocialMediaTypeId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userSocialMediaType` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`userSocialMediaTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `userSocialMediaType` WRITE;
/*!40000 ALTER TABLE `userSocialMediaType` DISABLE KEYS */;

INSERT INTO `userSocialMediaType` (`userSocialMediaTypeId`, `userSocialMediaType`)
VALUES
	(1,'Facebook'),
	(2,'Twitter'),
	(3,'Google Plus'),
	(4,'Tumblr'),
	(5,'MySpace');

/*!40000 ALTER TABLE `userSocialMediaType` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table userType
# ------------------------------------------------------------

DROP TABLE IF EXISTS `userType`;

CREATE TABLE `userType` (
  `userTypeId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userType` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`userTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `userType` WRITE;
/*!40000 ALTER TABLE `userType` DISABLE KEYS */;

INSERT INTO `userType` (`userTypeId`, `userType`)
VALUES
	(1,'Administrator'),
	(2,'Member');

/*!40000 ALTER TABLE `userType` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
