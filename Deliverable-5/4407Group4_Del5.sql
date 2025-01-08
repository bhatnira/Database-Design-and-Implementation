-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: db01.aws.cob.isu.edu:5506
-- Generation Time: Mar 27, 2021 at 12:00 AM
-- Server version: 10.4.18-MariaDB-log
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4407Group4`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

CREATE TABLE `accident` (
  `accidentID` int(11) NOT NULL,
  `accidentDescription` varchar(120) NOT NULL,
  `instructorLogBookNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accident`
--

INSERT INTO `accident` (`accidentID`, `accidentDescription`, `instructorLogBookNum`) VALUES
(1000, 'Bent wing in wind gust while disngaging harness, knocked another off her feet', 40003);

-- --------------------------------------------------------

--
-- Table structure for table `creditCard`
--

CREATE TABLE `creditCard` (
  `creditCardNum` varchar(16) NOT NULL,
  `creditCardType` varchar(20) NOT NULL,
  `creditCardExpirationMonth` int(2) NOT NULL,
  `creditCardExpirationYear` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creditCard`
--

INSERT INTO `creditCard` (`creditCardNum`, `creditCardType`, `creditCardExpirationMonth`, `creditCardExpirationYear`) VALUES
('3666677778888999', 'Discover', 11, 2022),
('4120666734254132', 'Visa', 2, 2023),
('4555554444333221', 'MasterCard', 7, 2024),
('5140123408221452', 'Amex', 6, 2023),
('5268080043376894', 'MasterCard', 1, 2022),
('8564858986567844', 'Visa', 11, 2024);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerNum` int(11) NOT NULL,
  `customerLastName` varchar(25) NOT NULL,
  `customerFirstName` varchar(20) NOT NULL,
  `customerAddress` varchar(45) NOT NULL,
  `customerCity` varchar(15) NOT NULL,
  `customerState` char(2) NOT NULL,
  `customerZip` varchar(10) NOT NULL,
  `customerCellPhone` varchar(15) NOT NULL,
  `customerEmail` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerNum`, `customerLastName`, `customerFirstName`, `customerAddress`, `customerCity`, `customerState`, `customerZip`, `customerCellPhone`, `customerEmail`) VALUES
(1, 'Jones', 'Walter', '428 S. Park St.', 'Walla Walla', 'WA', '99362', '(509) 529-3428', 'walljam@gmail.com'),
(2, 'Smith', 'Bert', '144 Jolly Ln.', 'Idaho Falls', 'ID', '83401', '(208) 455-6789', 'bert@hcom.com'),
(3, 'Mall', 'Janice', '997 SE Admiral Pl.', 'Walla Walla', 'WA', '99362', '(509) 529-7898', 'mallhound@gmail.com'),
(4, 'Dane', 'Jim \"Great\"', '996 Vista Del Sol Ct.', 'Mesquite', 'NV', '89027', '(702) 346-7200', 'greatdane@hotmail.com'),
(5, 'James', 'Edna', '208 W Aspen Valley Dr.', 'Panguitch', 'UT', '84759', '(801) 391-2678', 'auntedna@sparklight.net'),
(6, 'Etheridge', 'Walt', '1500 WestWind Ct.', 'Jackson', 'WY', '83002', '(307) 451-7634', 'weth@gmail.com'),
(7, 'Haskell', 'Edward', '1236 Mockingbird Ln.', 'Mayfield', 'NY', '12117', '(518) 661-2212', 'slickEddie@leaveIt.com'),
(8, 'Wallace', 'Ed', '414 Elk Dr.', 'Panguitch', 'UT', '84759', '(801) 391-7425', 'edo@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Del 4 Q1`
-- (See below for the actual view)
--
CREATE TABLE `Del 4 Q1` (
`modelDescription` varchar(45)
,`modelManufacturer` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Del 4 Q2`
-- (See below for the actual view)
--
CREATE TABLE `Del 4 Q2` (
`salespersonNum` int(11)
,`employeeLastName` varchar(25)
,`employeeFirstName` varchar(20)
,`salespersonSalesCount` int(3)
,`salespersonSalesAmount` int(3)
,`Commission Earned` decimal(14,3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Del 4 Q3`
-- (See below for the actual view)
--
CREATE TABLE `Del 4 Q3` (
`customerNum` int(11)
,`Customer Name` varchar(46)
,`salesAgreementNum` int(11)
,`equipmentSalePrice` decimal(9,2)
,`Purchase Total` decimal(31,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Del 4 Q4`
-- (See below for the actual view)
--
CREATE TABLE `Del 4 Q4` (
`Customer Name` varchar(46)
,`equipmentSerialNum` varchar(20)
,`modelNum` int(11)
,`modelDescription` varchar(45)
,`salesAgreementDate` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Del 4 Q5`
-- (See below for the actual view)
--
CREATE TABLE `Del 4 Q5` (
`orderNum` int(11)
,`orderDatePlaced` date
,`orderDateReceived` date
,`supplierNum` int(11)
,`supplierName` varchar(45)
,`supplierContact` varchar(45)
,`supplierPhone` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Del 5 Q6`
-- (See below for the actual view)
--
CREATE TABLE `Del 5 Q6` (
`supplierNum` int(11)
,`supplierName` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Del 5 Q7`
-- (See below for the actual view)
--
CREATE TABLE `Del 5 Q7` (
`Sales Date` date
,`customerNum` int(11)
,`Customer` varchar(46)
,`Model #` int(11)
,`Model Description` varchar(45)
,`Manufacturer` varchar(45)
,`Price` decimal(9,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Del 5 Q8a`
-- (See below for the actual view)
--
CREATE TABLE `Del 5 Q8a` (
`modelNum` int(11)
,`modelDescription` varchar(45)
,`Total Sales` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Del 5 Q8b`
-- (See below for the actual view)
--
CREATE TABLE `Del 5 Q8b` (
`modelNum` int(11)
,`modelDescription` varchar(45)
,`Total Sales` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `discountRetailer`
--

CREATE TABLE `discountRetailer` (
  `retailerNum` int(11) NOT NULL,
  `retailerName` varchar(45) NOT NULL,
  `retailerAddress` varchar(30) NOT NULL,
  `retailerCity` varchar(30) NOT NULL,
  `retailerState` varchar(2) NOT NULL,
  `retailerZip` varchar(10) NOT NULL,
  `retailerPhone` varchar(15) NOT NULL,
  `retailerFax` varchar(15) DEFAULT NULL,
  `retailerContact` varchar(45) NOT NULL,
  `retailerEmail` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discountRetailer`
--

INSERT INTO `discountRetailer` (`retailerNum`, `retailerName`, `retailerAddress`, `retailerCity`, `retailerState`, `retailerZip`, `retailerPhone`, `retailerFax`, `retailerContact`, `retailerEmail`) VALUES
(1, 'Moyes Resellers', '614 W. Ocean Blvd', 'Long Beach', 'CA', '90802-0000', '(818) 367-2430', '(818) 367-2441', 'Janet Moyes', 'janet@moyesonline.com'),
(2, 'Wing Seller', '121100 N. East, N Frontage Rd.', 'Draper', 'UY', '82020-0000', '801-382-2492', '801-382-2477', 'Ed O\'Keefe', 'edo@wingdeller.com'),
(3, 'Griffin Wings', '1500 West Harbor Ave.', 'Orange', 'CA', '92865-1001', '(714) 480-4295', '(714) 480-9870', 'Hermione Winn', 'winner@griffinwings.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeNum` int(11) NOT NULL,
  `employeeSSN` varchar(11) NOT NULL,
  `employeeLastName` varchar(25) NOT NULL,
  `employeeFirstName` varchar(20) NOT NULL,
  `employeeAddress` varchar(45) NOT NULL,
  `employeeCity` varchar(30) NOT NULL,
  `employeeState` varchar(2) NOT NULL,
  `employeeZip` varchar(5) NOT NULL,
  `employeeCellPhone` varchar(15) NOT NULL,
  `employeeEmail` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeNum`, `employeeSSN`, `employeeLastName`, `employeeFirstName`, `employeeAddress`, `employeeCity`, `employeeState`, `employeeZip`, `employeeCellPhone`, `employeeEmail`) VALUES
(1, '514-92-0431', 'Hall', 'Meredith', '2700 W.', 'Howe', 'ID', '83244', '(208) 317-2291', 'hall_meredith@wrlrr.com'),
(2, '614-21-0442', 'Davis', 'Art', '109 S. Hickock St.', 'Mackay', 'ID', '83251', '(208) 317-2291', 'davis_art@wrlrr.com'),
(3, '212-77-7890', 'Teel', 'Lee', '811 W. College St.', 'Mackay', 'ID', '83251', '(208) 222-5555', 'teel_lee@wrlrr.com'),
(4, '554-92-3410', 'Fries', 'Jim', '3505 Little Lost River Hwy', 'Howe', 'ID', '83244', '(208) 555-2121', 'jim_fries@wrlrr.com'),
(5, '555-55-6532', 'Anderson', 'Chris', '225 W. Grand Ave.', 'Arco', 'ID', '83213', '(208) 317-6541', 'birdman@wrlrr.com'),
(6, '555-04-2005', 'Long', 'Tom', '5600 N 2700 W.', 'Howe', 'ID', '83244', '(208) 233-6721', 'longTom@wrlrr.com');

-- --------------------------------------------------------

--
-- Table structure for table `enrollsIn`
--

CREATE TABLE `enrollsIn` (
  `traineeID` int(11) NOT NULL,
  `trainingSessionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollsIn`
--

INSERT INTO `enrollsIn` (`traineeID`, `trainingSessionID`) VALUES
(10001, 5),
(10001, 6),
(10002, 1),
(10002, 2),
(10002, 3),
(10002, 4);

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `exerciseNum` int(11) NOT NULL,
  `exerciseDescription` varchar(135) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`exerciseNum`, `exerciseDescription`) VALUES
(10001, 'Set-up and perform a pre-flight check on the glider'),
(10002, 'Unassisted take-off on a training hill'),
(10003, 'Safe, straight flight controlling airspeed and making minor corrections'),
(10004, 'Controlled stand-up landing or wheel landing if via aerotow'),
(10005, 'Land three times in a row within 100 feet of a target'),
(10006, 'Complete linked 90° turns. These turns must alternate from left to right or vice versa and demonstrate smooth control'),
(10007, 'Demonstrate fast and slow flight'),
(10008, 'Demonstrate steep and gentle 180° linked turns along a predetermined track'),
(10009, 'Land three times in a row within 50 feet of a target'),
(10010, 'Complete at least 10 flights with 75 feet or greater ground clearance'),
(10011, 'Demonstrate speed control in turns and various wind conditions'),
(10012, '60-minute flight'),
(10013, 'Soar in a thermal lift only for at least 30 minutes in one flight'),
(10014, 'Demonstrate figure eights around reselected pylons across the wind, with the course flown smoothly with equal radius turns'),
(10015, 'Land three times in a row within 25 feet of a spot after flights of at least one minute and at least 200 feet in altitude'),
(10016, 'Demonstrate stall and recovery');

-- --------------------------------------------------------

--
-- Table structure for table `gliderUpkeep`
--

CREATE TABLE `gliderUpkeep` (
  `upkeepID` int(11) NOT NULL,
  `repairsResultingFromAccident` varchar(50) NOT NULL,
  `serviceType` varchar(50) NOT NULL,
  `partsReplaced` varchar(50) NOT NULL,
  `studentLogBookNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gliderUpkeep`
--

INSERT INTO `gliderUpkeep` (`upkeepID`, `repairsResultingFromAccident`, `serviceType`, `partsReplaced`, `studentLogBookNum`) VALUES
(10001, 'Bent wing', 'Straighten wing', 'None', 110013);

-- --------------------------------------------------------

--
-- Table structure for table `holdsAccount`
--

CREATE TABLE `holdsAccount` (
  `customerNum` int(11) NOT NULL,
  `creditCardNum` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holdsAccount`
--

INSERT INTO `holdsAccount` (`customerNum`, `creditCardNum`) VALUES
(1, '4120666734254132'),
(1, '5268080043376894'),
(2, '5140123408221452'),
(3, '8564858986567844'),
(4, '4555554444333221'),
(5, '3666677778888999');

-- --------------------------------------------------------

--
-- Table structure for table `iLogsExercise`
--

CREATE TABLE `iLogsExercise` (
  `instructorLogBookNum` int(11) NOT NULL,
  `exerciseNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iLogsExercise`
--

INSERT INTO `iLogsExercise` (`instructorLogBookNum`, `exerciseNum`) VALUES
(40001, 10006),
(40002, 10007),
(40003, 10003);

-- --------------------------------------------------------

--
-- Table structure for table `iLogsPilot`
--

CREATE TABLE `iLogsPilot` (
  `instructorLogBookNum` int(11) NOT NULL,
  `pilotNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iLogsPilot`
--

INSERT INTO `iLogsPilot` (`instructorLogBookNum`, `pilotNum`) VALUES
(40002, 14785),
(40003, 17564);

-- --------------------------------------------------------

--
-- Table structure for table `instructorLogBook`
--

CREATE TABLE `instructorLogBook` (
  `instructorLogBookNum` int(11) NOT NULL,
  `flightDate` date NOT NULL,
  `site` varchar(25) NOT NULL,
  `lzLocation` varchar(25) NOT NULL,
  `gliderNumber` varchar(8) NOT NULL,
  `flightNumberForDay` varchar(8) NOT NULL,
  `launchAltitude` decimal(7,2) NOT NULL,
  `lzAltitude` decimal(7,2) NOT NULL,
  `launchTime` time NOT NULL,
  `flightDuration` decimal(5,2) NOT NULL,
  `straightLineDistanceLaunchToLanding` decimal(6,2) NOT NULL,
  `pathLengthFromGPSTrack` decimal(6,2) NOT NULL,
  `altitudeMax` decimal(8,2) NOT NULL,
  `altitudeMin` decimal(8,2) NOT NULL,
  `altitudeGainFromVario` decimal(8,2) NOT NULL,
  `maxClimbRate` decimal(7,2) NOT NULL,
  `maxSinkRate` decimal(7,2) NOT NULL,
  `gpsTrackAvailable` tinyint(1) NOT NULL,
  `flightStoryWritten` tinyint(1) NOT NULL,
  `importantNotesOrIincidents` varchar(50) DEFAULT NULL,
  `windStrength` int(3) NOT NULL,
  `windDirection` varchar(4) NOT NULL,
  `gusts` int(3) NOT NULL,
  `skyConditions` varchar(30) NOT NULL,
  `damage` varchar(50) NOT NULL,
  `trainerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructorLogBook`
--

INSERT INTO `instructorLogBook` (`instructorLogBookNum`, `flightDate`, `site`, `lzLocation`, `gliderNumber`, `flightNumberForDay`, `launchAltitude`, `lzAltitude`, `launchTime`, `flightDuration`, `straightLineDistanceLaunchToLanding`, `pathLengthFromGPSTrack`, `altitudeMax`, `altitudeMin`, `altitudeGainFromVario`, `maxClimbRate`, `maxSinkRate`, `gpsTrackAvailable`, `flightStoryWritten`, `importantNotesOrIincidents`, `windStrength`, `windDirection`, `gusts`, `skyConditions`, `damage`, `trainerID`) VALUES
(40001, '2020-08-14', 'Big Southern Butte', 'Site 2', '24B98', '224', '5200.00', '4150.00', '13:42:00', '1.50', '10.40', '12.80', '12000.50', '9400.32', '12896.42', '24.20', '49.50', 1, 1, 'Strong gusts above 10000', 35, 'NNE', 42, 'Clear', 'None', 6),
(40002, '2020-08-02', 'Big Southern Butte', 'Site 2', '24B75', '224', '5200.00', '4150.00', '11:15:00', '1.80', '10.20', '14.70', '13400.00', '9100.32', '13214.80', '31.60', '54.80', 1, 1, 'Paragliders interfered with flight path', 29, 'NE', 34, 'Partly cloudy', 'None', 6),
(40003, '2020-08-02', 'Big Southern Butte', 'Site 1', '266A9', '224', '5200.00', '4150.00', '12:30:00', '0.75', '10.40', '13.20', '10000.00', '8800.74', '12647.68', '20.70', '34.70', 1, 1, 'Difficulty turning into strong winds', 33, 'NNE', 36, 'Overcast, spotty sun', 'Wing damage after landing', 5);

-- --------------------------------------------------------

--
-- Table structure for table `itemSold`
--

CREATE TABLE `itemSold` (
  `equipmentSerialNum` varchar(20) NOT NULL,
  `equipmentSalePrice` decimal(9,2) NOT NULL,
  `modelNum` int(11) NOT NULL,
  `retailerNum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemSold`
--

INSERT INTO `itemSold` (`equipmentSerialNum`, `equipmentSalePrice`, `modelNum`, `retailerNum`) VALUES
('017767', '5170.00', 6, 2),
('111111', '5500.00', 4, NULL),
('123456', '4730.00', 8, NULL),
('129876', '5720.00', 3, NULL),
('132457', '4620.00', 9, 1),
('194311', '5500.00', 10, NULL),
('266453', '5940.00', 7, 1),
('288545', '2860.00', 11, NULL),
('333657', '2860.00', 11, NULL),
('378927', '4070.00', 1, NULL),
('402984', '4070.00', 1, NULL),
('563421', '2640.00', 5, NULL),
('563422', '4070.00', 1, NULL),
('639831', '5940.00', 7, NULL),
('677811', '5280.00', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lessonMilestones`
--

CREATE TABLE `lessonMilestones` (
  `milestoneID` int(11) NOT NULL,
  `trainingSessionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lessonMilestones`
--

INSERT INTO `lessonMilestones` (`milestoneID`, `trainingSessionID`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 3),
(6, 4),
(7, 3),
(7, 4),
(8, 3),
(8, 4),
(9, 3),
(9, 4),
(10, 3),
(10, 5),
(10, 6),
(11, 5),
(11, 6),
(12, 5),
(12, 6),
(13, 5),
(13, 6),
(14, 5),
(14, 6),
(15, 5),
(15, 6);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `milestoneID` int(11) NOT NULL,
  `milestoneDescription` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `milestones`
--

INSERT INTO `milestones` (`milestoneID`, `milestoneDescription`) VALUES
(1, 'flight theory'),
(2, 'basic aerodynamics'),
(3, 'care of  glider and flight equipment'),
(4, 'glider assembly'),
(5, 'pre-flight safety inspections'),
(6, 'ground handling in varying velocities of wind and turbulence'),
(7, 'low attitude flight skills'),
(8, 'cross-wind take offs'),
(9, 'cross-wind landings'),
(10, 'safe and effective turning skills'),
(11, '360 degree turns'),
(12, 'stall recognition'),
(13, 'slip recognition'),
(14, 'glide angle control'),
(15, 'in-flight wind analysis'),
(16, 'emergency procedures'),
(17, 'consistent landing approaches'),
(18, 'staying aloft for hours at a time'),
(19, 'right-of-way rules'),
(20, 'flying close to other gliders'),
(21, 'flying weather forecasting'),
(22, 'Federal Aviation Regulations'),
(23, 'aeronautical chart usage');

-- --------------------------------------------------------

--
-- Table structure for table `pilot`
--

CREATE TABLE `pilot` (
  `pilotNum` int(11) NOT NULL,
  `pilotLastName` varchar(25) NOT NULL,
  `pilotFirstName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilot`
--

INSERT INTO `pilot` (`pilotNum`, `pilotLastName`, `pilotFirstName`) VALUES
(14875, 'Harrelson', 'Jared'),
(17564, 'Dwight', 'Brandon');

-- --------------------------------------------------------

--
-- Table structure for table `productCategory`
--

CREATE TABLE `productCategory` (
  `modelNum` int(11) NOT NULL,
  `modelDescription` varchar(45) NOT NULL,
  `modelManufacturer` varchar(45) NOT NULL,
  `modelInventoryCount` int(11) NOT NULL,
  `modelReorderQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productCategory`
--

INSERT INTO `productCategory` (`modelNum`, `modelDescription`, `modelManufacturer`, `modelInventoryCount`, `modelReorderQuantity`) VALUES
(1, 'Paraglider - Cayenne', 'Skywalk', 1, 1),
(2, 'Hang Glider - Eagle 180', 'Aeros', 3, 1),
(3, 'Hang Glider - Pulse', 'Airwave', 2, 1),
(4, 'Kiteboard - Reactor 2012', 'Airush', 3, 2),
(5, 'Kiteboard - Spitfire 2010', 'Caution', 4, 2),
(6, 'Hang Glider - Stalker', 'Aeros', 2, 1),
(7, 'Hang Glider - Stealth 151', 'Aeros', 2, 2),
(8, 'Hang Glider - Talon 140', 'Wills Wing', 0, 1),
(9, 'Hang Glider - Talon 160', 'Wills Wing', 0, 1),
(10, 'Paraglider - Tequila', 'Skywalk', 0, 1),
(11, 'Kiteboard - Wasp 3', 'Cabrinha', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `productOrder`
--

CREATE TABLE `productOrder` (
  `orderNum` int(11) NOT NULL,
  `orderDatePlaced` date NOT NULL,
  `orderDateReceived` date DEFAULT NULL,
  `supplierNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productOrder`
--

INSERT INTO `productOrder` (`orderNum`, `orderDatePlaced`, `orderDateReceived`, `supplierNum`) VALUES
(1, '2018-04-01', '2018-04-11', 11),
(2, '2018-04-10', '2018-04-21', 1),
(3, '2018-04-10', '2018-04-17', 10),
(4, '2018-04-21', '2018-04-30', 3),
(5, '2019-01-06', '2019-01-12', 4),
(6, '2019-02-04', '2019-02-21', 4),
(7, '2019-04-22', '2019-05-01', 2),
(8, '2019-04-22', '2019-04-29', 2),
(9, '2020-02-15', '2020-03-01', 9),
(11, '2020-03-21', '2020-03-30', 4),
(12, '2020-04-04', NULL, 6),
(14, '2020-05-23', '2020-06-11', 2),
(15, '2020-05-30', '2020-06-15', 10);

-- --------------------------------------------------------

--
-- Table structure for table `restockLineItem`
--

CREATE TABLE `restockLineItem` (
  `orderNum` int(11) NOT NULL,
  `modelNum` int(11) NOT NULL,
  `lineItemEquipmentQuantity` int(11) NOT NULL,
  `lineItemEquipmentPrice` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restockLineItem`
--

INSERT INTO `restockLineItem` (`orderNum`, `modelNum`, `lineItemEquipmentQuantity`, `lineItemEquipmentPrice`) VALUES
(1, 5, 1, '2400.00'),
(2, 8, 1, '4300.00'),
(3, 9, 1, '4200.00'),
(4, 4, 1, '5000.00'),
(5, 3, 1, '5200.00'),
(6, 1, 1, '3700.00'),
(7, 1, 1, '3700.00'),
(7, 2, 2, '4800.00'),
(8, 6, 1, '4700.00'),
(9, 7, 1, '5400.00'),
(10, 7, 1, '5400.00'),
(11, 10, 1, '5000.00'),
(12, 11, 1, '2600.00'),
(13, 11, 1, '2600.00'),
(14, 1, 1, '3700.00'),
(15, 8, 1, '4300.00');

-- --------------------------------------------------------

--
-- Table structure for table `returnItem`
--

CREATE TABLE `returnItem` (
  `equipmentSerialNum` varchar(20) NOT NULL,
  `returnNum` int(11) NOT NULL,
  `returnReason` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnItem`
--

INSERT INTO `returnItem` (`equipmentSerialNum`, `returnNum`, `returnReason`) VALUES
('017767', 2, 'Dorky fuselage'),
('132457', 1, 'Broken'),
('266453', 3, 'Cracked Wing');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `returnNum` int(11) NOT NULL,
  `customerNum` int(11) NOT NULL,
  `returnDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`returnNum`, `customerNum`, `returnDate`) VALUES
(1, 3, '2018-07-30'),
(2, 6, '2019-07-08'),
(3, 1, '2020-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `saleLineItem`
--

CREATE TABLE `saleLineItem` (
  `salesAgreementNum` int(11) NOT NULL,
  `equipmentSerialNum` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saleLineItem`
--

INSERT INTO `saleLineItem` (`salesAgreementNum`, `equipmentSerialNum`) VALUES
(10000000, '111111'),
(10000000, '123456'),
(10000001, '563421'),
(10000002, '132457'),
(10000003, '129876'),
(10000004, '378927'),
(10000004, '563422'),
(10000005, '017767'),
(10000005, '677811'),
(10000006, '639831'),
(10000007, '194311'),
(10000008, '266453'),
(10000009, '288545'),
(10000010, '333657'),
(10000011, '402984');

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `salespersonNum` int(11) NOT NULL,
  `salespersonCommissionPercent` decimal(4,3) NOT NULL,
  `salespersonSalesCount` int(3) NOT NULL,
  `salespersonSalesAmount` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`salespersonNum`, `salespersonCommissionPercent`, `salespersonSalesCount`, `salespersonSalesAmount`) VALUES
(1, '0.030', 74, 444000),
(2, '0.025', 22, 136400),
(3, '0.025', 51, 295800),
(4, '0.025', 46, 271400),
(6, '0.025', 34, 207400);

-- --------------------------------------------------------

--
-- Table structure for table `sLogsPilot`
--

CREATE TABLE `sLogsPilot` (
  `studentLogBookNum` int(11) NOT NULL,
  `pilotNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sLogsPilot`
--

INSERT INTO `sLogsPilot` (`studentLogBookNum`, `pilotNum`) VALUES
(10012, 14875),
(10013, 17564);

-- --------------------------------------------------------

--
-- Table structure for table `studentLogBook`
--

CREATE TABLE `studentLogBook` (
  `studentLogBookNum` int(11) NOT NULL,
  `totalFlightHours` decimal(6,2) NOT NULL,
  `flightDate` date NOT NULL,
  `site` varchar(25) NOT NULL,
  `lzLocation` varchar(25) NOT NULL,
  `gliderNumber` varchar(8) NOT NULL,
  `flightNumberForDay` varchar(8) NOT NULL,
  `launchAltitude` decimal(7,2) NOT NULL,
  `lzAltitude` decimal(7,2) NOT NULL,
  `launchTime` time NOT NULL,
  `flightDuration` decimal(5,2) NOT NULL,
  `straightLineDistanceLaunchToLanding` decimal(6,2) NOT NULL,
  `pathLengthFromGPSTrack` decimal(6,2) NOT NULL,
  `altitudeMax` decimal(8,2) NOT NULL,
  `altitudeMin` decimal(8,2) NOT NULL,
  `altitudeGainFromVario` decimal(8,2) NOT NULL,
  `maxClimbRate` decimal(7,2) NOT NULL,
  `maxSinkRate` decimal(7,2) NOT NULL,
  `gpsTrackAvailable` tinyint(1) NOT NULL,
  `flightStoryWritten` tinyint(1) NOT NULL,
  `importantNotesOrIincidents` varchar(50) DEFAULT NULL,
  `traineeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentLogBook`
--

INSERT INTO `studentLogBook` (`studentLogBookNum`, `totalFlightHours`, `flightDate`, `site`, `lzLocation`, `gliderNumber`, `flightNumberForDay`, `launchAltitude`, `lzAltitude`, `launchTime`, `flightDuration`, `straightLineDistanceLaunchToLanding`, `pathLengthFromGPSTrack`, `altitudeMax`, `altitudeMin`, `altitudeGainFromVario`, `maxClimbRate`, `maxSinkRate`, `gpsTrackAvailable`, `flightStoryWritten`, `importantNotesOrIincidents`, `traineeID`) VALUES
(110011, '120.00', '2020-08-14', 'Big Southern Butte', 'Site 2', '24B98', '224', '5200.00', '4150.00', '13:42:00', '1.50', '10.40', '12.80', '12000.50', '9400.32', '12896.42', '24.20', '49.50', 1, 1, 'Strong gusts above 10000', 10001),
(110012, '116.00', '2020-08-02', 'Big Southern Butte', 'Site 2', '24B75', '224', '5200.00', '4150.00', '11:15:00', '1.80', '10.20', '14.70', '13400.00', '9100.38', '13214.80', '31.60', '54.80', 1, 1, 'Paragliders interfered with flight path', 10001),
(110013, '52.00', '2020-08-02', 'Big Southern Butte', 'Site 1', '266A9', '224', '5200.00', '4150.00', '12:30:00', '0.75', '10.40', '13.20', '10000.00', '8800.74', '12647.68', '20.70', '34.70', 1, 1, 'Difficulty turning into strong winds', 10002);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierNum` int(11) NOT NULL,
  `supplierName` varchar(45) NOT NULL,
  `supplierAddress` varchar(30) NOT NULL,
  `supplierCity` varchar(30) NOT NULL,
  `supplierState` varchar(2) NOT NULL,
  `supplierZip` varchar(10) NOT NULL,
  `supplierPhone` varchar(15) NOT NULL,
  `supplierFax` varchar(15) DEFAULT NULL,
  `supplierContact` varchar(45) NOT NULL,
  `supplierEmail` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierNum`, `supplierName`, `supplierAddress`, `supplierCity`, `supplierState`, `supplierZip`, `supplierPhone`, `supplierFax`, `supplierContact`, `supplierEmail`) VALUES
(1, 'Wills Wing', '500 West Blueridge Ave', 'Orange', 'CA', '92865-1001', '(714) 998-0647', '(714) 217-8822', 'Linda Meier', 'linda@willswing.com'),
(2, 'Aeros', '1125 Harborview Dr.', 'Kill Devil Hills', 'CO', '27948-0000', '(252) 480-3552', '(336) 217-8822', 'Gill Witt', 'gw@justfly.com'),
(3, 'Airwave', '500 West Blueridge Ave.', 'Orange', 'CA', '92865-1001', '(714) 480-6359', '(714) 998-0647', 'Mike Meier', 'mike@airwave.com'),
(4, 'Skywalk', '3345 Porter', 'Timbuktu', 'NM', '66345-0000', '(223) 222-5555', '(223) 223-5555', 'Cliff Trip', 'ct@skwalkms.com'),
(5, 'Flightstar', 'P.O. Box 760', 'Ellington', 'CA', '06029-0000', '(960) 875-8185', '(860) 870-5499', 'Jim High', 'JH@flyflightstar.com'),
(6, 'Quicksilver', '42241 Sarah Way', 'Temecula', 'FL', '92590-2100', '(951) 506-0061', '(951) 506-1589', 'Todd Ellefson', 'quicksilverssales@pe.net'),
(7, 'Phantom', '2225 Flight Road', 'Three Rivers', 'MN', '74665-0000', '(269) 271-4568', '(269) 592-5908', 'Eric Pederson', 'epederson@phantomaero.com'),
(8, 'Slingshot', '1111 Beach St.', 'Santa Cruz', 'CA', '95223-1234', '(408) 222-1234', NULL, 'Martin Vari', 'mvari@sskiteboarding.com'),
(9, 'Cabrhina', '400 Hana Highway', 'Maui', 'HI', '96732-0101', '(808) 877-7443', '(808) 877-2149', 'Niel Pryde', 'npryde@cabrhina.com'),
(10, 'Airush', '111 Hana Highway', 'Kahalui', 'HI', '96732-0101', '(808) 877-1087', '(808) 871-2144', 'Joe Dent', 'jd@airush_boarding.com'),
(11, 'Caution', '430 Westline Drive', 'Alameda', 'CA', '94501-0000', '(510) 522-9463', NULL, 'Jody Mills', 'jody@caution_kitesurfing.com'),
(12, 'Xnation', '10030 North Temple', 'Salt Lake City', 'UT', '88989-1023', '(800) 688-2802', NULL, 'Lance  Harris', 'Lance@xnation.biz');

-- --------------------------------------------------------

--
-- Table structure for table `T08a`
--

CREATE TABLE `T08a` (
  `modelNum` int(11) NOT NULL DEFAULT 0,
  `modelDescription` varchar(45) NOT NULL,
  `modelManufacturer` varchar(45) NOT NULL,
  `Total_Sales` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `T08a`
--

INSERT INTO `T08a` (`modelNum`, `modelDescription`, `modelManufacturer`, `Total_Sales`) VALUES
(1, 'Paraglider - Cayenne', 'Skywalk', 3),
(11, 'Kiteboard - Wasp 3', 'Cabrinha', 2),
(7, 'Hang Glider - Stealth 151', 'Aeros', 2),
(8, 'Hang Glider - Talon 140', 'Wills Wing', 1),
(6, 'Hang Glider - Stalker', 'Aeros', 1),
(4, 'Kiteboard - Reactor 2012', 'Airush', 1),
(2, 'Hang Glider - Eagle 180', 'Aeros', 1),
(9, 'Hang Glider - Talon 160', 'Wills Wing', 1),
(5, 'Kiteboard - Spitfire 2010', 'Caution', 1),
(3, 'Hang Glider - Pulse', 'Airwave', 1),
(10, 'Paraglider - Tequila', 'Skywalk', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainee`
--

CREATE TABLE `trainee` (
  `traineeID` int(11) NOT NULL,
  `traineeLastName` varchar(25) NOT NULL,
  `traineeFirstName` varchar(20) NOT NULL,
  `traineeAddress` varchar(45) NOT NULL,
  `traineeCity` varchar(15) NOT NULL,
  `traineeState` char(2) NOT NULL,
  `traineeZip` varchar(10) NOT NULL,
  `traineePhone` varchar(15) NOT NULL,
  `traineeEmail` varchar(25) NOT NULL,
  `ushpaRating` varchar(4) NOT NULL,
  `trainingHours` decimal(6,2) NOT NULL,
  `trainingFlights` int(2) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `weight` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainee`
--

INSERT INTO `trainee` (`traineeID`, `traineeLastName`, `traineeFirstName`, `traineeAddress`, `traineeCity`, `traineeState`, `traineeZip`, `traineePhone`, `traineeEmail`, `ushpaRating`, `trainingHours`, `trainingFlights`, `dateOfBirth`, `weight`) VALUES
(10001, 'Etheridge', 'Walt', '1500 WestWind', 'Jackson', 'WY', '83002', '(307) 451-7634', 'weth@gmail.com', 'H-1', '120.00', 80, '1995-04-14', 185),
(10002, 'Wallace', 'Jimmy', '414 Elk Dr', 'Panguitch', 'UT', '84759', '(801) 391-9210', 'JWallace414@gmail.com', 'H-0', '52.00', 40, '2000-09-06', 160);

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `trainerID` int(11) NOT NULL,
  `ushpaRating` varchar(4) NOT NULL,
  `apprenticeshipCompleted` tinyint(1) NOT NULL,
  `clinicPassed` tinyint(1) NOT NULL,
  `foiTestCompleted` tinyint(1) NOT NULL,
  `holdCprFirstAidCertification` tinyint(1) NOT NULL,
  `rogalloMembership` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`trainerID`, `ushpaRating`, `apprenticeshipCompleted`, `clinicPassed`, `foiTestCompleted`, `holdCprFirstAidCertification`, `rogalloMembership`) VALUES
(5, 'H-4', 1, 1, 1, 1, 1),
(6, 'H-5', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainingSession`
--

CREATE TABLE `trainingSession` (
  `trainingSessionID` int(11) NOT NULL,
  `level` varchar(12) NOT NULL,
  `sessionDate` date NOT NULL,
  `trainerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainingSession`
--

INSERT INTO `trainingSession` (`trainingSessionID`, `level`, `sessionDate`, `trainerID`) VALUES
(1, 'novice', '2020-06-08', 5),
(2, 'novice', '2020-06-09', 5),
(3, 'novice', '2020-06-10', 5),
(4, 'novice', '2020-06-11', 5),
(5, 'intermediate', '2020-06-18', 6),
(6, 'intermediate', '2020-06-19', 6);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `salesAgreementNum` int(11) NOT NULL,
  `salesAgreementDate` date NOT NULL,
  `salesAgreementTime` time NOT NULL,
  `salesAgreementPaymentType` varchar(11) NOT NULL,
  `salesAgreementCardNumberUsed` varchar(20) DEFAULT NULL,
  `customerNum` int(11) NOT NULL,
  `salespersonNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`salesAgreementNum`, `salesAgreementDate`, `salesAgreementTime`, `salesAgreementPaymentType`, `salesAgreementCardNumberUsed`, `customerNum`, `salespersonNum`) VALUES
(10000000, '2018-06-16', '08:34:00', 'Credit Card', '4120666734254132', 1, 2),
(10000001, '2018-07-05', '16:45:00', 'Credit Card', '5140123408221452', 2, 3),
(10000002, '2018-07-14', '14:02:00', 'Credit Card', '8564858986567844', 3, 1),
(10000003, '2019-06-30', '12:13:00', 'Credit Card', '4555554444333221', 4, 2),
(10000004, '2019-06-06', '13:31:00', 'Credit Card', '3666677778888999', 5, 2),
(10000005, '2019-07-02', '12:37:00', 'Cash', NULL, 6, 4),
(10000006, '2020-05-30', '11:23:00', 'Cash', NULL, 7, 3),
(10000007, '2020-06-21', '10:00:00', 'Cash', NULL, 8, 3),
(10000008, '2020-06-21', '11:21:00', 'Credit Card', '5268080043376894', 1, 3),
(10000009, '2020-06-22', '15:18:00', 'Credit Card', '5268080043376894', 1, 3),
(10000010, '2020-07-24', '15:32:00', 'Credit Card', '4555554444333221', 4, 3),
(10000011, '2020-06-01', '14:42:00', 'Credit Card', '3666677778888999', 5, 2);

-- --------------------------------------------------------

--
-- Structure for view `Del 4 Q1`
--
DROP TABLE IF EXISTS `Del 4 Q1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`4407Group4`@`%` SQL SECURITY DEFINER VIEW `Del 4 Q1`  AS SELECT `productCategory`.`modelDescription` AS `modelDescription`, `productCategory`.`modelManufacturer` AS `modelManufacturer` FROM `productCategory` WHERE `productCategory`.`modelManufacturer` like 'A_r%' ;

-- --------------------------------------------------------

--
-- Structure for view `Del 4 Q2`
--
DROP TABLE IF EXISTS `Del 4 Q2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`4407Group4`@`%` SQL SECURITY DEFINER VIEW `Del 4 Q2`  AS SELECT `salesperson`.`salespersonNum` AS `salespersonNum`, `employee`.`employeeLastName` AS `employeeLastName`, `employee`.`employeeFirstName` AS `employeeFirstName`, `salesperson`.`salespersonSalesCount` AS `salespersonSalesCount`, `salesperson`.`salespersonSalesAmount` AS `salespersonSalesAmount`, `salesperson`.`salespersonCommissionPercent`* `salesperson`.`salespersonSalesAmount` AS `Commission Earned` FROM (`employee` join `salesperson`) WHERE `employee`.`employeeNum` = `salesperson`.`salespersonNum` ORDER BY `salesperson`.`salespersonCommissionPercent`* `salesperson`.`salespersonSalesAmount` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `Del 4 Q3`
--
DROP TABLE IF EXISTS `Del 4 Q3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`4407Group4`@`%` SQL SECURITY DEFINER VIEW `Del 4 Q3`  AS SELECT `customer`.`customerNum` AS `customerNum`, concat(`customer`.`customerFirstName`,' ',`customer`.`customerLastName`) AS `Customer Name`, `transaction`.`salesAgreementNum` AS `salesAgreementNum`, `itemSold`.`equipmentSalePrice` AS `equipmentSalePrice`, sum(`itemSold`.`equipmentSalePrice`) AS `Purchase Total` FROM (((`customer` join `transaction` on(`customer`.`customerNum` = `transaction`.`customerNum`)) join `saleLineItem` on(`transaction`.`salesAgreementNum` = `saleLineItem`.`salesAgreementNum`)) join `itemSold` on(`saleLineItem`.`equipmentSerialNum` = `itemSold`.`equipmentSerialNum`)) GROUP BY `customer`.`customerNum`, `transaction`.`salesAgreementNum` ;

-- --------------------------------------------------------

--
-- Structure for view `Del 4 Q4`
--
DROP TABLE IF EXISTS `Del 4 Q4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`4407Group4`@`%` SQL SECURITY DEFINER VIEW `Del 4 Q4`  AS SELECT concat(`customer`.`customerFirstName`,' ',`customer`.`customerLastName`) AS `Customer Name`, `itemSold`.`equipmentSerialNum` AS `equipmentSerialNum`, `itemSold`.`modelNum` AS `modelNum`, `productCategory`.`modelDescription` AS `modelDescription`, `transaction`.`salesAgreementDate` AS `salesAgreementDate` FROM ((((`customer` join `transaction`) join `itemSold`) join `saleLineItem`) join `productCategory`) WHERE `customer`.`customerNum` = `transaction`.`customerNum` AND `transaction`.`salesAgreementNum` = `saleLineItem`.`salesAgreementNum` AND `saleLineItem`.`equipmentSerialNum` = `itemSold`.`equipmentSerialNum` AND `itemSold`.`modelNum` = `productCategory`.`modelNum` AND `transaction`.`salesAgreementDate` = '2020-06-21' ;

-- --------------------------------------------------------

--
-- Structure for view `Del 4 Q5`
--
DROP TABLE IF EXISTS `Del 4 Q5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`4407Group4`@`%` SQL SECURITY DEFINER VIEW `Del 4 Q5`  AS SELECT `productOrder`.`orderNum` AS `orderNum`, `productOrder`.`orderDatePlaced` AS `orderDatePlaced`, `productOrder`.`orderDateReceived` AS `orderDateReceived`, `supplier`.`supplierNum` AS `supplierNum`, `supplier`.`supplierName` AS `supplierName`, `supplier`.`supplierContact` AS `supplierContact`, `supplier`.`supplierPhone` AS `supplierPhone` FROM (`productOrder` join `supplier`) WHERE `productOrder`.`supplierNum` = `supplier`.`supplierNum` AND `productOrder`.`orderDatePlaced` < curdate() - interval 1 month AND `productOrder`.`orderDateReceived` is null ORDER BY `productOrder`.`orderDatePlaced` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `Del 5 Q6`
--
DROP TABLE IF EXISTS `Del 5 Q6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`4407Group4`@`%` SQL SECURITY DEFINER VIEW `Del 5 Q6`  AS SELECT DISTINCT `supplier`.`supplierNum` AS `supplierNum`, `supplier`.`supplierName` AS `supplierName` FROM (`supplier` join `productOrder`) WHERE `productOrder`.`orderDateReceived` is not null ORDER BY `supplier`.`supplierName` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `Del 5 Q7`
--
DROP TABLE IF EXISTS `Del 5 Q7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`4407Group4`@`%` SQL SECURITY DEFINER VIEW `Del 5 Q7`  AS SELECT `transaction`.`salesAgreementDate` AS `Sales Date`, `customer`.`customerNum` AS `customerNum`, concat(`customer`.`customerFirstName`,' ',`customer`.`customerLastName`) AS `Customer`, `productCategory`.`modelNum` AS `Model #`, `productCategory`.`modelDescription` AS `Model Description`, `productCategory`.`modelManufacturer` AS `Manufacturer`, `itemSold`.`equipmentSalePrice` AS `Price` FROM ((((`customer` join `transaction`) join `itemSold`) join `productCategory`) join `saleLineItem`) WHERE `customer`.`customerNum` = `transaction`.`customerNum` AND `transaction`.`salesAgreementNum` = `saleLineItem`.`salesAgreementNum` AND `saleLineItem`.`equipmentSerialNum` = `itemSold`.`equipmentSerialNum` AND `productCategory`.`modelNum` = `itemSold`.`modelNum` AND `transaction`.`salesAgreementDate` > curdate() - interval 24 month ORDER BY `transaction`.`salesAgreementDate` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `Del 5 Q8a`
--
DROP TABLE IF EXISTS `Del 5 Q8a`;

CREATE ALGORITHM=UNDEFINED DEFINER=`4407Group4`@`%` SQL SECURITY DEFINER VIEW `Del 5 Q8a`  AS SELECT `productCategory`.`modelNum` AS `modelNum`, `productCategory`.`modelDescription` AS `modelDescription`, count(`itemSold`.`modelNum`) AS `Total Sales` FROM (`productCategory` join `itemSold`) WHERE `itemSold`.`modelNum` = `productCategory`.`modelNum` GROUP BY `productCategory`.`modelNum` ;

-- --------------------------------------------------------

--
-- Structure for view `Del 5 Q8b`
--
DROP TABLE IF EXISTS `Del 5 Q8b`;

CREATE ALGORITHM=UNDEFINED DEFINER=`4407Group4`@`%` SQL SECURITY DEFINER VIEW `Del 5 Q8b`  AS SELECT `Del 5 Q8a`.`modelNum` AS `modelNum`, `Del 5 Q8a`.`modelDescription` AS `modelDescription`, `Del 5 Q8a`.`Total Sales` AS `Total Sales` FROM `Del 5 Q8a` ORDER BY max(`Del 5 Q8a`.`Total Sales`) ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`accidentID`),
  ADD KEY `instructorLogBookNum` (`instructorLogBookNum`);

--
-- Indexes for table `creditCard`
--
ALTER TABLE `creditCard`
  ADD PRIMARY KEY (`creditCardNum`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerNum`);

--
-- Indexes for table `discountRetailer`
--
ALTER TABLE `discountRetailer`
  ADD PRIMARY KEY (`retailerNum`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeNum`);

--
-- Indexes for table `enrollsIn`
--
ALTER TABLE `enrollsIn`
  ADD PRIMARY KEY (`traineeID`,`trainingSessionID`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`exerciseNum`);

--
-- Indexes for table `gliderUpkeep`
--
ALTER TABLE `gliderUpkeep`
  ADD PRIMARY KEY (`upkeepID`),
  ADD KEY `studentLogBookNum` (`studentLogBookNum`);

--
-- Indexes for table `holdsAccount`
--
ALTER TABLE `holdsAccount`
  ADD PRIMARY KEY (`customerNum`,`creditCardNum`);

--
-- Indexes for table `iLogsExercise`
--
ALTER TABLE `iLogsExercise`
  ADD PRIMARY KEY (`instructorLogBookNum`,`exerciseNum`);

--
-- Indexes for table `iLogsPilot`
--
ALTER TABLE `iLogsPilot`
  ADD PRIMARY KEY (`instructorLogBookNum`,`pilotNum`);

--
-- Indexes for table `instructorLogBook`
--
ALTER TABLE `instructorLogBook`
  ADD PRIMARY KEY (`instructorLogBookNum`),
  ADD KEY `trainerID` (`trainerID`);

--
-- Indexes for table `itemSold`
--
ALTER TABLE `itemSold`
  ADD PRIMARY KEY (`equipmentSerialNum`),
  ADD KEY `modelNum` (`modelNum`),
  ADD KEY `retailerNum` (`retailerNum`);

--
-- Indexes for table `lessonMilestones`
--
ALTER TABLE `lessonMilestones`
  ADD PRIMARY KEY (`milestoneID`,`trainingSessionID`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`milestoneID`);

--
-- Indexes for table `pilot`
--
ALTER TABLE `pilot`
  ADD PRIMARY KEY (`pilotNum`);

--
-- Indexes for table `productCategory`
--
ALTER TABLE `productCategory`
  ADD PRIMARY KEY (`modelNum`);

--
-- Indexes for table `productOrder`
--
ALTER TABLE `productOrder`
  ADD PRIMARY KEY (`orderNum`),
  ADD KEY `supplierNum` (`supplierNum`);

--
-- Indexes for table `restockLineItem`
--
ALTER TABLE `restockLineItem`
  ADD PRIMARY KEY (`orderNum`,`modelNum`);

--
-- Indexes for table `returnItem`
--
ALTER TABLE `returnItem`
  ADD PRIMARY KEY (`equipmentSerialNum`,`returnNum`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`returnNum`),
  ADD KEY `customerNum` (`customerNum`);

--
-- Indexes for table `saleLineItem`
--
ALTER TABLE `saleLineItem`
  ADD PRIMARY KEY (`salesAgreementNum`,`equipmentSerialNum`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`salespersonNum`);

--
-- Indexes for table `sLogsPilot`
--
ALTER TABLE `sLogsPilot`
  ADD PRIMARY KEY (`studentLogBookNum`,`pilotNum`);

--
-- Indexes for table `studentLogBook`
--
ALTER TABLE `studentLogBook`
  ADD PRIMARY KEY (`studentLogBookNum`),
  ADD KEY `traineeID` (`traineeID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierNum`);

--
-- Indexes for table `trainee`
--
ALTER TABLE `trainee`
  ADD PRIMARY KEY (`traineeID`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`trainerID`);

--
-- Indexes for table `trainingSession`
--
ALTER TABLE `trainingSession`
  ADD PRIMARY KEY (`trainingSessionID`),
  ADD KEY `trainerID` (`trainerID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`salesAgreementNum`),
  ADD KEY `customerNum` (`customerNum`),
  ADD KEY `salespersonNum` (`salespersonNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident`
--
ALTER TABLE `accident`
  MODIFY `accidentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `discountRetailer`
--
ALTER TABLE `discountRetailer`
  MODIFY `retailerNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `exerciseNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10017;

--
-- AUTO_INCREMENT for table `gliderUpkeep`
--
ALTER TABLE `gliderUpkeep`
  MODIFY `upkeepID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;

--
-- AUTO_INCREMENT for table `instructorLogBook`
--
ALTER TABLE `instructorLogBook`
  MODIFY `instructorLogBookNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40004;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `milestoneID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pilot`
--
ALTER TABLE `pilot`
  MODIFY `pilotNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17565;

--
-- AUTO_INCREMENT for table `productCategory`
--
ALTER TABLE `productCategory`
  MODIFY `modelNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `productOrder`
--
ALTER TABLE `productOrder`
  MODIFY `orderNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `returnNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `studentLogBook`
--
ALTER TABLE `studentLogBook`
  MODIFY `studentLogBookNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110014;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trainee`
--
ALTER TABLE `trainee`
  MODIFY `traineeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- AUTO_INCREMENT for table `trainingSession`
--
ALTER TABLE `trainingSession`
  MODIFY `trainingSessionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `salesAgreementNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000012;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accident`
--
ALTER TABLE `accident`
  ADD CONSTRAINT `accident_ibfk_1` FOREIGN KEY (`instructorLogBookNum`) REFERENCES `instructorLogBook` (`instructorLogBookNum`) ON DELETE CASCADE;

--
-- Constraints for table `gliderUpkeep`
--
ALTER TABLE `gliderUpkeep`
  ADD CONSTRAINT `gliderUpkeep_ibfk_1` FOREIGN KEY (`studentLogBookNum`) REFERENCES `studentLogBook` (`studentLogBookNum`) ON DELETE CASCADE;

--
-- Constraints for table `instructorLogBook`
--
ALTER TABLE `instructorLogBook`
  ADD CONSTRAINT `instructorLogBook_ibfk_1` FOREIGN KEY (`trainerID`) REFERENCES `trainer` (`trainerID`) ON DELETE CASCADE;

--
-- Constraints for table `itemSold`
--
ALTER TABLE `itemSold`
  ADD CONSTRAINT `itemSold_ibfk_1` FOREIGN KEY (`modelNum`) REFERENCES `productCategory` (`modelNum`) ON DELETE CASCADE,
  ADD CONSTRAINT `itemSold_ibfk_2` FOREIGN KEY (`retailerNum`) REFERENCES `discountRetailer` (`retailerNum`) ON DELETE CASCADE;

--
-- Constraints for table `productOrder`
--
ALTER TABLE `productOrder`
  ADD CONSTRAINT `productOrder_ibfk_1` FOREIGN KEY (`supplierNum`) REFERENCES `supplier` (`supplierNum`) ON DELETE CASCADE;

--
-- Constraints for table `returns`
--
ALTER TABLE `returns`
  ADD CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`customerNum`) REFERENCES `customer` (`customerNum`) ON DELETE CASCADE;

--
-- Constraints for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD CONSTRAINT `salesperson_ibfk_1` FOREIGN KEY (`salespersonNum`) REFERENCES `employee` (`employeeNum`) ON DELETE CASCADE;

--
-- Constraints for table `studentLogBook`
--
ALTER TABLE `studentLogBook`
  ADD CONSTRAINT `studentLogBook_ibfk_1` FOREIGN KEY (`traineeID`) REFERENCES `trainee` (`traineeID`) ON DELETE CASCADE;

--
-- Constraints for table `trainer`
--
ALTER TABLE `trainer`
  ADD CONSTRAINT `trainer_ibfk_1` FOREIGN KEY (`trainerID`) REFERENCES `employee` (`employeeNum`) ON DELETE CASCADE;

--
-- Constraints for table `trainingSession`
--
ALTER TABLE `trainingSession`
  ADD CONSTRAINT `trainingSession_ibfk_1` FOREIGN KEY (`trainerID`) REFERENCES `trainer` (`trainerID`) ON DELETE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`customerNum`) REFERENCES `customer` (`customerNum`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`salespersonNum`) REFERENCES `salesperson` (`salespersonNum`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
