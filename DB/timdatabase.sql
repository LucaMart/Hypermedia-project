-- MySQL dump 10.16  Distrib 10.1.14-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: timdatabase
-- ------------------------------------------------------
-- Server version	10.1.14-MariaDB

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
-- Table structure for table `as-descriptiondiv`
--

DROP TABLE IF EXISTS `as-descriptiondiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `as-descriptiondiv` (
  `Title` varchar(255) NOT NULL,
  `Content` text,
  `ASServiceName` varchar(63) NOT NULL,
  `ASServiceSubcategory` varchar(63) NOT NULL,
  `Highlights` tinyint(1) DEFAULT NULL,
  `ASServiceID` int(11) DEFAULT NULL,
  `Order` int(5) NOT NULL,
  `ButtonName` varchar(63) DEFAULT NULL,
  PRIMARY KEY (`Title`,`ASServiceSubcategory`,`ASServiceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `as-descriptiondiv`
--

LOCK TABLES `as-descriptiondiv` WRITE;
/*!40000 ALTER TABLE `as-descriptiondiv` DISABLE KEYS */;
INSERT INTO `as-descriptiondiv` VALUES ('First Installation','If you activated the TIM Smart Fiber Offer with the auto-install option, follow the instructions in the guides and in the video to connect the phones and the TIM Fiber Modem for the first time.\r\nIMMAGINI\r\nThe auto-installing Fiber Package contains:\r\n\r\n    The box with the Fiber Modem, with the power supply, the filter and the cables.\r\n    The box with 2 cordless phones.\r\n    The specific Guide for the auto-installing Fiber Package.\r\nIMMAGINI','Fiber','ADSL and Fiber',1,14,0,NULL),('Formats and type of content','In every films detail sheet you can find various available options and their price. For some films you can chose different kind of vision: standard definition(SD), high definition (HD or Full HD). We suggest to verify which kind of films you can watch with a test that you can find on the TIMvision decoder menu area, on the top right Settings>Test Adsl line. This test is purely indicative, it measure your line speed at the time of the execution. In other moments the performance could be different. In order to  have a better available bandwidth we suggest you to turn off or disconnect other devices connected to the internet.</br> If you chose the offer with the decoder you can also watch films in original language, if MULTI AUDIO is supported. Launch the content pushing the INFO button is sufficient.</br> If you have a TIM vision decoder you can enter the HotZone, with films only to adults','Discover TIM Vision','TIM Vision',NULL,11,5,'Tim Vision'),('How to subscribe','TIM Vision subscription can be done in different ways. </br><ul><li>If you\'re a Tim customer, you can directly ask online, in our <a href=\"#\">OFFERS</a> area or, if you prefer, in our Tim shops</li><li>You can ask for a subscription also contacting our Online Service 187 or 119</li></ul>If you have a compatible Smart TV you can subscribe through \"TIM Vision TV\" area.<ul><li>You can choose, as payment method, Tim landaline invoice charge or your Visa, Mastercard or American Express credit card.</li><li>For landline invoice charge you must be an ADLS/Fiber TIM customer and you have to make the purchase through the home landline. In this case you will asked to set a PIN in order to improve security</li></ul>If you\'re a landline customer of another company you can subscribe to TIM Vision paying with your credit card.</br> Another easy way to subscribe is through the Tablet/Smartphone app. Download TIMVision app and enter \"TIM Vision TV\" area. You can choose your remaining credit or a credit card as payment method.','Discover TIM Vision','TIM Vision',NULL,11,2,'Tim Vision'),('Videostore-watch film for rent','Videostore is a rich video library periodically updated, where you can rent or buy new films.</br> You can enter the Videostore if you\'re a TIMVision customer and you have the decoder, if you have a Samsung or LG Smart TV and you have downloaded TIM Vision app, through timvision.it and with the mobile app.</br>You can pay with a charge on your credit card or on your landline invoice ( if you\'re a landline TIM customer). All the customers, also those of other operators, can pay with Visa, Mastercard, American Express credit card. The payment for mobile version can also be don with your residual credit. In order to proceed with the rental you have to follow these steps:<ul><li>in the sheet related to the film you chose, you have to select one of the available options.You need to be subscribed to the service</li><li>In order to protect your purchases, in case of charge on landline invoice, you need to type the PIN you chose in the registration phase </li><li>finalize the rent/purchase within the title sheet where you can find the \"Watch\" button </li><li>In case of purchase, the films would be added and available in \"my purchases\" area.</li></ul> If you prefer user the credit card as payment method you can store it, so that you can speed up your purchases. In order to subscribe to TIMvision the credit card store is necessary if you want to pay with it','Discover TIM Vision','TIM Vision',NULL,11,4,'Tim Vision'),('What can i watch with TIM Vision','With TIMvision film, TV series, cartoons and more, always on demand or withouth commercial interruptions. </br> In TIMVIsion TV you find more than 6000 films  included in the subscription: a rich offer of various kind of films, complete seasons of the best TV series, cartoons and youth programs documentaries concert reportage.</br>In FREE TV area you can find TV Replay, WEB TV and LA7 and MTV archives.</br>In TV replay you have at your disposal all precedent week programs of RAI, LA7, MTV main networks.</br>In WEB TV you have the access to WEB videos, distributed for free on Internet. Video contents are organized in topic sections for a faster research and can be live or deferred distributed.</br>In Videostore section you can rent for 48 hours or buy choosing among over 2500 of the best films, with charge on landline invoice or credit card. In Videostore-my purchases area you can find all your rent/bought films yet available.','Discover TIM Vision','TIM Vision',NULL,11,3,'Tim Vision'),('What is TIM Vision','TIMvision is the new answer to the entertainment needs of all the members of the family.\r\nIt is TIM\'s on-demand TV. Via an ADSL or Fiber connection it allows you to enjoy thousands of titles: great cinema, the most exciting TV series, the most loved cartoons and\r\nmuch more, like documentaries, reportage and music.\r\nThe TIMvision customers have access to:\r\n\r\n     TIMvision TV\r\n     Videostore\r\n     Free replay TV\r\n\r\nThe TIMvision subscription allows you to watch all the content on the PC, Smart TV or TV with decoder,\r\ntablets and smartphones without using Giga, anytime, anywhere.','Discover TIM Vision','TIM Vision',NULL,11,1,'Tim Vision');
/*!40000 ALTER TABLE `as-descriptiondiv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistanceservice`
--

DROP TABLE IF EXISTS `assistanceservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assistanceservice` (
  `Name` varchar(63) NOT NULL,
  `Category` varchar(63) NOT NULL,
  `SubCategory` varchar(63) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistanceservice`
--

LOCK TABLES `assistanceservice` WRITE;
/*!40000 ALTER TABLE `assistanceservice` DISABLE KEYS */;
INSERT INTO `assistanceservice` VALUES ('ADSL modem','Technical support and configuration','ADSL and fiber',1),('Configurations and manuals','Technical support and configuration','Smartphone and tablet',2),('Configure online','Technical support and configuration','Smartphone and tablet',3),('Devices for Tim Games','SmartLife','TIM Games',4),('Devices for Tim Music','SmartLife','TIM Music',5),('Devices for Tim Reading','SmartLife','TIM Reading',6),('Devices for Tim Vision','SmartLife','TIM Vision',7),('Discover Tim Games','SmartLife','TIM Games',8),('Discover Tim Music','SmartLife','TIM Music',9),('Discover Tim Reading','SmartLife','TIM Reading',10),('Discover TIM Vision','SmartLife','TIM Vision',11),('Enable/disable content services (CSP) and phone services','Line management and services','Mobile',12),('Enable/disable phone services','Line management and services','Landline',13),('Fiber','Technical support and configuration','ADSL and fiber',14),('How to recharge','Line management and services','Mobile',15),('Inbox configuration','Technical support and configuration','Mail',16),('Installments promotions','Monitoring costs and payments','Mobile',17),('Internet surfing','Monitoring costs and payments','Mobile',18),('Invoices and payments','Monitoring costs and payments','Landline',19),('ISDN line','Technical support and configuration','Landline',20),('Join TIM with a mobile line','Line management and services','Do you need help to join TIM',21),('Landline issues','Technical support and configuration','Landline',22),('Line management','Line management and services','Landline',23),('Mail configuration','Technical support and configuration','Smartphone and tablet',24),('Mail issues','Technical support and configuration','Mail',25),('Mobile line management when you\'re aboard','Line management and services','Mobile',26),('MyTim landline','Monitoring costs and payments','What can you do online',27),('MyTim mobile','Monitoring costs and payments','What can you do online',28),('Navigation issues','Technical support and configuration','Navigation',29),('Navigation settings','Technical support and configuration','Navigation',30),('Network resource','Technical support and configuration','ADSL and fiber',31),('New Smart for landline and mobile ','Line management and services','Do you need help to join TIM',32),('Online recharge','Line management and services','What can you do online',33),('Online shopping','Line management and services','What can you do online',34),('Phone services guide','Technical support and configuration','Landline',35),('Premium online','Technical support and configuration','TV decoder',36),('Rechargeable','Monitoring costs and payments','Mobile',37),('Service management','SmartLife','TIM Games',38),('Service management','SmartLife','TIM Music',39),('Service management','SmartLife','TIM Reading',40),('Service management','SmartLife','TIM Vision',41),('Services for your smartphone','Technical support and configuration','Smartphone and tablet',42),('SIM management','Line management and services','Mobile',43),('Subscription','Monitoring costs and payments','Mobile',44),('Tim mail guide','Technical support and configuration','Mail',45),('Tim SKY','Technical support and configuration','TV decoder',46),('Tim Vision','Technical support and configuration','TV decoder',47),('Username and password','Technical support and configuration','Mail',48),('Wi-fi repeater','Technical support and configuration','ADSL and fiber',49),('MyTim landline','Line management and services','What can you do online',50),('MyTim mobile','Line management and services','What can you do online',51);
/*!40000 ALTER TABLE `assistanceservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `Name` varchar(63) NOT NULL,
  `Category` varchar(63) NOT NULL,
  `SubCategory` varchar(63) NOT NULL,
  `ImagePath` varchar(255) NOT NULL,
  `Vendor` varchar(63) DEFAULT NULL,
  `Model` varchar(63) DEFAULT NULL,
  `Characteristics` varchar(1023) NOT NULL,
  `Price` varchar(63) NOT NULL,
  `Specifications` text,
  `IncludedInThePrice` text,
  `Outlet` tinyint(1) DEFAULT NULL,
  `Colors` varchar(63) DEFAULT NULL,
  `InPromotion` tinyint(1) DEFAULT NULL,
  `PromotionCategory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES ('Beats Solo2 On-Ear Headphones','TV and SmartLiving','others','Images/Devices/TV and SmartLiving/beats-solo2-on-ear-red-1.png',NULL,NULL,'','199,90 &euro;',NULL,NULL,NULL,NULL,NULL,'Mobile'),('Chiavetta TIM 42.2','Modems And Networking','Internet Keys','Images/Devices/Modem e Networking/Chiavetta42.2.png',NULL,NULL,'','29,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('iPhone 6S','Smartphones And Phones','Smartphone','Images/Devices/Smartphone e telefoni/apple-iPhone6s_SpGry-1.png',NULL,NULL,'iOs','789,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('LG G5','Smartphones And Phones','Smartphone','Images/Devices/Smartphone e telefoni/LG_G5_titan_01_1.png',NULL,NULL,'Android','699,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('LG Nexus 5x','Smartphones And Phones','Smartphone','Images/Devices/Smartphone e telefoni/LG-NEXUS5-BLACK-5.png',NULL,NULL,'Android','449,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('Polar Loop Activity Tracker','TV and SmartLiving','Smartwatch','Images/Devices/TV and SmartLiving/Polar_loop_blk_760x760.png',NULL,NULL,'','99,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('Samsung Galaxy Gear S','TV and SmartLiving','Smartwatch','Images/Devices/TV and SmartLiving/samsung-galaxy-gear-s-1_0.png',NULL,NULL,'','389,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('Samsung Galaxy S7','Smartphones and Phones','Smartphone','Images/Devices/Smartphone e telefoni/SAMSUNG_S7_Black_02.png','Samsung','Smartphone Galaxy S7 Edge','Android OS 6.0\r\nDisplay 5.5\r\nOctaCore CPU (QuadCore 2.3GHz + QuadCore 1.6 GHz)','729,90 &euro;','<h4>Technology</h4>\n<p>4G cat.9/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100</p>\n<h4>Connectivity</h4>\n<p>Wi-Fi - Bluetooth - Micro USB - NFC</p>\n<h4>GPS</h4>\n<p>integrated</p>\n<h4>Display</h4>\n<p>5.1&quot; 16 Million colors - Touch</p>','<h4>22 GB free of 4G Internet for 30 days</h4>\n<p>You can access all the functions of TIMvision and watch TV in the REPLAY FREE TV section. Using your credit card (Visa, Mastercard or American Express) you can purchase the movies of the Videostore section and the subscription to TIMvision TV. But remember, to keep your subscription active it is necessary to store the data of your credit card.</p>\n<br/>\n<h4>TIM card with 5 euros of pre-paid traffic</h4>\n<p>Only TIM gives you the TIM SIM-Plus with 128 Kbytes of memory. The only card that allows you to exploit the full potential of your GSM and UMTS mobile phone, by offering the most advanced and innovative services.</p>',0,'beige-white-black',NULL,NULL),('Samsung Smart TV 50','TV and SmartLiving','SmartTV','Images/Devices/TV and SmartLiving/SmartTVSamsung.png','Samsung','Model 50JU6400 - 50&quot;','Ultra HD - 4K 3840 x 2160\nSoundbar HW-J250 included\nTIMvision included','26,08 &euro; for 36 months','<p>\r\nSeries: J5500 <br/>\r\nType: Full HD Led TV<br/>\r\nSmart Hub: Yes<br/>\r\n</p>\r\n<p>\r\nMotion Rate: 60&deg;<br/>\r\nScreen size: 49.5&quot; measured diagonally.<br/>\r\nResolution: 1920 x 1080<br/>\r\n<p>\r\nProcessor: Quad Core Bluetooth<br/>\r\nOSD Language: English, Spanish, French \r\n</p>\r\n<p> HDMI: 3      USB: 2     Ethernet: 1</p>\r\n<p>Weight: 29.5 lib.</p>','<h4>SoundBar - HWJ250</h4>\r\n                     <img class=\"imageInTab\" src=\"Images/Devices/Soundbar-HWJ250.png\"/>\r\n                    <p>A great audio experience in a compact format.\r\nThe perfect companion for your TV, it creates a great sound whatever you\'re watching. Two built-in speakers provide a crisp, high and well-balances mid-range, while another two built-in woofers take care of the bass. Enjoy the biggest sound for your TV Complement the images you see on screen with realistic, dramatic natural sound.</p>\r\n                    <h4>Subscription to the TIM Vision SmartLife Service</h4>\r\n                    <p>With the TIMvision subscription you can choose between cartoons, movies, TV series, documentaries, music and the last seven days of the main RAI channels and La7.\r\nYou can also purchase videos and films on Videostore.\r\n</p>',1,'black',1,'TV&Entertainment, installments'),('Tecnoware ERA Plus 900','TV and SmartLiving','others','Images/Devices/TV and SmartLiving/slider_era_plus_900_tecnoware_1.png',NULL,NULL,'','79,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('TIM  Modem 4G Wi-Fi','Modems And Networking',' Modems','Images/Devices/Modem e Networking/modem_wifi_4g.png',NULL,NULL,'','79,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('TIM Facile Maxi','Smartphones And Phones','Phone','Images/Devices/Smartphone e telefoni/slider_cordless_facile_maxi_1.png',NULL,NULL,'','39,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('TIM Facile Smile','Smartphones And Phones','Phone','Images/Devices/Smartphone e telefoni/prodotti_slider_facile_smile_rosso_01.png',NULL,NULL,'','39,90 &euro;',NULL,NULL,NULL,NULL,1,'Landline'),('TIM Modem Adsl Wi-Fi','Modems And Networking','Modems','Images/Devices/Modem e Networking/modem-adsl-new.png',NULL,NULL,'','69,00 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('TIM Modem Wi-Fi Car Pack 4G','Modems And Netowrking','Modems','Images/Devices/Modem e Networking/TIM_Pack_WiFi_Car.png ',NULL,NULL,'','99,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL),('ZyXEL Repeater Wi-Fi AC750','Modems And Networking','','Images/Devices/Modem e Networking/repeater-zyxel.png',NULL,NULL,'','49,90 &euro;',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices-relatedas`
--

DROP TABLE IF EXISTS `devices-relatedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices-relatedas` (
  `Device-Name` varchar(255) NOT NULL,
  `AssistanceService-ID` int(11) NOT NULL,
  PRIMARY KEY (`Device-Name`,`AssistanceService-ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices-relatedas`
--

LOCK TABLES `devices-relatedas` WRITE;
/*!40000 ALTER TABLE `devices-relatedas` DISABLE KEYS */;
INSERT INTO `devices-relatedas` VALUES ('Samsung Galaxy S7',6),('Samsung Galaxy S7',10),('Samsung Galaxy S7',40),('Samsung Smart TV 50',7),('Samsung Smart TV 50',11),('Samsung Smart TV 50',41);
/*!40000 ALTER TABLE `devices-relatedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices-relatedsl`
--

DROP TABLE IF EXISTS `devices-relatedsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices-relatedsl` (
  `Device-Name` varchar(255) NOT NULL,
  `SLService-Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Device-Name`,`SLService-Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices-relatedsl`
--

LOCK TABLES `devices-relatedsl` WRITE;
/*!40000 ALTER TABLE `devices-relatedsl` DISABLE KEYS */;
INSERT INTO `devices-relatedsl` VALUES ('Samsung Galaxy S7','TIM Games'),('Samsung Galaxy S7','TIM Music'),('Samsung Galaxy S7','TIM Reading'),('Samsung Galaxy S7','TIM Wallet-Payments'),('Samsung Galaxy S7','TIM Wallet-Transport Tickets'),('Samsung Galaxy S7','TIMWallet-Coupons'),('Samsung Galaxy S7','TIMWallet-FidelityCard'),('Samsung Smart TV 50','TIM Vision');
/*!40000 ALTER TABLE `devices-relatedsl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faquestion`
--

DROP TABLE IF EXISTS `faquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faquestion` (
  `Question` varchar(255) NOT NULL,
  `Answer` text NOT NULL,
  `ASServiceID` int(11) NOT NULL,
  PRIMARY KEY (`Question`,`ASServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faquestion`
--

LOCK TABLES `faquestion` WRITE;
/*!40000 ALTER TABLE `faquestion` DISABLE KEYS */;
INSERT INTO `faquestion` VALUES ('I am already a registered user of the TIMVision Service. Do I have to register again?','No, you need to login with the username (email address) and password that you chose during registration.',11),('I am not a client of TIM ADSL; can I use TIMVision?','Yes, you can access all the TIMvision features and watch TV in the REPLAY FREE TV section. And you can purchase movies of the Videostore section and the subscription TIMvision TV, with the payment charged on your credit card (Visa, Mastercard or American Express) . But remember, to keep your subscription active it is necessary to store the data of your credit card.',11),('I am unable to watch the the videos.','Some display problems may depend on the quality of the ADSL line.\r\nYou\'ll want to check which type of video quality (HD, SD) can be displayed via the video quality tests that can find in the Settings menu Test ADSL line.\r\n\r\nWe remind you to always update your TV firmware.',11),('What is the registration procedure, and what is it useful for?','The registration for TIMvision is needed to assure safety in the purchases of securities and free viewing on other devices. You can register with a username (email) and password of your choice.\r\nTo complete the registration you will be required to confirm the link in the email sent to the address you provided. Remember that the username and password chosen will have tobe inserted on your Smart TV to login. Then it will no longer be required, unless you do not run the logout.\r\nWith the same credentials you will be able to login on all TIMvision compatible devices.',11);
/*!40000 ALTER TABLE `faquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `Name` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `Content` text,
  `Featured` tinyint(1) NOT NULL,
  `Introduction` text NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('PappanoInWeb','Images/WhoWeAre/Projects2.png','<p>\r\nFor the sixth year consecutively, PappanoInWeb returns. The project was born from the collaboration between TIM and the National Academy of Santa Cecilia.</p>\r\n<p>PappanoinWeb once a year presents a series of concerts of classical music, broadcasted <a href=\"#\">on its own site</a>.</p>            \r\n<p>There are also guides for the listeners, managed by a musicologue together with Maestro Antonio Pappano, to introduce the public to the history and the secrets of the songs.</p>\r\n<p>\r\nIn past editions, PappanoinWeb has been followed by more than  200.000 connected users, that also participated interacting on social networks.\r\nDiscover the program <a href=\"#\">here</a> (pdf format)</p>',1,'PappanoInWeb once a year presents a series of concerts of classical music, broadcasted on its own site. <br/>There are also guides for the listeners, managed by a musicologue together with Maestro Antonio Pappano, to introcude the public to the history and the secrets of the songs'),('Solidalitas Social Innovation','Images/WhoWeAre/Projects3.png','<p>How can enterprises and technology contribute to innovate the universe of No-Profit? What are the advantages of this collaboration in everyday operations?</p>\r\n<p>We discuss this and more on the 18th of November, at the Solidalitas Social Innovation Conference, an event dedicated to the projects in the Third Sector.</p>\r\n<p>\r\nIn this year\'s edition, we introduced the special prize Tim-WithYouWeDo. Among the projects that will be presented, 3 will be granted the opportunity to receive funds from our platform.</p>\r\n<p>\r\nThe event will take place at via Pantano 9, Milan (Assolombarda)</p>',0,''),('TIM Girls Hackaton','Images/WhoWeAre/Projects1.png','<p>TIM intends to introduce the world of women to coding, in order to contribute to counter the genre gap in scientific subjects.</p>\r\n<p>A marathon of about 7 hours will be organized. The challenge is to create your own app on a given theme, in only one day, even without any previous knowledge. It is possible to overcome this challenge, thanks to the TIM tutors that will accompany the student girls in this journey. It will be a day of learning in a challenging and stimulating environment, with the opportunity to know exceptional Mentors, that overcame prejudices and cultural boundaries.\r\n</p>\r\n<p>The event will take place on the 6th of April, 2016, in the cities of Padua, Florence, Cagliari and Bari.</p>',0,'');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sl-additionaldiv`
--

DROP TABLE IF EXISTS `sl-additionaldiv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sl-additionaldiv` (
  `ID` varchar(63) NOT NULL,
  `Content` text,
  `SLService-Name` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sl-additionaldiv`
--

LOCK TABLES `sl-additionaldiv` WRITE;
/*!40000 ALTER TABLE `sl-additionaldiv` DISABLE KEYS */;
/*!40000 ALTER TABLE `sl-additionaldiv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smartlifeservice`
--

DROP TABLE IF EXISTS `smartlifeservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smartlifeservice` (
  `Name` varchar(63) NOT NULL,
  `Category` varchar(63) NOT NULL,
  `Subcategory` varchar(63) DEFAULT NULL,
  `Introduction` text,
  `Description` text,
  `ActivationAndRules` text,
  `Price` varchar(63) DEFAULT NULL,
  `SLImagePath` varchar(255) NOT NULL,
  `RelatedProductsImagePath` varchar(255) DEFAULT NULL,
  `InPromotion` tinyint(1) DEFAULT NULL,
  `PromotionCategory` varchar(45) DEFAULT NULL,
  `Featured` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smartlifeservice`
--

LOCK TABLES `smartlifeservice` WRITE;
/*!40000 ALTER TABLE `smartlifeservice` DISABLE KEYS */;
INSERT INTO `smartlifeservice` VALUES ('App SerieA TIM','TV&Entertainment','Football Serie A',NULL,NULL,NULL,NULL,'Images/SLServices/Football1.png',NULL,NULL,NULL,0),('Chromecast','TV&Entertainment','TV',NULL,NULL,NULL,NULL,'Images/SLServices/TV5.png',NULL,NULL,NULL,0),('E-Book Store di TIM','TV&Entertainment','TIM Reading',NULL,NULL,NULL,NULL,'Images/SLServices/Reading3-4.png',NULL,NULL,NULL,0),('I love Games','TV&Entertainment','TIM Games',NULL,NULL,NULL,NULL,'Images/SLServices/Games1-2.png',NULL,NULL,NULL,0),('I love Mags','TV&Entertainment','TIM Reading',NULL,NULL,NULL,NULL,'Images/SLServices/Reading2-2bis.png',NULL,NULL,NULL,0),('Sfoglio Digitale','TV&Entertainment','TIM Reading',NULL,NULL,NULL,NULL,'Images/SLServices/Reading1.png',NULL,NULL,NULL,0),('TIM Home Connect','Home',NULL,'The ideal solution to manage all your domotic systems in your house; ranging from house protection systems, to temperature control, to monitoring services.',NULL,NULL,NULL,'Images/SLServices/Home-TimHomeConnect.png',NULL,NULL,NULL,0),('TIM Music','TV&Entertainment','TIM Music',NULL,NULL,NULL,NULL,'Images/SLServices/Music1.png',NULL,NULL,NULL,0),('TIM Netflix','TV&Entertainment','TV',NULL,NULL,NULL,NULL,'Images/SLServices/TV3.png',NULL,NULL,NULL,0),('TIM Premium Online','TV&Entertainment','TV',NULL,NULL,NULL,NULL,'Images/SLServices/TV4.png',NULL,NULL,NULL,0),('TIM Sky','TV&Entertainment','TV',NULL,NULL,NULL,'39,90 &euro; /month for 1 year','Images/SLServices/TV2.png',NULL,1,'TV&Entertainment, installments',0),('TIM Tag','Home',NULL,'TIM Tag is the tool that keeps you informed on the location of your four-legged friend, and of your most cherished pets. \r\nFollow in real time his movements on your smartphone, without ever losing track of him!','<p>TIMTag is the tool that keeps you informed on the location of your four-legged friend, and of your most cherished pets.\nFollow in real-time his movements on your smartphone, without ever losing track of him!</p>\n<p>TIMTag is a TIM offer that includes a GPS Tracker with 12 months of TIMTag Service included in the price!<br/>\nThe TIMTag Promo option includes the data traffic (data + SMS) from the GPS Tracker to your platform. Maximum: 50 MB and 100SMS during 30 days.\nThe cost of TImTag for the first 12 months is only 129&euro;!<br/>\nThe package contains:<br/>\n    - GPS Tracker<br/>\n    - 12 months of TIMTag service included in the TIM Card<br/>\n    - 1 TIM Card </p>\n\n\n','<p>The offer can only be activated on the TIM Card contained in the product packaging.\r\nThe TIM Card does not provide for the activation fee of 5 &euro;. </p>\r\n<p>The TIMTag offer will be activated within a maximum of 48 hours after the request (an SMS will confirm the successful activation).\r\nThe 50MB and 100SMS bundle is counted to prepaid unit increments of 1 KB and is renewed automatically every 30 days: the relevant internet and SMS traffic consumed in the reference month (30 days) is set to zero. </p>\r\n<p>Internet traffic included in the offer is valid for Internet browsing in Italy on APN ibox.tim.it.<br/>\r\nAt maturity, unless terminated, the TIMTag option will remain active for 5 &euro; / month, extracted from the  TIM Card \'s credit. </p>\r\n<p>You can check the regular activation, the monthly renewal the amount and maturity of the remaining traffic these 2 ways:<br/>\r\n - online directly to the section MyTIM Site Mobile;<br/>\r\n - contacting Customer Service 119.</p>',NULL,'Images/SLServices/Home-Categories1.png',NULL,NULL,NULL,0),('TIM Vision','TV&Entertainment','TV','With the TIMvision subscription you can choose between cartoons, movies, TV series, documentaries. music and the last seven days of the main RAI channels and La7.\n                        <br/>Anywhere, anytime.','<p>With the TIMvision subscription you can choose between cartoons, movies, TV series, documentaries, music and the last seven days of the main RAI channels and La7.\n                    Anywhere, anytime.<br/>\n                    More than 8,000 titles available, always on demand, to create your own schedule without commercial interruptions.\n                    </p>\n                    <p>The other component of TIMVision is Videostore. Videostore is a rich video library from which you can rent or purchase the latest movies, series and cartoons.\n                    </p>\n                    <p>The purchase or rental of the products included in the catalog is permitted from any fixed and mobile line.<br/>\n                    You can pay online with credit cards Visa, Mastercard, American Express. Payment by mobile app on Tablet / Smartphone can be done with the remaining credit / TIM account or credit card.\n                    </p>','<h5>How to subscribe</h5>\n                    <p>You can subscribe to the TIMVision Service:\n                        <br/>- from this site, adding it to the basket\n                        <br/>- from the mobile app\n                        <br/>- or in a TIM shop.\n                        <br/>In case you use the TIMVision mobile app: Download it from the App Store and enter the Membership section. You can choose as payment the remaining credit or your credit card.\n                    </p>\n                    <h5>Costs</h5>\n                    <p>Service costs: 1 &euro; for the first month, then 5 &euro; per month.<br/>\n                    The contract length is indefinite. If a customer wishes to terminate the contract, she must access the TIMVision app from mobile or TV, and use the specific function.</p>\n                    <h5>From where can I use the service?</h5>\n                    <p>Any TV, using the specific TIMVision Decoder.<br/>\n                        Smart TVs and Blu-rays (Samsung e LG). The site timvision.it. The TIMvision app for PC, Tablet e Smartphone.\n                        <br/>note: A subscription to the service is valid for up to 6 devices.\n                    </p>','1&euro; + 5&euro;/month','Images/SLServices/TV-TimVision1.jpg','Images/SLServices/TV1.png',1,'TV&Entertainment, Mobile, installments',1),('TIMWallet-Coupons','Person',NULL,NULL,NULL,NULL,NULL,'x',NULL,NULL,NULL,0),('TimWallet-FidelityCard','Person',NULL,NULL,NULL,NULL,NULL,'x',NULL,NULL,NULL,0),('TIMWallet-Payments','Person',NULL,NULL,NULL,NULL,NULL,'x',NULL,NULL,NULL,0),('TIMWallet-TransportTickets','Person',NULL,NULL,NULL,NULL,NULL,'x',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `smartlifeservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonial` (
  `Title` varchar(255) NOT NULL,
  `ImagePath` varchar(255) NOT NULL,
  `videoPath` varchar(255) DEFAULT NULL,
  `Comment` text,
  PRIMARY KEY (`Title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial`
--

LOCK TABLES `testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` VALUES ('Fabio Fazio','Images/WhoWeAre/TestimonialsFabioFazio2.jpg',NULL,'<p>Today we can think, create and communicate in ways that in the past we would have never imagined.<br/>\r\nWhatever the present, the future will surprise us.</p>'),('Fabio Fazio interviews Tim Berners-Lee','Images/WhoWeAre/TestimonialsInterview.png',NULL,NULL),('Pif','Images/WhoWeAre/TestimonialsPif.jpg',NULL,'<p>Infinite connections foster an infinite curiosity. New technologies are evolving more rapidly than our questions.</p>'),('Tim Berners-Lee','Images/WhoWeAre/TestimonialsTBL.jpg',NULL,'<p>Technology allows us to share ideas, to find answers that no one could have found on their own.<br/>It is also important to listen to other people. When we do both things, we become a part of something much larger than ourselves.</p>');
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-25 15:13:12
