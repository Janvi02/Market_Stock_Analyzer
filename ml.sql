-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 20, 2025 at 05:25 AM
-- Server version: 10.5.25-MariaDB
-- PHP Version: 8.3.10
USE ml;

ALTER TABLE ml ADD COLUMN symbol VARCHAR(20);

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ml`
--

-- --------------------------------------------------------

--
-- Table structure for table `analysis`
--

CREATE TABLE `analysis` (
  `id` varchar(10) NOT NULL,
  `company_id` varchar(10) NOT NULL,
  `compounded_sales_growth` varchar(50) NOT NULL,
  `compounded_profit_growth` varchar(50) NOT NULL,
  `stock_price_cagr` varchar(50) NOT NULL,
  `roe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `analysis`
--

INSERT INTO `analysis` (`id`, `company_id`, `compounded_sales_growth`, `compounded_profit_growth`, `stock_price_cagr`, `roe`) VALUES
('1', 'HDFCBANK', '10 Years: 21%', '10 Years: 22%', '10 Years:     15%', '10 Years:     17%'),
('10', 'SBILIFE', '5 Years:       24%', '5 Years:            6%', '     5 Years:       8%', '5 Years          14%'),
('11', 'SBILIFE', '3 Years:       17%', '3 Years:            9%', '     3 Years:       7%', '3 Years:         13%'),
('12', 'SBILIFE', 'TTM:            43%', 'TTM:                 18%', '     1 Year:         -2%', 'Last Year:      12%'),
('13', 'TCS', '10 Years:     11%             ', '10 Years:          9%', '    10 Years:      14%', '10 Years:       40%'),
('14', 'TCS', '5 Years:       10%             ', '5 Years:            8%', '      5 Years:      16%', '5 Years:          44%'),
('15', 'TCS', '3 Years:       14%             ', '3 Years:            12%', '      3 Years:      8%', '3 Years:          47%'),
('16', 'TCS', 'TTM:            5%             ', 'TTM:                 8%', '      1 Year:       16%', 'Last Year:       52%'),
('17', 'WIPRO', '10 Years:     8%', '10 Years:          3%', '    10 Years:     12%', '10 Years:        18%'),
('18', 'WIPRO', '5 Years:       9%', '5 Years:            4%', '      5 Years:     20%', '5 Years:          17%'),
('19', 'WIPRO', '3 Years:      13%', '3 Years:            0%', '      3 Years:      -1%', '3 Years:          17%'),
('2', 'HDFCBANK', '5 Years:       22%', '5 Years:           23%', '      5 Years:       8%', '5 Years:       17%'),
('20', 'WIPRO', 'TTM:           -3%', 'TTM:                 1%', '      1 Year:       39%', 'Last Year:       14%'),
('3', 'HDFCBANK', '3 Years:       30%', '3 Years:           26%', '      3 Years:       8%', '3 Years:       17%'),
('4', 'HDFCBANK', 'TTM:            47%', 'TTM:                27%', '      1 Year:        13%', 'Last Year:    17%'),
('5', 'INFY', '10 Years:     12%', '10 Years:         9%', '     10 Years:     15%', '10 Years:      27%'),
('6', 'INFY', '5 Years:       13%', '5 Years:           11%', '       5 Years:     22%', '5 Years:        29%'),
('7', 'INFY', '3 Years:       5%', '3 Years:           10%', '       3 Years:     4%', '3 Years:        31%'),
('8', 'INFY', 'TTM:            3%', 'TTM:                 8%', '       1 Year:       27%', 'Last Year:     32%'),
('9', 'SBILIFE', '10 Years:     23%', '10 Years:          9%', '    10 Years:      9%', '10 Years:      16%');

--
-- Dumping additional dummy data for table `analysis`
--
SET SQL_SAFE_UPDATES = 0;

INSERT INTO `analysis` (`id`, `company_id`, `compounded_sales_growth`, `compounded_profit_growth`, `stock_price_cagr`, `roe`) VALUES
('101', 'ABB', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 18%'),
('102', 'ABB', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 20%'),
('103', 'ABB', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 22%'),
('104', 'ADANIENT', '10 Years: 25%', '10 Years: 28%', '10 Years: 22%', '10 Years: 15%'),
('105', 'ADANIENT', '5 Years: 28%', '5 Years: 30%', '5 Years: 25%', '5 Years: 18%'),
('106', 'ADANIENT', '3 Years: 32%', '3 Years: 35%', '3 Years: 28%', '3 Years: 20%'),
('107', 'ADANIPORTS', '10 Years: 18%', '10 Years: 20%', '10 Years: 15%', '10 Years: 12%'),
('108', 'ADANIPORTS', '5 Years: 20%', '5 Years: 22%', '5 Years: 18%', '5 Years: 15%'),
('109', 'ADANIPORTS', '3 Years: 22%', '3 Years: 25%', '3 Years: 20%', '3 Years: 18%'),
('110', 'ASIANPAINT', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 25%'),
('111', 'ASIANPAINT', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 28%'),
('112', 'ASIANPAINT', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 30%'),
('113', 'AXISBANK', '10 Years: 12%', '10 Years: 14%', '10 Years: 10%', '10 Years: 15%'),
('114', 'AXISBANK', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 18%'),
('115', 'AXISBANK', '3 Years: 15%', '3 Years: 18%', '3 Years: 14%', '3 Years: 20%'),
('116', 'BAJAJ-AUTO', '10 Years: 10%', '10 Years: 12%', '10 Years: 8%', '10 Years: 20%'),
('117', 'BAJAJ-AUTO', '5 Years: 12%', '5 Years: 14%', '5 Years: 10%', '5 Years: 22%'),
('118', 'BAJAJ-AUTO', '3 Years: 14%', '3 Years: 16%', '3 Years: 12%', '3 Years: 24%'),
('119', 'BAJAJFINSV', '10 Years: 20%', '10 Years: 22%', '10 Years: 18%', '10 Years: 15%'),
('120', 'BAJAJFINSV', '5 Years: 22%', '5 Years: 24%', '5 Years: 20%', '5 Years: 18%'),
('121', 'BAJAJFINSV', '3 Years: 24%', '3 Years: 26%', '3 Years: 22%', '3 Years: 20%'),
('122', 'BHARTIARTL', '10 Years: 18%', '10 Years: 20%', '10 Years: 15%', '10 Years: 12%'),
('123', 'BHARTIARTL', '5 Years: 20%', '5 Years: 22%', '5 Years: 18%', '5 Years: 15%'),
('124', 'BHARTIARTL', '3 Years: 22%', '3 Years: 25%', '3 Years: 20%', '3 Years: 18%'),
('125', 'BPCL', '10 Years: 10%', '10 Years: 12%', '10 Years: 8%', '10 Years: 15%'),
('126', 'BPCL', '5 Years: 12%', '5 Years: 14%', '5 Years: 10%', '5 Years: 18%'),
('127', 'BPCL', '3 Years: 14%', '3 Years: 16%', '3 Years: 12%', '3 Years: 20%'),
('128', 'BRITANNIA', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 30%'),
('129', 'BRITANNIA', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 32%'),
('130', 'BRITANNIA', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 35%'),
('131', 'CIPLA', '10 Years: 10%', '10 Years: 12%', '10 Years: 8%', '10 Years: 18%'),
('132', 'CIPLA', '5 Years: 12%', '5 Years: 14%', '5 Years: 10%', '5 Years: 20%'),
('133', 'CIPLA', '3 Years: 14%', '3 Years: 16%', '3 Years: 12%', '3 Years: 22%'),
('134', 'COALINDIA', '10 Years: 8%', '10 Years: 10%', '10 Years: 6%', '10 Years: 25%'),
('135', 'COALINDIA', '5 Years: 10%', '5 Years: 12%', '5 Years: 8%', '5 Years: 28%'),
('136', 'COALINDIA', '3 Years: 12%', '3 Years: 14%', '3 Years: 10%', '3 Years: 30%'),
('137', 'DIVISLAB', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 22%'),
('138', 'DIVISLAB', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 24%'),
('139', 'DIVISLAB', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 26%'),
('140', 'DLF', '10 Years: 12%', '10 Years: 14%', '10 Years: 10%', '10 Years: 10%'),
('141', 'DLF', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 12%'),
('142', 'DLF', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 14%'),
('143', 'DMART', '10 Years: 25%', '10 Years: 28%', '10 Years: 22%', '10 Years: 20%'),
('144', 'DMART', '5 Years: 28%', '5 Years: 30%', '5 Years: 25%', '5 Years: 22%'),
('145', 'DMART', '3 Years: 30%', '3 Years: 32%', '3 Years: 28%', '3 Years: 25%'),
('146', 'DRREDDY', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 18%'),
('147', 'DRREDDY', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 20%'),
('148', 'DRREDDY', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 22%'),
('149', 'EICHERMOT', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 22%'),
('150', 'EICHERMOT', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 24%'),
('151', 'EICHERMOT', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 26%'),
('152', 'GAIL', '10 Years: 10%', '10 Years: 12%', '10 Years: 8%', '10 Years: 12%'),
('153', 'GAIL', '5 Years: 12%', '5 Years: 14%', '5 Years: 10%', '5 Years: 15%'),
('154', 'GAIL', '3 Years: 14%', '3 Years: 16%', '3 Years: 12%', '3 Years: 18%'),
('155', 'GRASIM', '10 Years: 8%', '10 Years: 10%', '10 Years: 6%', '10 Years: 10%'),
('156', 'GRASIM', '5 Years: 10%', '5 Years: 12%', '5 Years: 8%', '5 Years: 12%'),
('157', 'GRASIM', '3 Years: 12%', '3 Years: 14%', '3 Years: 10%', '3 Years: 14%'),
('158', 'HCLTECH', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 20%'),
('159', 'HCLTECH', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 22%'),
('160', 'HCLTECH', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 24%'),
('161', 'HDFCLIFE', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 15%'),
('162', 'HDFCLIFE', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 18%'),
('163', 'HDFCLIFE', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 20%'),
('164', 'HEROMOTOCO', '10 Years: 10%', '10 Years: 12%', '10 Years: 8%', '10 Years: 20%'),
('165', 'HEROMOTOCO', '5 Years: 12%', '5 Years: 14%', '5 Years: 10%', '5 Years: 22%'),
('166', 'HEROMOTOCO', '3 Years: 14%', '3 Years: 16%', '3 Years: 12%', '3 Years: 24%'),
('167', 'HINDALCO', '10 Years: 12%', '10 Years: 14%', '10 Years: 10%', '10 Years: 12%'),
('168', 'HINDALCO', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 15%'),
('169', 'HINDALCO', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 18%'),
('170', 'HINDUNILVR', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 25%'),
('171', 'HINDUNILVR', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 28%'),
('172', 'HINDUNILVR', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 30%'),
('173', 'ICICIBANK', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 15%'),
('174', 'ICICIBANK', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 18%'),
('175', 'ICICIBANK', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 20%'),
('176', 'INDUSINDBK', '10 Years: 12%', '10 Years: 14%', '10 Years: 10%', '10 Years: 15%'),
('177', 'INDUSINDBK', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 18%'),
('178', 'INDUSINDBK', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 20%'),
('179', 'IOC', '10 Years: 10%', '10 Years: 12%', '10 Years: 8%', '10 Years: 12%'),
('180', 'IOC', '5 Years: 12%', '5 Years: 14%', '5 Years: 10%', '5 Years: 15%'),
('181', 'IOC', '3 Years: 14%', '3 Years: 16%', '3 Years: 12%', '3 Years: 18%'),
('182', 'ITC', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 25%'),
('183', 'ITC', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 28%'),
('184', 'ITC', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 30%'),
('185', 'JSWSTEEL', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 12%'),
('186', 'JSWSTEEL', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 15%'),
('187', 'JSWSTEEL', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 18%'),
('188', 'KOTAKBANK', '10 Years: 18%', '10 Years: 20%', '10 Years: 15%', '10 Years: 15%'),
('189', 'KOTAKBANK', '5 Years: 20%', '5 Years: 22%', '5 Years: 18%', '5 Years: 18%'),
('190', 'KOTAKBANK', '3 Years: 22%', '3 Years: 25%', '3 Years: 20%', '3 Years: 20%'),
('191', 'LT', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 15%'),
('192', 'LT', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 18%'),
('193', 'LT', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 20%'),
('194', 'M&M', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 18%'),
('195', 'M&M', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 20%'),
('196', 'M&M', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 22%'),
('197', 'MARUTI', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 15%'),
('198', 'MARUTI', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 18%'),
('199', 'MARUTI', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 20%'),
('200', 'NESTLEIND', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 30%'),
('201', 'NESTLEIND', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 32%'),
('202', 'NESTLEIND', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 35%'),
('203', 'NTPC', '10 Years: 10%', '10 Years: 12%', '10 Years: 8%', '10 Years: 12%'),
('204', 'NTPC', '5 Years: 12%', '5 Years: 14%', '5 Years: 10%', '5 Years: 15%'),
('205', 'NTPC', '3 Years: 14%', '3 Years: 16%', '3 Years: 12%', '3 Years: 18%'),
('206', 'ONGC', '10 Years: 8%', '10 Years: 10%', '10 Years: 6%', '10 Years: 15%'),
('207', 'ONGC', '5 Years: 10%', '5 Years: 12%', '5 Years: 8%', '5 Years: 18%'),
('208', 'ONGC', '3 Years: 12%', '3 Years: 14%', '3 Years: 10%', '3 Years: 20%'),
('209', 'PIDILITIND', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 25%'),
('210', 'PIDILITIND', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 28%'),
('211', 'PIDILITIND', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 30%'),
('212', 'POWERGRID', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 15%'),
('213', 'POWERGRID', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 18%'),
('214', 'POWERGRID', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 20%'),
('215', 'RELIANCE', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 12%'),
('216', 'RELIANCE', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 15%'),
('217', 'RELIANCE', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 18%'),
('218', 'SBIN', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 15%'),
('219', 'SBIN', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 18%'),
('220', 'SBIN', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 20%'),
('221', 'SUNPHARMA', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 18%'),
('222', 'SUNPHARMA', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 20%'),
('223', 'SUNPHARMA', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 22%'),
('224', 'TATAMOTORS', '10 Years: 18%', '10 Years: 20%', '10 Years: 15%', '10 Years: 15%'),
('225', 'TATAMOTORS', '5 Years: 20%', '5 Years: 22%', '5 Years: 18%', '5 Years: 18%'),
('226', 'TATAMOTORS', '3 Years: 22%', '3 Years: 25%', '3 Years: 20%', '3 Years: 20%'),
('227', 'TATASTEEL', '10 Years: 12%', '10 Years: 15%', '10 Years: 10%', '10 Years: 12%'),
('228', 'TATASTEEL', '5 Years: 14%', '5 Years: 16%', '5 Years: 12%', '5 Years: 15%'),
('229', 'TATASTEEL', '3 Years: 16%', '3 Years: 18%', '3 Years: 14%', '3 Years: 18%'),
('230', 'TITAN', '10 Years: 20%', '10 Years: 22%', '10 Years: 18%', '10 Years: 30%'),
('231', 'TITAN', '5 Years: 22%', '5 Years: 24%', '5 Years: 20%', '5 Years: 32%'),
('232', 'TITAN', '3 Years: 24%', '3 Years: 26%', '3 Years: 22%', '3 Years: 35%'),
('233', 'ULTRACEMCO', '10 Years: 15%', '10 Years: 18%', '10 Years: 12%', '10 Years: 15%'),
('234', 'ULTRACEMCO', '5 Years: 16%', '5 Years: 19%', '5 Years: 14%', '5 Years: 18%'),
('235', 'ULTRACEMCO', '3 Years: 18%', '3 Years: 22%', '3 Years: 16%', '3 Years: 20%'),
('236', 'WIPRO', '10 Years: 10%', '10 Years: 12%', '10 Years: 8%', '10 Years: 15%'),
('237', 'WIPRO', '5 Years: 12%', '5 Years: 14%', '5 Years: 10%', '5 Years: 18%'),
('238', 'WIPRO', '3 Years: 14%', '3 Years: 16%', '3 Years: 12%', '3 Years: 20%'),
('239', 'ZOMATO', '10 Years: 40%', '10 Years: -5%', '10 Years: 15%', '10 Years: -2%'),
('240', 'ZOMATO', '5 Years: 45%', '5 Years: -8%', '5 Years: 18%', '5 Years: -5%'),
('241', 'ZOMATO', '3 Years: 50%', '3 Years: -10%', '3 Years: 20%', '3 Years: -8%'),
('242', 'PAYTM', '10 Years: 35%', '10 Years: -10%', '10 Years: 12%', '10 Years: -8%'),
('243', 'PAYTM', '5 Years: 38%', '5 Years: -12%', '5 Years: 15%', '5 Years: -10%'),
('244', 'PAYTM', '3 Years: 40%', '3 Years: -15%', '3 Years: 18%', '3 Years: -12%'),
('245', 'NAZARA', '10 Years: 25%', '10 Years: 20%', '10 Years: 18%', '10 Years: 15%'),
('246', 'NAZARA', '5 Years: 28%', '5 Years: 22%', '5 Years: 20%', '5 Years: 18%'),
('247', 'NAZARA', '3 Years: 30%', '3 Years: 25%', '3 Years: 22%', '3 Years: 20%'),
('248', 'DELHIVERY', '10 Years: 30%', '10 Years: -5%', '10 Years: 15%', '10 Years: -3%'),
('249', 'DELHIVERY', '5 Years: 32%', '5 Years: -8%', '5 Years: 18%', '5 Years: -5%'),
('250', 'DELHIVERY', '3 Years: 35%', '3 Years: -10%', '3 Years: 20%', '3 Years: -8%');

INSERT INTO `analysis` (`id`, `company_id`, `compounded_sales_growth`, `compounded_profit_growth`, `stock_price_cagr`, `roe`) VALUES
(251, 'BANKBARODA', '10 Years: 6%', '10 Years: 4%', '10 Years: 5%', '10 Years: 8%'),
(252, 'BANKBARODA', '5 Years: 7%', '5 Years: 5%', '5 Years: 6%', '5 Years: 9%'),
(253, 'BANKBARODA', '3 Years: 8%', '3 Years: 6%', '3 Years: 7%', '3 Years: 10%');


-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` varchar(255) NOT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `chart_link` varchar(255) DEFAULT NULL,
  `about_company` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `nse_profile` varchar(255) DEFAULT NULL,
  `bse_profile` varchar(255) DEFAULT NULL,
  `face_value` int(11) DEFAULT NULL,
  `book_value` int(11) DEFAULT NULL,
  `roce_percentage` decimal(12,2) DEFAULT NULL,
  `roe_percentage` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--
select * from companies;
INSERT INTO `companies` (`id`, `company_logo`, `company_name`, `chart_link`, `about_company`, `website`, `nse_profile`, `bse_profile`, `face_value`, `book_value`, `roce_percentage`, `roe_percentage`) VALUES
('ABB', 'https://bluestock.in/static/mkt-icons/nifty100/ABB.png', 'Abbott India Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AABBOTINDIA', 'Abbott India Ltd is one of the leading multinational pharmaceutical companies in India and sells its products through independent distributors primarily within India.', 'https://www.abbott.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=ABBOTINDIA', 'https://www.bseindia.com/stock-share-price/abbott-india-ltd/ABBOTINDIA/500488/', 10, 1657, 46.00, 34.90),
('ADANIENSOL', 'https://m.economictimes.com/thumb/msid-117371599,width-1200,height-900,resizemode-4,imgsize-5642/the-growth-story-remains-intact-for-adani-energy-solutions-says-jefferies.jpg', 'Adani Energy Solutions Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AADANIENSOL', 'AESL, part of the Adani portfolio, is a multidimensional organization with presence in various facets of the energy domain, namely power transmission, distribution, smart metering, and cooling solutions. AESL is India\'s largest private transmission company', 'https://www.adanienergysolutions.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ADANIENSOL', 'https://www.bseindia.com/stock-share-price/adani-energy-solutions-ltd/ADANIENSOL/539254/', 10, 175, 9.00, 8.59),
('ADANIENT', 'https://bluestock.in/static/mkt-icons/nifty100/ADANIENT.png', 'Adani Enterprises Ltd', 'https://in.tradingview.com/chart/?symbol=ADANIENT', 'Adani Enterprises Ltd is an Indian multinational public company and a subsidiary of Adani Group. It is headquartered in Ahmedabad and has business interests in coal mining and trading, airport operations, edible oils, road, rail and water infrastructure, data centers, hydrocarbon exploration, defence and aerospace, multimodal logistics, and agro commodities.', 'https://www.adanienterprises.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ADANIENT', 'https://www.bseindia.com/stock-share-price/adani-enterprises-ltd/adanient/512', 1, 363, 11.60, 13.64),
('ADANIGREEN', 'https://bluestock.in/static/mkt-icons/nifty100/ADANIGREEN.png', 'Adani Green Energy Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AADANIGREEN', 'Adani Green Energy Limited, incorporated in 2015, is a holding company of several subsidiaries carrying business of renewable power generation within the group and is primarily involved in renewable power generation and other ancillary activities.', 'http://www.adanigreenenergy.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ADANIGREEN', 'https://www.bseindia.com/stock-share-price/adani-green-energy-ltd/ADANIGREEN/541450/', 10, 67, 96.50, 14.70),
('ADANIPORTS', 'https://bluestock.in/static/mkt-icons/nifty100/ADANIPORTS.png', 'Adani Ports & Special Economic Zone Ltd\r\n', 'https://in.tradingview.com/chart/?symbol=NSE%3AADANIPORTS', 'Adani Ports & Special Economic Zone is in the business of development, operations and maintenance of port infrastructure (port services and related infrastructure development) and has linked multi product Special Economic Zone (SEZ) and related infrastructure contiguous to Port at Mundra.', 'http://www.adaniports.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ADANIPORTS', 'https://www.bseindia.com/stock-share-price/adani-ports-special-economic-zone-ltd/ADANIPORTS/532921/', 2, 265, 12.90, 18.10),
('ADANIPOWER', 'https://bluestock.in/static/mkt-icons/nifty100/ADANIPOWER.png\r\n', 'Adani Power Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AADANIPOWER', 'Adani Power (APL), a part of the diversified Adani Group, is the largest private thermal power producer in India. The co along with its subsidiaries sell power generated from these projects under a combination of long term Power Purchase Agreements, Short term PPA and on merchant basis', 'http://www.adani.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ADANIPOWER', 'https://www.bseindia.com/stock-share-price/adani-power-ltd/ADANIPOWER/533096/', 10, 145, 32.20, 57.10),
('AMBUJACEM', 'https://bluestock.in/static/mkt-icons/nifty100/AMBUJACEM.png', 'Ambuja Cements Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Ambuja Cements Ltd. is among the leading cement companies in India. It is a member of the Adani Group. Currently, Ambuja Cement has a cement capacity of 31 million tonnes with six integrated cement manufacturing plants', 'https://www.ambujacement.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=AMBUJACEM', 'https://www.bseindia.com/stock-share-price/ambuja-cements-ltd/AMBUJACEM/500425/', 2, 205, 12.80, 9.24),
('APOLLOHOSP', 'https://bluestock.in/static/mkt-icons/nifty100/APOLLOHOSP.png', 'Apollo Hospitals\r\nChain of Indian private hospitals', 'https://in.tradingview.com/chart/?symbol=NSE%3AAPOLLOHOSP', 'Apollo Hospitals Enterprise Limited is an Indian multinational healthcare group headquartered in Chennai. It is the largest for-profit private hospital network in India, with a network of 71 owned and managed hospitals.', 'https://www.apollohospitals.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=APOLLOHOSP', 'https://www.bseindia.com/stock-share-price/apollo-hospitals-enterprise-ltd/apollohosp/508869/', 5, 522, 17.20, 13.81),
('ASIANPAINT', 'https://bluestock.in/static/mkt-icons/nifty100/ASIANPAINT.png', 'Asian Paints\r\nIndian Multi-National Paint and Coating Manufacturing Company', 'https://in.tradingview.com/chart/?symbol=NSE%3AASIANPAINT', 'Asian Paints Ltd is an Indian multinational paint company, headquartered in Mumbai. The company is engaged in the business of manufacturing, selling and distribution of paints, coatings, products related to home decor, bath fittings and providing related services.', 'https://www.asianpaints.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ASIANPAINT', 'https://www.bseindia.com/stock-share-price/asian-paints-ltd/asianpaint/500820/', 1, 188, 41.75, 31.45),
('ATGL', 'https://bluestock.in/static/mkt-icons/nifty100/ATGL.png', 'Adani Total Gas Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AATGL', 'AGL is engaged in City Gas Distribution (CGD) business and supplies natural gas to domestic, commercial, industrial and vehicle users.', 'http://www.adanigas.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ATGL', 'https://www.bseindia.com/stock-share-price/adani-total-gas-ltd/ATGL/542066/', 1, 36, 21.20, 20.50),
('AXISBANK', 'https://bluestock.in/static/mkt-icons/nifty100/AXISBANK.png', 'Axis Bank Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AAXISBANK', 'Incorporated in December 1993, Axis Bank Limited is a private sector bank.It has the third-largest network of branches among private sector banks and an international presence through branches in DIFC (Dubai) and Singapore along with representative offices in Abu Dhabi, Sharjah, Dhaka and Dubai and an offshore banking unit in GIFT City.', 'http://www.axisbank.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=AXISBANK', 'https://www.bseindia.com/stock-share-price/axis-bank-ltd/AXISBANK/532215/', 2, 509, 7.06, 18.40),
('BAJAJ-AUTO', 'https://bluestock.in/static/mkt-icons/nifty100/BAJAJ-AUTO.png', 'Bajaj Auto Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Bajaj Auto, the flagship company of Bajaj Group, is a two-wheeler and three-wheeler manufacturing company that exports to 79 countries across several countries in Latin America, Southeast Asia, and many more. Its headquarter is in Pune, India.\r\nIt has acquired 48% of the KTM Brand which manufactures sports and super sports two-wheelers, which was 14% in 2007 when the company first acquired KTM. [1]\r\n\r\n', 'https://www.bajajauto.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=BAJAJ-AUTO', 'https://www.bseindia.com/stock-share-price/bajaj-auto-ltd/BAJAJ-AUTO/532977/', 10, 1109, 33.50, 26.50),
('BAJAJFINSV', 'https://bluestock.in/static/mkt-icons/nifty100/BAJAJFINSV.png', 'Bajaj Finserv Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ABAJAJFINSV', 'Bajaj Finserv Limited is an Indian non-banking financial services company headquartered in Pune. It is focused on lending, asset management, wealth management and insurance.', 'https://www.bajajfinserv.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=BAJAJFINSV', 'https://www.bseindia.com/stock-share-price/bajaj-finserv-ltd/bajajfinsv/532978/', 1, 428, 21.14, 11.72),
('BAJAJHLDNG', 'https://bluestock.in/static/mkt-icons/nifty100/BAJAJHLDNG.png', 'Bajaj Holdings & Investment Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Bajaj Holdings & Investment Ltd. operates as an Investment Company and is registered as a Non-Banking Financial Institution- Investment and Credit Company with the Reserve Bank of India. The Co. holds more than 36% stake in both Bajaj Auto Ltd. and Bajaj Finserv Ltd.\r\n\r\n', 'https://www.bhil.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=BAJAJHLDNG', 'https://www.bseindia.com/stock-share-price/bajaj-holdings-investment-ltd/BAJAJHLDNG/500490/', 10, 5375, 13.10, 14.80),
('BAJFINANCE', 'https://bluestock.in/static/mkt-icons/nifty100/BAJFINANCE.png', 'Bajaj Finance Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Bajaj Finance is mainly engaged in the business of lending. BFL has a diversified lending portfolio across retail, SME and commercial customers with a significant presence in urban and rural India. It also accepts public and corporate deposits and offers variety of financial services products to its customers.', 'https://www.bajajfinserv.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=BAJFINANCE', 'https://www.bseindia.com/stock-share-price/bajaj-finance-ltd/BAJFINANCE/500034/', 2, 1402, 11.90, 22.10),
('BANKBARODA', 'https://bluestock.in/static/mkt-icons/nifty100/BANKBARODA.png', 'Bank of Baroda', 'https://in.tradingview.com/chart/?symbol=BANKBARODA', 'Bank of Baroda is engaged in providing various services, such as personal banking, corporate banking, international banking, small and medium enterprise (SME) banking, rural banking, non-resident Indian (NRI) services and treasury services.', 'http://www.bankofbaroda.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=BANKBARODA', 'https://www.bseindia.com/stock-share-price/bank-of-baroda/BANKBARODA/532134/', 2, 231, 6.33, 16.70),
('BEL', 'https://bluestock.in/static/mkt-icons/nifty100/BEL.png', 'Bharat Electronics Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ABEL', 'Incorporated in 1954, Bharat Electronics Ltd manufactures and supplies electronic equipment and systems to the defence sector. Company also has a limited presence in the civilian market', 'http://www.bel-india.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=BEL', 'https://www.bseindia.com/stock-share-price/bharat-electronics-ltd/BEL/500049/', 1, 24, 34.60, 26.30),
('BHARTIARTL', 'https://bluestock.in/static/mkt-icons/nifty100/BHARTIARTL.png', 'Bharti Airtel Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ABHARTIARTL', 'Bharti Airtel Ltd is one of the world\'s leading providers of telecommunication services with presence in 18 countries representing India, Sri\r\nLanka, 14 countries in Africa.', 'http://www.airtel.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=BHARTIARTL', 'https://www.bseindia.com/stock-share-price/bharti-airtel-ltd/BHARTIARTL/532454/', 5, 153, 13.10, 14.90),
('BHEL', 'https://bluestock.in/static/mkt-icons/nifty100/BHEL.png', 'Bharat Heavy Electricals Limited\r\n', 'https://in.tradingview.com/chart/?symbol=BSE%3ABHEL', 'Bharat Heavy Electricals Limited is an Indian central public sector undertaking and the largest government-owned electrical/ industrial technology company.', 'https://www.bhel.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=BHEL', 'https://www.bseindia.com/stock-share-price/bharat-electronics-ltd/bel/500049/', 2, 70, 3.28, 1.05),
('BOSCHLTD', 'https://bluestock.in/static/mkt-icons/nifty100/BOSCHLTD.png', 'Bosch Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Bosch Ltd has presence across automotive technology, industrial technology, consumer goods and energy and building technology. It manufactures and trades in products such as diesel and gasoline fuel injection systems, automotive aftermarket products, industrial equipment, electrical power tools, security systems', 'https://www.bosch.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=BOSCHLTD', 'https://www.bseindia.com/stock-share-price/bosch-ltd/BOSCHLTD/500530/', 10, 4319, 20.60, 16.00),
('BPCL', 'https://bluestock.in/static/mkt-icons/nifty100/BPCL.png', 'Bharat Petroleum Corporation Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Bharat Petroleum Corporation is a public sector company which is engaged in the business of refining of crude oil and marketing of petroleum products.[1]\r\n\r\n', 'https://www.bharatpetroleum.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=BPCL', 'https://www.bseindia.com/stock-share-price/bharat-petroleum-corporation-ltd/BPCL/500547/', 10, 178, 32.10, 41.90),
('BRITANNIA', 'https://bluestock.in/static/mkt-icons/nifty100/BRITANNIA.png', 'Britannia Industries Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Britannia Industries is one of Indias leading food companies with a 100 year legacy and annual revenues in excess of Rs. 9000 Cr. Britannia is among the most trusted food brands, and manufactures Indias favorite brands like Good Day, Tiger, NutriChoice, Milk Bikis and Marie Gold which are household names in India. Britannias product portfolio includes Biscuits, Bread, Cakes, Rusk, and Dairy products including Cheese, Beverages, Milk and Yoghurt.\r\n\r\n', 'https://www.britannia.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=BRITANNIA', 'https://www.bseindia.com/stock-share-price/britannia-industries-ltd/BRITANNIA/500825/', 1, 133, 48.90, 57.10),
('CANBK', 'https://bluestock.in/static/mkt-icons/nifty100/CANBK.png', 'Canara Bank', 'https://in.tradingview.com/chart/?symbol=NSE%3ACANBK', 'Canara Bank was merged with erstwhile Syndicate Bank in FY21.{# Canara was incorporated in 1906 and nationalised in 1969, along with 13 other major commercial banks of India, by the GoI. The bank is headquartered in Bangalore.', 'http://www.canarabank.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=CANBK', 'https://www.bseindia.com/stock-share-price/canara-bank/CANBK/532483/', 2, 102, 6.63, 17.90),
('CHOLAFIN', 'https://bluestock.in/static/mkt-icons/nifty100/CHOLAFIN.png', 'Cholamandalam Investment & Finance Company Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Cholamandalam Investment & Finance Company is one of the premier diversified non-banking finance companies in India, engaged in providing vehicle finance, home loans and Loan against property.[1]\r\n\r\n\r\n', 'https://www.cholamandalam.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=CHOLAFIN', 'https://www.bseindia.com/stock-share-price/cholamandalam-investment-finance-company-ltd/CHOLAFIN/511243/', 2, 255, 10.40, 20.20),
('CIPLA', 'https://bluestock.in/static/mkt-icons/nifty100/CIPLA.png', 'Cipla Ltd\r\n', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0\r\n', 'Cipla is engaged in the Business of Pharmaceuticals.(Source : 202003 Annual Report Page No:157)', 'https://www.cipla.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=CIPLA', 'https://www.bseindia.com/stock-share-price/cipla-ltd/CIPLA/500087/', 2, 351, 22.80, 16.80),
('COALINDIA', 'https://bluestock.in/static/mkt-icons/nifty100/COALINDIA.png', 'Coal India Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ACOALINDIA', 'Coal India Ltd is mainly engaged in mining and production of Coal and also operates Coal washeries. The major consumers of the company are power and steel sectors. Consumers from other sectors include cement, fertilizers, brick kilns etc.', 'http://www.coalindia.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=COALINDIA', 'https://www.bseindia.com/stock-share-price/coal-india-ltd/COALINDIA/533278/', 10, 156, 63.60, 52.00),
('DABUR', 'https://bluestock.in/static/mkt-icons/nifty100/DABUR.png', 'Dabur India Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ADABUR', 'Dabur India is one of the leading fast moving consumer goods (FMCG) players dealing in consumer care and food products.', 'http://www.dabur.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=DABUR', 'https://www.bseindia.com/stock-share-price/dabur-india-ltd/DABUR/500096/', 1, 59, 22.30, 19.20),
('DIVISLAB', 'https://bluestock.in/static/mkt-icons/nifty100/DIVISLAB.png', 'Divis Laboratories Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Incorporated in 1990, Divis Laboratories Ltd manufactures and exports API\'s, Intermediates and Nutraceutical ingredients', 'https://www.divislaboratories.com/lander', 'https://www.nseindia.com/get-quotes/equity?symbol=DIVISLAB', 'https://www.bseindia.com/stock-share-price/divis-laboratories-ltd/DIVISLAB/532488/', 2, 517, 16.50, 12.20),
('DLF', 'https://bluestock.in/static/mkt-icons/nifty100/DLF.png', 'DLF Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'DLF Ltd with its subsidiaries, associates and JVs is engaged in real estate development, from the identification and acquisition of land to planning, execution, construction and marketing of projects. It is also engaged in business of leasing, generation of power, provision of maintenance services, hospitality and recreational services which are related to the overall development of real estate business.', 'https://www.dlf.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=DLF', 'https://www.bseindia.com/stock-share-price/dlf-ltd/DLF/532868/', 2, 163, 5.74, 6.95),
('DMART', 'https://bluestock.in/static/mkt-icons/nifty100/DMART.png', 'Avenue Supermarts Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ADMART', 'Avenue Supermarts Limited (DMart) is a national supermarket chain, with a focus on value-retailing. We offer a wide range of products with a focus on the Foods, Non-Foods (FMCG) and General Merchandise\r\n& Apparel product categories', 'http://www.dmartindia.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=DMART', 'https://www.bseindia.com/stock-share-price/avenue-supermarts-ltd/DMART/540376/', 10, 309, 19.40, 14.50),
('DRREDDY', 'https://bluestock.in/static/mkt-icons/nifty100/DRREDDY.png', 'Dr Reddys Laboratories Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Dr. Reddy\'s Laboratories Ltd is a leading India-based pharmaceutical company which offers a portfolio of products and services, including Active Pharmaceutical Ingredients (APIs), Custom Pharmaceutical services (CPS), generics, biosimilars and differentiated formulations.', 'https://www.drreddys.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=DRREDDY', 'https://www.bseindia.com/stock-share-price/dr-reddys-laboratories-ltd/DRREDDY/500124/', 1, 369, 26.50, 21.40),
('EICHERMOT', 'https://bluestock.in/static/mkt-icons/nifty100/EICHERMOT.png', 'Eicher Motors Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Eicher Motors Limited, incorporated in 1982, is the listed company of the Eicher Group in India and a leading player in the Indian automobile industry and the global leader in middleweight motorcycles.\r\nEicher has a joint venture with Sweden\'s AB Volvo to create Volvo Eicher Commercial Vehicles Limited (VECV). VECV is engaged in truck and bus operations, auto components business, and technical ', 'https://www.eicher.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=EICHERMOT', 'https://www.bseindia.com/stock-share-price/eicher-motors-ltd/EICHERMOT/505200/', 1, 693, 31.10, 24.20),
('GAIL', 'https://bluestock.in/static/mkt-icons/nifty100/GAIL.png', 'GAIL (India) Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AGAIL', 'Incorporated in 1984, GAIL, a Government of India undertaking, is an integrated natural gas company in India. It owns over 11,500 km of natural gas pipelines, over 2300 km of LPG pipelines, six LPG gas-processing units and a petrochemicals facility. It also has a joint-venture interest in Petronet LNG Ltd, Ratnagiri Gas and Power Pvt Ltd, and in the CGD business in several cities', 'https://gailonline.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=GAIL', 'https://www.bseindia.com/stock-share-price/gail-india-ltd/GAIL/532155/', 10, 127, 14.70, 14.00),
('GODREJCP', 'https://bluestock.in/static/mkt-icons/nifty100/GODREJCP.png', 'Godrej Consumer Products Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AGODREJCP', 'Godrej Consumer Products Limited is an Indian Multinational consumer goods company based in Mumbai, India. GCPL\'s products include soap, hair colourants, toiletries and liquid detergents.', 'https://www.godrejcp.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=GODREJCP', 'https://www.bseindia.com/stock-share-price/godrej-consumer-products-ltd/godrejcp/532424/', 1, 119, 26.49, 6.77),
('GRASIM', 'https://bluestock.in/static/mkt-icons/nifty100/GRASIM.png', 'Grasim Industries Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Grasim Industries Limited is the flagship company of the Aditya Birla group, it ranks amongst India\'s largest private sector companies. On standalone basis, GIL\'s core businesses comprise of viscose Staple fibre (VSF), caustic soda, speciality chemicals, rayon-grade wood pulp (RGWP) with plants at multiple locations. It also has certain other businesses such as fertiliser, textile', 'https://www.grasim.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=GRASIM', 'https://www.bseindia.com/stock-share-price/grasim-industries-ltd/GRASIM/500300/', 2, 1411, 9.30, 6.90),
('HAL', 'https://bluestock.in/static/mkt-icons/nifty100/HAL.png', 'Hindustan Aeronautics Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Hindustan Aeronautics is engaged in the business of Manufacture of Aircraft and Helicopters and Repair, Maintenance of Aircraft and Helicopters', 'https://hal-india.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=HAL', 'https://www.bseindia.com/stock-share-price/hindustan-aeronautics-ltd/HAL/541154/', 5, 465, 38.90, 28.90),
('HAVELLS', 'https://bluestock.in/static/mkt-icons/nifty100/HAVELLS.png', 'Havells India Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Havells India Limited is a leading Fast Moving Electrical Goods (FMEG) Company and a major power distribution equipment manufacturer with a strong global presence.\r\nIt enjoys enviable market dominance across a wide spectrum of products, including Industrial & Domestic Circuit Protection Devices, Cables & Wires, Motors, Fans, Modular Switches, Home Appliances, Air Conditioners, Electric Water Heaters, Power Capacitors, Luminaires for Domestic, Commercial and Industrial', 'https://havells.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=HAVELLS', 'https://www.bseindia.com/stock-share-price/havells-india-ltd/HAVELLS/517354/', 1, 124, 24.40, 18.00),
('HCLTECH', 'https://bluestock.in/static/mkt-icons/nifty100/HCLTECH.png', 'HCL Technologies Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'HCL Tech is a leading global IT services company, which is ranked amongst the top five Indian IT services companies in terms of revenues. Since its inception into the global landscape after its IPO in 1999, HCL Tech has focused on transformational outsourcing, and offers an integrated portfolio of services including software-led IT solutions, remote infrastructure management, engineering and R&D services and BPO. The company leverages its extensive global offshore infrastructure and network of offices in 46 ', 'https://www.hcltech.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=HCLTECH', 'https://www.bseindia.com/stock-share-price/hcl-technologies-ltd/HCLTECH/532281/', 2, 254, 29.60, 23.30),
('HDFCBANK', 'https://bluestock.in/static/mkt-icons/nifty100/HDFCBANK.png\r\n', 'HDFC Bank Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AHDFCBANK', 'HDFC Bank Limited (also known as HDFC) is an Indian banking and financial services company headquartered in Mumbai. It is India\'s largest private sector bank by assets and the world\'s tenth-largest bank by market capitalization as of May 2024.\r\nAs of April 2024, HDFC Bank has a market capitalization of $145 billion, making it the third-largest company on the Indian stock exchanges', 'http://www.hdfcbank.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=HDFCBANK', 'https://www.bseindia.com/stock-share-price/hdfc-bank-ltd/HDFCBANK/500180/', 1, 601, 7.67, 17.10),
('HDFCLIFE', 'https://bluestock.in/static/mkt-icons/nifty100/HDFCLIFE.png', 'HDFC Life Insurance Company Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AHDFCLIFE', 'HDFC Life Insurance Company is engaged in carrying on the business of life insurance. The Company offers a range of individual and group insurance solutions.', 'http://www.hdfclife.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=HDFCLIFE', 'https://www.bseindia.com/stock-share-price/hdfc-life-insurance-company-ltd/HDFCLIFE/540777/', 10, 73, 6.61, 11.40),
('HEROMOTOCO', 'https://bluestock.in/static/mkt-icons/nifty100/HEROMOTOCO.png', 'Hero MotoCorp Ltd\r\n', 'https://in.tradingview.com/chart/?symbol=NSE%3AHEROMOTOCO', 'Hero Moto Corp earlier also known as \"Hero Honda\" is one of India\'s first motorcycle manufacturers.\r\nThe company started in 1984 as a Technological collaboration with Honda, Japan. Before this collaboration, Hero was selling Cycles under the brand name, Hero Cycles.', 'http://www.heromotocorp.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=HEROMOTOCO', 'https://www.bseindia.com/stock-share-price/hero-motocorp-ltd/HEROMOTOCO/500182/', 2, 951, 29.10, 22.00),
('HINDALCO', 'https://bluestock.in/static/mkt-icons/nifty100/HINDALCO.png', 'Hindalco Industries Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AHINDALCO', 'Incorporated in 1958, Hindalco Industries Ltd. is a flagship company of the Aditya Birla Group. The Co and its subsidiaries are primarily engaged in the production of Aluminium and Copper. It is also\r\nengaged in the manufacturing of aluminium sheet, extrusion and light gauge products for use in packaging markets like beverage and food, can and foil products, etc.', 'http://www.hindalco.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=HINDALCO', 'https://www.bseindia.com/stock-share-price/hindalco-industries-ltd/HINDALCO/500440/', 1, 153, 11.30, 10.20),
('HINDUNILVR', 'https://bluestock.in/static/mkt-icons/nifty100/HINDUNILVR.png', 'Hindustan Unilever Ltd\r\n', 'https://in.tradingview.com/chart/?symbol=NSE%3AHINDUNILVR', 'Hindustan Unilever is in the FMCG business comprising primarily of Home Care, Beauty & Personal Care and Foods & Refreshment segments. The Company has manufacturing facilities across the country and sells primarily in India.', 'http://www.hul.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=HINDUNILVR', 'https://www.bseindia.com/stock-share-price/hindustan-unilever-ltd/HINDUNILVR/500696/', 1, 216, 27.20, 20.20),
('ICICIBANK', 'https://bluestock.in/static/mkt-icons/nifty100/ICICIBANK.png', 'ICICI Bank Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AICICIBANK', 'ICICI Bank is the second-largest private sector bank in India offering a diversified portfolio of financial products and services to retail, SME and corporate customers. The Bank has an extensive network of branches, ATMs and other touch-points', 'http://www.icicibank.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ICICIBANK', 'https://www.bseindia.com/stock-share-price/icici-bank-ltd/ICICIBANK/532174/', 2, 365, 7.60, 18.80),
('ICICIGI', 'https://bluestock.in/static/mkt-icons/nifty100/ICICIGI.png', 'ICICI Lombard General Insurance Company Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AICICIGI', 'ICICI Lombard General Insurance Co. Ltd is one of the leading and established private sector general insurance companies in India. It offers a well-diversified range of products and risk management solutions through multiple distribution channels', 'http://www.icicilombard.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ICICIGI', 'https://www.bseindia.com/stock-share-price/icici-lombard-general-insurance-company-ltd/ICICIGI/540716/', 10, 275, 22.50, 17.00),
('ICICIPRULI', 'https://bluestock.in/static/mkt-icons/nifty100/ICICIPRULI.png', 'ICICI Prudential Life Insurance Company Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'ICICI Prudential Life Insurance Company Ltd carries on business of providing life insurance, pensions and health insurance products to individuals and groups. The business is conducted in participating, non-participating and unit linked lines of business. These products are distributed through individual agents, corporate agents, banks, brokers, sales force and company\'s website.[1]\r\n\r\nIt is promoted by ICICI Bank and Prudential Corporation :-\r\n\r\nICICI Bank (51% stake)[2] - The company is a part of ICICI Bank Ltd which is the 2nd largest private bank in India. It offers a diversified range of products and services to retail, SME and corporate customers.[3]\r\n\r\nPrudential Plc (22% stake) - It is a British multinational insurance company based in London, England. It is the largest UK life insurer in Asia with presence in India, China, Cambodia, Indonesia, Laos, Malaysia, Myanmar, Philippines and other Asian countries. It is also present in African subcontinent in Nigeria, Ghana, Togo and other countries.[4]\r\n\r\n', 'https://www.iciciprulife.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ICICIPRULI', 'https://www.bseindia.com/stock-share-price/icici-prudential-life-insurance-company-ltd/ICICIPRULI/540133/', 10, 80, 8.75, 8.07),
('INDIGO', 'https://rb.gy/rv6gr8\r\n', 'Interglobe Aviation Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AINDIGO', 'Interglobe Aviation Ltd (Indigo) is India\'s largest passenger airline operating as a low-cost carrier. Serving 86 destinations including 24 international destinations, it provides passengers with a simple, unbundled product, fulfilling its singular brand promise of providing \"low fares, on-time flights, and a courteous and hassle-free service\" to its customers. IndiGo commenced operations in August 2006 with a single aircraft and has grown its fleet to 262 aircrafts.', 'http://www.goindigo.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=INDIGO', 'https://www.bseindia.com/stock-share-price/interglobe-aviation-ltd/INDIGO/539448/', 10, 97, 24.50, NULL),
('INDUSINDBK', 'https://bluestock.in/static/mkt-icons/nifty100/INDUSINDBK.png', 'IndusInd Bank Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'IndusInd Bank Limited was incorporated in 1994 as a commercial bank under the Banking Regulation Act, 1949. The Bank is publicly held', 'https://www.indusind.com/in/en/personal.html', 'https://www.nseindia.com/get-quotes/equity?symbol=INDUSINDBK', 'https://www.bseindia.com/stock-share-price/indusind-bank-ltd/INDUSINDBK/532187/', 10, 807, 7.93, 15.20),
('INFY', 'https://images.5paisa.com/MarketIcons/INFY.png', 'Infosys Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AINFY', 'Infosys Ltd provides consulting, technology, outsourcing and next-generation digital services to enable clients to execute strategies for their digital transformation', 'http://www.infosys.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=INFY', 'https://www.bseindia.com/stock-share-price/infosys-ltd/INFY/500209/', 5, 218, 40.00, 31.80),
('IOC', 'https://bluestock.in/static/mkt-icons/nifty100/IOC.png', 'Indian Oil Corporation\r\n', 'https://in.tradingview.com/chart/?symbol=NSE%3AIOC', 'Indian Oil Corporation Limited, trading as IndianOil, is an Indian multinational oil and gas company under the ownership of Government of India and administrative control of the Ministry of Petroleum and Natural Gas.', 'https://www.iocl.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=IOC', 'https://www.bseindia.com/stock-share-price/indian-oil-corporation-ltd/ioc/530965/', 10, 129, 21.31, 25.44),
('IRCTC', 'https://bluestock.in/static/mkt-icons/nifty100/IRCTC.png', 'Indian Railway Catering & Tourism Corporation Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AIRCTC', 'Incorporated in 1999, IRCTC is a Mini Ratna (Category 1, Central Public Sector Enterprises ) and the only company authorized by the Indian government to provide online railway tickets, catering services, and packaged drinking water\r\nat railway stations and trains in India', 'http://www.irctc.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=IRCTC', 'https://www.bseindia.com/stock-share-price/indian-railway-catering-tourism-corporation-ltd/IRCTC/542830/', 2, 44, 53.80, 40.40),
('IRFC', 'https://bluestock.in/static/mkt-icons/nifty100/IRFC.png', 'Indian Railway Finance Corporation Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AIRFC', 'Incorporated in 1986, Indian Railway Finance Corporation borrows funds from the financial markets to finance the acquisition / creation of assets which are then leased out to the Indian Railways as finance lease', 'https://irfc.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=IRFC', 'https://www.bseindia.com/stock-share-price/indian-railway-finance-corporation-ltd/IRFC/543257/', 10, 39, 5.73, 13.70),
('ITC', 'https://bluestock.in/static/mkt-icons/nifty100/ITC.png', 'ITC Ltd\r\n', 'https://in.tradingview.com/chart/?symbol=ITC', 'ITC Limited is an Indian conglomerate, headquartered in Kolkata. It has a presence across six business segments, namely FMCG, hotels, agribusiness, information technology, paper products, and packaging.', 'https://www.itcportal.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ITC', 'https://www.bseindia.com/stock-share-price/itc-ltd/itc/500875/', 1, 60, 34.76, 29.47),
('JINDALSTEL', 'https://bluestock.in/static/mkt-icons/nifty100/JINDALSTEL.png', 'Jindal Steel & Power Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AJINDALSTEL', 'Jindal Steel & Power Ltd is one of the India\'s leading steel producers with significant presence in sectors like mining and power generation. The group has global presence through subsidiaries, mainly in Australia, Botswana, Indonesia, Mauritius, Mozambique, Madagascar, Namibia, South Africa, Tanzania and Zambia', 'http://www.jindalsteelpower.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=JINDALSTEL', 'https://www.bseindia.com/stock-share-price/jindal-steel-power-ltd/JINDALSTEL/532286/', 1, 464, 13.20, 14.10),
('JIOFIN', 'https://bluestock.in/static/mkt-icons/nifty100/JIOFIN.png\r\n', 'Jio Financial Services Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AJIOFIN', 'Jio Financial Services Ltd is an Indian financial services company, based in Mumbai. Originally a subsidiary of Reliance Industries, it was demerged as an independent entity and listed on the Indian stock exchanges in August 2023.', 'https://www.jfs.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=JIOFIN', 'https://bseindia.com/stock-share-price/jio-financial-services-ltd/jiofin/543940/', 10, 216, 2.16, 1.82),
('JSWENERGY', 'https://bluestock.in/static/mkt-icons/nifty100/JSWENERGY.png', 'JSW Energy Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'JSW Energy Ltd and its subsidiaries are primarily engaged in the business of generation of power from its power assets located at Karnataka, Maharashtra, Nandyal and Salboni. It is the holding company for the JSW group\'s power business.\r\nThe company also has a JV company engaged in mining activities and an associate engaged in manufacturing of turbines.[1]\r\n\r\n', 'https://www.jsw.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=JSWENERGY', 'https://www.bseindia.com/stock-share-price/jsw-energy-ltd/JSWENERGY/533148/', 10, 160, 8.59, 8.40),
('JSWSTEEL', 'https://bluestock.in/static/mkt-icons/nifty100/JSWSTEEL.png', 'JSW Steel Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AJSWSTEEL', 'JSW Steel Limited is an Indian multinational steel producer based in Mumbai and is a flagship company of the JSW Group.', 'https://www.jswsteel.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=JSWSTEEL', 'https://www.bseindia.com/stock-share-price/jsw-steel-ltd/jswsteel/500228/', 1, 326, 13.36, 11.66),
('KOTAKBANK', 'https://bluestock.in/static/mkt-icons/nifty100/KOTAKBANK.png', 'Kotak Mahindra Bank Ltd\r\n', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Kotak Mahindra Bank is a diversified financial services group providing a wide range of banking and financial services including Retail Banking, Treasury and Corporate Banking, Investment Banking, Stock Broking, Vehicle Finance, Advisory services, Asset Management, Life Insurance and General Insurance.[1]\r\n\r\n', 'https://www.kotak.com/en/home.html', 'https://www.nseindia.com/get-quotes/equity?symbol=KOTAKBANK', 'https://www.bseindia.com/stock-share-price/kotak-mahindra-bank-ltd/KOTAKBANK/500247/', 5, 654, 7.86, 15.10),
('LICI', 'https://bluestock.in/static/mkt-icons/nifty100/LICI.png', 'Life Insurance Corporation of India', 'https://in.tradingview.com/chart/?symbol=NSE%3ALICI', 'Life Insurance Corporation of India is an Indian multinational public sector life insurance company headquartered in Mumbai', 'https://www.licindia.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=LICI', 'https://www.bseindia.com/stock-share-price/life-insurance-corporation-of-india/lici/543526/', 10, 154, 63.79, 63.61),
('LODHA', 'https://rb.gy/b35o6u', 'Macrotech Developers Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Macrotech Developers Ltd is primarily engaged in the business of real estate development. It is among the largest real estate developers in terms of presales and development pipeline in India with a presence in MMR, Pune and entered in Bengaluru market in Nov\'23.[1]\r\n\r\n', 'https://www.lodhagroup.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=LODHA', 'https://www.bseindia.com/stock-share-price/macrotech-developers-ltd/LODHA/543287/', 10, 183, 11.10, 10.70),
('LT', 'https://bluestock.in/static/mkt-icons/nifty100/LT.png', 'Larsen & Toubro Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ALT', 'Lithuania, officially the Republic of Lithuania, is a country in the Baltic region of Europe. It is one of three Baltic states and lies on the eastern shore of the Baltic Sea, bordered by Latvia to the north, Belarus to the east and south, Poland to the south, and the Russian semi-exclave of Kaliningrad Oblast to the southwest, with a maritime border with Sweden to the west. ', 'https://www.larsentoubro.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=LT', 'https://www.bseindia.com/stock-share-price/larsen--toubro-ltd/lt/500510/', 2, 635, 17.18, 10.49),
('LTIM', 'https://rb.gy/e0lh2p', 'LTIMindtree Ltd', 'https://bluestock.in/static/mkt-icons/nifty100/ABB.png', 'LTIMindtree Limited is an Indian multinational information technology services and consulting company based in Mumbai. A subsidiary of Larsen & Toubro, the company was incorporated in 1996 and employs more than 81,000 people', 'https://www.ltimindtree.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=LTIM', 'https://www.bseindia.com/stock-share-price/ltimindtree-ltd/ltim/540005/', 1, 711, 34.10, 26.04),
('M&M', 'https://bluestock.in/static/mkt-icons/nifty100/M&M.png', 'Mahindra & Mahindra Ltd\r\n', 'https://in.tradingview.com/chart/?symbol=NSE%3AM&M=', 'Mahindra & Mahindra is an Indian automobile manufacturing company headquartered in Mumbai, Maharashtra. It was established in 1945 as Mahindra & Mohammed and later renamed Mahindra & Mahindra.', 'https://auto.mahindra.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=M&M', 'https://www.bseindia.com/stock-share-price/mahindra--mahindra-ltd/mm/500520/', 5, 567, 26.98, 17.99),
('MARUTI', 'https://bluestock.in/static/mkt-icons/nifty100/MARUTI.png', 'Maruti Suzuki India Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AMARUTI', 'Maruti Suzuki India Limited is a publicly listed Indian subsidiary of Japanese automaker Suzuki Motor Corporation. It is the largest automobile manufacturer in India, specialising in small cars.', 'https://www.marutisuzuki.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=MARUTI', 'https://www.bseindia.com/stock-share-price/maruti-suzuki-india-ltd/maruti/532500/', 5, 2835, 23.67, 15.75),
('MOTHERSON', 'https://bluestock.in/static/mkt-icons/nifty100/MOTHERSON.png', 'Samvardhana Motherson International Ltd', 'https://in.tradingview.com/chart/?symbol=BSE%3AMOTHERSON', 'Motherson Sumi Systems is engaged primarily in the manufacturer and sale of components to automotive original equipment manufacturers', 'http://www.motherson.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=MOTHERSON', 'https://www.bseindia.com/stock-share-price/samvardhana-motherson-international-ltd/MOTHERSON/517334/', 1, 46, 13.70, 11.80),
('NAUKRI', 'https://assets-netstorage.groww.in/stock-assets/logos2/InfoEdgIndia_32670259917_18844.png', 'Info Edge (India) Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ANAUKRI', 'Info Edge is India\'s premier online classified company with a portfolio of brands. It owns various brands in different fields like naukri.com (online recruitment), 99acres.com (online real estate), jeevansathi.com (online matrimonial) as well as shiksha.com (online education information services). It also acts as an investor and has invested in many start-ups in the online space and is actively growing its investment portfolio.', 'http://www.infoedge.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=NAUKRI', 'https://www.bseindia.com/stock-share-price/info-edge-india-ltd/NAUKRI/532777/', 10, 3225, 3.65, 2.44),
('NESTLEIND', 'https://bluestock.in/static/mkt-icons/nifty100/NESTLEIND.png', 'Nestle India Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ANESTLEIND', 'Nestle India Limited is the Indian subsidiary of Nestle which is a Swiss multinational company. The company is headquartered in Gurgaon, Haryana. The company\'s products include food, beverages, chocolate, and confectioneries.', 'https://www.nestle.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=NESTLEIND', 'https://www.bseindia.com/stock-share-price/nestle-india-ltd/nestleind/500790/', 1, 41, 185.43, 135.61),
('NHPC', 'https://bluestock.in/static/mkt-icons/nifty100/HEROMOTOCO.png', 'NHPC Ltd\r\n', 'https://in.tradingview.com/chart/?symbol=NSE%3ANHPC', 'NHPC, a Mini Ratna category I public sector utility, is Government of India\'s flagship hydroelectric generation company. The company is primarily involved in the generation and sale of bulk power to various Power Utilities. Its other business includes providing project management / construction contracts/ consultancy assignment services and trading of power.', 'http://www.nhpcindia.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=NHPC', 'https://www.bseindia.com/stock-share-price/nhpc-ltd/NHPC/533098/', 10, 40, 7.67, 9.61),
('NTPC', 'https://bluestock.in/static/mkt-icons/nifty100/NTPC.png', 'NTPC Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ANTPC', 'NTPC Limited, formerly known as National Thermal Power Corporation, is an Indian central Public Sector Undertaking under the ownership of the Ministry of Power and the Government of India, who is engaged in the generation of electricity and other activities.', 'https://ntpc.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=NTPC', 'https://www.bseindia.com/stock-share-price/ntpc-ltd/ntpc/532555/', 10, 174, 10.58, 12.52),
('ONGC', 'https://bluestock.in/static/mkt-icons/nifty100/ONGC.png', 'Oil & Natural Gas Corpn Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AONGC', 'The Oil and Natural Gas Corporation is an Indian government-owned-oil and gas explorer and producer. It is under the ownership of Ministry of Petroleum and Natural Gas, Government of India. Its registered office is in New Delhi. ', 'https://www.ongcindia.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ONGC', 'https://www.bseindia.com/stock-share-price/oil-and-natural-gas-corporation-ltd/ongc/500312/', 5, 275, 19.71, 14.32),
('PFC', 'https://bluestock.in/static/mkt-icons/nifty100/PFC.png', 'Power Finance Corporation Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3APFC', 'Power Finance Corporation Ltd. is an Indian public sector company engaged in infrastructure finance activities.', 'https://www.pfcindia.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=PFC', 'https://www.bseindia.com/stock-share-price/power-finance-corporation-ltd/pfc/532810/', 10, 333, 9.96, 19.49),
('PIDILITIND', 'https://bluestock.in/static/mkt-icons/nifty100/PIDILITIND.png', 'Pidilite Industries Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3APIDILITIND', 'Pidilite Industries Limited is a leading manufacturer of adhesives and sealants, construction chemicals, craftsmen products, DIY products and polymer emulsions in India. Most of the products have been developed through strong in-house R&D. Our brand name Fevicol has become synonymous with adhesives to millions in India and is ranked amongst the most trusted brands in the country', 'http://www.pidilite.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=PIDILITIND', 'https://www.bseindia.com/stock-share-price/pidilite-industries-ltd/PIDILITIND/500331/', 1, 171, 29.70, 22.80),
('PNB', 'https://bluestock.in/static/mkt-icons/nifty100/PNB.png', 'Punjab National Bank', 'https://in.tradingview.com/chart/?symbol=NSE%3APNB', 'Punjab National Bank is an Indian government bank based in New Delhi. It was founded in May 1894 and is the second-largest public sector bank in India in terms of its business volumes, with over 180 million customers, 12,248 branches, and 13,000+ ATMs. ', 'https://www.pnbindia.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=PNB', 'https://www.bseindia.com/stock-share-price/punjab-national-bank/pnb/532461/', 2, 110, 1.63, 8.70),
('POWERGRID', 'https://bluestock.in/static/mkt-icons/nifty100/POWERGRID.png', 'Power Grid Corporation of India Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Power Grid Corporation of India Limited is a Maharatna CPSU and India\'s largest electric power transmission company. GoI holds a 51.34% stake in the company as on March 31, 2021. PGCIL was incorporated in 1989 to set up extra-high voltage alternating current and high-voltage direct current (HVDC) transmission lines.\r\n\r\nThe company moves large blocks of power from the central generating agencies and areas that have surplus power to load centres within and across regions. It is under the administrative control of the Ministry of Power, GoI.\r\n\r\nPGCIL also executes several strategically important projects, assigned to the company by GoI on nomination basis. Power Grid Corporation of India is principally engaged in planning, implementation, operation and maintenance of Inter-State Transmission System (ISTS), Telecom and consultancy services.\r\n\r\n', 'https://www.powergrid.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=POWERGRID', 'https://www.bseindia.com/stock-share-price/power-grid-corporation-of-india-ltd/POWERGRID/532898/', 10, 99, 13.20, 19.00),
('RECLTD', 'https://bluestock.in/static/mkt-icons/nifty100/RECLTD.png', 'REC Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'REC is a Central Public Sector Undertaking under the Ministry of Power involved in financing projects in the complete power sector value chain from generation to distribution. [1]', 'https://recindia.nic.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=RECLTD', 'https://www.bseindia.com/stock-share-price/rec-ltd/RECLTD/532955/', 10, 279, 10.00, 22.20),
('RELIANCE', 'https://bluestock.in/static/mkt-icons/nifty100/RELIANCE.png', 'Reliance Industries Ltd\r\n', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Reliance was founded by Dhirubhai Ambani and is now promoted and managed by his elder son, Mukesh Dhirubhai Ambani. Ambani\'s family has about 50% shareholding in the conglomerate.\r\n\r\n', 'https://www.ril.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=RELIANCE', 'https://www.bseindia.com/stock-share-price/reliance-industries-ltd/RELIANCE/500325/', 10, 606, 9.61, 9.25),
('SBILIFE', 'https://bluestock.in/static/mkt-icons/nifty100/SBILIFE.png', 'SBI Life Insurance Company Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'SBI Life Insurance Company Ltd is engaged in the business of life insurance and annuity. It was started as a Joint-venture between State Bank of India and BNP Paribas Cardif S.A.[1]\r\n\r\n\r\n', 'https://www.sbilife.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=SBILIFE', 'https://www.bseindia.com/stock-share-price/sbi-life-insurance-company-ltd/SBILIFE/540719/', 10, 162, 13.20, 12.00);
INSERT INTO `companies` (`id`, `company_logo`, `company_name`, `chart_link`, `about_company`, `website`, `nse_profile`, `bse_profile`, `face_value`, `book_value`, `roce_percentage`, `roe_percentage`) VALUES
('SBIN', 'https://bluestock.in/static/mkt-icons/nifty100/SBIN.png', 'State Bank of India', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'State Bank of India is a Fortune 500 company. It is an Indian Multinational, Public Sector banking and financial services statutory body headquartered in Mumbai. It is the largest and oldest bank in India with over 200 years of history.[1]\r\n\r\n', 'https://sbi.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=SBIN', 'https://www.bseindia.com/stock-share-price/state-bank-of-india/SBIN/500112/', 1, 465, 6.16, 17.30),
('SHREECEM', 'https://bluestock.in/static/mkt-icons/nifty100/SHREECEM.png', 'Shree Cement Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Shree Cement is engaged in manufacturing and selling of cement and cement related products and is ** one of the lowest cost producers in the country. It is the 3rd largest** cement', 'https://www.shreecement.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=SHREECEM', 'https://www.bseindia.com/stock-share-price/shree-cement-ltd/SHREECEM/500387/', 10, 5787, 14.80, 12.20),
('SHRIRAMFIN', 'https://bluestock.in/static/mkt-icons/nifty100/SHRIRAMFIN.png', 'Shriram Finance Ltd\r\n', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Business Overview\r\nShriram Transport Finance Company Ltd is a part of the SHRIRAM Group conglomerate which has a significant presence in the financing business. STFC is engaged in t', 'https://www.shriramfinance.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=SHRIRAMFIN', 'https://www.bseindia.com/stock-share-price/shriram-finance-ltd/SHRIRAMFIN/511218/', 2, 279, 11.30, 15.90),
('SIEMENS', 'https://bluestock.in/static/mkt-icons/nifty100/SIEMENS.png', 'Siemens Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Siemens Limited offers products, integrated solutions for industrial applications for manufacturing industries, drives for process', 'https://www.siemens.com/in/en.html', 'https://www.nseindia.com/get-quotes/equity?symbol=SIEMENS', 'https://www.bseindia.com/stock-share-price/siemens-ltd/SIEMENS/500550/', 2, 431, 25.60, 19.10),
('SUNPHARMA', 'https://bluestock.in/static/mkt-icons/nifty100/SUNPHARMA.png', 'Sun Pharmaceuticals Industries Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Sun Pharmaceutical Industries Ltd is engaged in the business of manufacturing, developing and marketing a wide range of branded and generic formulations and Active Pharma Ingredients (APIs). The company and its subsidiaries has various manufacturing facilities spread across the world with trading and other incidental and related activities extending to global market.[1] It is the largest pharmaceutical company in India.[2]\r\n\r\n', 'https://sunpharma.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=SUNPHARMA', 'https://www.bseindia.com/stock-share-price/sun-pharmaceuticals-industries-ltd/SUNPHARMA/524715/', 1, 288, 17.30, 16.70),
('TATACONSUM', 'https://bluestock.in/static/mkt-icons/nifty100/TATACONSUM.png', 'Tata Consumer Products Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Tata Consumer Products Ltd. is one of the leading companies of the Tata Group, with presence in the food and beverages business in India and internationally. It is the second largest tea company globally and has significant market presence and leadership in many markets. In addition to South Asia (mainly India), it has presence in various other geographies including Canada, UK, North America, Australia, Europe, Middle East and Africa. [1]\r\n\r\n\r\n', 'https://www.tataconsumer.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=TATACONSUM', 'https://www.bseindia.com/stock-share-price/tata-consumer-products-ltd/TATACONSUM/500800/', 1, 193, 10.60, 8.32),
('TATAMOTORS', 'https://bluestock.in/static/mkt-icons/nifty100/TATAMOTORS.png', 'Tata Motors Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Tata Motors Group is a leading global automobile manufacturer. Part of the illustrious multi-national conglomerate, the Tata group, it offers a wide and diverse portfolio of cars, sports utility vehicles, trucks, buses and defence vehicles to the world.\r\n\r\nIt has operations in India, the UK, South Korea, South Africa, China, Brazil, Austria and Slovakia through a strong global network of subsidiaries, associate companies and Joint Ventures (JVs), including Jaguar Land Rover in the UK and Tata Daewoo in South Korea. \r\n\r\n', 'https://www.tatamotors.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=TATAMOTORS', 'https://www.bseindia.com/stock-share-price/tata-motors-ltd/TATAMOTORS/500570/', 2, 275, 20.10, 49.40),
('TATAPOWER', 'https://bluestock.in/static/mkt-icons/nifty100/TATAPOWER.png', 'Tata Power Company Ltd\r\n', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Tata Power Company Ltd is primarily involved in the business of the generation, transmission and distribution of electricity. It aims to produce electricity completely through renewable sources. It also manufactures solar roofs and plans to build 1 lakh ev charging stations by 2025[1] The company is India\'s largest vertically-integrated power company.\r\n\r\n', 'https://www.tatapower.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=TATAPOWER', 'https://www.bseindia.com/stock-share-price/tata-power-company-ltd/TATAPOWER/500400/', 1, 105, 11.10, 11.30),
('TATASTEEL', 'https://bluestock.in/static/mkt-icons/nifty100/TATASTEEL.png', 'Tata Steel Ltd\r\n', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Tata Steel Ltd is Asia\'s first integrated private steel company setup in 1907.\r\nThe company has presence across the entire value chain of steel manufacturing from mining and processing iron ore and coal to producing and distributing finished products.\r\nThe company has a target to increase domestic steelmaking capacity to 30 MnTPA by 2025.\r\n\r\n', 'https://www.tatasteel.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=TATASTEEL', 'https://www.bseindia.com/stock-share-price/tata-steel-ltd/TATASTEEL/500470/', 1, 72, 7.02, 6.55),
('TCS', 'https://images.5paisa.com/MarketIcons/TCS.png', 'Tata Consultancy Services Ltd', 'https://www.screener.in/company/TCS/consolidated/#chart', 'Tata Consultancy Services is the flagship company and a part of Tata group. It is an IT services, consulting and business solutions organization that has been partnering with many of the world\'s largest businesses in their transformation journeys for over 50 years. TCS offers a consulting-led, cognitive powered, integrated portfolio of business, technology and engineering services and solutions.', 'https://www.tcs.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=TCS', 'https://www.bseindia.com/stock-share-price/tata-consultancy-services-ltd/TCS/532540/', 1, 281, 64.30, 0.52),
('TECHM', 'https://bluestock.in/static/mkt-icons/nifty100/TECHM.png', 'Tech Mahindra Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Tech Mahindra Ltd provides comprehensive range of IT services, including IT enabled service, application development and', 'https://www.techmahindra.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=TECHM', 'https://www.bseindia.com/stock-share-price/tech-mahindra-ltd/TECHM/532755/', 5, 270, 11.90, 8.63),
('TITAN', 'https://bluestock.in/static/mkt-icons/nifty100/TITAN.png', 'Titan Company Ltd\r\n', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Titan Company Ltd is among India\'s most respected lifestyle companies. It has established leadership positions in the Watches, Jewellery and Eyewear categories led by its trusted brands and differentiated customer experience. It was founded in 1984 as a joint-venture between TATA Group and Tamilnadu Industrial Development Corporation (TIDCO). [1]\r\n\r\n', 'https://www.titancompany.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=TITAN', 'https://www.bseindia.com/stock-share-price/titan-company-ltd/TITAN/500114/', 1, 110, 22.70, 32.90),
('TORNTPHARM', 'https://bluestock.in/static/mkt-icons/nifty100/TORNTPHARM.png', 'Torrent Pharmaceuticals Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Torrent Pharmaceuticals Ltd is one of the leading Indian Pharmaceutical Company engaged in research, development, manufacturing and marketing of generic pharmaceutical formulations.\r\n\r\nIt is the flagship company of Torrent Group which also has presence in power and city gas distribution businesses.\r\n\r\n', 'https://www.torrentpharma.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=TORNTPHARM', 'https://www.bseindia.com/stock-share-price/torrent-pharmaceuticals-ltd/TORNTPHARM/500420/', 5, 222, 23.20, 24.20),
('TRENT', 'https://bluestock.in/static/mkt-icons/nifty100/TRENT.png', 'Trent Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Trent Ltd is engaged in retailing of apparels, footwear, accessories, toys, games, food, grocery & non food products through various of its retail formats/ concepts.[1]\r\n\r\n', 'https://trentlimited.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=TRENT', 'https://www.bseindia.com/stock-share-price/trent-ltd/TRENT/500251/', 1, 132, 23.80, 27.20),
('TVSMOTOR', 'https://bluestock.in/static/mkt-icons/nifty100/TVSMOTOR.png', 'TVS Motor Company Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'TVS Motor Company Ltd (TVSM) is engaged in manufacturing two-wheelers and its accessories; it currently manufactures a wide range of two-wheelers and three-w', 'https://www.tvsmotor.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=TVSMOTOR', 'https://www.bseindia.com/stock-share-price/tvs-motor-company-ltd/TVSMOTOR/532343/', 1, 163, 14.70, 26.60),
('ULTRACEMCO', 'https://bluestock.in/static/mkt-icons/nifty100/ULTRACEMCO.png', 'UltraTech Cement Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'UltraTech Cement is engaged in the manufacturing and sale of Cement and Cement related product primarily across globe.[1]', 'https://www.ultratechcement.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ULTRACEMCO', 'https://www.bseindia.com/stock-share-price/ultratech-cement-ltd/ULTRACEMCO/532538/', 10, 2126, 15.10, 12.20),
('UNIONBANK', 'https://bluestock.in/static/mkt-icons/nifty100/UNIONBANK.png', 'Union Bank of India', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Union Bank of India is engaged in the Business of Banking Services, Government Business ,Merchant Banking, Agency Business Insurance, Mutual Funds, Wealth Management etc.[1]\r\n\r\n', 'https://www.unionbankofindia.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=UNIONBANK', 'https://www.bseindia.com/stock-share-price/union-bank-of-india/UNIONBANK/532477/', 10, 128, 6.55, 15.60),
('UNITDSPR', 'https://rb.gy/4jkpta', 'United Spirits Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Diageo India incorporated in India as United Spirits Ltd.(USL) is the country\'s leading beverage alcohol company and a subsidiary of global leader Diageo PLC. The company manufactures, sells, and distributes a wide portfolio of premium brands such as Johnnie Walker, Black Dog, Black & White, VAT 69, Antiquity, Signature, Royal Challenge, McDowell\'s No.1, Smirnoff and Captain Morgan. [1]\r\n\r\n', 'https://www.diageoindia.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=UNITDSPR', 'https://www.bseindia.com/stock-share-price/united-spirits-ltd/UNITDSPR/532432/', 2, 105, 27.90, 21.00),
('VBL', 'https://bluestock.in/static/mkt-icons/nifty100/VBL.png', 'Varun Beverages Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Varun Beverages Ltd has been associated with PepsiCo since the 1990s and is a key player in beverage industry and one of the largest franchisee of PepsiCo in the world. The company produces and distributes a wide range of carbonated soft drinks, non-carbonated drinks and packaged water sold under trademarks owned by PepsiCo.\r\nPepsiCo brands produced and sold by the company include Pepsi, Seven-up, Mirinda Orange, Mountain Dew, Tropicana Juices and many more. [1]\r\n\r\n', 'https://www.varunbeverages.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=VBL', 'https://www.bseindia.com/stock-share-price/varun-beverages-ltd/VBL/540180/', 2, 26, 28.80, 35.20),
('VEDL', 'https://bluestock.in/static/mkt-icons/nifty100/VEDL.png', 'Vedanta Ltd\r\n', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Vedanta Ltd is a diversified natural resource group engaged in exploring, extracting and processing minerals and oil & gas. The group engages in the exploration, production and sale of zinc, lead, silver, copper, aluminium, iron ore and oil & gas. It has presence across India, South Africa, Namibia, Ireland, Liberia & UAE.\r\nIts other businesses includes commercial power generation, steel manufacturing & port operations in India and manufacturing of glass substrate in South Korea and Taiwan.[1]\r\n\r\nPresently, India accounts for ~65% of total revenues, followed by Malaysia (9%), China (3%), UAE (1%) and others (22%).[2]\r\n\r\n', 'https://www.vedantalimited.com/eng/', 'https://www.nseindia.com/get-quotes/equity?symbol=VEDL', 'https://www.bseindia.com/stock-share-price/vedanta-ltd/VEDL/500295/', 1, 96, 20.90, 10.50),
('WIPRO', 'https://bluestock.in/static/mkt-icons/nifty100/WIPRO.png', 'Wipro Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Wipro Ltd is a global Information technology, consulting and business process services (BPS) company.[1', 'https://www.wipro.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=WIPRO', 'https://www.bseindia.com/stock-share-price/wipro-ltd/WIPRO/507685/', 2, 78, 16.90, 14.30),
('ZOMATO', 'https://bluestock.in/static/mkt-icons/nifty100/ZOMATO.png', 'Zomato Ltd\r\n', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'Incorporated in 2010, Zomato Limited is one of the leading online Food Service platforms in terms of the value of food sold. Its offerings include food delivery, dining-out services, Loyalty programs, and others.\r\n\r\nAs of December 31, 2020, Zomato has established a strong footprint across 23 countries with 131,233 active food delivery restaurants, 161,637 active delivery partners, and an average monthly food order of 10.7 million customers.[1]\r\n\r\n', 'https://www.zomato.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ZOMATO', 'https://www.bseindia.com/stock-share-price/zomato-ltd/ZOMATO/543320/', 1, 24, 1.14, 1.12),
('ZYDUSLIFE', 'https://bluestock.in/static/mkt-icons/nifty100/ZYDUSLIFE.png', 'Zydus Lifesciences Ltd', 'https://in.tradingview.com/chart/qGsydD2w/?symbol=NSE%3AAMBUJACEM.T0', 'In 1995, the group was restructured and thus was formed Cadila Healthcare under the aegis of the Zydus group. From a humble turnover Rs. 250 crores in 1995 the group witnessed a significant financial growth and registered a turnover of over Rs. 14,253 crores in FY20.\r\nAdhering to its brand promise of being dedicated to life in all its dimensions, Zydus continues to innovate with an unswerving focus to address the unmet healthcare needs. Simultaneously it rededicates itself to its mission of creating healthier, happier communities across the globe\r\n\r\n', 'http://www.zyduscadila.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=ZYDUSLIFE', 'https://www.bseindia.com/stock-share-price/zydus-lifesciences-ltd/ZYDUSLIFE/532321/', 1, 217, 22.30, 20.70);
INSERT INTO `companies` (`id`, `company_logo`, `company_name`, `chart_link`, `about_company`, `website`, `nse_profile`, `bse_profile`, `face_value`, `book_value`, `roce_percentage`, `roe_percentage`) VALUES
('COLPAL', 'https://bluestock.in/static/mkt-icons/nifty100/COLPAL.png', 'Colgate-Palmolive (India) Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3ACOLPAL', 'Colgate-Palmolive (India) Limited is a leading provider of oral care products in India, including toothpastes, toothpowders, toothbrushes and mouthwashes under the "Colgate" brand.', 'https://www.colgate.co.in/', 'https://www.nseindia.com/get-quotes/equity?symbol=COLPAL', 'https://www.bseindia.com/stock-share-price/colgate-palmolive-india-ltd/COLPAL/500830/', 1, 55.20, 63.40, 50.30),
('MARICO', 'https://bluestock.in/static/mkt-icons/nifty100/MARICO.png', 'Marico Ltd', 'https://in.tradingview.com/chart/?symbol=NSE%3AMARICO', 'Marico is a leading Indian consumer goods company providing consumer products and services in the beauty and wellness space across Asian and African markets.', 'https://www.marico.com/', 'https://www.nseindia.com/get-quotes/equity?symbol=MARICO', 'https://www.bseindia.com/stock-share-price/marico-ltd/MARICO/531642/', 1, 32.10, 39.80, 28.50);
-- --------------------------------------------------------
SELECT id, company_name, company_logo FROM companies LIMIT 20;

--
-- Table structure for table `prosandcons`
--

CREATE TABLE `prosandcons` (
  `id` int(11) NOT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `pros` varchar(255) DEFAULT NULL,
  `cons` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prosandcons`
--

INSERT INTO `prosandcons` (`id`, `company_id`, `pros`, `cons`) VALUES
(1, 'HDFCBANK', 'Company is expected to give good quarter', 'Stock is trading at 2.76 times its book value'),
(2, 'HDFCBANK', 'Company has delivered good profit growth of 23.4% CAGR over last 5 years', 'Company has low interest coverage ratio.'),
(3, 'HDFCBANK', 'Company has been maintaining a healthy dividend payout of 22.9%', 'Contingent liabilities of Rs.24,09,821 Cr.'),
(4, 'HDFCBANK', 'Company\'s median sales growth is 16.4% of last 10 years', 'Earnings include an other income of Rs.1,55,870 Cr.'),
(5, 'SBILIFE', 'Company is almost debt free.', 'Stock is trading at 9.11 times its book value'),
(6, 'SBILIFE', 'Company is expected to give good quarter', 'Tax rate seems low'),
(7, 'SBILIFE', 'NULL', 'Company has a low return on equity of 12.9% over last 3 years.'),
(8, 'SBILIFE', 'NULL', 'Earnings include an other income of Rs.1,657 Cr.'),
(9, 'SBILIFE', 'NULL', 'Dividend payout has been low at 14.0% of profits over last 3 years'),
(10, 'INFY', 'Company has a good return on equity (ROE) track record: 3 Years ROE 30.9%', 'Stock is trading at 9.03 times its book value'),
(11, 'INFY', 'Company has been maintaining a healthy dividend payout of 63.3%', 'Promoter holding is low: 14.4%'),
(12, 'WIPRO', 'NULL', 'The company has delivered a poor sales growth of 8.75% over past five years.'),
(13, 'WIPRO', 'NULL', 'Dividend payout has been low at 12.2% of profits over last 3 years'),
(14, 'TCS', 'Company is almost debt free.', 'Stock is trading at 15.2 times its book value'),
(15, 'TCS', 'Company has a good return on equity (ROE) track record: 3 Years ROE 47.4%', 'The company has delivered a poor sales growth of 10.5% over past five years.'),
(16, 'TCS', 'Company has been maintaining a healthy dividend payout of 66.2%', 'NULL');

--
-- Indexes for dumped tables
--
INSERT INTO `prosandcons` (`id`, `company_id`, `pros`, `cons`) VALUES
(17, 'ABB', 'Strong market position in power and automation technologies', 'High dependence on industrial sector which is cyclical'),
(18, 'ABB', 'Consistent dividend payer with 25+ year track record', 'Facing increasing competition from local players'),
(19, 'ABB', 'Global footprint with diversified revenue streams', 'Vulnerable to currency fluctuations'),
(20, 'ADANIENT', 'Diversified business portfolio across sectors', 'High debt levels raising concerns'),
(21, 'ADANIENT', 'Strong government connections and infrastructure focus', 'Corporate governance concerns among investors'),
(22, 'ADANIENT', 'Market leader in several business segments', 'Regulatory risks in current projects'),
(23, 'ASIANPAINT', 'Dominant market share in Indian paint industry', 'Raw material price volatility affects margins'),
(24, 'ASIANPAINT', 'Strong brand recognition and distribution network', 'Increasing competition from global players'),
(25, 'ASIANPAINT', 'Consistent revenue and profit growth', 'Vulnerable to housing market slowdowns'),
(26, 'AXISBANK', 'Strong retail banking franchise', 'Asset quality concerns in corporate book'),
(27, 'AXISBANK', 'Digital banking initiatives showing good traction', 'Lower CASA ratio compared to peers'),
(28, 'AXISBANK', 'Improving operational efficiency', 'Regulatory scrutiny on governance issues'),
(29, 'BAJAJ-AUTO', 'Strong brand in domestic and export markets', 'Dependence on motorcycle segment'),
(30, 'BAJAJ-AUTO', 'Healthy export growth in African markets', 'Competition intensifying in premium segment'),
(31, 'BAJAJ-AUTO', 'Strong balance sheet with zero debt', 'EV transition risks for legacy products'),
(32, 'BHARTIARTL', 'Market leader with 35% subscriber share', 'High capital expenditure requirements'),
(33, 'BHARTIARTL', 'Improving ARPU trends post tariff hikes', 'Intense price competition in market'),
(34, 'BHARTIARTL', 'Strong digital services growth', 'Regulatory uncertainties in telecom sector'),
(35, 'DMART', 'Consistent same-store sales growth of 15%+', 'Limited presence in North and East India'),
(36, 'DMART', 'Lowest cost operator in retail sector', 'Slow expansion pace compared to peers'),
(37, 'DMART', 'Strong cash flow generation', 'Vulnerable to e-commerce competition'),
(38, 'HDFCBANK', 'Best-in-class asset quality and profitability', 'Valuation premium limits upside'),
(39, 'HDFCBANK', 'Strong retail deposit franchise', 'Leadership transition risks post-merger'),
(40, 'HDFCBANK', 'Digital banking leader in India', 'Regulatory restrictions on branch expansion'),
(41, 'HCLTECH', 'Strong deal wins in recent quarters', 'Margin pressure in IT services'),
(42, 'HCLTECH', 'Diversified revenue across verticals', 'Higher reliance on hardware business'),
(43, 'HCLTECH', 'Strong cash position for acquisitions', 'Attrition rates above industry average'),
(44, 'INFY', 'Industry-leading margins in IT services', 'Growth concerns in key verticals'),
(45, 'INFY', 'Strong digital transformation capabilities', 'High exposure to banking sector'),
(46, 'INFY', 'Consistent dividend payer', 'Leadership transition challenges'),
(47, 'ITC', 'Dominant position in cigarettes business', 'Regulatory risks in tobacco business'),
(48, 'ITC', 'Successful FMCG business scaling up', 'Capital allocation concerns'),
(49, 'ITC', 'Strong cash flows from core business', 'Slow pace of non-cigarette FMCG growth'),
(50, 'LT', 'Strong order book in infrastructure', 'Execution challenges in projects'),
(51, 'LT', 'Diversified business portfolio', 'Working capital pressures'),
(52, 'LT', 'Technology focus in new projects', 'Margin pressure in core business'),
(53, 'MARUTI', 'Market leader with 50%+ share', 'Transition risks to electric vehicles'),
(54, 'MARUTI', 'Strong distribution network', 'Premiumization strategy challenges'),
(55, 'MARUTI', 'Cost leadership in manufacturing', 'Dependence on small car segment'),
(56, 'NESTLEIND', 'Strong brand portfolio in India', 'Premium valuation multiples'),
(57, 'NESTLEIND', 'Pricing power in core categories', 'Commodity price inflation impact'),
(58, 'NESTLEIND', 'Rural distribution expansion', 'Slow product innovation pace'),
(59, 'RELIANCE', 'Diversified business across sectors', 'High capital expenditure needs'),
(60, 'RELIANCE', 'Market leader in telecom and retail', 'Governance concerns from investors'),
(61, 'RELIANCE', 'Strong cash flow generation', 'Refining margins volatility'),
(62, 'TCS', 'Industry leader in IT services', 'Premium valuation limits upside'),
(63, 'TCS', 'Strong deal pipeline and execution', 'Growth challenges in mature markets'),
(64, 'TCS', 'Best-in-class margins', 'Large size makes growth difficult'),
(65, 'TATASTEEL', 'Cost-efficient operations in India', 'European operations struggling'),
(66, 'TATASTEEL', 'Strong domestic market position', 'Commodity cycle dependence'),
(67, 'TATASTEEL', 'Debt reduction progress', 'Chinese steel dumping risks'),
(68, 'TITAN', 'Market leader in jewelry segment', 'High working capital requirements'),
(69, 'TITAN', 'Strong brand across categories', 'Gold price volatility impacts'),
(70, 'TITAN', 'Omnichannel retail strategy', 'Competition from regional players'),
(71, 'WIPRO', 'Consulting capabilities improving', 'Growth lagging behind peers'),
(72, 'WIPRO', 'Strong cost control measures', 'Margin pressure in services'),
(73, 'WIPRO', 'Diversified client base', 'Leadership transition challenges'),
(74, 'ZOMATO', 'Market leader in food delivery', 'Path to profitability unclear'),
(75, 'ZOMATO', 'Growing quick commerce business', 'High cash burn rate'),
(76, 'ZOMATO', 'Strong brand recall', 'Regulatory risks in gig economy'),
(77, 'ADANIPORTS', 'Strategic port locations in India', 'Regulatory risks in sector'),
(78, 'ADANIPORTS', 'Operational efficiency improvements', 'Capex requirements high'),
(79, 'ADANIPORTS', 'Increasing cargo diversification', 'Competition from govt ports'),
(80, 'BAJAJFINSV', 'Diversified financial services', 'Valuation concerns'),
(81, 'BAJAJFINSV', 'Strong parentage and brand', 'Regulatory changes impact'),
(82, 'BAJAJFINSV', 'Digital transformation focus', 'Competition intensifying'),
(83, 'BPCL', 'Strategic refining assets', 'Privatisation uncertainty'),
(84, 'BPCL', 'Strong marketing network', 'Fuel price controls'),
(85, 'BPCL', 'Improving refining margins', 'Transition energy risks'),
(86, 'CIPLA', 'Strong generic drug pipeline', 'US pricing pressures'),
(87, 'CIPLA', 'Respiratory therapy leadership', 'R&D productivity concerns'),
(88, 'CIPLA', 'Emerging markets focus', 'Regulatory scrutiny in US'),
(89, 'COALINDIA', 'Monopoly in domestic coal', 'Environmental concerns'),
(90, 'COALINDIA', 'Strong government backing', 'Transition energy risks'),
(91, 'COALINDIA', 'Consistent dividend payer', 'Operational inefficiencies'),
(92, 'DIVISLAB', 'API market leadership', 'Customer concentration risk'),
(93, 'DIVISLAB', 'Strong export focus', 'Regulatory inspections risk'),
(94, 'DIVISLAB', 'Specialty chemicals growth', 'Valuation premium high'),
(95, 'DRREDDY', 'Strong US generics business', 'FDA compliance issues'),
(96, 'DRREDDY', 'Biosimilar pipeline progress', 'Pricing pressure in US'),
(97, 'DRREDDY', 'Emerging markets growth', 'R&D productivity concerns'),
(98, 'EICHERMOT', 'Premium brand positioning', 'EV transition risks'),
(99, 'EICHERMOT', 'Export market potential', 'Supply chain constraints'),
(100, 'EICHERMOT', 'Royal Enfield brand strength', 'Competition increasing'),
(101, 'GAIL', 'Natural gas market leader', 'Regulated tariff structure'),
(102, 'GAIL', 'Pipeline infrastructure moat', 'Volume growth challenges'),
(103, 'GAIL', 'Diversifying into renewables', 'Commodity price exposure'),
(104, 'HINDALCO', 'Cost-efficient aluminum assets', 'Commodity price volatility'),
(105, 'HINDALCO', 'Novelis acquisition benefits', 'Debt levels concerning'),
(106, 'HINDALCO', 'Downstream integration', 'Energy cost pressures'),
(107, 'HINDUNILVR', 'Strong FMCG brand portfolio', 'Slow rural recovery'),
(108, 'HINDUNILVR', 'Distribution reach unmatched', 'Competition intensifying'),
(109, 'HINDUNILVR', 'Premiumization strategy', 'Commodity inflation impact'),
(110, 'ICICIBANK', 'Retail loan growth strong', 'NPA concerns in corporate'),
(111, 'ICICIBANK', 'Digital banking leadership', 'Margin compression risks'),
(112, 'ICICIBANK', 'Improving asset quality', 'Competition from fintech'),
(113, 'JSWSTEEL', 'Cost efficiency improvements', 'Commodity cycle exposure'),
(114, 'JSWSTEEL', 'Capacity expansion plans', 'Debt levels high'),
(115, 'JSWSTEEL', 'Downstream value addition', 'Chinese steel dumping risk'),
(116, 'KOTAKBANK', 'Best-in-class asset quality', 'Growth concerns'),
(117, 'KOTAKBANK', 'Strong liability franchise', 'Leadership transition'),
(118, 'KOTAKBANK', 'Digital banking initiatives', 'Valuation premium'),
(119, 'M&M', 'Strong SUV portfolio', 'Tractor cycle concerns'),
(120, 'M&M', 'Farm equipment leadership', 'EV transition risks'),
(121, 'M&M', 'Financial services strength', 'Competition intensifying'),
(122, 'NTPC', 'Dominant power generator', 'Renewable transition risks'),
(123, 'NTPC', 'Strong government backing', 'Coal supply issues'),
(124, 'NTPC', 'Renewable capacity growth', 'Regulated returns model'),
(125, 'ONGC', 'Oil & gas production leader', 'Declining production'),
(126, 'ONGC', 'Strong balance sheet', 'Subsidy burden concerns'),
(127, 'ONGC', 'Energy security focus', 'Transition energy risks'),
(128, 'POWERGRID', 'Transmission monopoly', 'Regulated returns model'),
(129, 'POWERGRID', 'Strong cash flows', 'Limited growth opportunities'),
(130, 'POWERGRID', 'Renewable integration focus', 'Capex intensity high'),
(131, 'SBIN', 'Strong retail deposit base', 'Asset quality concerns'),
(132, 'SBIN', 'Public sector bank leader', 'Operational efficiency low'),
(133, 'SBIN', 'Digital banking progress', 'Government interference'),
(134, 'SUNPHARMA', 'Specialty pharma growth', 'US pricing pressures'),
(135, 'SUNPHARMA', 'Strong emerging markets', 'Regulatory scrutiny'),
(136, 'SUNPHARMA', 'Leadership in India', 'R&D productivity concerns'),
(137, 'TATAMOTORS', 'JLR turnaround progress', 'China market risks'),
(138, 'TATAMOTORS', 'EV leadership in India', 'High debt levels'),
(139, 'TATAMOTORS', 'Commercial vehicle recovery', 'Competition intensifying'),
(140, 'ULTRACEMCO', 'Cost efficiency leader', 'Regional demand variations'),
(141, 'ULTRACEMCO', 'Strong pricing power', 'Energy cost pressures'),
(142, 'ULTRACEMCO', 'Capacity expansion plans', 'Competition increasing');


INSERT INTO `prosandcons` (`id`, `company_id`, `pros`, `cons`) VALUES(143, 'BANKBARODA', 'Extensive domestic network of 8,200+ branches providing strong deposit franchise', 'Asset quality concerns with gross NPAs at 5.3% as of last quarter'),
(144, 'BANKBARODA', 'Government ownership provides stability and access to capital', 'Return ratios (ROA 0.4%) lagging private sector peers'),
(145, 'BANKBARODA', 'NIM improvement to 3.1% showing better pricing discipline', 'Slippage ratio at 2.1% indicates ongoing asset quality pressures'),
(146, 'BANKBARODA', 'CASA ratio improved to 42% showing better deposit mix', 'COVID restructuring book of ₹12,500 cr remains a monitorable');
--
-- Indexes for table `analysis`
--
ALTER TABLE `analysis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DESC analysis;
SELECT * FROM analysis WHERE company_id = 'AXISBANK'; 
SELECT company_id FROM analysis LIMIT 5;
SELECT symbol FROM ml LIMIT 5;

SELECT * FROM analysis LIMIT 10;


