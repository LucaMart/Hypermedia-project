-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 15, 2016 alle 13:53
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
  `ASService-Subcategory` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `as-descriptiondiv`
--

INSERT INTO `as-descriptiondiv` (`Title`, `Content`, `ASService-Name`, `ASService-Subcategory`) VALUES
('First Installation', 'If you activated the TIM Smart Fiber Offer with the auto-install option, follow the instructions in the guides and in the video to connect the phones and the TIM Fiber Modem for the first time.\r\nIMMAGINI\r\nThe auto-installing Fiber Package contains:\r\n\r\n    The box with the Fiber Modem, with the power supply, the filter and the cables.\r\n    The box with 2 cordless phones.\r\n    The specific Guide for the auto-installing Fiber Package.\r\nIMMAGINI', 'Fiber', 'ADSL and Fiber'),
('How to subscribe', '...', 'Discover TIM Vision', 'TIM Vision'),
('What is TIM Vision', 'TIMvision is the new answer to the entertainment needs of all the members of the family.\r\nIt is TIM''s on-demand TV. Via an ADSL or Fiber connection it allows you to enjoy thousands of titles: great cinema, the most exciting TV series, the most loved cartoons and\r\nmuch more, like documentaries, reportage and music.\r\nThe TIMvision customers have access to:\r\n\r\n     TIMvision TV\r\n     Videostore\r\n     Free replay TV\r\n\r\nThe TIMvision subscription allows you to watch all the content on the PC, Smart TV or TV with decoder,\r\ntablets and smartphones without using Giga, anytime, anywhere.', 'Discover TIM Vision', 'TIM Vision');

-- --------------------------------------------------------

--
-- Struttura della tabella `assistanceservice`
--

CREATE TABLE `assistanceservice` (
  `Name` varchar(63) NOT NULL,
  `Category` varchar(63) NOT NULL,
  `SubCategory` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `assistanceservice`
--

INSERT INTO `assistanceservice` (`Name`, `Category`, `SubCategory`) VALUES
('Discover TIM Vision', 'SmartLife', 'TIM Vision'),
('Fiber', 'Tech Support', 'ADSL and Fiber');

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
('iPhone 6S', 'Smartphones And Phones', 'Smartphone', 'Images/Devices/Smartphone e telefoni/apple-iPhone6s_SpGry-1.png', NULL, NULL, NULL, '789,90 &euro;', NULL, NULL, NULL, NULL),
('LG G5', 'Smartphones And Phones', 'Smartphone', 'Images/Devices/Smartphone e telefoni/LG_G5_titan_01_1.png', NULL, NULL, NULL, '699,90 &euro;', NULL, NULL, NULL, NULL),
('LG Nexus 5x', 'Smartphones And Phones', 'Smartphone', 'Images/Devices/Smartphone e telefoni/LG-NEXUS5-BLACK-5.png', NULL, NULL, NULL, '449,90 &euro;', NULL, NULL, NULL, NULL),
('Polar Loop Activity Tracker', 'TV and SmartLiving', 'Smartwatch', 'Images/Devices/TV and SmartLiving/Polar_loop_blk_760x760.png', NULL, NULL, NULL, '99,90 &euro;', NULL, NULL, NULL, NULL),
('Samsung Galaxy Gear S', 'TV and SmartLiving', 'Smartwatch', 'Images/Devices/TV and SmartLiving/samsung-galaxy-gear-s-1_0.png', NULL, NULL, NULL, '389,90 &euro;', NULL, NULL, NULL, NULL),
('Samsung Galaxy S7', 'Smartphones and Phones', 'Smartphone', 'Images/Devices/Smartphone e telefoni/SAMSUNG_S7_Black_02.png', 'Samsung', 'Smartphone Galaxy S7 Edge', 'Android OS 6.0\r\nDisplay 5.5\r\nOctaCore CPU (QuadCore 2.3GHz + QuadCore 1.6 GHz)', '729,90 &euro;', '', '', 0, NULL),
('Samsung Smart TV 50" + Soundbar + TIMVision', 'TV and SmartLiving', 'SmartTV', 'Images/Devices/TV and SmartLiving/SmartTVSamsung.png', 'Samsung', 'Model 50JU6400 - 50"', 'Ultra HD - 4K 3840 x 2160\r\nSoundbar HW-J250 included\r\nTIMvision included', '26,08 &euro; for 36 months', '', '', 1, NULL),
('Tecnoware ERA Plus 900', 'TV and SmartLiving', 'others', 'Images/Devices/TV and SmartLiving/slider_era_plus_900_tecnoware_1.png', NULL, NULL, NULL, '79,90 &euro;', NULL, NULL, NULL, NULL),
('TIM Facile Maxi', 'Smartphones And Phones', 'Phone', 'Images/Devices/Smartphone e telefoni/slider_cordless_facile_maxi_1.png', NULL, NULL, NULL, '39,90 &euro;', NULL, NULL, NULL, NULL),
('TIM Facile Smile', 'Smartphones And Phones', 'Phone', 'Images/Devices/Smartphone e telefoni/prodotti_slider_facile_smile_rosso_01.png', NULL, NULL, NULL, '39,90 &euro;', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `devices-relatedas`
--

CREATE TABLE `devices-relatedas` (
  `Device-Name` varchar(255) NOT NULL,
  `AssistanceService-Name` varchar(255) NOT NULL,
  `AssistanceService-Subcategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `devices-relatedsl`
--

CREATE TABLE `devices-relatedsl` (
  `Device-Name` varchar(255) NOT NULL,
  `SLService-Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
('PappanoInWeb', NULL, NULL),
('TIM Girls Hackaton', NULL, NULL);

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
  `Activation&Rules` text,
  `Price` varchar(63) DEFAULT NULL,
  `SLImagePath` varchar(255) NOT NULL,
  `InPromotion` tinyint(1) DEFAULT NULL,
  `RelatedProductsImagePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `smartlifeservice`
--

INSERT INTO `smartlifeservice` (`Name`, `Category`, `Subcategory`, `Comment`, `Description`, `Activation&Rules`, `Price`, `SLImagePath`, `InPromotion`, `RelatedProductsImagePath`) VALUES
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
('TIM Vision', 'TV&Entertainment', 'TV', NULL, '<h4>Description</h4>\n                    <p>With the TIMvision subscription you can choose between cartoons, movies, TV series, documentaries, music and the last seven days of the main RAI channels and La7.\n                    Anywhere, anytime.<br/>\n                    More than 8,000 titles available, always on demand, to create your own schedule without commercial interruptions.\n                    </p>\n                    <p>The other component of TIMVision is Videostore. Videostore is a rich video library from which you can rent or purchase the latest movies, series and cartoons.\n                    </p>\n                    <p>The purchase or rental of the products included in the catalog is permitted from any fixed and mobile line.<br/>\n                    You can pay online with credit cards Visa, Mastercard, American Express. Payment by mobile app on Tablet / Smartphone can be done with the remaining credit / TIM account or credit card.\n                    </p>', '<h4>Activation&amp;Rules</h4>\n                    <h5>How to subscribe</h5>\n                    <p>You can subscribe to the TIMVision Service:\n                        <br/>- from this site, adding it to the basket\n                        <br/>- from the mobile app\n                        <br/>- or in a TIM shop.\n                        <br/>In case you use the TIMVision mobile app: Download it from the App Store and enter the "Membership" section. You can choose as payment the remaining credit or your credit card.\n                    </p>\n                    <h5>Costs</h5>\n                    <p>Service costs: 1 € for the first month, then 5 € per month.<br/>\n                    The contract length is indefinite. If a customer wishes to terminate the contract, she must access the TIMVision app from mobile or TV, and use the specific function.</p>\n                    <h5>From where can I use the service?</h5>\n                    <p>Any TV, using the specific TIMVision Decoder.<br/>\n                        Smart TVs and Blu-rays (Samsung e LG). The site timvision.it. The TIMvision app for PC, Tablet e Smartphone.\n                        <br/>note: A subscription to the service is valid for up to 6 devices.\n                    </p>', '1&euro; + 5&euro;/month', 'Images/SLServices/TV-TimVision1.jpg', 0, 'Images/SLServices/TV1.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `testimonial`
--

CREATE TABLE `testimonial` (
  `Title` varchar(255) NOT NULL,
  `videoPath` varchar(255) DEFAULT NULL,
  `Comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `testimonial`
--

INSERT INTO `testimonial` (`Title`, `videoPath`, `Comment`) VALUES
('Fabio Fazio interviews Tim Berners-Lee', NULL, NULL),
('Pif', NULL, NULL);

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
  ADD PRIMARY KEY (`Name`,`SubCategory`);

--
-- Indici per le tabelle `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`Name`);

--
-- Indici per le tabelle `devices-relatedas`
--
ALTER TABLE `devices-relatedas`
  ADD PRIMARY KEY (`Device-Name`,`AssistanceService-Name`,`AssistanceService-Subcategory`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
