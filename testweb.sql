-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 12:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dep_id` int(11) NOT NULL,
  `departmentname` varchar(50) DEFAULT NULL,
  `evaluator_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dep_id`, `departmentname`, `evaluator_id`) VALUES
(1, 'Database', NULL),
(2, 'Digital', NULL),
(3, 'CoreBanking', NULL),
(4, 'ITSS', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `midlname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `manager` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `job_grade` varchar(50) DEFAULT NULL,
  `job_category` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `date_hired` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `midlname`, `lastname`, `department`, `manager`, `position`, `job_grade`, `job_category`, `sex`, `date_hired`) VALUES
(2, 'Jane', 'Elizabeth', 'Doe', 'Marketing', 2, 'Marketing Coordinator', 'Grade 2', 'Marketing', 'F', '2021-09-01'),
(39, 'Nuru ', ' Mustefa ', ' Ahmed', 'Performance', 39, 'Director  - Performance Mgt. & Employee Service Dep\'t', 'XII', ' Senior Management ', 'M', '2008-07-21'),
(370, 'Saba ', ' Abraham ', ' Alemseged', 'Talent Acquistion, Dev\'t & Management Dep\'t', 379, 'Principal Officer - Promotion and Transfer', 'VII', 'Technical', 'F', '1970-01-01'),
(379, 'Thomas ', ' Getachew ', ' W/mariam', 'Talent Acquistion, Dev\'t & Management Dep\'t', 379, 'Director - Talent Acquisition, Dev\'t & Mgt. Dep\'t', 'XII', ' Senior Management ', 'M', '1970-01-01'),
(840, 'Kirubel ', ' Yitaferu ', ' Getahun', 'Talent Acquistion, Dev\'t & Management Dep\'t', 379, 'Officer - Talent Acquisition and Management', 'V', 'Technical', 'M', '2022-08-09'),
(1025, 'Biniyam ', ' Abebe ', 'Wolde', 'Talent Acquistion, Dev\'t & Management Dep\'t', 379, 'Principal Officer - Training and Talent Development', 'VII', 'Technical', 'M', '2017-10-11'),
(1026, 'Mindahun ', ' Admassu ', ' Asfaw', 'it', 39, 'Senior Officer - Employee Record and HR Data Analytics', 'VI', 'Technical', 'M', '2017-10-11'),
(1028, 'Matias', ' Yeshitila ', ' Solomon', 'Performance', 39, 'Manager - Employee Services Divison', 'IX', ' Middle Management ', 'M', '2017-11-27'),
(1098, 'Hana ', ' Shewakena ', ' Belete', 'Performance_Mgt._&_Employee_Service_Dep\'t', 39, 'Head - Rewards and Benefits Management Section', 'VIII', ' Supervisory  Management ', 'F', '2018-09-24'),
(1271, 'Yonas ', ' Masresha ', ' Tesfaye', 'Talent Acquistion, Dev\'t & Management Dep\'t', 379, 'Manager - Training & Development Division', 'IX', ' Middle Management ', 'M', '2015-09-02'),
(1359, 'Ermias Hailu Abate', ' Hailu ', ' Abate', 'Performance Mgt. & Employee Service Dep\'t', 39, 'A/Head - Employee Record and HR Data Analytics Section', 'VI', ' Supervisory  Management ', 'M', '2019-11-07'),
(1368, 'Beliyu ', ' Teshome ', ' G/Mariam', 'Performance Mgt. & Employee Service Dep\'t', 39, 'Senior Officer - Rewards and Benefits Management', 'VI', 'Technical', 'F', '2019-12-26'),
(1912, 'Mahlet ', ' Alemayehu ', ' Endale', 'Talent Acquistion, Dev\'t & Management Dep\'t', 379, 'Officer - Talent Acquisition and Management', 'V', 'Technical', 'F', '2022-08-09'),
(2083, 'Yibeltal ', ' Hailu ', ' Gurmu', 'Talent Acquistion, Dev\'t & Management Dep\'t', 379, 'Manager- Talent Acquisition and Management Division', 'X', ' Middle Management ', 'M', '2023-03-27'),
(2150, 'Tizita ', ' Gizaw ', ' Wolde', 'Performance Mgt. & Employee Service Dep\'t', 39, 'Officer, Performance Management ', 'V', 'Technical', 'F', '2023-05-12'),
(2304, 'Bereketesilasie ', ' Eshetu ', ' Eshetu ', 'Talent Acquistion, Dev\'t & Management Dep\'t', 379, 'Senior Officer - Talent Acquisition and Management', 'VI', 'Technical', 'M', '2023-09-26'),
(2353, 'Employee 1st Name', 'Employee 2nd Name', 'Employee 3rd Name', 'Dept', 0, 'Job Position', 'Job Grade', 'Job Category', '', '1970-01-01'),
(2354, '', '', '', '', 0, '', '', '', '', '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `evaluation_years` int(11) DEFAULT NULL,
  `evaluation_quarters` int(11) DEFAULT NULL,
  `evaluation_image` varchar(255) NOT NULL,
  `evaluation_date` date NOT NULL,
  `score_out_of_70` decimal(5,2) NOT NULL,
  `score_out_of_30` decimal(5,2) NOT NULL,
  `result` decimal(10,2) DEFAULT NULL,
  `manager_comments` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `Remark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluations`
--

INSERT INTO `evaluations` (`id`, `employee_id`, `evaluation_years`, `evaluation_quarters`, `evaluation_image`, `evaluation_date`, `score_out_of_70`, `score_out_of_30`, `result`, `manager_comments`, `status`, `Remark`) VALUES
(111, 39, 2024, 1, 'Performance_39_Nuru _avatar-1.png', '2024-05-28', 34.00, 3.00, 37.00, 'good', 'approved', NULL),
(112, 1026, 2024, 1, 'it_39_Mindahun _avatar-1.png', '2024-05-28', 4.00, 6.00, 10.00, 'jhv', 'approved', NULL),
(113, 1028, 2024, 1, 'Performance_39_Matias_avatar-1.png', '2024-05-28', 12.00, 12.00, 24.00, 'gg', 'pending', NULL),
(114, 1098, 2024, 1, 'Performance Mgt. & Employee Service Dep\'t_39_Hana _color.PNG', '2024-05-28', 45.00, 12.00, 57.00, 'Nice', 'rejected', NULL),
(115, 1359, 2024, 1, 'Performance Mgt. & Employee Service Dep\'t_39_Ermias Hailu Abate_zemen.PNG', '2024-05-28', 23.00, 23.00, 46.00, 'Nice', 'pending', NULL),
(116, 1368, 2024, 4, 'Performance Mgt. & Employee Service Dep\'t_39_Beliyu _avatar-1.png', '2024-05-28', 46.00, 15.00, 61.00, 'Nice', 'pending', NULL),
(117, 2150, 2024, 1, 'Performance Mgt. & Employee Service Dep\'t_39_Tizita _avatar-1.png', '2024-05-28', 56.00, 25.00, 81.00, 'good', 'pending', NULL),
(118, 1098, 2024, 1, 'Performance_Mgt._&_Employee_Service_Dep\'t_39_Hana _Average Results Report.pdf', '2024-05-28', 45.00, 23.00, 68.00, 'likeit\r\n', 'pending', NULL),
(119, 1098, 2024, 1, 'Performance_Mgt._&_Employee_Service_Dep\'t_39_Hana _php_tutorial.pdf', '2024-05-28', 45.00, 25.00, 70.00, 'good', 'pending', NULL),
(120, 1098, 2024, 1, 'Performance_Mgt._&_Employee_Service_Dep\'t_39_Hana _Average Results Report.pdf', '2024-05-29', 12.00, 12.00, 24.00, 'good', 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `default_password` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `role` enum('admin','manager','hr') NOT NULL,
  `emp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `department`, `position`, `email`, `default_password`, `password`, `status`, `role`, `emp_id`) VALUES
(566, 'Nuru ', 'Mustefa ', 'Performance Mgt. & Employee Service Dep\'t', 'Director  - Performance Mgt. & Employee Service De', 'nuru.mustefa@zemenbank.com', 'nuru123456', '$2y$10$hdf4yJ1p3anVFHvzhLqi/uJQFEHh7Su/Bx/d7ncx1Mvi9.VtqysH6', 'active', 'hr', 39);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dep_id`),
  ADD KEY `evaluator_id` (`evaluator_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_manager` (`manager`);

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2355;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`evaluator_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_manager` FOREIGN KEY (`manager`) REFERENCES `employees` (`id`);

--
-- Constraints for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
