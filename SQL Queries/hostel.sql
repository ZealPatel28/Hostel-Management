-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2018 at 10:58 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', '1234', '2016-04-04 20:31:45', '2017-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cllg`
--

CREATE TABLE `cllg` (
  `c_id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(70) NOT NULL,
  `area` varchar(30) NOT NULL,
  `district` varchar(40) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cllg`
--

INSERT INTO `cllg` (`c_id`, `name`, `address`, `area`, `district`, `state`, `pincode`) VALUES
('1', 'LJIET', 'sg road', 'sarkhej ', 'ahmedabad', 'gujarat', '382210'),
('2', 'LD', 'university area', 'navrangpura', 'ahmedabad', 'gujarat', '380015'),
('3', 'VGEC', 'sabarmati-koba highway', 'chandkheda', 'ahmedabad', 'gujarat', '382424'),
('4', 'NIRMA', 'sg highway', 'gota', 'ahmedabad', 'gujarat', '382481'),
('5', 'INDUS', 'rancharda', 'thaltej', 'ahmedabad', 'gujarat', '382115');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2016-04-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2016-04-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2016-04-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2016-04-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2016-04-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2016-04-11 19:34:59'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2016-04-11 19:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `gen`
--

CREATE TABLE `gen` (
  `u_id` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `area` varchar(25) NOT NULL,
  `district` varchar(25) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` int(6) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `contact_number` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `guardian` varchar(50) NOT NULL,
  `clg_pincode` int(6) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gen`
--

INSERT INTO `gen` (`u_id`, `pwd`, `name`, `street`, `area`, `district`, `state`, `pincode`, `gender`, `contact_number`, `email`, `date_of_birth`, `guardian`, `clg_pincode`, `id`) VALUES
('u_101', 'p_101', 'helly mehta', '33/385 adarshnagar', 'naranpura', 'ahmedabad', 'gujarat', 380013, 'F', '8140068090', 'hellymehta20@yahoo.com', '1997-11-20', 'sunil mehta', 382210, 1),
('u_102', 'p_102', 'dhrumil shah', '7/81 akashganga appt sola road', 'naranpura', 'ahmedabad', 'gujarat', 380013, 'M', '9558675239', 'shah.dhrumil79@rediff.com', '1998-04-18', 'amish shah', 382481, 2),
('u_103', 'p_103', 'shreya shah', '7/283 aram society nr. commerce road', 'navrangpura', 'ahmedabad', 'gujarat', 380009, 'F', '2837582734', 'shahshreya@gmail.com', '1998-06-16', 'vipul shah', 382115, 3),
('u_104', 'p_104', 'zeal patel', 'A-12 paras3', 'bopal', 'ahmedabad', 'gujarat', 380058, 'F', '9601596911', 'zealu1997@gmail.com', '1997-06-28', 'parin patel', 382481, 4),
('u_105', 'p_105', 'rahil ansari', '1942/8 kalapi studio', 'mumbai g.p.o', 'ramnagaar', 'maharashtra', 400001, 'M', '9924882682', 'rahil1@gmail.com', '1997-09-16', 'wajid ansari', 382115, 5),
('u_106', 'p_106', 'dhruv kadia', 'atri society', 'vejalpur', 'ahmedabad', 'gujarat', 380051, 'M', '8238072492', 'dhruvkumar@gmail.com', '1998-07-09', 'mahesh kadia', 380015, 6),
('u_107', 'p_107', 'jenish soni', 'shivalik apt.', 'banwarala', 'nagura', 'rajasthan', 341514, 'M', '9874563210', 'jenish10@gmail.com', '1997-10-10', 'dhiren soni', 382424, 7),
('u_108', 'p_208', 'asma patel', 'aakash flats', 'sgv ', 'malikpur', 'punjab', 385330, 'F', '9774466102', 'theasma@gmail.com', '1997-09-05', 'raishahmed patel', 382210, 8),
('u_109', 'p_109', 'chinmayi joshi', 'tatsat society', 'manekbaug', 'ahmedabad', 'gujarat', 380012, 'F', '9922331178', 'chinusugar@gmail.com', '1997-12-09', 'omkar joshi', 380015, 9),
('u_110', 'p_110', 'karan patel', 'viraj flats', 'lakhudi', 'sowcarpet', 'chennai', 380059, 'F', '9874563297', 'karanp@gmail.com', '1997-11-12', 'piyushbhai patel', 382115, 10);

-- --------------------------------------------------------

--
-- Table structure for table `obc`
--

CREATE TABLE `obc` (
  `u_id` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `area` varchar(25) NOT NULL,
  `district` varchar(25) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` int(6) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `contact_number` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `guardian` varchar(50) NOT NULL,
  `clg_pincode` int(6) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obc`
--

INSERT INTO `obc` (`u_id`, `pwd`, `name`, `street`, `area`, `district`, `state`, `pincode`, `gender`, `contact_number`, `email`, `date_of_birth`, `guardian`, `clg_pincode`, `id`) VALUES
('u_201', 'p_201', 'ram', '34/90 ratilal colony', 'bopal', 'ahmedabad', 'gujarat', 380058, 'M', '9823462334', 'ram@gmail.com', '1996-10-12', 'raman shah', 382481, 1),
('u_202', 'p_202', 'shyam', '7/374 shyamal society', 'shyamal', 'ahmedabad', 'gujarat', 389340, 'M', '9937463892', 'shyam@yahoo.com', '1996-05-18', 'ram patel', 382115, 2),
('u_203', 'p_203', 'dham', '7/203 dhamnagar soc', 'jitpura', 'skgnsi', 'gujarat', 389340, 'M', '9274720494', 'dham@gmail.com', '1996-07-22', 'mahesh dham', 382210, 3),
('u_204', 'p_204', 'suthar', '78/43 suthar colony', 'suthar chowk', 'srkgnslfkg', 'maharashtra', 400003, 'M', '9923875723', 'suthar@gmail.com', '1995-07-03', 'vrushang patel', 382424, 4),
('u_205', 'p_205', 'vrushang', '7/24 vrushang colony', 'skfjbj', 'sogknsof', 'gujarat', 380013, 'M', '6284803848', 'vrushang@rediff.com', '1997-04-12', 'suthar patel', 382424, 5),
('u_206', 'p_206', 'yaksh', '73/283 yaksh town', 'sogn', 'vasipur', 'kerala', 691512, 'M', '8377273942', 'yaksh@rediff.com', '1996-06-06', 'vrushang patel', 380015, 6),
('u_207', 'p_207', 'mihira', '28/203 mihira town', 'sdknsk', 'kukura', 'punjab', 140101, 'F', '3847204834', 'mihiracute@gmail.com', '1995-06-12', 'suthar shah', 382210, 7),
('u_208', 'p_208', 'saurin dave', 'saurin chowk', 'saurin\'s happy street ', 'Nandok', 'assam', 737135, 'M', '2635489201', 'saurindude@gmail.com', '1995-06-21', 'Avani Dave', 382210, 9),
('u_209', 'p_209', 'pravir pol', 'pravirs char rasta', 'pravirs chowkdi', 'Navshakti', 'bihar', 800001, 'M', '7364920735', 'pravird123@gmail.com', '1997-06-13', 'Saurin Dave ', 382481, 10),
('u_210', 'p_210', 'kiran', '23/242 kiranshah colony', 'aefgfsf', 'Kadugodi', 'Banglore', 560067, 'F', '3568557243', 'kiran@gmail.com', '1997-06-28', 'karan shah', 382115, 11);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(10, 112, 1, 4000, 1, '0000-00-00', 3, 'Bachelor  of Technology', 123564, 'Shail', 'Hemant', 'Kayastha', 'male', 123456789, 'shail@gmail.com', 123, 'Neel', 'Brother', 0, '6gr\'\r\neggk;m', 'Ahmedanad', 'Gujarat', 304646, 'wegh', 'grh', 'Gujarat', 380007, '2017-04-17 15:26:07', ''),
(11, 100, 5, 8000, 0, '0000-00-00', 1, 'Bachelor of Engineering', 0, 'dhtu', 'sdfsdf', 'sdf', 'male', 64656565565, 'xyzwer@gmail.com', 5689231470, 'yguygu', 'mom', 7997979797, 'sdfsdfsdfsdf', 'Ahmedabad', 'Gujarat', 380051, 'sdfsdfsdfsdf', 'Ahmedabad', 'Gujarat', 380051, '2018-03-10 10:56:05', ''),
(12, 200, 2, 6000, 0, '0000-00-00', 3, 'Bachelor Of commerce ', 2147483647, 'dk', 'as', 'patel', 'male', 8965230741, 'vbn@gmail.com', 989898, 'mom', 'momo', 959595, 'qsqwsdq', 'surat', 'Gujarat', 380015, 'qsqwsdq', 'surat', 'Gujarat', 380015, '2018-03-10 11:01:31', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `nsa` int(5) NOT NULL,
  `sscm` int(5) NOT NULL,
  `sscf` int(5) NOT NULL,
  `hscam` int(5) NOT NULL,
  `hscaf` int(5) NOT NULL,
  `hscbm` int(5) NOT NULL,
  `hscbf` int(5) NOT NULL,
  `comm` int(5) NOT NULL,
  `comf` int(5) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `nsa`, `sscm`, `sscf`, `hscam`, `hscaf`, `hscbm`, `hscbf`, `comm`, `comf`, `posting_date`) VALUES
(17, 0, 2, 3, 41, 21, 12, 53, 23, 32, '2018-03-10 17:45:40'),
(18, 100, 25, 25, 14, 13, 7, 6, 5, 4, '2018-03-11 07:44:52'),
(19, 100, 50, 25, 13, 12, 9, 4, 5, 4, '2018-03-11 07:49:18'),
(20, 20, 5, 5, 0, 0, 0, 0, 0, 0, '2018-03-11 08:04:18'),
(21, 100, 25, 25, 13, 13, 6, 6, 4, 4, '2018-03-11 08:25:02'),
(22, 20, 5, 5, 2, 2, 1, 1, 1, 1, '2018-03-11 08:26:31'),
(23, 20, 5, 5, 2, 3, 1, 2, 0, 1, '2018-03-11 08:27:16'),
(24, 100, 25, 25, 13, 14, 6, 7, 4, 5, '2018-03-11 08:27:55'),
(25, 100, 25, 25, 13, 14, 6, 7, 5, 5, '2018-03-11 08:28:38'),
(26, 30, 7, 7, 4, 5, 1, 2, 2, 2, '2018-03-11 08:28:55'),
(27, 50, 12, 12, 6, 7, 3, 4, 3, 3, '2018-03-11 09:05:44'),
(28, 200, 50, 50, 27, 28, 13, 14, 10, 10, '2018-03-11 09:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `sc`
--

CREATE TABLE `sc` (
  `u_id` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `area` varchar(25) NOT NULL,
  `district` varchar(25) NOT NULL,
  `pincode` int(6) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `contact_number` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `guardian` varchar(50) NOT NULL,
  `clg_pincode` int(6) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc`
--

INSERT INTO `sc` (`u_id`, `pwd`, `name`, `street`, `area`, `district`, `pincode`, `gender`, `contact_number`, `email`, `date_of_birth`, `guardian`, `clg_pincode`, `id`) VALUES
('u_301', 'p_301', 'parth mehta', '31/363 paras appt.', 'ramnagar', 'bharuch', 392001, 'M', '1236547098', 'parmehtath@rocketmail.com', '1998-01-15', 'dhrumil mehta', 380015, 1),
('u_302', 'p_302', 'zeal shah', 'a301 susksagar flats', 'jodhpur gaam', 'orissa high court', 753002, 'F', '9874213056', 'shahzeal@gmail.com', '1998-06-28', 'rakesh shah', 382210, 3),
('u_303', 'p_303', 'aakash sharma', 'c-404 kailash appt.', 'chandni chowk', 'dariyaganj', 202001, 'M', '8798640010', 'akash@gmail.com', '1997-12-14', 'samrat sharma', 382481, 4),
('u_304', 'p_304', 'sahil singh', 'aman bungalow', 'vrajvihar', 'haryana', 126101, 'M', '7898123456', 'singhisking@yahoo.in', '1998-05-16', 'aman singh', 382115, 5),
('u_305', 'p_305', 'vaishali thakkar', 'c-303 tiger flats', 'paldi', 'Ahmedabad', 384120, 'F', '7894561230', 'thakkargirl@gmail.com', '1998-03-14', 'pankaj thakkar', 382115, 6),
('u_306', 'p_306', 'karishma', '34/573 karishma colony', 'jamnagar', 'ahmedabad', 380051, 'F', '8937573940', 'karishmacute@gmail.com', '1996-05-12', 'marishma patel', 382481, 7),
('u_307', 'p_307', 'mukesh', 'rsjpur street', 'Naranpura', 'ahmedabad', 380009, 'M', '3847560923', 'mukesh@gmsil.com', '1998-06-16', 'ramesh', 382481, 8),
('u_308', 'p_308', 'kailash', 'chandkheda', 'viratnamgar', 'malikpur', 389340, 'M', '7465839209', 'kailashbhai@gmail.com', '1995-06-12', 'vyas', 382115, 9),
('u_309', 'p_309', 'amitabh', 'bhatt chowk', 'shivranjni', 'dariyaganj', 380059, 'M', '9382734650', 'amitabh@gmail.com', '1998-01-15', 'abhiskhek ', 382210, 10),
('u_310', 'p_310', 'smit', 'khandala road', 'fifty sixth north area', 'Aurangabad', 737135, 'F', '0192837465', 'smitPatel@rediff.com', '1996-05-12', 'Moksha shah', 380015, 11);

-- --------------------------------------------------------

--
-- Table structure for table `st`
--

CREATE TABLE `st` (
  `u_id` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `area` varchar(25) NOT NULL,
  `district` varchar(25) NOT NULL,
  `pincode` int(6) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `contact_number` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `guardian` varchar(50) NOT NULL,
  `clg_pincode` int(6) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st`
--

INSERT INTO `st` (`u_id`, `pwd`, `name`, `street`, `area`, `district`, `pincode`, `gender`, `contact_number`, `email`, `date_of_birth`, `guardian`, `clg_pincode`, `id`) VALUES
('u_401', 'p_401', 'shefali kapoor', 'c-52 amikunj society', 'bhopal ', 'bhopal c.p.o', 462001, 'F', '787878451', 'kapoor@gmail.com', '1997-08-18', 'ketan kapoor', 382115, 1),
('u_402', 'p_402', 'kiran shah', 'l-404 dharmajraj flats', 'chandlodiya', 'Aurangabad', 207243, 'F', '9878787841', 'kiran12@gmail.com', '1997-05-12', 'mahendra shah', 382424, 2),
('u_403', 'p_403', 'manish kotak', 'sector 20 madhuban flats', 'vadaj', 'Ahmedabad', 380013, 'F', '7845129630', 'manish20@gmail.com', '1998-09-09', 'meet kotak', 382210, 3),
('u_404', 'p_404', 'simran kaur', 'a-101 raval flats', 'judges bungalow roads', 'Ahmedabad', 380059, 'F', '9865321470', 'kaur1205@gmail.com', '1998-05-12', 'manpreet kaur', 382481, 4),
('u_405', 'p_405', 'raaj hakani', 'a-303 sahajanand towers', 'sector 12', 'chandigarh', 160055, 'M', '7899871265', 'naamtosunahoga@gmail.com', '1998-02-14', 'amrishpuri', 382424, 5),
('u_406', 'p_406', 'akshay singh', 'st mary', 'parle', 'mumbai', 380058, 'M', '9839420385', 'aks@gmail.com', '1995-02-20', 'farhan singh', 382481, 6),
('u_407', 'p_407', 'shreya datta', 'hindu marg', 'panvel', 'mumbai', 384120, 'F', '9765483909', 'shri1303@gmail.com', '1996-09-10', 'naman datta', 382115, 7),
('u_408', 'p_408', 'smit kalra', 'sector 56', 'mandir bazaar', 'chandigarh', 380009, 'M', '8767894300', 'smit9999@gmail.com', '1998-05-24', 'rakesh kalra', 382210, 8),
('u_409', 'p_409', 'jash patel', 'bp road', 'faridabad ', 'bihar', 384120, 'M', '9898980089', 'jptl@gmail.com', '1996-07-12', 'yash patel', 382115, 9),
('u_410', 'p_410', 'kristi bisht', 'watermark road', 'paldi', 'ahmedabad', 389340, 'F', '7868594000', 'kristibisht@gmail.com', '1997-11-28', 'kishan bisht', 382210, 10);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `students_marks_table`
--

CREATE TABLE `students_marks_table` (
  `id` int(11) NOT NULL,
  `u_id` varchar(25) NOT NULL,
  `m_1` int(3) NOT NULL,
  `m_2` int(3) NOT NULL,
  `m_3` int(3) NOT NULL,
  `m_4` int(3) NOT NULL,
  `m_5` int(3) NOT NULL,
  `average` float NOT NULL,
  `distance` double NOT NULL,
  `merit` double NOT NULL,
  `gender` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_marks_table`
--

INSERT INTO `students_marks_table` (`id`, `u_id`, `m_1`, `m_2`, `m_3`, `m_4`, `m_5`, `average`, `distance`, `merit`, `gender`) VALUES
(1, 'u_101', 66, 76, 86, 96, 46, 74, 16.811667514229, 51.12, 'F'),
(2, 'u_102', 79, 89, 56, 87, 78, 77.8, 6.2226724356256, 48.92, 'M'),
(3, 'u_103', 78, 89, 78, 89, 98, 86.4, 23.050041729352, 61.06, 'F'),
(4, 'u_104', 89, 88, 88, 88, 87, 88, 12.969156680569, 57.984, 'F'),
(5, 'u_105', 89, 78, 69, 78, 76, 78, 462.33110559229, 231.6, 'M'),
(6, 'u_106', 69, 66, 78, 73, 73, 71.8, 3.5891265097702, 44.51, 'M'),
(7, 'u_107', 89, 56, 76, 78, 67, 73.2, 443.06939149849, 221.12, 'M'),
(8, 'u_108', 86, 84, 83, 82, 88, 84.6, 160.84840226839, 115.09, 'F'),
(9, 'u_109', 79, 89, 76, 84, 83, 82.2, 415.41941261935, 215.48, 'F'),
(10, 'u_110', 86, 86, 86, 86, 86, 86, 15.852854114381, 57.94, 'F'),
(11, 'u_201', 89, 86, 84, 87, 83, 85.8, 12.969156680569, 56.66, 'M'),
(12, 'u_202', 85, 87, 89, 81, 83, 85, 136.4674646746, 104.596, 'M'),
(13, 'u_203', 79, 78, 76, 75, 77, 77, 115.61054071636, 92.144, 'M'),
(14, 'u_204', 96, 98, 94, 93, 91, 94.4, 462.83972749164, 241.772, 'M'),
(15, 'u_205', 87, 69, 79, 76, 75, 77.2, 5.9894312499131, 48.712, 'M'),
(16, 'u_206', 56, 46, 51, 63, 60, 55.2, 132.47563957443, 86.08, 'M'),
(17, 'u_207', 69, 79, 84, 83, 81, 79.2, 540.26482934434, 263.83, 'F'),
(18, 'u_208', 76, 73, 72, 74, 71, 73.2, 34.385784930535, 57.98, 'M'),
(19, 'u_209', 76, 74, 73, 79, 78, 76, 78.385748545334, 76.952, 'M'),
(20, 'u_210', 84, 85, 83, 89, 84, 85, 90.756387583957, 87.3, 'F'),
(21, 'u_301', 78, 76, 74, 71, 70, 73.8, 37.38587567301, 59.73, 'M'),
(22, 'u_302', 76, 79, 71, 85, 90, 80.2, 174.76758389548, 118.104, 'F'),
(23, 'u_303', 86, 89, 87, 81, 85, 85.6, 340.38573759394, 187.7, 'M'),
(24, 'u_304', 86, 87, 56, 64, 87, 76, 17.284875828496, 52.51, 'M'),
(25, 'u_305', 78, 81, 83, 82, 87, 82.2, 504.38587395839, 251.324, 'F'),
(26, 'u_401', 67, 63, 61, 64, 67, 64.4, 190.47385039583, 116.38, 'F'),
(27, 'u_402', 87, 87, 81, 85, 83, 84.6, 64.385839535355, 76.51, 'F'),
(28, 'u_403', 67, 61, 69, 67, 64, 65.6, 313.28548738593, 164.66, 'F'),
(29, 'u_404', 98, 94, 92, 97, 93, 94.8, 89.447385783574, 92.65, 'F'),
(30, 'u_405', 51, 59, 87, 76, 68, 68.2, 133.23958294893, 94.232, 'M'),
(35, 'u_306', 56, 65, 78, 87, 60, 69.2, 123.8975559898, 91.07, 'F'),
(36, 'u_307', 45, 44, 87, 55, 54, 57, 56.9857578633, 56.992, 'M'),
(37, 'u_308', 67, 56, 45, 88, 55, 62.2, 342.4850485025, 174.31, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-26 15:37:40'),
(6, 20, 'ajay@gmail.com', 0x3a3a31, '', '', '2016-06-26 16:40:57'),
(7, 21, 'shail@gmail.com', 0x3a3a31, '', '', '2017-04-17 15:13:26'),
(8, 21, 'shail@gmail.com', 0x3a3a31, '', '', '2017-04-17 15:22:44'),
(9, 22, 'neel@gmail.com', 0x3a3a31, '', '', '2018-03-10 06:49:27'),
(10, 23, 'xyzwer@gmail.com', 0x3a3a31, '', '', '2018-03-10 10:32:56'),
(11, 23, 'xyzwer@gmail.com', 0x3a3a31, '', '', '2018-03-10 10:58:46'),
(12, 24, 'vbn@gmail.com', 0x3a3a31, '', '', '2018-03-10 11:00:24'),
(13, 23, 'xyzwer@gmail.com', 0x3a3a31, '', '', '2018-03-10 11:20:19'),
(14, 23, 'xyzwer@gmail.com', 0x3a3a31, '', '', '2018-03-10 11:22:57'),
(15, 23, 'xyzwer@gmail.com', 0x3a3a31, '', '', '2018-03-10 11:39:05'),
(16, 25, 'h@gmail.com', 0x3a3a31, '', '', '2018-03-10 11:51:16'),
(17, 23, 'xyzwer@gmail.com', 0x3a3a31, '', '', '2018-03-10 16:10:10'),
(18, 26, 'js@gmail.com', 0x3a3a31, '', '', '2018-03-10 16:42:48'),
(19, 27, 'uty@gmail.com', 0x3a3a31, '', '', '2018-03-10 17:53:32'),
(20, 27, 'uty@gmail.com', 0x3a3a31, '', '', '2018-03-10 18:50:56'),
(21, 27, 'uty@gmail.com', 0x3a3a31, '', '', '2018-03-10 18:50:56'),
(22, 30, 'wry@gmail.com', 0x3a3a31, '', '', '2018-03-11 02:07:09'),
(23, 27, 'uty@gmail.com', 0x3a3a31, '', '', '2018-03-11 05:58:24'),
(24, 27, 'uty@gmail.com', 0x3a3a31, '', '', '2018-03-11 08:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `street` varchar(30) NOT NULL,
  `area` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` int(6) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `dob`, `gender`, `contactNo`, `email`, `password`, `street`, `area`, `district`, `state`, `pincode`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, '108061211', 'Anuj', '1997-05-03', 'male', 8467067344, 'test@gmail.com', 'Test@123', '7/', '', '', '', 0, '2016-06-22 04:21:33', '23-06-2016 11:04:15', '22-06-2016 05:16:49'),
(19, '102355', 'rahul', '1996-09-12', 'male', 6786786786, 'rahul@gmail.com', '6786786786', '', '', '', '', 0, '2016-06-26 16:33:36', '', ''),
(20, '586952', 'Ajay', '1997-03-03', 'male', 8596185625, 'ajay@gmail.com', '8596185625', '', '', '', '', 0, '2016-06-26 16:40:07', '', ''),
(21, '123564', 'Shail', '1998-04-18', 'male', 123456789, 'shail@gmail.com', '1234', '', '', '', '', 0, '2017-04-17 15:12:54', '', ''),
(22, '12345', 'Neel', '1998-07-09', 'male', 9033125898, 'neel@gmail.com', '1234', '', '', '', '', 0, '2018-03-10 06:49:08', '', ''),
(23, 'lsdsf', 'dhtu', '1996-09-05', 'male', 64656565565, 'xyzwer@gmail.com', 'qwer', '', '', '', '', 0, '2018-03-10 10:32:23', '', ''),
(24, '6594999879', 'dk', '1996-01-02', 'male', 8965230741, 'vbn@gmail.com', 'wert', '', '', '', '', 0, '2018-03-10 11:00:10', '', ''),
(25, '797977', 'helly', '1997-02-28', 'female', 0, 'h@gmail.com', '8888', '', '', '', '', 0, '2018-03-10 11:51:03', '', ''),
(26, '345345', 'j', '1997-06-26', 'female', 0, 'js@gmail.com', 'qq', '', '', '', '', 0, '2018-03-10 16:42:27', '', ''),
(27, '978465248', 'dqeda', '1995-12-07', 'male', 8569321470, 'uty@gmail.com', '5252', '7/81 Akashganga ', 'naranpura', 'ahmedabad', 'gujarat', 380013, '2018-03-10 17:53:20', '', ''),
(29, '283728472847', 'Dhruv ', '1998-09-16', 'male', 8364652742, 'pqr@gmail.com', '12345', '', '', '', '', 0, '2018-03-10 21:12:38', '', ''),
(30, '589652', 'tyfnrhjf', '1998-11-05', 'male', 2596321412, 'wry@gmail.com', '4785', '', '', '', '', 0, '2018-03-11 02:03:57', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cllg`
--
ALTER TABLE `cllg`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gen`
--
ALTER TABLE `gen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obc`
--
ALTER TABLE `obc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc`
--
ALTER TABLE `sc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st`
--
ALTER TABLE `st`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_marks_table`
--
ALTER TABLE `students_marks_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gen`
--
ALTER TABLE `gen`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `obc`
--
ALTER TABLE `obc`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sc`
--
ALTER TABLE `sc`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `st`
--
ALTER TABLE `st`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `students_marks_table`
--
ALTER TABLE `students_marks_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
