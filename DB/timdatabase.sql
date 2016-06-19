-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 19, 2016 alle 11:01
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timdatabase`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `as-descriptiondiv`
--

CREATE TABLE `as-descriptiondiv` (
  `Title` varchar(255) NOT NULL,
  `Content` text,
  `ASService-Name` varchar(63) NOT NULL,
  `ASService-Subcategory` varchar(63) NOT NULL,
  `Highlights` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `as-descriptiondiv`
--

INSERT INTO `as-descriptiondiv` (`Title`, `Content`, `ASService-Name`, `ASService-Subcategory`, `Highlights`) VALUES
('First Installation', 'If you activated the TIM Smart Fiber Offer with the auto-install option, follow the instructions in the guides and in the video to connect the phones and the TIM Fiber Modem for the first time.\r\nIMMAGINI\r\nThe auto-installing Fiber Package contains:\r\n\r\n    The box with the Fiber Modem, with the power supply, the filter and the cables.\r\n    The box with 2 cordless phones.\r\n    The specific Guide for the auto-installing Fiber Package.\r\nIMMAGINI', 'Fiber', 'ADSL and Fiber', 1),
('Formats and type of content', '...', 'Discover TIM Vision', 'TIM Vision', NULL),
('How to subscribe', 'TIM Vision subscription can be done in different ways. </br><ul><li>If you''re a Tim customer, you can directly ask online, in our <a href="#">OFFERS</a> area or, if you prefer, in our Tim shops</li><li>You can ask for a subscription also contacting our Online Service 187 or 119</li></ul>If you have a compatible Smart TV you can subscribe through "TIM Vision TV" area.<ul><li>You can choose, as payment method, Tim landaline invoice charge or your Visa, Mastercard or American Express credit card.</li><li>For landline invoice charge you must be an ADLS/Fiber TIM customer and you have to make the purchase through the home landline. In this case you will asked to set a PIN in order to improve security</li></ul>If you''re a landline customer of another company you can subscribe to TIM Vision paying with your credit card.</br> Another easy way to subscribe is through the Tablet/Smartphone app. Download TIMVision app and enter "TIM Vision TV" area. You can choose your remaining credit or a credit card as payment method.', 'Discover TIM Vision', 'TIM Vision', NULL),
('Videostore-watch film for rent', '...', 'Discover TIM Vision', 'TIM Vision', NULL),
('What can i watch with TIM Vision', 'With TIMvision film, TV series, cartoons and more, always on demand or withouth commercial interruptions. </br> In TIMVIsion TV you find more than 6000 films  included in the subscription: a rich offer of various kind of films, complete seasons of the best TV series, cartoons and youth programs documentaries concert reportage.</br>In FREE TV area you can find TV Replay, WEB TV and LA7 and MTV archives.</br>In TV replay you have at your disposal all precedent week programs of RAI, LA7, MTV main networks.</br>In WEB TV you have the access to WEB videos, distributed for free on Internet. Video contents are organized in topic sections for a faster research and can be live or deferred distributed.</br>In Videostore section you can rent for 48 hours or buy choosing among over 2500 of the best films, with charge on landline invoice or credit card. In Videostore-my purchases area you can find all your rent/bought films yet available.', 'Discover TIM Vision', 'TIM Vision', NULL),
('What is TIM Vision', 'TIMvision is the new answer to the entertainment needs of all the members of the family.\r\nIt is TIM''s on-demand TV. Via an ADSL or Fiber connection it allows you to enjoy thousands of titles: great cinema, the most exciting TV series, the most loved cartoons and\r\nmuch more, like documentaries, reportage and music.\r\nThe TIMvision customers have access to:\r\n\r\n     TIMvision TV\r\n     Videostore\r\n     Free replay TV\r\n\r\nThe TIMvision subscription allows you to watch all the content on the PC, Smart TV or TV with decoder,\r\ntablets and smartphones without using Giga, anytime, anywhere.', 'Discover TIM Vision', 'TIM Vision', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `assistanceservice`
--

CREATE TABLE `assistanceservice` (
  `Name` varchar(63) NOT NULL,
  `Category` varchar(63) NOT NULL,
  `SubCategory` varchar(63) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `assistanceservice`
--

INSERT INTO `assistanceservice` (`Name`, `Category`, `SubCategory`, `ID`) VALUES
('ADSL modem', 'Technical support and configuration', 'ADSL and fiber', 1),
('Configurations and manuals', 'Technical support and configuration', 'Smartphone and tablet', 2),
('Configure online', 'Technical support and configuration', 'Smartphone and tablet', 3),
('Devices for Tim Games', 'SmartLife', 'TIM Games', 4),
('Devices for Tim Music', 'SmartLife', 'TIM Music', 5),
('Devices for Tim Reading', 'SmartLife', 'TIM Reading', 6),
('Devices for Tim Vision', 'SmartLife', 'TIM Vision', 7),
('Discover Tim Games', 'SmartLife', 'TIM Games', 8),
('Discover Tim Music', 'SmartLife', 'TIM Music', 9),
('Discover Tim Reading', 'SmartLife', 'TIM Reading', 10),
('Discover TIM Vision', 'SmartLife', 'TIM Vision', 11),
('Enable/disable content services (CSP) and phone services', 'Line management and services', 'Mobile', 12),
('Enable/disable phone services', 'Line management and services', 'Landline', 13),
('Fiber', 'Technical support and configuration', 'ADSL and fiber', 14),
('How to recharge', 'Line management and services', 'Mobile', 15),
('Inbox configuration', 'Technical support and configuration', 'Mail', 16),
('Installments promotions', 'Monitoring costs and payments', 'Mobile', 17),
('Internet surfing', 'Monitoring costs and payments', 'Mobile', 18),
('Invoices and payments', 'Monitoring costs and payments', 'Landline', 19),
('ISDN line', 'Technical support and configuration', 'Landline', 20),
('Join TIM with a mobile line', 'Line management and services', 'Do you need help to join TIM', 21),
('Landline issues', 'Technical support and configuration', 'Landline', 22),
('Line management', 'Line management and services', 'Landline', 23),
('Mail configuration', 'Technical support and configuration', 'Smartphone and tablet', 24),
('Mail issues', 'Technical support and configuration', 'Mail', 25),
('Mobile line management when you''re aboard', 'Line management and services', 'Mobile', 26),
('MyTim landline', 'Monitoring costs and payments', 'What can you do online', 27),
('MyTim mobile', 'Monitoring costs and payments', 'What can you do online', 28),
('Navigation issues', 'Technical support and configuration', 'Navigation', 29),
('Navigation settings', 'Technical support and configuration', 'Navigation', 30),
('Network resource', 'Technical support and configuration', 'ADSL and fiber', 31),
('New Smart for landline and mobile ', 'Line management and services', 'Do you need help to join TIM', 32),
('Online recharge', 'Line management and services', 'What can you do online', 33),
('Online shopping', 'Line management and services', 'What can you do online', 34),
('Phone services guide', 'Technical support and configuration', 'Landline', 35),
('Premium online', 'Technical support and configuration', 'TV decoder', 36),
('Rechargeable', 'Monitoring costs and payments', 'Mobile', 37),
('Service management', 'SmartLife', 'TIM Games', 38),
('Service management', 'SmartLife', 'TIM Music', 39),
('Service management', 'SmartLife', 'TIM Reading', 40),
('Service management', 'SmartLife', 'TIM Vision', 41),
('Services for your smartphone', 'Technical support and configuration', 'Smartphone and tablet', 42),
('SIM management', 'Line management and services', 'Mobile', 43),
('Subscription', 'Monitoring costs and payments', 'Mobile', 44),
('Tim mail guide', 'Technical support and configuration', 'Mail', 45),
('Tim SKY', 'Technical support and configuration', 'TV decoder', 46),
('Tim Vision', 'Technical support and configuration', 'TV decoder', 47),
('Username and password', 'Technical support and configuration', 'Mail', 48),
('Wi-fi repeater', 'Technical support and configuration', 'ADSL and fiber', 49),
('MyTim landline', 'Line management and services', 'What can you do online', 50),
('MyTim mobile', 'Line management and services', 'What can you do online', 51);

-- --------------------------------------------------------

--
-- Struttura della tabella `device`
--

CREATE TABLE `device` (
  `Name` varchar(63) NOT NULL,
  `Category` varchar(63) NOT NULL,
  `SubCategory` varchar(63) NOT NULL,
  `ImagePath` varchar(255) NOT NULL,
  `Vendor` varchar(63) DEFAULT NULL,
  `Model` varchar(63) DEFAULT NULL,
  `Characteristics` varchar(1023) DEFAULT NULL,
  `Price` varchar(63) NOT NULL,
  `Specifications` text,
  `IncludedInThePrice` text,
  `Outlet` tinyint(1) DEFAULT NULL,
  `Colors` varchar(63) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `device`
--

INSERT INTO `device` (`Name`, `Category`, `SubCategory`, `ImagePath`, `Vendor`, `Model`, `Characteristics`, `Price`, `Specifications`, `IncludedInThePrice`, `Outlet`, `Colors`) VALUES
('Beats Solo2 On-Ear Headphones', 'TV and SmartLiving', 'others', 'Images/Devices/TV and SmartLiving/beats-solo2-on-ear-red-1.png', NULL, NULL, NULL, '199,90 &euro;', NULL, NULL, NULL, NULL),
('Chiavetta TIM 42.2', 'Modems And Networking', 'Internet Keys', 'Images/Devices/Modem e Networking/Chiavetta42.2.png', NULL, NULL, NULL, '29,90 &euro;', NULL, NULL, NULL, NULL),
('iPhone 6S', 'Smartphones And Phones', 'Smartphone', 'Images/Devices/Smartphone e telefoni/apple-iPhone6s_SpGry-1.png', NULL, NULL, NULL, '789,90 &euro;', NULL, NULL, NULL, NULL),
('LG G5', 'Smartphones And Phones', 'Smartphone', 'Images/Devices/Smartphone e telefoni/LG_G5_titan_01_1.png', NULL, NULL, NULL, '699,90 &euro;', NULL, NULL, NULL, NULL),
('LG Nexus 5x', 'Smartphones And Phones', 'Smartphone', 'Images/Devices/Smartphone e telefoni/LG-NEXUS5-BLACK-5.png', NULL, NULL, NULL, '449,90 &euro;', NULL, NULL, NULL, NULL),
('Polar Loop Activity Tracker', 'TV and SmartLiving', 'Smartwatch', 'Images/Devices/TV and SmartLiving/Polar_loop_blk_760x760.png', NULL, NULL, NULL, '99,90 &euro;', NULL, NULL, NULL, NULL),
('Samsung Galaxy Gear S', 'TV and SmartLiving', 'Smartwatch', 'Images/Devices/TV and SmartLiving/samsung-galaxy-gear-s-1_0.png', NULL, NULL, NULL, '389,90 &euro;', NULL, NULL, NULL, NULL),
('Samsung Galaxy S7', 'Smartphones and Phones', 'Smartphone', 'Images/Devices/Smartphone e telefoni/SAMSUNG_S7_Black_02.png', 'Samsung', 'Smartphone Galaxy S7 Edge', 'Android OS 6.0\r\nDisplay 5.5\r\nOctaCore CPU (QuadCore 2.3GHz + QuadCore 1.6 GHz)', '729,90 &euro;', '<h4>Technology</h4>\n<p>4G cat.9/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100</p>\n<h4>Connectivity</h4>\n<p>Wi-Fi - Bluetooth - Micro USB - NFC</p>\n<h4>GPS</h4>\n<p>integrated</p>\n<h4>Display</h4>\n<p>5.1&quot; 16 Million colors - Touch</p>', '<h4>22 GB free of 4G Internet for 30 days</h4>\n<p>You can access all the functions of TIMvision and watch TV in the REPLAY FREE TV section. Using your credit card (Visa, Mastercard or American Express) you can purchase the movies of the Videostore section and the subscription to TIMvision TV. But remember, to keep your subscription active it is necessary to store the data of your credit card.</p>\n<br/>\n<h4>TIM card with 5 euros of pre-paid traffic</h4>\n<p>Only TIM gives you the TIM SIM-Plus with 128 Kbytes of memory. The only card that allows you to exploit the full potential of your GSM and UMTS mobile phone, by offering the most advanced and innovative services.</p>', 0, 'beige-white-black'),
('Samsung Smart TV 50', 'TV and SmartLiving', 'SmartTV', 'Images/Devices/TV and SmartLiving/SmartTVSamsung.png', 'Samsung', 'Model 50JU6400 - 50&quot;', 'Ultra HD - 4K 3840 x 2160\nSoundbar HW-J250 included\nTIMvision included', '26,08 &euro; for 36 months', '<p>\r\nSeries: J5500 <br/>\r\nType: Full HD Led TV<br/>\r\nSmart Hub: Yes<br/>\r\n</p>\r\n<p>\r\nMotion Rate: 60&deg;<br/>\r\nScreen size: 49.5&quot; measured diagonally.<br/>\r\nResolution: 1920 x 1080<br/>\r\n<p>\r\nProcessor: Quad Core Bluetooth<br/>\r\nOSD Language: English, Spanish, French \r\n</p>\r\n<p> HDMI: 3      USB: 2     Ethernet: 1</p>\r\n<p>Weight: 29.5 lib.</p>', '<h4>SoundBar - HWJ250</h4>\r\n                     <img class="imageInTab" src="Images/Devices/Soundbar-HWJ250.png"/>\r\n                    <p>A great audio experience in a compact format.\r\nThe perfect companion for your TV, it creates a great sound whatever you''re watching. Two built-in speakers provide a crisp, high and well-balances mid-range, while another two built-in woofers take care of the bass. Enjoy the biggest sound for your TV Complement the images you see on screen with realistic, dramatic natural sound.</p>\r\n                    <h4>Subscription to the TIM Vision SmartLife Service</h4>\r\n                    <p>With the TIMvision subscription you can choose between cartoons, movies, TV series, documentaries, music and the last seven days of the main RAI channels and La7.\r\nYou can also purchase videos and films on Videostore.\r\n</p>', 1, 'black'),
('Tecnoware ERA Plus 900', 'TV and SmartLiving', 'others', 'Images/Devices/TV and SmartLiving/slider_era_plus_900_tecnoware_1.png', NULL, NULL, NULL, '79,90 &euro;', NULL, NULL, NULL, NULL),
('TIM  Modem 4G Wi-Fi', 'Modems And Networking', ' Modems', 'Images/Devices/Modem e Networking/modem_wifi_4g.png', NULL, NULL, NULL, '79,90 &euro;', NULL, NULL, NULL, NULL),
('TIM Facile Maxi', 'Smartphones And Phones', 'Phone', 'Images/Devices/Smartphone e telefoni/slider_cordless_facile_maxi_1.png', NULL, NULL, NULL, '39,90 &euro;', NULL, NULL, NULL, NULL),
('TIM Facile Smile', 'Smartphones And Phones', 'Phone', 'Images/Devices/Smartphone e telefoni/prodotti_slider_facile_smile_rosso_01.png', NULL, NULL, NULL, '39,90 &euro;', NULL, NULL, NULL, NULL),
('TIM Modem Adsl Wi-Fi', 'Modems And Networking', 'Modems', 'Images/Devices/Modem e Networking/modem-adsl-new.png', NULL, NULL, NULL, '69,00 &euro;', NULL, NULL, NULL, NULL),
('TIM Modem Wi-Fi Car Pack 4G', 'Modems And Netowrking', 'Modems', 'Images/Devices/Modem e Networking/TIM_Pack_WiFi_Car.png ', NULL, NULL, NULL, '99,90 &euro;', NULL, NULL, NULL, NULL),
('ZyXEL Repeater Wi-Fi AC750', 'Modems And Networking', '', 'Images/Devices/Modem e Networking/repeater-zyxel.png', NULL, NULL, NULL, '49,90 &euro;', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `devices-relatedas`
--

CREATE TABLE `devices-relatedas` (
  `Device-Name` varchar(255) NOT NULL,
  `AssistanceService-ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `devices-relatedas`
--

INSERT INTO `devices-relatedas` (`Device-Name`, `AssistanceService-ID`) VALUES
('Samsung Galaxy S7', 6),
('Samsung Galaxy S7', 10),
('Samsung Galaxy S7', 40),
('Samsung Smart TV 50', 7),
('Samsung Smart TV 50', 11),
('Samsung Smart TV 50', 41);

-- --------------------------------------------------------

--
-- Struttura della tabella `devices-relatedsl`
--

CREATE TABLE `devices-relatedsl` (
  `Device-Name` varchar(255) NOT NULL,
  `SLService-Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `devices-relatedsl`
--

INSERT INTO `devices-relatedsl` (`Device-Name`, `SLService-Name`) VALUES
('Samsung Galaxy S7', 'TIM Games'),
('Samsung Galaxy S7', 'TIM Music'),
('Samsung Galaxy S7', 'TIM Reading'),
('Samsung Galaxy S7', 'TIM Wallet-Payments'),
('Samsung Galaxy S7', 'TIM Wallet-Transport Tickets'),
('Samsung Galaxy S7', 'TIMWallet-Coupons'),
('Samsung Galaxy S7', 'TIMWallet-FidelityCard'),
('Samsung Smart TV 50', 'TIM Vision');

-- --------------------------------------------------------

--
-- Struttura della tabella `faquestion`
--

CREATE TABLE `faquestion` (
  `Question` varchar(255) NOT NULL,
  `Answer` text NOT NULL,
  `ASService-Name` varchar(63) NOT NULL,
  `ASService-Subcategory` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `faquestion`
--

INSERT INTO `faquestion` (`Question`, `Answer`, `ASService-Name`, `ASService-Subcategory`) VALUES
('I am already a registered user of the TIMVision Service. Do I have to register again?', 'No, you need to login with the username (email address) and password that you chose during registration.', 'Discover TIM Vision', 'TIM Vision'),
('I am not a client of TIM ADSL; can I use TIMVision?', 'Yes, you can access all the TIMvision features and watch TV in the REPLAY FREE TV section. And you can purchase movies of the Videostore section and the subscription TIMvision TV, with the payment charged on your credit card (Visa, Mastercard or American Express) . But remember, to keep your subscription active it is necessary to store the data of your credit card.', 'Discover TIM Vision', 'TIM Vision'),
('I am unable to watch the the videos.', 'Some display problems may depend on the quality of the ADSL line.\r\nYou''ll want to check which type of video quality (HD, SD) can be displayed via the video quality tests that can find in the Settings menu Test ADSL line.\r\n\r\nWe remind you to always update your TV firmware.', 'Discover TIM Vision', 'TIM Vision'),
('What is the registration procedure, and what is it useful for?', 'The registration for TIMvision is needed to assure safety in the purchases of securities and free viewing on other devices. You can register with a username (email) and password of your choice.\r\nTo complete the registration you will be required to confirm the link in the email sent to the address you provided. Remember that the username and password chosen will have tobe inserted on your Smart TV to login. Then it will no longer be required, unless you do not run the logout.\r\nWith the same credentials you will be able to login on all TIMvision compatible devices.', 'Discover TIM Vision', 'TIM Vision');

-- --------------------------------------------------------

--
-- Struttura della tabella `project`
--

CREATE TABLE `project` (
  `Name` varchar(255) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `Content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `project`
--

INSERT INTO `project` (`Name`, `imagePath`, `Content`) VALUES
('PappanoInWeb', 'Images/WhoWeAre/Projects2.png', '<p>\r\nFor the sixth year consecutively, PappanoInWeb returns. The project was born from the collaboration between TIM and the National Academy of Santa Cecilia.</p>\r\n<p>PappanoinWeb once a year presents a series of concerts of classical music, broadcasted <a href="#">on its own site</a>.</p>            \r\n<p>There are also guides for the listeners, managed by a musicologue together with Maestro Antonio Pappano, to introduce the public to the history and the secrets of the songs.</p>\r\n<p>\r\nIn past editions, PappanoinWeb has been followed by more than  200.000 connected users, that also participated interacting on social networks.\r\nDiscover the program <a href="#">here</a> (pdf format)</p>'),
('Solidalitas Social Innovation', 'Images/WhoWeAre/Projects3.png', '<p>How can enterprises and technology contribute to innovate the universe of No-Profit? What are the advantages of this collaboration in everyday operations?</p>\r\n<p>We discuss this and more on the 18th of November, at the Solidalitas Social Innovation Conference, an event dedicated to the projects in the Third Sector.</p>\r\n<p>\r\nIn this year''s edition, we introduced the special prize Tim-WithYouWeDo. Among the projects that will be presented, 3 will be granted the opportunity to receive funds from our platform.</p>\r\n<p>\r\nThe event will take place at via Pantano 9, Milan (Assolombarda)</p>'),
('TIM Girls Hackaton', 'Images/WhoWeAre/Projects1.png', '<p>TIM intends to introduce the world of women to coding, in order to contribute to counter the genre gap in scientific subjects.</p>\r\n<p>A marathon of about 7 hours will be organized. The challenge is to create your own app on a given theme, in only one day, even without any previous knowledge. It is possible to overcome this challenge, thanks to the TIM tutors that will accompany the student girls in this journey. It will be a day of learning in a challenging and stimulating environment, with the opportunity to know exceptional Mentors, that overcame prejudices and cultural boundaries.\r\n</p>\r\n<p>The event will take place on the 6th of April, 2016, in the cities of Padua, Florence, Cagliari and Bari.</p>');

-- --------------------------------------------------------

--
-- Struttura della tabella `sl-additionaldiv`
--

CREATE TABLE `sl-additionaldiv` (
  `ID` varchar(63) NOT NULL,
  `Content` text,
  `SLService-Name` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlifeservice`
--

CREATE TABLE `smartlifeservice` (
  `Name` varchar(63) NOT NULL,
  `Category` varchar(63) NOT NULL,
  `Subcategory` varchar(63) DEFAULT NULL,
  `Comment` text,
  `Description` text,
  `ActivationAndRules` text,
  `Price` varchar(63) DEFAULT NULL,
  `SLImagePath` varchar(255) NOT NULL,
  `InPromotion` tinyint(1) DEFAULT NULL,
  `RelatedProductsImagePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `smartlifeservice`
--

INSERT INTO `smartlifeservice` (`Name`, `Category`, `Subcategory`, `Comment`, `Description`, `ActivationAndRules`, `Price`, `SLImagePath`, `InPromotion`, `RelatedProductsImagePath`) VALUES
('App SerieA TIM', 'TV&Entertainment', 'Football Serie A', NULL, NULL, NULL, NULL, 'Images/SLServices/Football1.png', NULL, NULL),
('Chromecast', 'TV&Entertainment', 'TV', NULL, NULL, NULL, NULL, 'Images/SLServices/TV5.png', NULL, NULL),
('E-Book Store di TIM', 'TV&Entertainment', 'TIM Reading', NULL, NULL, NULL, NULL, 'Images/SLServices/Reading3-4.png', NULL, NULL),
('I love Games', 'TV&Entertainment', 'TIM Games', NULL, NULL, NULL, NULL, 'Images/SLServices/Games1-2.png', NULL, NULL),
('I love Mags', 'TV&Entertainment', 'TIM Reading', NULL, NULL, NULL, NULL, 'Images/SLServices/Reading2-2bis.png', NULL, NULL),
('Sfoglio Digitale', 'TV&Entertainment', 'TIM Reading', NULL, NULL, NULL, NULL, 'Images/SLServices/Reading1.png', NULL, NULL),
('TIM Home Connect', 'Home', NULL, 'The ideal solution to manage all your domotic systems in your house; ranging from house protection systems, to temperature control, to monitoring services.', NULL, NULL, NULL, 'Images/SLServices/Home-TimHomeConnect.png', NULL, NULL),
('TIM Music', 'TV&Entertainment', 'TIM Music', NULL, NULL, NULL, NULL, 'Images/SLServices/Music1.png', NULL, NULL),
('TIM Netflix', 'TV&Entertainment', 'TV', NULL, NULL, NULL, NULL, 'Images/SLServices/TV3.png', NULL, NULL),
('TIM Premium Online', 'TV&Entertainment', 'TV', NULL, NULL, NULL, NULL, 'Images/SLServices/TV4.png', NULL, NULL),
('TIM Sky', 'TV&Entertainment', 'TV', NULL, NULL, NULL, NULL, 'Images/SLServices/TV2.png', NULL, NULL),
('TIM Tag', 'Home', NULL, 'TIM Tag is the tool that keeps you informed on the location of your four-legged friend, and of your most cherished pets. \r\nFollow in real time his movements on your smartphone, without ever losing track of him!', NULL, NULL, NULL, 'Images/SLServices/Home-Categories1.png', NULL, NULL),
('TIM Vision', 'TV&Entertainment', 'TV', NULL, '<p>With the TIMvision subscription you can choose between cartoons, movies, TV series, documentaries, music and the last seven days of the main RAI channels and La7.\n                    Anywhere, anytime.<br/>\n                    More than 8,000 titles available, always on demand, to create your own schedule without commercial interruptions.\n                    </p>\n                    <p>The other component of TIMVision is Videostore. Videostore is a rich video library from which you can rent or purchase the latest movies, series and cartoons.\n                    </p>\n                    <p>The purchase or rental of the products included in the catalog is permitted from any fixed and mobile line.<br/>\n                    You can pay online with credit cards Visa, Mastercard, American Express. Payment by mobile app on Tablet / Smartphone can be done with the remaining credit / TIM account or credit card.\n                    </p>', '<h5>How to subscribe</h5>\n                    <p>You can subscribe to the TIMVision Service:\n                        <br/>- from this site, adding it to the basket\n                        <br/>- from the mobile app\n                        <br/>- or in a TIM shop.\n                        <br/>In case you use the TIMVision mobile app: Download it from the App Store and enter the Membership section. You can choose as payment the remaining credit or your credit card.\n                    </p>\n                    <h5>Costs</h5>\n                    <p>Service costs: 1 &euro; for the first month, then 5 &euro; per month.<br/>\n                    The contract length is indefinite. If a customer wishes to terminate the contract, she must access the TIMVision app from mobile or TV, and use the specific function.</p>\n                    <h5>From where can I use the service?</h5>\n                    <p>Any TV, using the specific TIMVision Decoder.<br/>\n                        Smart TVs and Blu-rays (Samsung e LG). The site timvision.it. The TIMvision app for PC, Tablet e Smartphone.\n                        <br/>note: A subscription to the service is valid for up to 6 devices.\n                    </p>', '1&euro; + 5&euro;/month', 'Images/SLServices/TV-TimVision1.jpg', 0, 'Images/SLServices/TV1.png'),
('TIMWallet-Coupons', 'Person', NULL, NULL, NULL, NULL, NULL, 'x', NULL, NULL),
('TimWallet-FidelityCard', 'Person', NULL, NULL, NULL, NULL, NULL, 'x', NULL, NULL),
('TIMWallet-Payments', 'Person', NULL, NULL, NULL, NULL, NULL, 'x', NULL, NULL),
('TIMWallet-TransportTickets', 'Person', NULL, NULL, NULL, NULL, NULL, 'x', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `testimonial`
--

CREATE TABLE `testimonial` (
  `Title` varchar(255) NOT NULL,
  `ImagePath` varchar(255) NOT NULL,
  `videoPath` varchar(255) DEFAULT NULL,
  `Comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `testimonial`
--

INSERT INTO `testimonial` (`Title`, `ImagePath`, `videoPath`, `Comment`) VALUES
('Fabio Fazio', 'Images/WhoWeAre/TestimonialsFabioFazio2.jpg', NULL, '<p>Today we can think, create and communicate in ways that in the past we would have never imagined.</p>\r\n<p>Whatever the present, the future will surprise us.</p>'),
('Fabio Fazio interviews Tim Berners-Lee', 'Images/WhoWeAre/TestimonialsInterview.png', NULL, NULL),
('Pif', 'Images/WhoWeAre/TestimonialsPif.jpg', NULL, '<p>Infinite connections foster an infinite curiosity. New technologies are evolving more rapidly than our questions.</p>'),
('Tim Berners-Lee', 'Images/WhoWeAre/TestimonialsTBL.jpg', NULL, '<p>Technology allows us to share ideas, to find answers that no one could have found on their own.</p>\r\n<p>It is also important to listen to other people. When we do both things, we become a part of something much larger than ourselves.</p>');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `as-descriptiondiv`
--
ALTER TABLE `as-descriptiondiv`
  ADD PRIMARY KEY (`Title`,`ASService-Name`,`ASService-Subcategory`);

--
-- Indici per le tabelle `assistanceservice`
--
ALTER TABLE `assistanceservice`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`Name`);

--
-- Indici per le tabelle `devices-relatedas`
--
ALTER TABLE `devices-relatedas`
  ADD PRIMARY KEY (`Device-Name`,`AssistanceService-ID`);

--
-- Indici per le tabelle `devices-relatedsl`
--
ALTER TABLE `devices-relatedsl`
  ADD PRIMARY KEY (`Device-Name`,`SLService-Name`);

--
-- Indici per le tabelle `faquestion`
--
ALTER TABLE `faquestion`
  ADD PRIMARY KEY (`Question`,`ASService-Name`,`ASService-Subcategory`);

--
-- Indici per le tabelle `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Name`);

--
-- Indici per le tabelle `smartlifeservice`
--
ALTER TABLE `smartlifeservice`
  ADD PRIMARY KEY (`Name`);

--
-- Indici per le tabelle `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`Title`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `assistanceservice`
--
ALTER TABLE `assistanceservice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
