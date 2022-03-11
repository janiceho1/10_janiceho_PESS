-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 11:48 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `janice_pessdb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(96, 'QT7777G', '2022-03-11 14:37:50', NULL, NULL),
(97, 'QT7777G', '2022-03-11 14:52:28', NULL, NULL),
(98, 'QJ5555E', '2022-03-11 14:52:56', NULL, NULL),
(99, 'QP4444D', '2022-03-11 14:54:27', NULL, NULL),
(100, 'QP4444D', '2022-03-11 14:58:51', NULL, NULL),
(101, 'QJ5555E', '2022-03-11 14:59:00', NULL, NULL),
(102, 'QJ5555E', '2022-03-11 15:01:40', NULL, NULL),
(103, 'QJ5555E', '2022-03-11 15:03:51', NULL, NULL),
(104, 'QJ5555E', '2022-03-11 15:05:53', NULL, NULL),
(105, 'QJ5555E', '2022-03-11 15:06:25', NULL, NULL),
(106, 'QJ5555E', '2022-03-11 15:07:19', NULL, NULL),
(107, 'QJ5555E', '2022-03-11 15:07:39', NULL, NULL),
(108, 'QJ5555E', '2022-03-11 15:08:04', NULL, NULL),
(109, 'QJ5555E', '2022-03-11 15:08:27', NULL, NULL),
(110, 'QJ5555E', '2022-03-11 15:09:09', NULL, NULL),
(111, 'QJ5555E', '2022-03-11 15:12:34', NULL, NULL),
(112, 'QJ5555E', '2022-03-11 15:15:57', NULL, NULL),
(113, 'QA8888H', '2022-03-11 15:16:24', NULL, NULL),
(114, 'QP4444D', '2022-03-11 15:46:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(34, 'abcd', '82345678', '010', 'orchard', '              fire\r\n ', '1', '2022-03-02 04:35:26'),
(35, 'abcd', '82345678', '010', 'orchard', '              fire\r\n ', '1', '2022-03-02 04:39:37'),
(36, 'john', '82345678', '050', 'jurong', '        ----       ', '1', '2022-03-02 04:50:09'),
(37, 'john', '82345678', '050', 'jurong', '        ----       ', '1', '2022-03-02 04:50:14'),
(38, 'david', '16253783', '080', 'orchard', '           other    ', '1', '2022-03-02 05:00:59'),
(39, 'david', '16253783', '080', 'orchard', '           other     ', '1', '2022-03-02 05:01:13'),
(40, 'tim', '82345678', '030', 'hougang', '    stolen jewellery from store ', '1', '2022-03-02 05:02:41'),
(41, 'tim', '82345678', '030', 'hougang', '    stolen jewellery from store ', '1', '2022-03-02 05:07:50'),
(42, 'tim', '82345678', '030', 'hougang', '    stolen jewellery from store  ', '1', '2022-03-02 05:07:55'),
(43, 'tim', '82345678', '030', 'hougang', '    stolen jewellery from store ', '1', '2022-03-02 05:08:04'),
(44, 'david', '16253783', '020', 'hougang', '              riot ', '1', '2022-03-02 05:13:23'),
(45, 'david', '16253783', '020', 'hougang', '              riot  ', '1', '2022-03-02 05:14:47'),
(46, 'david', '16253783', '020', 'hougang', '              riot  ', '1', '2022-03-02 05:15:03'),
(47, 'david', '16253783', '020', 'hougang', '              riot  ', '1', '2022-03-02 05:15:07'),
(48, 'david', '16253783', '020', 'hougang', '              riot  ', '1', '2022-03-02 05:16:33'),
(49, 'david', '16253783', '020', 'hougang', '              riot   ', '1', '2022-03-02 05:16:39'),
(50, 'david', '16253783', '020', 'hougang', '              riot   ', '1', '2022-03-02 05:17:49'),
(51, 'david', '16253783', '020', 'hougang', '              riot   ', '1', '2022-03-02 05:18:01'),
(52, 'david', '16253783', '020', 'hougang', '              riot   ', '1', '2022-03-02 05:18:10'),
(53, 'david', '16253783', '020', 'hougang', '              riot    ', '1', '2022-03-02 05:18:14'),
(54, 'david', '16253783', '020', 'hougang', '              riot    ', '1', '2022-03-02 05:18:23'),
(55, 'david', '16253783', '020', 'hougang', '              riot    ', '1', '2022-03-02 05:21:00'),
(56, 'david', '16253783', '020', 'hougang', '              riot     ', '1', '2022-03-02 05:21:06'),
(57, 'human', '09876543', '080', 'heaven', '              dk ', '1', '2022-03-03 07:41:39'),
(58, 'human', '09876543', '080', 'heaven', '              dk  ', '1', '2022-03-03 07:41:44'),
(59, ' human being', '84296891', '020', 'cck', '          riot at    cck ', '1', '2022-03-03 08:25:18'),
(60, ' human being', '84296891', '020', 'cck', '          riot at    cck ', '1', '2022-03-03 09:39:27'),
(61, 'girl', '16253783', '060', 'hougang', '              car crashed ', '1', '2022-03-03 09:40:08'),
(62, 'harper', '12345678', '030', 'jurong', '              burglary at condo ', '1', '2022-03-03 11:18:55'),
(63, 'harper', '12345678', '030', 'jurong', '              burglary at condo  ', '1', '2022-03-03 11:19:03'),
(64, 'david', '81234567', '020', 'jurong', '             riot  ', '1', '2022-03-03 13:37:06'),
(65, 'david', '81234567', '020', 'jurong', '             riot   ', '1', '2022-03-03 13:37:28'),
(66, 'david', '81234567', '020', 'jurong', '             riot   ', '1', '2022-03-03 13:42:49'),
(67, 'tim', '82345678', '050', 'hougang', '              fallen tree\r\n ', '1', '2022-03-03 13:43:21'),
(68, 'tim', '82345678', '050', 'hougang', '              fallen tree\r\n ', '1', '2022-03-03 13:47:27'),
(69, 'john', '82345678', '010', 'cck', '              fire ', '1', '2022-03-03 13:47:48'),
(70, 'tim', '82345678', '040', 'hougang', '              father hit children ', '1', '2022-03-03 13:49:22'),
(71, 'tim', '82345678', '040', 'hougang', '              father hit children ', '1', '2022-03-03 13:56:34'),
(72, 'bell', '82345678', '060', 'jurong', '          bicycle bump into tree     ', '1', '2022-03-03 13:57:34'),
(73, 'bell', '82345678', '060', 'jurong', '          bicycle bump into tree     ', '1', '2022-03-03 14:00:43'),
(74, 'bell', '82345678', '060', 'jurong', '          bicycle bump into tree      ', '1', '2022-03-03 14:00:48'),
(75, 'bell', '87263452', '060', 'orchard', '              car crashed into tree ', '1', '2022-03-03 14:01:59'),
(76, 'bell', '87263452', '060', 'orchard', '              car crashed into tree ', '1', '2022-03-03 14:03:52'),
(77, 'bell', '87263452', '050', 'hougang', ' Get strike by tree  ', '1', '2022-03-03 14:05:13'),
(78, 'bell', '87263452', '050', 'hougang', ' Get strike by tree  ', '1', '2022-03-03 14:08:07'),
(79, 'bell', '82345678', '040', 'bukit batok', '              got attacked by tree ', '1', '2022-03-03 14:09:06'),
(80, 'bell', '82345678', '020', 'cck', '        riot       ', '1', '2022-03-03 14:20:07'),
(81, 'bell', '82345678', '020', 'cck', '        riot        ', '1', '2022-03-03 14:20:27'),
(82, 'bell', '82345678', '020', 'cck', '        riot         ', '1', '2022-03-03 14:21:27'),
(83, 'bell', '82345678', '010', 'jurong', '          fire at shopping mall\r\n    ', '2', '2022-03-03 14:53:39'),
(84, 'bell', '82345678', '010', 'jurong', '          fire at shopping mall\r\n    ', '2', '2022-03-03 14:54:04'),
(85, 'bell', '82345678', '010', 'jurong', '          fire at shopping mall\r\n    ', '2', '2022-03-03 14:54:35'),
(86, 'bell', '82345678', '010', 'jurong', '          fire at shopping mall\r\n     ', '2', '2022-03-03 14:54:40'),
(87, 'bell', '82345678', '010', 'jurong', '          fire at shopping mall\r\n     ', '2', '2022-03-03 14:55:24'),
(88, 'bell', '82345678', '080', 'hougang', '           reported cases of high rise litter   ', '2', '2022-03-03 14:57:44'),
(89, 'bell', '82345678', '080', 'hougang', '           reported cases of high rise litter   ', '2', '2022-03-03 14:59:17'),
(90, 'bell', '82345678', '080', 'hougang', '           reported cases of high rise litter    ', '2', '2022-03-03 14:59:22'),
(91, 'bell', '82345678', '080', 'hougang', '           reported cases of high rise litter    ', '2', '2022-03-03 15:22:19'),
(92, 'janice', '98765432', '010', 'west mall', '    fire outbreak at food court on level 4 of the mall           ', '2', '2022-03-11 13:46:11'),
(93, 'janice', '98765432', '010', 'west mall', '    fire outbreak at food court on level 4 of the mall           ', '2', '2022-03-11 13:48:09'),
(94, 'joanne', '98765432', '010', 'lot one', '    fire outbreak at food court on B1 of the mall           ', '2', '2022-03-11 13:50:02'),
(95, 'joanne', '98765432', '010', 'lot one', '    fire outbreak at food court on B1 of the mall           ', '2', '2022-03-11 13:53:14'),
(96, 'joey', '98765432', '010', 'hillion mall', '    fire outbreak at food court on level 1 of the mall           ', '2', '2022-03-11 14:37:50'),
(97, 'joey', '98765432', '010', 'hillion mall', '    fire outbreak at food court on level 1 of the mall           ', '2', '2022-03-11 14:52:28'),
(98, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 14:52:56'),
(99, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 14:54:27'),
(100, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 14:58:51'),
(101, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 14:59:00'),
(102, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:01:40'),
(103, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:03:51'),
(104, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:05:53'),
(105, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:06:25'),
(106, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:07:19'),
(107, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:07:39'),
(108, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:08:04'),
(109, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:08:27'),
(110, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:09:09'),
(111, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:12:34'),
(112, 'tim', '82345678', '020', 'cck', '       riot        ', '2', '2022-03-11 15:15:57'),
(113, 'bell', '16253783', '050', 'jurong', '              there is a fallen tree ', '2', '2022-03-11 15:16:24'),
(114, 'tim', '82345678', '040', 'cck', '              waswefert ', '2', '2022-03-11 15:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violence'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident '),
('070', 'Loan Shark'),
('080', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QA8888H', '1'),
('QJ5555E', '1'),
('QP4444D', '1'),
('QN1234J', '3'),
('QR6666F', '3'),
('QS2222B', '3'),
('QT7777G', '3'),
('QW3333C', '3'),
('QW9999I', '3'),
('QX1111A', '3');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('4', 'Arrived'),
('1', 'Dispatched'),
('3', 'Free'),
('2', 'Patrol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `incident_type_id` (`incident_type_id`,`incident_status_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`),
  ADD KEY `patrolcar_status_desc` (`patrolcar_status_desc`),
  ADD KEY `patrolcar_status_desc_2` (`patrolcar_status_desc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD CONSTRAINT `dispatch_ibfk_1` FOREIGN KEY (`patrolcar_id`) REFERENCES `patrolcar` (`patrolcar_id`);

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_type` (`incident_type_id`),
  ADD CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_status` (`incident_status_id`);

--
-- Constraints for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD CONSTRAINT `patrolcar_ibfk_1` FOREIGN KEY (`patrolcar_status_id`) REFERENCES `patrolcar_status` (`patrolcar_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
