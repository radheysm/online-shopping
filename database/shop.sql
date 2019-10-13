-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2018 at 01:05 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` varchar(30) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`) VALUES
('1', 'men'),
('2', 'women'),
('3', 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`name`, `pass`) VALUES
('admin', 'priya123');

-- --------------------------------------------------------

--
-- Table structure for table `fdbk`
--

CREATE TABLE IF NOT EXISTS `fdbk` (
`contact_id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone no` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subj` varchar(30) NOT NULL,
  `mesg` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fdbk`
--

INSERT INTO `fdbk` (`contact_id`, `name`, `phone no`, `email`, `subj`, `mesg`) VALUES
(1, 'priya', '33333333333', 'priya@gmail.com', 'service', 'try to improve ur service'),
(2, 'priya', '33333333333', 'priya@gmail.com', 'service', 'try to improve ur service'),
(3, 'priya', '33333333333', 'priya@gmail.com', 'service', 'try to improve ur service'),
(4, 'Kanchan', '9871980749', 'kanchan@gmail.com', 'shopbjkj', 'vgvh kbhj');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`item_id` int(10) NOT NULL,
  `catg` varchar(40) NOT NULL,
  `subcatg` varchar(40) NOT NULL,
  `img` varchar(30) NOT NULL,
  `itemno` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `info` varchar(500) NOT NULL,
  `dat` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `catg`, `subcatg`, `img`, `itemno`, `price`, `desc`, `info`, `dat`) VALUES
(3, '1', '1', '8.jpg', '11', '500', 'mnm', '', '28-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `pname` varchar(30) NOT NULL,
  `itemno` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `size` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `ac_no` varchar(30) NOT NULL,
  `mob_no` varchar(30) NOT NULL,
  `add` varchar(300) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `order_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`pname`, `itemno`, `price`, `size`, `uname`, `ac_no`, `mob_no`, `add`, `bank`, `city`, `order_no`) VALUES
('Tresmode Ladies Pump Shoes', 'foot2', 'Rs1690', 'Medium', 'Priya Gupta', 'ac234', '987654987', 'Tilak Nagar,Shanti path', 'ICICI', 'Jaipur', 'ord228'),
('W Mix and match kurta ', 'k4', 'Rs1079', 'Medium', 'Priya Gupta', 'ac345', '36536356353', 'jaewahar Nagar', 'SBI', 'Delhi', 'ord326'),
('', '', 'Rs', 'Small', '', '', '', '', 'SBI', '', 'ord234'),
('United Colors of Benetton Mens', 'cs2', 'Rs1999', 'Small', 'Kanchan', '98569854785412', '9856985478', 'E 20 Sector 63 Noida', 'SBI', 'Noida', 'ord151'),
('United Colors of Benetton Mens', 'cs2', 'Rs1999', 'Small', 'Kanchan', '98569854785412', '9856985478', 'E 20 Sector 63 Noida', 'SBI', 'Noida', 'ord255'),
('United Colors of Benetton Mens', 'cs2', 'Rs1999', 'Small', 'Kanchan', '98569854785412', '9856985478', 'E 20 Sector 63 Noida', 'SBI', 'Noida', 'ord439'),
('United Colors of Benetton Mens', 'cs2', 'Rs1999', 'Small', 'Kanchan', '98569854785412', '9856985478', 'E 20 Sector 63 Noida', 'SBI', 'Noida', 'ord361'),
('United Colors of Benetton Mens', 'cs2', 'Rs1999', 'Small', 'Kanchan', '98569854785412', '9856985478', 'E 20 Sector 63 Noida', 'SBI', 'Noida', 'ord476'),
('Kashish Churidar - Kurta-Dupat', 's3', 'Rs2899', 'Small', 'Kanchan', '8995665666454', '9874569854', 'E 20 Sector 63 Noida', 'SBI', 'Noida', 'ord241'),
('United Colors of Benetton Mens', 'cs3', 'Rs1999', 'Small', '', '', '', '', 'SBI', '', 'ord204'),
('United Colors of Benetton Mens', 'cs3', 'Rs1999', 'Small', '', '', '', '', 'SBI', '', 'ord165');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
`user_id` int(10) NOT NULL,
  `title` varchar(6) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gen` varchar(30) NOT NULL,
  `id` varchar(50) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `add` varchar(300) NOT NULL,
  `city` varchar(30) NOT NULL,
  `coun` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `title`, `fname`, `lname`, `gen`, `id`, `pass`, `phone`, `add`, `city`, `coun`, `dob`) VALUES
(1, 'Ms.', 'Kanchan', 'Negi', 'female', 'kanchan@gmail.com', 'kannu87', '9856325417', 'E 20 Sector 63', 'Noida', 'India', '1-1-2005'),
(2, 'Ms.', 'Kanchan', 'Negi', 'female', 'apex@gmail.com', 'ankur87', '9871980749', 'E20 Sector63 Noida', 'Noida', 'India', '1-1-2005'),
(3, 'Ms.', 'Arti', 'Kamble', 'female', 'arti@gmail.com', 'arti87', '9856985478', 'E20 Sector 63 Noida', 'Noida', 'India', '1-1-2005');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
`subcat_id` int(10) NOT NULL,
  `cat_id` varchar(30) NOT NULL,
  `subcategory` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `cat_id`, `subcategory`) VALUES
(1, '1', 'Casual Shirts'),
(2, '1', 'jeans'),
(3, '1', 'T-shirts'),
(4, '1', 'Footwear'),
(5, '1', 'Shorts'),
(6, '1', 'watches'),
(7, '2', 'Dresses'),
(8, '2', 'Churidar Suits'),
(9, '2', 'Kurtas'),
(10, '2', 'Sandals'),
(11, '2', 'Office Wear'),
(12, '2', 'Artificial Jewellery'),
(13, '3', 'Baby Apparel'),
(14, '3', 'Girls Apparel'),
(15, '3', 'Boys Apparel'),
(16, '3', 'Kids Toys');

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE IF NOT EXISTS `trash` (
  `catg` varchar(50) NOT NULL,
  `subcatg` varchar(50) NOT NULL,
  `img` varchar(60) NOT NULL,
  `itemno` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `dat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`catg`, `subcatg`, `img`, `itemno`, `price`, `desc`, `dat`) VALUES
('men', 'Casual Shirts', 'd:/wamp/tmpphp13A.tmp', 'cs1', 400, 'ahakaaajaj', '28-06-11 04-56-14'),
('', '', '', '', 0, '', '28-06-11 04-56-18'),
('men', 'Casual Shirts', 'd:/wamp/tmpphp15A.tmp', 'cs3', 500, 'haioaajalkaj', '28-06-11 04-57-11'),
('', '', '', '', 0, '', '28-06-11 04-57-18'),
('', '', '', '', 0, '', '28-06-11 04-57-51'),
('women', 'Dresses', 'c:/wamp/tmpphp15F.tmp', 'd1', 5700, 'ghsfshsshs', '28-06-11 05-00-46'),
('women', 'Dresses', 'c:/wamp/tmpphp160.tmp', 'd2', 45666, 'yrsysfysus', '28-06-11 05-00-46'),
('', '', '', '', 0, '', '28-06-11 05-00-50'),
('', '', '', '', 0, '', '28-06-11 05-00-50'),
('', '', '', '', 0, '', '28-06-11 05-02-08'),
('', '', '', '', 0, '', '28-06-11 05-02-08'),
('', '', '', '', 0, '', '28-06-11 05-03-25'),
('', '', '', '', 0, '', '28-06-11 05-03-25'),
('men', 'Casual Shirts', 'c:/wamp/tmpphp166.tmp', 'cs1', 7635635, 'qtyqwtywrtyw', '28-06-11 05-06-40'),
('', '', '', '', 0, '', '28-06-11 05-07-04'),
('men', 'Casual Shirts', 'c:/wamp/tmpphp168.tmp', 'cs2', 53674, 'deuyddydtg', '28-06-11 05-11-33'),
('', '', '', '', 0, '', '28-06-11 05-11-36'),
('men', 'Casual Shirts', 'c:/wamp/tmpphp137.tmp', 'cs1', 355, 'sjksjs', '29-06-11 04-34-39'),
('', '', '', '', 0, '', '29-06-11 04-34-43'),
('men', 'Casual Shirts', 'c:/wamp/tmpphp139.tmp', '33', 444, 'sxxddxd', '29-06-11 04-35-16'),
('', '', '', '', 0, '', '29-06-11 04-35-21'),
('', '', '', '', 0, '', '29-06-11 04-35-25'),
('men', 'Casual Shirts', 'c:/wamp/tmpphp138.tmp', 'cs2', 3434, 'hdgdjgdjg', '29-06-11 04-35-30'),
('men', 'Casual Shirts', 'c:/wamp/tmpphp13B.tmp', '34', 0, 'ddddd', '29-06-11 04-42-31'),
('', '', '', '', 0, '', '29-06-11 04-42-34'),
('men', 'Casual Shirts', 'c:/wamp/tmpphp13C.tmp', '45', 0, 'xxxxxx', '29-06-11 04-43-02'),
('men', 'Casual Shirts', 'c:/wamp/tmpphp13D.tmp', 'cs1', 345, 'sssssssssssss', '29-06-11 04-43-02'),
('', '', '', '', 0, '', '29-06-11 04-43-08'),
('', '', '', '', 0, '', '29-06-11 04-43-08'),
('1', 'Casual Shirts', 'c:/wamp/tmpphp177.tmp', '23', 2333, 'wwwwwwwwwwwwww', '30-06-11 04-56-19'),
('', '', '', '', 0, '', '30-06-11 04-56-21'),
('1', 'Casual Shirts', 'c:/wamp/tmpphp176.tmp', 'cs1', 23, 'aaaaaaaaaaaaa', '30-06-11 04-56-52'),
('1', 'Casual Shirts', 'c:/wamp/tmpphp178.tmp', '34', 0, 'wwwwwwwwwwwwww', '30-06-11 04-56-52'),
('', '', '', '', 0, '', '30-06-11 04-56-58'),
('', '', '', '', 0, '', '30-06-11 04-56-58'),
('1', '1', '10.jpg', '1120', 1222, 'jhjk', '18-12-18 01-57-43'),
('1', '1', '1.jpg', '1', 100, 'nmbn', '28-12-18 10-02-17'),
('', '', '', '', 0, '', '28-12-18 10-02-17'),
('', '', '', '', 0, '', '28-12-18 10-02-28'),
('', '', '', '', 0, '', '28-12-18 10-02-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fdbk`
--
ALTER TABLE `fdbk`
 ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
 ADD PRIMARY KEY (`subcat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fdbk`
--
ALTER TABLE `fdbk`
MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `item_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
MODIFY `subcat_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
