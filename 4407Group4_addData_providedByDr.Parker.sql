-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db01.aws.cob.isu.edu:5506
-- Generation Time: Mar 06, 2021 at 06:19 AM
-- Server version: 10.4.17-MariaDB-log
-- PHP Version: 7.4.11

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
  `accidentID` int(5) NOT NULL,
  `accidentDescription` varchar(50) NOT NULL,
  `instructorLogBookID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `creditCard`
--

CREATE TABLE `creditCard` (
  `creditCardNum` int(16) NOT NULL,
  `creditCardType` varchar(5) NOT NULL,
  `creditCardExpirationMonth` tinyint(2) NOT NULL,
  `creditCardExpirationYear` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerNum` int(5) NOT NULL,
  `customerLastName` varchar(20) NOT NULL,
  `customerFirstName` varchar(20) NOT NULL,
  `customerAddress` varchar(35) NOT NULL,
  `customerCity` varchar(20) NOT NULL,
  `customerState` varchar(2) NOT NULL,
  `customerZip` varchar(10) NOT NULL,
  `customerHomePhone` varchar(14) NOT NULL,
  `customerCellPhone` varchar(14) NOT NULL,
  `customerWorkPhone` varchar(14) NOT NULL,
  `customerEmail` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `weight` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discountRetailer`
--

CREATE TABLE `discountRetailer` (
  `retailerNum` int(5) NOT NULL,
  `retailerName` varchar(50) NOT NULL,
  `retailerAddress` varchar(35) NOT NULL,
  `retailerCity` varchar(20) NOT NULL,
  `retailerState` varchar(2) NOT NULL,
  `retailerZip` varchar(10) NOT NULL,
  `retailerPhone` varchar(14) NOT NULL,
  `retailerFax` varchar(14) DEFAULT NULL,
  `retailerContact` varchar(25) DEFAULT NULL,
  `retailerEmail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeNum` tinyint(4) NOT NULL,
  `employeeSSN` char(9) NOT NULL,
  `employeeLastName` varchar(15) NOT NULL,
  `employeeFirstName` varchar(15) NOT NULL,
  `employeeAddress` varchar(35) NOT NULL,
  `employeeCity` varchar(20) NOT NULL,
  `employeeState` varchar(2) NOT NULL,
  `employeeZip` varchar(10) NOT NULL,
  `employeeHomePhone` varchar(14) NOT NULL,
  `employeeCellPhone` varchar(14) NOT NULL,
  `employeeEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enrollsIn`
--

CREATE TABLE `enrollsIn` (
  `traineeID` int(3) NOT NULL,
  `trainingSessionID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `exerciseNum` int(5) NOT NULL,
  `exerciseName` varchar(50) NOT NULL,
  `exerciseDescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gliderUpkeep`
--

CREATE TABLE `gliderUpkeep` (
  `upkeepID` int(6) NOT NULL,
  `repairsResultingFromAccident` varchar(3) NOT NULL,
  `serviceType` varchar(10) NOT NULL,
  `partsReplaced` varchar(50) NOT NULL,
  `studentLogBookNum` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `holdsAccount`
--

CREATE TABLE `holdsAccount` (
  `customerNum` int(5) NOT NULL,
  `creditCardNumber` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iLogsExercise`
--

CREATE TABLE `iLogsExercise` (
  `instructorLogBookID` int(7) NOT NULL,
  `exerciseNum` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iLogsPilot`
--

CREATE TABLE `iLogsPilot` (
  `instructorLogBookID` int(7) NOT NULL,
  `pilotNum` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `instructorLogBook`
--

CREATE TABLE `instructorLogBook` (
  `instructorLogBookID` int(7) NOT NULL,
  `employeeNum` int(3) NOT NULL COMMENT 'Should this be a foregin key from ''employee''?\r\n',
  `date` date NOT NULL,
  `site` varchar(25) NOT NULL,
  `lzLocation` varchar(25) NOT NULL,
  `gliderNumber` varchar(6) NOT NULL,
  `flightNumberForDay` tinyint(2) NOT NULL,
  `launchAltitude` smallint(5) NOT NULL,
  `lzAltitude` smallint(5) NOT NULL,
  `launchTime` time NOT NULL,
  `flightDuration` decimal(2,2) NOT NULL,
  `straightLineDistanceLaunchToLanding` varchar(5) NOT NULL,
  `pathLengthFromGPSTrack` varchar(5) NOT NULL,
  `altitudeMax` smallint(5) NOT NULL,
  `altitudeMin` smallint(5) NOT NULL,
  `altitudeGainFromVario` smallint(5) NOT NULL,
  `maxClimbRate` smallint(5) NOT NULL,
  `maxSinkRate` smallint(5) NOT NULL,
  `gpsTrackAvailable` varchar(3) NOT NULL,
  `flightStoryWritten` varchar(3) NOT NULL,
  `importantNotesOrIincidents` tinytext NOT NULL,
  `windStrength` tinyint(3) NOT NULL,
  `windDirection` varchar(4) NOT NULL,
  `gusts` tinyint(3) NOT NULL,
  `skyConditions` varchar(10) NOT NULL,
  `damage` tinytext NOT NULL,
  `trainerID` tinyint(4) NOT NULL COMMENT 'Is this needed because there is employeeNum already?'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `itemPurchased`
--

CREATE TABLE `itemPurchased` (
  `equipmentSerialNum` smallint(20) NOT NULL,
  `equipmentPurchasePrice` decimal(7,2) NOT NULL DEFAULT 0.00,
  `equipmentSalePrice` decimal(7,2) NOT NULL DEFAULT 0.00,
  `equipmentPurchaseDate` date NOT NULL DEFAULT '0000-00-00',
  `equipmentType` varchar(50) NOT NULL DEFAULT '0',
  `equipmentDescription` varchar(50) NOT NULL DEFAULT '0',
  `modelNum` int(20) NOT NULL,
  `retailerNum` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lessonMilestone`
--

CREATE TABLE `lessonMilestone` (
  `milestoneID` int(3) NOT NULL,
  `trainingSessionNum` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `milestone`
--

CREATE TABLE `milestone` (
  `milestoneID` int(3) NOT NULL,
  `milestoneName` varchar(20) NOT NULL DEFAULT '0',
  `milestoneDescription` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pilot`
--

CREATE TABLE `pilot` (
  `pilotNum` int(3) NOT NULL,
  `pilotName` varchar(50) NOT NULL COMMENT 'Do we need to have seperate columns for first and last names?'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productCategory`
--

CREATE TABLE `productCategory` (
  `modelNum` int(20) NOT NULL,
  `modelDescription` varchar(50) DEFAULT NULL,
  `modelManufacturer` varchar(50) DEFAULT NULL,
  `modelInventoryCount` smallint(5) DEFAULT NULL,
  `modelReorderQuantity` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productOrder`
--

CREATE TABLE `productOrder` (
  `orderNum` int(6) NOT NULL,
  `orderDatePlaced` date NOT NULL,
  `orderDateReceived` date NOT NULL,
  `supplierNum` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restockLineItem`
--

CREATE TABLE `restockLineItem` (
  `orderNum` int(11) NOT NULL,
  `modelNum` int(11) NOT NULL,
  `lineItemEquipmentQuantity` smallint(5) NOT NULL,
  `lineItemEquipmentPrice` decimal(7,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `returnNum` int(5) NOT NULL,
  `customerNum` int(5) NOT NULL,
  `returnDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returnLineItem`
--

CREATE TABLE `returnLineItem` (
  `equipmentSerialNum` smallint(20) NOT NULL,
  `returnNum` int(5) NOT NULL,
  `returnReason` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saleLineItem`
--

CREATE TABLE `saleLineItem` (
  `purchaseAgreementNum` int(10) NOT NULL,
  `equipmentSerialNum` smallint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `salespersonNum` tinyint(4) NOT NULL,
  `salespersonCommision%` decimal(2,2) NOT NULL,
  `salespersonSalesCount` smallint(5) NOT NULL,
  `salespersonSalesAmount` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sLogsPilot`
--

CREATE TABLE `sLogsPilot` (
  `studentLogBookNum` int(7) NOT NULL,
  `pilotNum` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentLogBook`
--

CREATE TABLE `studentLogBook` (
  `studentLogBookNum` int(7) NOT NULL,
  `totalFlightHours` int(6) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `site` varchar(25) NOT NULL,
  `lzLocation` varchar(25) NOT NULL,
  `gliderNumber` varchar(6) NOT NULL,
  `flightNumberForDay` tinyint(2) NOT NULL,
  `launchAltitude` smallint(5) NOT NULL,
  `lzAltitude` smallint(5) NOT NULL,
  `launchTime` time NOT NULL,
  `flightDuration` decimal(2,2) NOT NULL,
  `straightLineDistanceLaunchToLanding` varchar(5) NOT NULL,
  `pathLengthFromGPSTrack` varchar(5) NOT NULL,
  `altitudeMax` smallint(5) NOT NULL,
  `altitudeMin` smallint(5) NOT NULL,
  `altitudeGainFromVario` smallint(5) NOT NULL,
  `maxClimbRate` smallint(5) NOT NULL,
  `maxSinkRate` smallint(5) NOT NULL,
  `gpsTrackAvailable` varchar(3) NOT NULL,
  `flightStoryWritten` varchar(3) NOT NULL,
  `importantNotesOrIincidents` tinytext NOT NULL,
  `traineeID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierNum` int(5) NOT NULL,
  `supplierName` varchar(50) NOT NULL,
  `supplierAddress` varchar(35) NOT NULL,
  `supplierCity` varchar(20) NOT NULL,
  `supplierState` varchar(2) NOT NULL,
  `supplierZip` varchar(10) NOT NULL,
  `supplierPhone` varchar(14) NOT NULL,
  `supplierFax` varchar(14) DEFAULT NULL,
  `supplierContact` varchar(25) DEFAULT NULL,
  `supplierEmail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trainee`
--

CREATE TABLE `trainee` (
  `traineeID` int(5) NOT NULL,
  `traineeLastName` varchar(15) NOT NULL,
  `traineeFirstName` varchar(15) NOT NULL,
  `traineeAddress` varchar(35) NOT NULL,
  `traineeCity` varchar(20) NOT NULL,
  `traineeState` varchar(2) NOT NULL,
  `traineeZip` varchar(10) NOT NULL,
  `traineePhone` varchar(14) NOT NULL,
  `traineeEmail` varchar(50) NOT NULL,
  `ushpaRating` varchar(20) NOT NULL,
  `trainingHours` int(6) NOT NULL DEFAULT 0,
  `trainingFlights` int(5) NOT NULL DEFAULT 0,
  `dateOfBirth` date NOT NULL DEFAULT '0000-00-00',
  `weight` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `trainerID` tinyint(4) NOT NULL,
  `ushpaRating` varchar(8) NOT NULL DEFAULT '0',
  `apprenticeshipCompleted` varchar(3) NOT NULL DEFAULT '0',
  `clinicPassed` varchar(3) NOT NULL DEFAULT '0',
  `foiTestCompleted` varchar(3) NOT NULL DEFAULT '0',
  `holdCprFirstAidCertification` varchar(3) NOT NULL DEFAULT '0',
  `rogalloMembership` varchar(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trainingSession`
--

CREATE TABLE `trainingSession` (
  `trainingSessionID` int(8) NOT NULL,
  `date` date NOT NULL,
  `rating` varchar(8) NOT NULL DEFAULT '0',
  `trainerID` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `purchaseAgreemantNum` int(10) NOT NULL,
  `purchaseAgreementDate` date NOT NULL,
  `purchaseAgreementTime` time NOT NULL,
  `purchaseAgreementPaymentType` varchar(6) NOT NULL,
  `purchaseAgreementCardNumberUsed` int(16) DEFAULT 0,
  `customerNum` int(5) NOT NULL,
  `employeeNum` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`accidentID`),
  ADD UNIQUE KEY `accidentID` (`accidentID`),
  ADD KEY `FK__instructorLogBook` (`instructorLogBookID`);

--
-- Indexes for table `creditCard`
--
ALTER TABLE `creditCard`
  ADD PRIMARY KEY (`creditCardNum`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerNum`),
  ADD UNIQUE KEY `customerNum` (`customerNum`);

--
-- Indexes for table `discountRetailer`
--
ALTER TABLE `discountRetailer`
  ADD PRIMARY KEY (`retailerNum`),
  ADD UNIQUE KEY `retailerNum` (`retailerNum`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeNum`) USING BTREE,
  ADD UNIQUE KEY `employeeNum` (`employeeNum`);

--
-- Indexes for table `enrollsIn`
--
ALTER TABLE `enrollsIn`
  ADD PRIMARY KEY (`traineeID`,`trainingSessionID`),
  ADD KEY `FK_enrollsIn_trainingSession` (`trainingSessionID`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`exerciseNum`),
  ADD UNIQUE KEY `exerciseNum` (`exerciseNum`);

--
-- Indexes for table `gliderUpkeep`
--
ALTER TABLE `gliderUpkeep`
  ADD PRIMARY KEY (`upkeepID`),
  ADD UNIQUE KEY `upkeepID` (`upkeepID`),
  ADD KEY `FK__studentLogBook` (`studentLogBookNum`);

--
-- Indexes for table `holdsAccount`
--
ALTER TABLE `holdsAccount`
  ADD PRIMARY KEY (`customerNum`,`creditCardNumber`) USING BTREE,
  ADD KEY `FK_holdsAccount_creditCard` (`creditCardNumber`);

--
-- Indexes for table `iLogsExercise`
--
ALTER TABLE `iLogsExercise`
  ADD PRIMARY KEY (`instructorLogBookID`,`exerciseNum`),
  ADD KEY `FK_iLogsExercise_exercise` (`exerciseNum`);

--
-- Indexes for table `iLogsPilot`
--
ALTER TABLE `iLogsPilot`
  ADD PRIMARY KEY (`instructorLogBookID`,`pilotNum`) USING BTREE,
  ADD KEY `FK_iLogsPilot_pilot` (`pilotNum`);

--
-- Indexes for table `instructorLogBook`
--
ALTER TABLE `instructorLogBook`
  ADD PRIMARY KEY (`instructorLogBookID`) USING BTREE,
  ADD UNIQUE KEY `studentLogBookNum` (`instructorLogBookID`) USING BTREE,
  ADD KEY `FK_instructorLogBook_trainer` (`trainerID`);

--
-- Indexes for table `itemPurchased`
--
ALTER TABLE `itemPurchased`
  ADD PRIMARY KEY (`equipmentSerialNum`),
  ADD UNIQUE KEY `equipmentSerialNum` (`equipmentSerialNum`),
  ADD KEY `FK_itemPurchased_productCategory` (`modelNum`),
  ADD KEY `FK_itemPurchased_discountRetailer` (`retailerNum`);

--
-- Indexes for table `lessonMilestone`
--
ALTER TABLE `lessonMilestone`
  ADD PRIMARY KEY (`milestoneID`,`trainingSessionNum`),
  ADD KEY `FK_lessonMilestone_trainingSession` (`trainingSessionNum`);

--
-- Indexes for table `milestone`
--
ALTER TABLE `milestone`
  ADD PRIMARY KEY (`milestoneID`),
  ADD UNIQUE KEY `milestoneID` (`milestoneID`);

--
-- Indexes for table `pilot`
--
ALTER TABLE `pilot`
  ADD PRIMARY KEY (`pilotNum`),
  ADD UNIQUE KEY `pilotNum` (`pilotNum`);

--
-- Indexes for table `productCategory`
--
ALTER TABLE `productCategory`
  ADD PRIMARY KEY (`modelNum`),
  ADD UNIQUE KEY `modelNum` (`modelNum`);

--
-- Indexes for table `productOrder`
--
ALTER TABLE `productOrder`
  ADD PRIMARY KEY (`orderNum`),
  ADD UNIQUE KEY `orderNum` (`orderNum`),
  ADD KEY `FK_productOrder_supplier` (`supplierNum`);

--
-- Indexes for table `restockLineItem`
--
ALTER TABLE `restockLineItem`
  ADD PRIMARY KEY (`orderNum`,`modelNum`),
  ADD KEY `FK__productCategory` (`modelNum`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`returnNum`),
  ADD UNIQUE KEY `returnNum` (`returnNum`),
  ADD KEY `FK_return_customer` (`customerNum`);

--
-- Indexes for table `returnLineItem`
--
ALTER TABLE `returnLineItem`
  ADD PRIMARY KEY (`equipmentSerialNum`,`returnNum`),
  ADD KEY `FK_returnLineItem_return` (`returnNum`);

--
-- Indexes for table `saleLineItem`
--
ALTER TABLE `saleLineItem`
  ADD PRIMARY KEY (`purchaseAgreementNum`,`equipmentSerialNum`),
  ADD KEY `FK_saleLineItem_itemPurchased` (`equipmentSerialNum`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`salespersonNum`) USING BTREE,
  ADD UNIQUE KEY `salesmanNum` (`salespersonNum`) USING BTREE;

--
-- Indexes for table `sLogsPilot`
--
ALTER TABLE `sLogsPilot`
  ADD PRIMARY KEY (`studentLogBookNum`,`pilotNum`),
  ADD KEY `FK_sLogsPilot_pilot` (`pilotNum`);

--
-- Indexes for table `studentLogBook`
--
ALTER TABLE `studentLogBook`
  ADD PRIMARY KEY (`studentLogBookNum`),
  ADD UNIQUE KEY `studentLogBookNum` (`studentLogBookNum`),
  ADD KEY `FK__trainee` (`traineeID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierNum`),
  ADD UNIQUE KEY `supplierNum` (`supplierNum`);

--
-- Indexes for table `trainee`
--
ALTER TABLE `trainee`
  ADD PRIMARY KEY (`traineeID`),
  ADD UNIQUE KEY `traineeID` (`traineeID`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`trainerID`),
  ADD UNIQUE KEY `trainerID` (`trainerID`);

--
-- Indexes for table `trainingSession`
--
ALTER TABLE `trainingSession`
  ADD PRIMARY KEY (`trainingSessionID`),
  ADD UNIQUE KEY `trainingSessionID` (`trainingSessionID`),
  ADD KEY `FK_trainingSession_trainer` (`trainerID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`purchaseAgreemantNum`),
  ADD UNIQUE KEY `purchaseAgreemantNum` (`purchaseAgreemantNum`),
  ADD KEY `FK_transaction_customer` (`customerNum`),
  ADD KEY `FK_transaction_employee` (`employeeNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident`
--
ALTER TABLE `accident`
  MODIFY `accidentID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerNum` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discountRetailer`
--
ALTER TABLE `discountRetailer`
  MODIFY `retailerNum` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeNum` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `exerciseNum` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gliderUpkeep`
--
ALTER TABLE `gliderUpkeep`
  MODIFY `upkeepID` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructorLogBook`
--
ALTER TABLE `instructorLogBook`
  MODIFY `instructorLogBookID` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itemPurchased`
--
ALTER TABLE `itemPurchased`
  MODIFY `equipmentSerialNum` smallint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `milestone`
--
ALTER TABLE `milestone`
  MODIFY `milestoneID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pilot`
--
ALTER TABLE `pilot`
  MODIFY `pilotNum` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productCategory`
--
ALTER TABLE `productCategory`
  MODIFY `modelNum` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productOrder`
--
ALTER TABLE `productOrder`
  MODIFY `orderNum` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `returnNum` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentLogBook`
--
ALTER TABLE `studentLogBook`
  MODIFY `studentLogBookNum` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierNum` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainee`
--
ALTER TABLE `trainee`
  MODIFY `traineeID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainingSession`
--
ALTER TABLE `trainingSession`
  MODIFY `trainingSessionID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `purchaseAgreemantNum` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accident`
--
ALTER TABLE `accident`
  ADD CONSTRAINT `FK__instructorLogBook` FOREIGN KEY (`instructorLogBookID`) REFERENCES `instructorLogBook` (`instructorLogBookID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `enrollsIn`
--
ALTER TABLE `enrollsIn`
  ADD CONSTRAINT `FK_enrollsIn_trainee` FOREIGN KEY (`traineeID`) REFERENCES `trainee` (`traineeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_enrollsIn_trainingSession` FOREIGN KEY (`trainingSessionID`) REFERENCES `trainingSession` (`trainingSessionID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gliderUpkeep`
--
ALTER TABLE `gliderUpkeep`
  ADD CONSTRAINT `FK__studentLogBook` FOREIGN KEY (`studentLogBookNum`) REFERENCES `studentLogBook` (`studentLogBookNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `holdsAccount`
--
ALTER TABLE `holdsAccount`
  ADD CONSTRAINT `FK__customer` FOREIGN KEY (`customerNum`) REFERENCES `customer` (`customerNum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_holdsAccount_creditCard` FOREIGN KEY (`creditCardNumber`) REFERENCES `creditCard` (`creditCardNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `iLogsExercise`
--
ALTER TABLE `iLogsExercise`
  ADD CONSTRAINT `FK_iLogsExercise_exercise` FOREIGN KEY (`exerciseNum`) REFERENCES `exercise` (`exerciseNum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_iLogsExercise_instructorLogBook` FOREIGN KEY (`instructorLogBookID`) REFERENCES `instructorLogBook` (`instructorLogBookID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `iLogsPilot`
--
ALTER TABLE `iLogsPilot`
  ADD CONSTRAINT `FK_iLogsPilot_instructorLogBook` FOREIGN KEY (`instructorLogBookID`) REFERENCES `instructorLogBook` (`instructorLogBookID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_iLogsPilot_pilot` FOREIGN KEY (`pilotNum`) REFERENCES `pilot` (`pilotNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `instructorLogBook`
--
ALTER TABLE `instructorLogBook`
  ADD CONSTRAINT `FK_instructorLogBook_trainer` FOREIGN KEY (`trainerID`) REFERENCES `trainer` (`trainerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `itemPurchased`
--
ALTER TABLE `itemPurchased`
  ADD CONSTRAINT `FK_itemPurchased_discountRetailer` FOREIGN KEY (`retailerNum`) REFERENCES `discountRetailer` (`retailerNum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_itemPurchased_productCategory` FOREIGN KEY (`modelNum`) REFERENCES `productCategory` (`modelNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `lessonMilestone`
--
ALTER TABLE `lessonMilestone`
  ADD CONSTRAINT `FK_lessonMilestone_milestone` FOREIGN KEY (`milestoneID`) REFERENCES `milestone` (`milestoneID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_lessonMilestone_trainingSession` FOREIGN KEY (`trainingSessionNum`) REFERENCES `trainingSession` (`trainingSessionID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productOrder`
--
ALTER TABLE `productOrder`
  ADD CONSTRAINT `FK_productOrder_supplier` FOREIGN KEY (`supplierNum`) REFERENCES `supplier` (`supplierNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `restockLineItem`
--
ALTER TABLE `restockLineItem`
  ADD CONSTRAINT `FK__productCategory` FOREIGN KEY (`modelNum`) REFERENCES `productCategory` (`modelNum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__productOrder` FOREIGN KEY (`orderNum`) REFERENCES `productOrder` (`orderNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `return`
--
ALTER TABLE `return`
  ADD CONSTRAINT `FK_return_customer` FOREIGN KEY (`customerNum`) REFERENCES `customer` (`customerNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `returnLineItem`
--
ALTER TABLE `returnLineItem`
  ADD CONSTRAINT `FK_returnLineItem_itemPurchased` FOREIGN KEY (`equipmentSerialNum`) REFERENCES `itemPurchased` (`equipmentSerialNum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_returnLineItem_return` FOREIGN KEY (`returnNum`) REFERENCES `return` (`returnNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `saleLineItem`
--
ALTER TABLE `saleLineItem`
  ADD CONSTRAINT `FK_saleLineItem_itemPurchased` FOREIGN KEY (`equipmentSerialNum`) REFERENCES `itemPurchased` (`equipmentSerialNum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_saleLineItem_transaction` FOREIGN KEY (`purchaseAgreementNum`) REFERENCES `transaction` (`purchaseAgreemantNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD CONSTRAINT `FK_salesperson_employee` FOREIGN KEY (`salespersonNum`) REFERENCES `employee` (`employeeNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sLogsPilot`
--
ALTER TABLE `sLogsPilot`
  ADD CONSTRAINT `FK_sLogsPilot_pilot` FOREIGN KEY (`pilotNum`) REFERENCES `pilot` (`pilotNum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_sLogsPilot_studentLogBook` FOREIGN KEY (`studentLogBookNum`) REFERENCES `studentLogBook` (`studentLogBookNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `studentLogBook`
--
ALTER TABLE `studentLogBook`
  ADD CONSTRAINT `FK__trainee` FOREIGN KEY (`traineeID`) REFERENCES `trainee` (`traineeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `trainer`
--
ALTER TABLE `trainer`
  ADD CONSTRAINT `FK_trainer_employee` FOREIGN KEY (`trainerID`) REFERENCES `employee` (`employeeNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `trainingSession`
--
ALTER TABLE `trainingSession`
  ADD CONSTRAINT `FK_trainingSession_trainer` FOREIGN KEY (`trainerID`) REFERENCES `trainer` (`trainerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FK_transaction_customer` FOREIGN KEY (`customerNum`) REFERENCES `customer` (`customerNum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_transaction_employee` FOREIGN KEY (`employeeNum`) REFERENCES `employee` (`employeeNum`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
