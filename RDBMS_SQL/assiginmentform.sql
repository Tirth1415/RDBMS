-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 04:43 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assiginmentform`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept_table`
--

CREATE TABLE `dept_table` (
  `Deptno` int(2) NOT NULL,
  `Dname` varchar(14) NOT NULL,
  `Lioc` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_table`
--

INSERT INTO `dept_table` (`Deptno`, `Dname`, `Lioc`) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

-- --------------------------------------------------------

--
-- Table structure for table `emp_log_table`
--

CREATE TABLE `emp_log_table` (
  `Emp_id` int(5) NOT NULL,
  `Log_date` date NOT NULL,
  `New_Salary` int(10) NOT NULL,
  `Action` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emp_table`
--

CREATE TABLE `emp_table` (
  `Empno` int(4) NOT NULL,
  `Ename` varchar(10) NOT NULL,
  `Job` varchar(9) NOT NULL,
  `Mgr` int(4) NOT NULL,
  `Hireddate` date NOT NULL,
  `Sal` decimal(7,2) NOT NULL,
  `Comm` decimal(7,2) DEFAULT NULL,
  `Deptno` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_table`
--

INSERT INTO `emp_table` (`Empno`, `Ename`, `Job`, `Mgr`, `Hireddate`, `Sal`, `Comm`, `Deptno`) VALUES
(7359, 'SMITH', 'CLERK', 7902, '2022-12-17', '800.00', NULL, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, '2023-02-20', '1600.00', '300.00', 30),
(7521, 'WARD', 'SALESMAN', 7698, '2023-02-22', '1250.00', '500.00', 30),
(7566, 'JONES', 'MANAGER', 7839, '2023-04-02', '2975.00', NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '2022-09-28', '1250.00', '1400.00', 30),
(7698, 'BLAKE', 'MANAGER', 7839, '2022-05-01', '2850.00', NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '2022-06-09', '2450.00', NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '2022-06-11', '3000.00', NULL, 20),
(7839, 'KING', 'PRESIDENT', 0, '2022-12-17', '5000.00', NULL, 10),
(7844, 'TURER', 'SALESMAN', 7698, '2023-08-09', '1500.00', '0.00', 30),
(7876, 'ADAMS', 'CLERK', 7788, '2022-07-13', '1100.00', NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, '2022-03-12', '950.00', NULL, 30),
(7902, 'FORD', 'ANALYST', 7566, '2022-03-12', '3000.00', NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, '2022-01-23', '1300.00', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`ID`, `Name`, `Gender`, `Address`, `Contact`) VALUES
(999, 'Tirthu', 'Male', 'Ahmedabad', '8980350796');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `RNo` int(2) NOT NULL,
  `Sname` varchar(14) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept_table`
--
ALTER TABLE `dept_table`
  ADD PRIMARY KEY (`Deptno`);

--
-- Indexes for table `emp_table`
--
ALTER TABLE `emp_table`
  ADD PRIMARY KEY (`Empno`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`RNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
