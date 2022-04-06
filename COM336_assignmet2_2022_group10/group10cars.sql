-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 25, 2022 at 09:12 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group10cars`
--
CREATE DATABASE IF NOT EXISTS `group10cars` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `group10cars`;

-- --------------------------------------------------------

--
-- Table structure for table `car_products`
--

DROP TABLE IF EXISTS `car_products`;
CREATE TABLE IF NOT EXISTS `car_products` (
  `Product_ID` char(2) NOT NULL,
  `Product_Type` char(2) DEFAULT NULL,
  `Supplier_ID` char(2) DEFAULT NULL,
  `Product_Name` varchar(25) DEFAULT NULL,
  `Product_Price` char(10) DEFAULT NULL,
  `Product_Description` varchar(100) DEFAULT NULL,
  `Extra_Specs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `car_suppliers`
--

DROP TABLE IF EXISTS `car_suppliers`;
CREATE TABLE IF NOT EXISTS `car_suppliers` (
  `Supplier_ID` char(2) NOT NULL,
  `Supplier_Name` varchar(100) DEFAULT NULL,
  `Supplier_Address` varchar(100) DEFAULT NULL,
  `Contact_Name` varchar(100) DEFAULT NULL,
  `Supplier_Phone` char(11) DEFAULT NULL,
  `Supplier_Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_ID_2` char(2) NOT NULL,
  `Customer_Name` varchar(100) DEFAULT NULL,
  `Customer_Address` varchar(100) DEFAULT NULL,
  `Customer_Email` varchar(100) DEFAULT NULL,
  `Customer_Payment_Info` varchar(100) DEFAULT NULL,
  `Customer_Shipping_Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `date_time`
--

DROP TABLE IF EXISTS `date_time`;
CREATE TABLE IF NOT EXISTS `date_time` (
  `Date` date NOT NULL,
  `Day` char(8) DEFAULT NULL,
  `Month` char(8) DEFAULT NULL,
  `_Year` char(8) DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_admin`
--

DROP TABLE IF EXISTS `employee_admin`;
CREATE TABLE IF NOT EXISTS `employee_admin` (
  `Employee_ID` char(2) NOT NULL,
  `Emplyee_Address_ID` char(2) DEFAULT NULL,
  `Emplyee_Name` varchar(100) DEFAULT NULL,
  `Employee_Address` varchar(100) DEFAULT NULL,
  `Employee_Phone` char(11) DEFAULT NULL,
  `Other_Employee_Details` varchar(100) DEFAULT NULL,
  `Customer_ID` char(2) DEFAULT NULL,
  `Product_ID` char(2) DEFAULT NULL,
  `Shipping_ID` char(2) DEFAULT NULL,
  `Order_ID` char(2) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `Customer_ID` char(2) NOT NULL,
  `Product_ID` char(8) DEFAULT NULL,
  `Product_Type` varchar(25) DEFAULT NULL,
  `Shipping_ID` char(8) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Product_Price` char(10) DEFAULT NULL,
  `Quantity` char(2) DEFAULT NULL,
  `Customer_Payment_Info` varchar(25) DEFAULT NULL,
  `Customer_Shipping_Info` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `Customer_ID` char(2) DEFAULT NULL,
  `Product_ID` char(2) DEFAULT NULL,
  `Product_Type` char(2) DEFAULT NULL,
  `Shipping_ID` char(2) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Product_Price` int(10) DEFAULT NULL,
  `Quantity` int(3) DEFAULT NULL,
  `Payment_Confirmation_Y_N` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_info`
--

DROP TABLE IF EXISTS `shipping_info`;
CREATE TABLE IF NOT EXISTS `shipping_info` (
  `Shipping_ID` char(2) NOT NULL,
  `Shipping_Type` varchar(50) DEFAULT NULL,
  `Shipping_Cost` char(10) DEFAULT NULL,
  `Customer_Shipping_Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Shipping_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE IF NOT EXISTS `shopping_cart` (
  `Order_ID` char(2) NOT NULL,
  `Product_Type` char(2) DEFAULT NULL,
  `Supplier_ID` char(2) DEFAULT NULL,
  `Product_Name` varchar(25) DEFAULT NULL,
  `Product_Price` char(10) DEFAULT NULL,
  `Product_Description` varchar(25) DEFAULT NULL,
  `Quantity` char(4) DEFAULT NULL,
  `Total_Cost` char(10) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
