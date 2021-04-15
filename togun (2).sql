-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2021 at 12:02 PM
-- Server version: 5.7.33
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `togun`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `address_line1` longtext NOT NULL,
  `address_line2` longtext NOT NULL,
  `city` varchar(225) NOT NULL,
  `zip` varchar(225) NOT NULL,
  `mobile` varchar(225) NOT NULL,
  `country_code` varchar(22) NOT NULL,
  `default_ad` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `time`, `user_id`, `first_name`, `last_name`, `country`, `address_line1`, `address_line2`, `city`, `zip`, `mobile`, `country_code`, `default_ad`, `status`) VALUES
(549, '2021-04-08 05:38:50', 388, 'kkkkkkk', 'jj', 'India', 'chennai, chennai', 'chennai', 'undefined', '603306', '0735874', '60', 0, 1),
(550, '2021-04-08 05:40:27', 389, 'jjjjjjjj', 's', 'Malasiya', 'chennai, malayia', 'malayia', 'undefined', '600072', '07358747522', '60', 0, 1),
(551, '2021-04-08 05:40:55', 390, 'Praveen', 'Chezhiyan', 'India', 'East Street, Opppp', 'Opppp', 'undefined', '603303', '7092892945', '60', 0, 1),
(552, '2021-04-08 05:45:34', 391, 'heera', 'heerah', 'India', 'chennai, chennai', 'chennai', 'undefined', '603306', '07358747522', '60', 0, 1),
(553, '2021-04-09 16:57:41', 345, 'Hhj', 'Hhh', 'malasiya', 'Mkm', '', 'Gujgf', '66666', '655665', '', 0, 1),
(554, '2021-04-12 07:46:45', 392, 'Sv', 's', 'India', 'East Street, Opppp', 'Opppp', 'undefined', '603303', '07358747', '60', 0, 1),
(555, '2021-04-12 09:31:09', 345, 'Ghuu', 'Ghhh', 'malasiya', '', '', '', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coc_address`
--

CREATE TABLE `coc_address` (
  `id` int(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(225) NOT NULL,
  `address_line1` varchar(225) NOT NULL,
  `address_line2` varchar(225) DEFAULT NULL,
  `city` varchar(225) NOT NULL,
  `pincode` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `mobile` varchar(225) NOT NULL,
  `country_code` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coc_address`
--

INSERT INTO `coc_address` (`id`, `time`, `name`, `address_line1`, `address_line2`, `city`, `pincode`, `country`, `mobile`, `country_code`) VALUES
(2, '2020-06-12 02:09:01', 'Togun Malaysia Sdn Bhd', '308, Block C. 3rd Floor, Damansara Intan.', 'No 1,Jalan SS 20/27', 'Petaling Jaya, Selangor', '47400', 'Malaysia', '0125513968', '60'),
(3, '2020-07-10 01:42:06', 'Togun Singapore Pre Ltd', '18 Yishun Ave 9', 'Shopping mall', 'Yishun', '768897', 'Singapore', '01124219208', '65'),
(4, '2020-07-11 00:59:37', 'TGHP OPC', '#16 Central Avenue,', 'Brgy Culiat Q.City, area code 2', 'Manila', '1128', 'Philippines', '9552080238', '+63');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `delivery_cost` decimal(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country`, `delivery_cost`) VALUES
(1, 'Malaysia', '0.00'),
(2, 'Mexico', '0.00'),
(3, 'United States of America', '200.00'),
(6, 'Afghanistan', '0.00'),
(7, 'Albania', '0.00'),
(8, 'Algeria', '0.00'),
(9, 'Andorra', '0.00'),
(10, 'Angola', '0.00'),
(11, 'Antigua and Barbuda', '0.00'),
(12, 'Argentina', '0.00'),
(13, 'Armenia', '0.00'),
(14, 'Australia', '0.00'),
(15, 'Austria', '0.00'),
(16, 'Azerbaijan', '0.00'),
(17, 'Bahamas', '0.00'),
(18, 'Bahrain', '0.00'),
(19, 'Bangladesh', '0.00'),
(20, 'Barbados', '0.00'),
(21, 'Belarus', '0.00'),
(22, 'Belgium', '0.00'),
(23, 'Belize', '0.00'),
(24, 'Benin', '0.00'),
(25, 'Bhutan', '0.00'),
(26, 'Bolivia', '0.00'),
(27, 'Bosnia and Herzegovina', '0.00'),
(28, 'Botswana', '0.00'),
(29, 'Brazil', '0.00'),
(30, 'Brunei', '0.00'),
(31, 'Bulgaria', '0.00'),
(32, 'Burkina Faso', '0.00'),
(33, 'Burundi', '0.00'),
(34, 'Cabo Verde', '0.00'),
(35, 'Cambodia', '0.00'),
(36, 'Cameroon', '0.00'),
(37, 'Canada', '0.00'),
(38, 'Central African Republic', '0.00'),
(39, 'Chad', '0.00'),
(40, 'Chile', '0.00'),
(42, 'Colombia', '0.00'),
(43, 'Comoros', '0.00'),
(44, 'Congo (Congo-Brazzaville)', '0.00'),
(45, 'Costa Rica', '0.00'),
(46, 'Croatia', '0.00'),
(47, 'Cuba', '0.00'),
(48, 'Cyprus', '0.00'),
(49, 'Czechia (Czech Republic)', '0.00'),
(50, 'Democratic Republic of the Congo', '0.00'),
(51, 'Denmark', '0.00'),
(52, 'Djibouti', '0.00'),
(53, 'Dominica', '0.00'),
(54, 'Dominican Republic', '0.00'),
(55, 'Ecuador', '0.00'),
(56, 'Egypt', '0.00'),
(57, 'El Salvador', '0.00'),
(58, 'Equatorial Guinea', '0.00'),
(59, 'Eritrea', '0.00'),
(60, 'Estonia', '0.00'),
(61, 'Eswatini (fmr. \"Swaziland\")', '0.00'),
(62, 'Ethiopia', '0.00'),
(63, 'Fiji', '0.00'),
(64, 'Finland', '0.00'),
(65, 'France', '0.00'),
(66, 'Gabon', '0.00'),
(67, 'Gambia', '0.00'),
(68, 'Georgia', '0.00'),
(69, 'Germany', '0.00'),
(70, 'Ghana', '0.00'),
(71, 'Greece', '0.00'),
(72, 'Grenada', '0.00'),
(73, 'Guatemala', '0.00'),
(74, 'Guinea', '0.00'),
(75, 'Guinea-Bissau', '0.00'),
(76, 'Guyana', '0.00'),
(77, 'Haiti', '0.00'),
(78, 'Holy See', '0.00'),
(79, 'Honduras', '0.00'),
(80, 'Hungary', '0.00'),
(81, 'Iceland', '0.00'),
(82, 'Indonesia', '150.00'),
(83, 'Iran', '0.00'),
(84, 'Iraq', '0.00'),
(85, 'Ireland', '0.00'),
(86, 'Israel', '0.00'),
(87, 'Italy', '0.00'),
(88, 'Jamaica', '0.00'),
(89, 'Japan', '150.00'),
(90, 'Jordan', '0.00'),
(91, 'Kazakhstan', '0.00'),
(92, 'Kenya', '0.00'),
(93, 'Kiribati', '0.00'),
(94, 'Kuwait', '0.00'),
(95, 'Kyrgyzstan', '0.00'),
(96, 'Laos', '0.00'),
(97, 'Latvia', '0.00'),
(98, 'Lebanon', '0.00'),
(99, 'Lesotho', '0.00'),
(100, 'Liberia', '0.00'),
(101, 'Libya', '0.00'),
(102, 'Liechtenstein', '0.00'),
(103, 'Lithuania', '0.00'),
(104, 'Luxembourg', '0.00'),
(105, 'Madagascar', '0.00'),
(106, 'Malawi', '0.00'),
(107, 'India', '0.00'),
(108, 'Maldives', '0.00'),
(109, 'Mali', '0.00'),
(110, 'Malta', '0.00'),
(111, 'Marshall Islands', '0.00'),
(112, 'Mauritania', '0.00'),
(113, 'Mauritius', '0.00'),
(114, 'Micronesia', '0.00'),
(115, 'Moldova', '0.00'),
(116, 'Monaco', '0.00'),
(117, 'Mongolia', '0.00'),
(118, 'Montenegro', '0.00'),
(119, 'Morocco', '0.00'),
(120, 'Mozambique', '0.00'),
(121, 'Myanmar (formerly Burma)', '0.00'),
(122, 'Namibia', '0.00'),
(123, 'Nauru', '0.00'),
(124, 'Nepal', '0.00'),
(125, 'Netherlands', '0.00'),
(126, 'New Zealand', '0.00'),
(127, 'Nicaragua', '0.00'),
(128, 'Niger', '0.00'),
(129, 'Nigeria', '0.00'),
(130, 'North Korea', '0.00'),
(131, 'North Macedonia', '0.00'),
(132, 'Norway', '0.00'),
(133, 'Oman', '0.00'),
(134, 'Pakistan', '0.00'),
(135, 'Palau', '0.00'),
(136, 'Palestine State', '0.00'),
(137, 'Panama', '0.00'),
(138, 'Papua New Guinea', '0.00'),
(139, 'Paraguay', '0.00'),
(140, 'Peru', '0.00'),
(141, 'Philippines', '150.00'),
(142, 'Poland', '0.00'),
(143, 'Portugal', '0.00'),
(144, 'Qatar', '0.00'),
(145, 'Romania', '0.00'),
(146, 'Russia', '0.00'),
(147, 'Rwanda', '0.00'),
(148, 'Saint Kitts and Nevis', '0.00'),
(149, 'Saint Lucia', '0.00'),
(150, 'Saint Vincent and the Grenadines', '0.00'),
(151, 'Samoa', '0.00'),
(152, 'San Marino', '0.00'),
(153, 'Sao Tome and Principe', '0.00'),
(154, 'Saudi Arabia', '0.00'),
(155, 'Senegal', '0.00'),
(156, 'Serbia', '0.00'),
(157, 'Seychelles', '0.00'),
(158, 'Sierra Leone', '0.00'),
(159, 'Singapore', '150.00'),
(160, 'Slovakia', '0.00'),
(161, 'Slovenia', '0.00'),
(162, 'Solomon Islands', '0.00'),
(163, 'Somalia', '0.00'),
(166, 'South Korea	', '0.00'),
(167, 'South Sudan', '0.00'),
(168, 'Spain', '0.00'),
(169, 'Sri Lanka', '0.00'),
(170, 'Sudan', '0.00'),
(171, 'Suriname', '0.00'),
(172, 'Sweden', '0.00'),
(173, 'Switzerland', '0.00'),
(174, 'Syria', '0.00'),
(175, 'Tajikistan', '0.00'),
(176, 'Tanzania', '0.00'),
(177, 'Thailand', '0.00'),
(178, 'Timor-Leste', '0.00'),
(179, 'Togo', '0.00'),
(180, 'Tonga', '0.00'),
(181, 'Trinidad and Tobago', '0.00'),
(182, 'Tunisia', '0.00'),
(183, 'Turkey', '0.00'),
(184, 'Turkmenistan', '0.00'),
(185, 'Tuvalu', '0.00'),
(186, 'Uganda', '0.00'),
(187, 'Ukraine', '0.00'),
(188, 'United Arab Emirates', '0.00'),
(189, 'United Kingdom', '0.00'),
(190, 'Uruguay', '0.00'),
(191, 'Uzbekistan', '0.00'),
(192, 'Vanuatu', '0.00'),
(193, 'Venezuela', '0.00'),
(194, 'Vietnam', '120.00'),
(195, 'Yemen', '0.00'),
(196, 'Zambia', '0.00'),
(197, 'Zimbabwe', '0.00'),
(198, 'Korea ', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `name`, `email`, `phone`, `city`) VALUES
(1, 'dhananchezhiyan', 'svchezhiyan@gmail.com', '07358747522', 'chengalpattu');

-- --------------------------------------------------------

--
-- Table structure for table `csr`
--

CREATE TABLE `csr` (
  `id` int(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(225) NOT NULL,
  `amount` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csr`
--

INSERT INTO `csr` (`id`, `time`, `user_id`, `amount`) VALUES
(1, '2020-07-08 09:31:54', 63, '2.40'),
(2, '2020-07-09 08:24:18', 27, '2.40'),
(3, '2020-07-09 08:32:39', 27, '2.40'),
(4, '2020-07-11 10:09:42', 22, '4.60'),
(5, '2020-07-11 14:00:47', 60, '2.40'),
(6, '2020-08-04 09:59:15', 27, '4.80'),
(7, '2020-08-04 15:02:09', 9, '2.20'),
(8, '2020-08-10 01:29:59', 15, '2.20'),
(9, '2020-10-12 05:55:00', 27, '2.40'),
(10, '2020-11-27 06:48:25', 44, '3.90'),
(11, '2020-11-27 06:58:29', 44, '3.90'),
(12, '2020-11-27 07:04:34', 44, '3.90'),
(13, '2020-11-27 07:05:28', 44, '3.90'),
(14, '2020-11-27 07:09:02', 44, '3.90'),
(15, '2020-11-27 07:16:39', 44, '3.90'),
(16, '2020-11-27 07:17:53', 44, '3.90'),
(17, '2020-11-27 07:17:59', 44, '3.90'),
(18, '2020-11-27 07:19:38', 44, '3.90'),
(19, '2020-11-27 07:21:18', 44, '3.90'),
(20, '2020-11-27 07:21:35', 44, '3.90'),
(21, '2020-11-27 07:21:52', 44, '3.90'),
(22, '2020-11-27 07:23:34', 44, '3.90'),
(23, '2020-11-27 07:23:39', 44, '3.90'),
(24, '2020-11-27 07:24:50', 44, '3.90'),
(25, '2020-11-27 07:28:01', 44, '3.90'),
(26, '2020-11-27 07:30:12', 44, '3.90'),
(27, '2020-11-27 07:46:30', 44, '3.90'),
(28, '2020-11-27 07:48:30', 44, '0.00'),
(29, '2020-11-27 08:11:11', 44, '0.00'),
(30, '2020-11-27 08:37:49', 44, '2.90'),
(31, '2020-11-27 09:45:03', 145, '4.20'),
(32, '2020-11-27 09:46:48', 145, '8.40'),
(33, '2020-11-27 09:54:47', 145, '4.20'),
(34, '2020-11-27 09:55:13', 145, '0.10'),
(35, '2020-11-27 10:36:06', 145, '4.00'),
(36, '2020-11-27 10:36:15', 145, '8.00'),
(37, '2020-11-27 10:36:38', 145, '4.20'),
(38, '2020-11-27 10:42:15', 145, '3.60'),
(39, '2020-11-27 10:44:49', 145, '0.10'),
(40, '2020-11-27 10:52:01', 145, '4.00'),
(41, '2020-11-27 11:08:23', 145, '3.60'),
(42, '2020-11-27 11:08:36', 145, '7.20'),
(43, '2020-11-27 11:11:21', 145, '4.20'),
(44, '2020-11-27 11:13:43', 145, '4.20'),
(45, '2020-11-27 11:13:51', 145, '8.40'),
(46, '2020-11-27 11:20:40', 145, '4.20'),
(47, '2020-11-27 11:20:52', 145, '8.40'),
(48, '2020-11-27 11:22:15', 145, '0.10'),
(49, '2020-11-27 11:29:08', 145, '0.10'),
(50, '2020-11-27 11:32:01', 145, '4.00'),
(51, '2020-11-27 11:32:23', 145, '3.60'),
(52, '2020-11-27 11:34:46', 145, '3.60'),
(53, '2020-11-27 11:34:55', 145, '7.20'),
(54, '2020-11-27 11:36:29', 145, '4.20'),
(55, '2020-11-27 11:39:03', 145, '0.10'),
(56, '2020-11-27 11:39:15', 145, '0.20'),
(57, '2020-11-27 11:43:56', 145, '4.00'),
(58, '2020-11-27 11:46:25', 145, '4.20'),
(59, '2020-11-27 11:59:24', 145, '3.60'),
(60, '2020-11-27 11:59:33', 145, '7.20'),
(61, '2020-11-27 12:00:24', 145, '3.60'),
(62, '2020-11-27 12:02:36', 145, '4.20'),
(63, '2020-11-27 12:04:01', 145, '4.20'),
(64, '2020-11-27 12:04:28', 145, '8.40'),
(65, '2020-11-27 12:09:44', 145, '3.60'),
(66, '2020-11-27 12:10:43', 145, '4.20'),
(67, '2020-11-27 12:11:04', 145, '8.40'),
(68, '2020-11-27 12:19:00', 145, '4.00'),
(69, '2020-11-27 12:19:07', 145, '8.00'),
(70, '2020-11-27 12:32:16', 145, '0.10'),
(71, '2020-11-27 12:35:55', 145, '4.20'),
(72, '2020-11-27 13:18:56', 145, '4.00'),
(73, '2020-11-27 15:32:01', 145, '4.20'),
(74, '2020-11-27 15:55:34', 145, '3.60'),
(75, '2020-11-27 15:55:41', 145, '7.20'),
(76, '2020-11-27 15:56:36', 145, '3.60'),
(77, '2020-11-27 15:56:46', 145, '7.20'),
(78, '2020-11-27 15:57:15', 145, '4.20'),
(79, '2020-11-27 15:58:04', 145, '8.40'),
(80, '2020-11-27 15:58:21', 145, '12.60'),
(81, '2020-11-27 15:59:37', 145, '3.60'),
(82, '2020-11-27 16:00:38', 145, '3.60'),
(83, '2020-11-27 16:03:23', 145, '4.20'),
(84, '2020-11-27 16:03:33', 145, '8.40'),
(85, '2020-11-30 02:46:58', 145, '8.00'),
(86, '2020-12-09 09:59:14', 145, '4.00'),
(87, '2020-12-09 11:43:47', 145, '4.00'),
(88, '2020-12-09 11:44:03', 145, '8.00'),
(89, '2020-12-09 11:44:25', 145, '12.00'),
(90, '2020-12-09 11:56:16', 145, '3.60'),
(91, '2020-12-09 16:12:12', 145, '4.20'),
(92, '2020-12-09 16:17:51', 145, '8.40'),
(93, '2020-12-14 07:55:37', 147, '4.30'),
(94, '2020-12-14 08:14:45', 147, '4.30'),
(95, '2020-12-14 08:19:13', 147, '4.30'),
(96, '2020-12-14 08:31:52', 147, '4.20'),
(97, '2020-12-14 14:36:07', 149, '0.20'),
(98, '2020-12-14 14:46:10', 149, '0.06'),
(99, '2020-12-14 14:47:39', 149, '0.06'),
(100, '2020-12-14 14:49:45', 149, '1.12'),
(101, '2020-12-14 14:56:55', 44, '3.90'),
(102, '2020-12-14 15:00:54', 148, '3.90'),
(103, '2020-12-14 15:03:00', 148, '3.90'),
(104, '2020-12-14 15:03:44', 148, '3.90'),
(105, '2020-12-14 15:04:34', 148, '3.90'),
(106, '2020-12-14 15:05:37', 148, '3.90'),
(107, '2020-12-14 15:16:51', 149, '3.00'),
(108, '2020-12-14 17:12:12', 150, '3.24'),
(109, '2020-12-15 12:33:39', 147, '12.00');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(10) NOT NULL,
  `national_id` varchar(30) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address_line1` varchar(100) NOT NULL,
  `address_line2` varchar(100) NOT NULL,
  `city` varchar(66) NOT NULL,
  `zip` varchar(33) NOT NULL,
  `country` varchar(44) NOT NULL,
  `password` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`id`, `first_name`, `last_name`, `email`, `national_id`, `mobile`, `address_line1`, `address_line2`, `city`, `zip`, `country`, `password`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', ''),
(2, '', '', '', '', '', '', '', '', '', '', ''),
(3, '', '', '', '', '', '', '', '', '', '', ''),
(4, '', '', '', '', '', '', '', '', '', '', ''),
(5, '', '', '', '', '', '', '', '', '', '', ''),
(6, '', '', '', '', '', '', '', '', '', '', ''),
(7, '', '', '', '', '', '', '', '', '', '', ''),
(8, '', '', '', '', '', '', '', '', '', '', ''),
(9, '', '', '', '', '', '', '', '', '', '', ''),
(10, '', '', '', '', '', '', '', '', '', '', ''),
(11, '', '', '', '', '', '', '', '', '', '', ''),
(12, '', '', '', '', '', '', '', '', '', '', ''),
(13, '', '', '', '', '', '', '', '', '', '', ''),
(14, '', '', '', '', '', '', '', '', '', '', ''),
(15, '', '', '', '', '', '', '', '', '', '', ''),
(16, '', '', '', '', '', '', '', '', '', '', ''),
(17, '', '', '', '', '', '', '', '', '', '', ''),
(18, '', '', '', '', '', '', '', '', '', '', ''),
(19, '', '', '', '', '', '', '', '', '', '', ''),
(20, '', '', '', '', '', '', '', '', '', '', ''),
(21, 'dhananchezhiyan', 's', 'svchezhiya', '', '0735874752', 'Opppp', 'Abiramam', '603303', 'East Street', 'India', '2908'),
(22, 'dhananchezhiyan', 's', 'svchezhiya', '', '07358747522', 'Opppp', 'Abiramam', '603303', 'East Street', 'India', '290');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `pv` int(225) NOT NULL,
  `pv_for_100` int(100) NOT NULL DEFAULT '1',
  `pv_for_referal` int(225) NOT NULL DEFAULT '2',
  `1pv_to_amount` decimal(11,2) NOT NULL,
  `minimum_pv` int(225) NOT NULL,
  `price` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `name`, `pv`, `pv_for_100`, `pv_for_referal`, `1pv_to_amount`, `minimum_pv`, `price`) VALUES
(2, 'Normal', 1, 1, 2, '1.00', 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `time`, `content`, `image`) VALUES
(1, '2020-06-24 17:44:55', 'Member price : RM 210/carton', 'https://togunh2plus.com/uploads/1593020695.jpg'),
(2, '2020-07-01 14:14:02', 'iPhone Casing only RM1.00 for Platinum Member.', 'https://togunh2plus.com/uploads/1593612842.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` varchar(100) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `delivery_address` longtext NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `time`, `user_id`, `product_name`, `product_id`, `qty`, `price`, `delivery_address`, `order_id`, `order_status`, `transaction_id`) VALUES
(180, '2021-04-06 04:18:57', '345', 'chezhiyan', '94', '1', '138', '  dhananchezhiyan s  No.6 East Street 50.Thandarai Vill,perumpakkam Post,Mathurantakam TK,Kancheepuram ds    city  603306    mexico    735874752  ', '8e72b', 'payment_pending', NULL),
(181, '2021-04-06 04:26:15', '345', 'chezhiyan', '94', '1', '138', '  dhananchezhiyan s  No.6 East Street 50.Thandarai Vill,perumpakkam Post,Mathurantakam TK,Kancheepuram ds    city  603306    mexico    735874752  ', '8e72b', 'payment_pending', NULL),
(182, '2021-04-06 04:30:48', '345', 'banu s', '100', '1', '172', '  dhananchezhiyan s  No.6 East Street 50.Thandarai Vill,perumpakkam Post,Mathurantakam TK,Kancheepuram ds    city  603306    mexico    735874752  ', '616dc', 'payment_pending', NULL),
(183, '2021-04-06 04:31:04', '345', 'banu s', '100', '1', '172', '  dhananchezhiyan s  No.6 East Street 50.Thandarai Vill,perumpakkam Post,Mathurantakam TK,Kancheepuram ds    city  603306    mexico    735874752  ', '616dc', 'payment_pending', NULL),
(184, '2021-04-06 04:31:04', '345', 'banu s', '100', '1', '172', '  dhananchezhiyan s  No.6 East Street 50.Thandarai Vill,perumpakkam Post,Mathurantakam TK,Kancheepuram ds    city  603306    mexico    735874752  ', '616dc', 'payment_pending', NULL),
(185, '2021-04-09 16:59:01', '345', 'chezhiyan', '94', '1', '138', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', 'f8c6a', 'payment_pending', NULL),
(186, '2021-04-09 17:59:13', '345', 'Original Mercedes Benz 5W40 5L Fully Synthetic Engine Oil', '79', '2', '506', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', 'cbb20', 'payment_success', '161799116858532440'),
(187, '2021-04-09 17:59:41', '345', 'Original Mercedes Benz 5W40 5L Fully Synthetic Engine Oil', '79', '2', '506', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', 'cbb20', 'payment_pending', NULL),
(188, '2021-04-10 08:45:13', '345', 'chezhiyan', '94', '1', '138', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', 'ebfdf', 'payment_pending', NULL),
(189, '2021-04-10 08:45:14', '345', 'chezhiyan', '94', '1', '138', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '48f36', 'payment_success', '161804435671732440'),
(190, '2021-04-12 09:16:51', '345', 'Suunto 3 Granite Red-Smartwatch', '102', '2', '2185', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '14db9', 'payment_success', '161821902370932440'),
(191, '2021-04-12 09:17:10', '345', 'Suunto 3 Granite Red-Smartwatch', '102', '2', '2185', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '14db9', 'payment_pending', NULL),
(192, '2021-04-12 09:31:16', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '4e673', 'payment_pending', NULL),
(193, '2021-04-12 09:35:43', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(194, '2021-04-12 09:36:16', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(195, '2021-04-12 09:36:16', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(196, '2021-04-12 09:36:24', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(197, '2021-04-12 09:36:26', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(198, '2021-04-12 09:36:26', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(199, '2021-04-12 09:36:29', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(200, '2021-04-12 09:36:30', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(201, '2021-04-12 09:36:31', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(202, '2021-04-12 09:36:32', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(203, '2021-04-12 09:36:33', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(204, '2021-04-12 09:36:34', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(205, '2021-04-12 09:36:34', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(206, '2021-04-12 09:36:46', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(207, '2021-04-12 09:36:46', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(208, '2021-04-12 09:36:53', '345', 'Toyota 5W/30 Castle Engine Oil (4L) made in Japan', '80', '1', '115', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '5bdba', 'payment_pending', NULL),
(209, '2021-04-12 09:37:04', '345', 'Toyota 5W/30 Castle Engine Oil (4L) made in Japan', '80', '1', '115', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '5bdba', 'payment_pending', NULL),
(210, '2021-04-12 09:37:04', '345', 'Toyota 5W/30 Castle Engine Oil (4L) made in Japan', '80', '1', '115', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '5bdba', 'payment_pending', NULL),
(211, '2021-04-12 09:37:06', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(212, '2021-04-12 09:37:06', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '3827b', 'payment_pending', NULL),
(213, '2021-04-12 09:37:27', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '23dd6', 'payment_success', '161822026971532440'),
(214, '2021-04-12 09:37:53', '345', 'LENOVO Laptop Model : X230', '103', '1', '977', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', 'db9ae', 'payment_pending', NULL),
(215, '2021-04-12 09:39:16', '345', 'No one', '107', '1', '230', '  Hhj Hhh  Mkm    city  66666    malasiya    655665  ', '23dd6', 'payment_pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_temp`
--

CREATE TABLE `order_temp` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` enum('success','failure') NOT NULL DEFAULT 'failure',
  `payment_response` varchar(200) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `product_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_temp`
--

INSERT INTO `order_temp` (`id`, `user_id`, `detail`, `order_id`, `amount`, `status`, `payment_response`, `name`, `email`, `phone`, `product_details`) VALUES
(4, '123', 'welcome', '1615302273', '100', 'failure', NULL, 'dhananchezhiyan s', 'svchezhiyan@gmail.com', '735874752', 'hghnnnnnn'),
(5, '123', 'hiiiii', '1615351985', '100', 'failure', NULL, 'dhananchezhiyan s', 'svchezhiyan@gmail.com', '735874752', 'hghnnnnnn'),
(6, '112333', 'hiiiii', '1615352042', '4444', 'failure', NULL, 'dhananchezhiyan s', 'svchezhiyan@gmail.com', '735874752', 'hghnnnnnn');

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(225) NOT NULL,
  `payment_id` varchar(225) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `payment_status` varchar(225) NOT NULL,
  `payment_reason` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `featured_image` varchar(225) NOT NULL,
  `slider_images` longtext NOT NULL,
  `description` mediumtext NOT NULL,
  `category` varchar(225) NOT NULL,
  `Retail_Price` decimal(65,2) NOT NULL,
  `Market_Selling_Price` decimal(65,2) NOT NULL,
  `Member_Price` decimal(65,2) NOT NULL,
  `Gold_Member_Price` decimal(65,2) NOT NULL,
  `Platinum_Member_Price` decimal(65,2) NOT NULL,
  `stock` int(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `Delivery_Charge` varchar(100) NOT NULL,
  `product_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `featured_image`, `slider_images`, `description`, `category`, `Retail_Price`, `Market_Selling_Price`, `Member_Price`, `Gold_Member_Price`, `Platinum_Member_Price`, `stock`, `status`, `Delivery_Charge`, `product_category`) VALUES
(79, 'Original Mercedes Benz 5W40 5L Fully Synthetic Engine Oil', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1617361820.jpg', 'https://fytechno.com/Pick_IT_Upp/project/Pick_IT_Upp/uploads/379051617361820.jpg', 'This oil has been designed by Mercedes Benz specifically for Mercedes Benz vehicles. Developed to ensure your engine runs smoothly and with Mercedes Benz efficiency. The only oil recommended by the experts who built your engine. Free shipping within West Malaysia only.', '', '220.00', '165.00', '220.00', '220.00', '220.00', 3, 1, 'FREE', 'CAR ENGINE OIL'),
(80, 'Toyota 5W/30 Castle Engine Oil (4L) made in Japan', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1617362384.jpg', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/4401651617362384.jpg', 'Suitable for petrol and diesel car. Fully import made in Japan. Formulated to meet best performance and protection of Engine. Free shipping within West Malaysia only.\r\n\r\n', '', '100.00', '77.00', '100.00', '100.00', '100.00', 3, 1, 'FREE', 'CAR ENGINE OIL'),
(82, 'Shell Helix HX3 20W50 Engine (4L)', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1617370605.jpg', 'https://fytechno.com/Pick_IT_Up/ptoject/Pick_IT_Up/uploads/9019371617370605.jpg', 'Fits Toyota, Perodua, Honda, Proton, Nissans, Mitsubishi , Ford , Hyundai , Suzuki , Isuzu , Subaru & Mazda', '', '75.00', '55.00', '75.00', '75.00', '75.00', 3, 1, '10', 'CAR ENGINE OIL'),
(96, 'Honda Genuine Semi Synthetic SN5W30 4L Engine Oil', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1617621163.jpg', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1424651617621163.jpg', 'Suitable for All type of Honda vehicle100% Genuine Honda Engine oil. Value for money. High-Quality Product, Enhanced Protection ,Supreme Performance', '', '85.00', '70.00', '85.00', '85.00', '85.00', 3, 1, '10', 'CAR ENGINE OIL'),
(101, 'Camera Drone Visuo XS816', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1618202009.png', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/8059181618202009.jpg', 'Foldable Dual Camera, Gesture shooting, 360-degree Flip Function', '', '269.00', '229.00', '269.00', '269.00', '269.00', 10, 1, 'FREE', 'CAMERA'),
(102, 'Suunto 3 Granite Red-Smartwatch', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1618204197.webp', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/7716121618204197.jpg', 'Robust and smart fitness watch for training and maintaining a healthy lifestyle. 24/7 activity tracking with steps, calories and sleep. Water resistance', '', '950.00', '897.00', '950.00', '950.00', '950.00', 5, 1, '10', 'WATCH'),
(103, 'LENOVO Laptop Model : X230', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1618205139.webp', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1966431618205139.jpg', 'RefurbishedCondition\r\nCore i5 - 3320M\r\n90 Days Warranty', '', '850.00', '712.00', '850.00', '850.00', '850.00', 10, 1, '10', 'CAR ENGINE OIL'),
(105, 'Suunto 3 Granite Red-Smartwatch', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1618217366.webp', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/2780471618219671.jpg,https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/983911618219671.jpg', 'Smart fitness watch for training and maintaining a healthy lifestyle, 24/7 activity tracking with steps, calories and sleep. Water resistance.', '', '950.00', '897.00', '950.00', '950.00', '950.00', 5, 1, '10', 'single'),
(107, 'No one', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/1618219461.jpg', 'https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/7351621618219622.jpg,https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/879061618219622.jpg,https://fytechno.com/Pick_IT_Up/project/Pick_IT_Up/uploads/9336761618219622.jpg', 'No one', '', '200.00', '300.00', '200.00', '200.00', '200.00', 20, 1, '10', 'single');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0' COMMENT '0-show, 1-hide'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `del_status`) VALUES
(118, 'single', 1),
(138, 'CAMERA', 0),
(139, 'MOBILE PHONE', 0),
(140, 'WATCH', 0),
(141, 'CAR ENGINE OIL', 0),
(142, 'LAPTOP', 0);

-- --------------------------------------------------------

--
-- Table structure for table `redeem_request`
--

CREATE TABLE `redeem_request` (
  `id` int(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(225) NOT NULL,
  `pv` int(225) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `account_number` varchar(225) NOT NULL,
  `bank_address` longtext NOT NULL,
  `id_number` varchar(225) NOT NULL,
  `bank_code` varchar(225) NOT NULL,
  `account_holder_name` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `redeem_request`
--

INSERT INTO `redeem_request` (`id`, `time`, `user_id`, `pv`, `amount`, `bank_name`, `account_number`, `bank_address`, `id_number`, `bank_code`, `account_holder_name`, `status`) VALUES
(1, '2020-12-11 04:51:29', 15, 51, '1.00', 'sbi', '', 'chennai', 'demo1321321313', '3456', 'chezhiyan', 2),
(2, '2020-12-11 05:15:49', 15, 74, '1.00', 'sbi', '', 'chennai', '74', '3456', 'chezhiyan', 2),
(3, '2020-12-11 05:46:09', 15, 74, '4444.00', 'sbi', '', 'chennai', 'demo1321321313', '3456', 'chezhiyan', 0),
(4, '2020-12-11 05:46:17', 144, 74, '4444.00', 'sbi', '', 'chennai', 'demo1321321313', '3456', 'chezhiyan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `referral_code`
--

CREATE TABLE `referral_code` (
  `id` int(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referral_code`
--

INSERT INTO `referral_code` (`id`, `code`, `status`) VALUES
(1, '1', 1),
(3, '2', 1),
(12, '3', 1),
(16, '4', 1),
(17, '5', 1),
(18, '6', 1),
(21, '7', 1),
(29, '8', 1),
(31, '9', 1),
(32, '10', 1),
(39, '11', 1),
(40, '12', 1),
(41, '13', 1),
(42, '14', 1),
(43, '15', 1),
(45, '16', 1),
(46, '17', 1),
(47, '18', 1),
(48, '19', 1),
(49, '20', 1),
(50, '21', 1),
(51, '22', 1),
(52, '23', 1),
(53, '24', 1),
(54, '25', 1),
(55, '26', 1),
(56, '27', 1),
(57, '28', 1),
(58, '29', 1),
(59, '30', 1),
(60, '31', 1),
(61, '32', 1),
(62, '33', 1),
(63, '34', 1),
(64, '35', 1),
(65, '36', 1),
(66, '37', 1),
(67, '38', 1),
(68, '39', 1),
(69, '40', 1),
(70, '41', 1),
(71, '42', 1),
(72, '43', 1),
(73, '44', 1),
(74, '45', 1),
(75, '46', 1),
(76, '47', 1),
(77, '48', 1),
(78, '49', 1),
(79, '50', 1),
(80, '51', 1),
(81, '52', 1),
(82, '53', 1),
(83, '54', 1),
(84, '55', 1),
(85, '56', 1),
(86, '57', 1),
(87, '58', 1),
(88, '59', 1),
(89, '60', 1),
(90, '61', 1),
(91, '62', 1),
(92, '63', 1),
(93, '64', 1),
(94, '65', 1),
(95, '66', 1),
(96, '67', 1),
(97, '68', 1),
(98, '69', 1),
(99, '70', 1),
(100, '71', 1),
(101, '72', 1),
(102, '73', 1),
(103, '74', 1),
(104, '75', 1),
(105, '76', 1),
(106, '77', 1),
(107, '78', 1),
(108, '79', 1),
(109, '80', 1),
(110, '81', 1),
(111, '82', 1),
(112, '83', 1),
(113, '84', 1),
(114, '85', 1),
(115, '86', 1),
(116, '87', 1),
(117, '88', 1),
(118, '89', 1),
(119, '90', 1),
(120, '91', 1),
(121, '92', 1),
(122, '93', 1),
(123, '94', 1),
(124, '95', 1),
(125, '96', 1),
(126, '97', 1),
(127, '98', 1),
(128, '99', 1),
(129, '100', 1),
(130, '101', 1),
(131, '102', 1),
(132, '103', 1),
(133, '104', 1),
(134, '105', 1),
(135, '106', 1),
(136, '107', 1),
(137, '108', 1),
(138, '109', 1),
(139, '110', 1),
(140, '111', 1),
(141, '112', 1),
(142, '113', 1),
(143, '114', 1),
(144, '115', 1),
(145, '116', 1),
(146, '117', 1),
(147, '118', 1),
(148, '119', 1),
(149, '120', 1),
(150, '121', 1),
(151, '122', 1),
(152, '123', 1),
(153, '124', 1),
(154, '125', 1),
(155, '126', 1),
(156, '127', 1),
(157, '128', 1),
(158, '129', 1),
(159, '130', 1),
(160, '131', 1),
(161, '132', 1),
(162, '133', 1),
(163, '134', 1),
(164, '135', 1),
(165, '136', 1),
(166, '137', 1),
(167, '138', 1),
(168, '139', 1),
(169, '140', 1),
(170, '141', 1),
(171, '142', 1),
(172, '143', 1),
(173, '144', 1),
(174, '145', 1),
(175, '146', 1),
(176, '147', 1),
(177, '148', 1),
(178, '149', 1),
(179, '150', 1),
(180, '151', 1),
(181, '152', 1),
(182, '153', 1),
(183, '154', 1),
(184, '155', 1),
(185, '156', 1),
(186, '157', 1),
(187, '158', 1),
(188, '159', 1),
(189, '160', 1),
(190, '161', 1),
(191, '162', 1),
(192, '163', 1),
(193, '164', 1),
(194, '165', 1),
(195, '166', 1),
(196, '167', 1),
(197, '168', 1),
(198, '169', 1),
(199, '170', 1),
(200, '171', 1),
(201, '172', 1),
(202, '173', 1),
(203, '174', 1),
(204, '175', 1),
(205, '176', 1),
(206, '177', 1),
(207, '178', 1),
(208, '179', 1),
(209, '180', 1),
(210, '181', 1),
(211, '182', 1),
(212, '183', 1),
(213, '184', 1),
(214, '185', 1),
(215, '186', 1),
(216, '187', 1),
(217, '188', 1),
(218, '189', 1),
(219, '190', 1),
(220, '191', 1),
(221, '192', 1),
(222, '193', 1),
(223, '194', 1),
(224, '195', 1),
(225, '196', 1),
(226, '197', 1),
(227, '198', 1),
(228, '199', 1),
(229, '200', 1),
(230, '201', 1),
(231, '202', 1),
(232, '203', 1),
(233, '204', 1),
(234, '205', 1),
(235, '206', 1),
(236, '207', 1),
(237, '208', 1),
(238, '209', 1),
(239, '210', 1),
(240, '211', 1),
(241, '212', 1),
(242, '213', 1),
(243, '214', 1),
(244, '215', 1),
(245, '216', 1),
(246, '217', 1),
(247, '218', 1),
(248, '219', 1),
(249, '220', 1),
(250, '221', 1),
(251, '222', 1),
(252, '223', 1),
(253, '224', 1),
(254, '225', 1),
(255, '226', 1),
(256, '227', 1),
(257, '228', 1),
(258, '229', 1),
(259, '230', 1),
(260, '231', 1),
(261, '232', 1),
(262, '233', 1),
(263, '234', 1),
(264, '235', 1),
(265, '236', 1),
(266, '237', 1),
(267, '238', 1),
(268, '239', 1),
(269, '240', 1),
(270, '241', 1),
(271, '242', 1),
(272, '243', 1),
(273, '244', 1),
(274, '245', 1),
(275, '246', 1),
(276, '247', 1),
(277, '248', 1),
(278, '249', 1),
(279, '250', 1),
(280, '251', 1),
(281, '252', 1),
(282, '253', 1),
(283, '254', 1),
(284, '255', 1),
(285, '256', 1),
(286, '257', 1),
(287, '258', 1),
(288, '259', 1),
(289, '260', 1),
(290, '261', 1),
(291, '262', 1),
(292, '263', 1),
(293, '264', 1),
(294, '265', 1),
(295, '266', 1),
(296, '267', 1),
(297, '268', 1),
(298, '269', 1),
(299, '270', 1),
(300, '271', 1),
(301, '272', 1),
(302, '273', 1),
(303, '274', 1),
(304, '275', 1),
(305, '276', 1),
(306, '277', 1),
(307, '278', 1),
(308, '279', 1),
(309, '280', 1),
(310, '281', 1),
(311, '282', 1),
(312, '283', 1),
(313, '284', 1),
(314, '285', 1),
(315, '286', 1),
(316, '287', 1),
(317, '288', 1),
(318, '289', 1),
(319, '290', 1),
(320, '291', 1),
(321, '292', 1),
(322, '293', 1),
(323, '294', 1),
(324, '295', 1),
(325, '296', 1),
(326, '297', 1),
(327, '298', 1),
(328, '299', 1),
(329, '300', 1),
(330, '301', 1),
(331, '302', 1),
(332, '303', 1),
(333, '304', 1),
(334, '305', 1),
(335, '306', 1),
(336, '307', 1),
(337, '308', 1),
(338, '309', 1),
(339, '310', 1),
(340, '311', 1),
(341, '312', 1),
(342, '313', 1),
(343, '314', 1),
(344, '315', 1),
(345, '316', 1),
(346, '317', 1),
(347, '318', 1),
(348, '319', 1),
(349, '320', 1),
(350, '321', 1),
(351, '322', 1),
(352, '323', 1),
(353, '324', 1),
(354, '325', 1),
(355, '326', 1),
(356, '327', 1),
(357, '328', 1),
(358, '329', 1),
(359, '330', 1),
(360, '331', 1),
(361, '332', 1),
(362, '333', 1),
(363, '334', 1),
(364, '335', 1),
(365, '336', 1),
(366, '337', 1),
(367, '338', 1),
(368, '339', 1),
(369, '340', 1),
(370, '341', 1),
(371, '342', 1),
(372, '343', 1),
(373, '344', 1),
(374, '345', 1),
(375, '346', 1),
(376, '347', 1),
(377, '348', 1),
(378, '349', 1),
(379, '350', 1),
(380, '351', 1),
(381, '352', 1),
(382, '353', 1),
(383, '354', 1),
(384, '355', 1),
(385, '356', 1),
(386, '357', 1),
(387, '358', 1),
(388, '359', 1),
(389, '360', 1),
(390, '361', 1),
(391, '362', 1),
(392, '363', 1),
(393, '363', 1),
(394, '363', 1),
(395, '364', 1),
(396, '365', 1),
(397, '366', 1),
(398, '367', 1),
(399, '368', 1),
(400, '369', 1),
(401, '370', 1),
(402, '371', 1),
(403, '372', 1),
(404, '373', 1),
(405, '374', 1),
(406, '375', 1),
(407, '376', 1),
(408, '377', 1),
(409, '378', 1),
(410, '379', 1),
(411, '380', 1),
(412, '381', 1),
(413, '382', 1),
(414, '383', 1),
(415, '384', 1),
(416, '385', 1),
(417, '386', 1),
(418, '387', 1),
(419, '388', 1),
(420, '389', 1),
(421, '390', 1),
(422, '391', 1),
(423, '392', 1),
(424, '393', 1),
(425, '394', 1),
(426, '395', 1),
(427, '396', 1),
(428, '397', 1),
(429, '398', 1),
(430, '399', 1),
(431, '400', 1),
(432, '401', 1),
(433, '402', 1),
(434, '403', 1),
(435, '404', 1),
(436, '405', 1),
(437, '406', 1),
(438, '407', 1),
(439, '408', 1),
(440, '409', 1),
(441, '410', 1),
(442, '411', 1),
(443, '412', 1),
(444, '413', 1),
(445, '414', 1),
(446, '415', 1),
(447, '416', 1),
(448, '417', 1),
(449, '418', 1),
(450, '419', 1),
(451, '420', 1),
(452, '421', 1),
(453, '422', 1),
(454, '423', 1),
(455, '424', 1),
(456, '425', 1),
(457, '426', 1),
(458, '427', 1),
(459, '428', 1),
(460, '429', 1),
(461, '430', 1),
(462, '431', 1),
(463, '432', 1),
(464, '433', 1),
(465, '434', 1),
(466, '435', 1),
(467, '436', 1),
(468, '437', 1),
(469, '438', 1),
(470, '439', 1),
(471, '440', 1),
(472, '441', 1),
(473, '442', 1),
(474, '443', 1),
(475, '444', 1),
(476, '445', 1),
(477, '446', 1),
(478, '447', 1),
(479, '448', 1),
(480, '449', 1),
(481, '450', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reward_history`
--

CREATE TABLE `reward_history` (
  `id` int(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(225) NOT NULL,
  `reward` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reward_history`
--

INSERT INTO `reward_history` (`id`, `time`, `user_id`, `reward`) VALUES
(118, '2020-07-18 11:08:05', 17, 2),
(119, '2020-07-18 11:08:10', 17, 2),
(120, '2020-07-18 11:08:11', 17, 2),
(129, '2020-07-18 11:11:37', 24, 2),
(131, '2020-07-18 11:13:05', 24, 2),
(132, '2020-07-22 03:58:11', 24, 2),
(133, '2020-07-22 04:01:41', 24, 2),
(134, '2020-07-22 04:02:54', 24, 2),
(135, '2020-07-22 04:04:13', 24, 2),
(136, '2020-07-22 04:06:12', 24, 2),
(137, '2020-07-22 09:06:22', 15, 2),
(160, '2020-07-25 07:16:32', 15, 2),
(161, '2020-07-25 10:58:23', 9, 2),
(162, '2020-07-26 03:22:17', 9, 2),
(163, '2020-07-26 15:51:42', 24, 2),
(164, '2020-07-27 08:10:02', 15, 2),
(165, '2020-07-27 08:12:18', 15, 2),
(166, '2020-07-27 08:21:54', 15, 2),
(167, '2020-07-27 08:56:22', 15, 2),
(168, '2020-07-27 10:19:00', 15, 2),
(169, '2020-07-27 11:14:03', 15, 2),
(170, '2020-07-27 11:14:07', 15, 2),
(171, '2020-07-27 11:14:39', 15, 2),
(172, '2020-07-27 11:14:44', 15, 2),
(173, '2020-07-27 11:14:48', 15, 2),
(174, '2020-07-27 11:15:00', 15, 2),
(175, '2020-07-27 11:17:22', 15, 2),
(177, '2020-07-28 06:04:25', 9, 2),
(178, '2020-07-30 07:57:36', 15, 2),
(179, '2020-07-31 11:59:53', 17, 2),
(180, '2020-07-31 12:00:12', 17, 2),
(181, '2020-08-03 14:42:24', 9, 2),
(182, '2020-08-04 09:59:15', 27, 4),
(183, '2020-08-04 09:59:15', 15, 4),
(184, '2020-08-04 15:02:09', 9, 2),
(185, '2020-08-10 01:29:59', 15, 2),
(186, '2020-08-12 05:14:24', 24, 2),
(187, '2020-08-12 05:25:53', 24, 2),
(188, '2020-08-17 08:41:03', 9, 2),
(189, '2020-09-25 05:14:49', 24, 2),
(190, '2020-10-12 05:55:00', 27, 2),
(191, '2020-10-12 05:55:00', 15, 2),
(192, '2020-11-13 08:27:39', 9, 2),
(193, '2020-11-13 08:29:53', 9, 2),
(194, '2020-11-13 08:36:35', 9, 2),
(195, '2020-11-13 08:40:36', 9, 2),
(196, '2020-11-13 08:44:08', 9, 2),
(197, '2020-11-13 08:46:54', 9, 2),
(198, '2020-11-13 08:51:19', 9, 2),
(199, '2020-11-13 08:56:55', 9, 2),
(200, '2020-11-13 08:59:41', 9, 2),
(201, '2020-11-13 09:05:38', 9, 2),
(202, '2020-11-13 09:20:40', 9, 2),
(203, '2020-11-13 09:47:47', 9, 2),
(204, '2020-11-13 12:07:49', 9, 2),
(205, '2020-11-13 12:13:40', 9, 2),
(206, '2020-11-16 03:05:37', 9, 2),
(207, '2020-11-16 03:07:14', 9, 2),
(208, '2020-11-16 03:35:45', 9, 2),
(209, '2020-11-16 03:40:31', 9, 2),
(210, '2020-11-16 04:39:14', 9, 2),
(211, '2020-11-16 05:35:43', 9, 2),
(212, '2020-11-16 05:38:26', 9, 2),
(213, '2020-11-16 11:57:22', 9, 2),
(214, '2020-11-17 03:19:43', 9, 2),
(215, '2020-11-17 05:29:52', 9, 2),
(216, '2020-11-17 06:08:47', 9, 2),
(217, '2020-11-17 06:47:01', 9, 2),
(218, '2020-11-18 04:13:55', 9, 2),
(219, '2020-11-27 09:45:03', 9, 2),
(220, '2020-11-27 09:46:48', 9, 4),
(221, '2020-11-27 09:54:47', 9, 2),
(222, '2020-11-27 10:36:06', 9, 2),
(223, '2020-11-27 10:36:15', 9, 4),
(224, '2020-11-27 10:36:38', 9, 2),
(225, '2020-11-27 10:42:15', 9, 2),
(226, '2020-11-27 10:52:01', 9, 2),
(227, '2020-11-27 11:08:23', 9, 2),
(228, '2020-11-27 11:08:36', 9, 4),
(229, '2020-11-27 11:11:21', 9, 2),
(230, '2020-11-27 11:13:43', 9, 2),
(231, '2020-11-27 11:13:51', 9, 4),
(232, '2020-11-27 11:20:40', 9, 2),
(233, '2020-11-27 11:20:52', 9, 4),
(234, '2020-11-27 11:32:01', 9, 2),
(235, '2020-11-27 11:32:23', 9, 2),
(236, '2020-11-27 11:34:46', 9, 2),
(237, '2020-11-27 11:34:55', 9, 4),
(238, '2020-11-27 11:36:29', 9, 2),
(239, '2020-11-27 11:43:56', 9, 2),
(240, '2020-11-27 11:46:25', 9, 2),
(241, '2020-11-27 11:59:24', 9, 2),
(242, '2020-11-27 11:59:33', 9, 4),
(243, '2020-11-27 12:00:24', 9, 2),
(244, '2020-11-27 12:02:36', 9, 2),
(245, '2020-11-27 12:04:01', 9, 2),
(246, '2020-11-27 12:04:28', 9, 4),
(247, '2020-11-27 12:09:44', 9, 2),
(248, '2020-11-27 12:10:43', 9, 2),
(249, '2020-11-27 12:11:04', 9, 4),
(250, '2020-11-27 12:19:00', 9, 2),
(251, '2020-11-27 12:19:07', 9, 4),
(252, '2020-11-27 12:35:55', 9, 2),
(253, '2020-11-27 13:18:56', 9, 2),
(254, '2020-11-27 15:32:01', 9, 2),
(255, '2020-11-27 15:55:34', 9, 2),
(256, '2020-11-27 15:55:41', 9, 4),
(257, '2020-11-27 15:56:36', 9, 2),
(258, '2020-11-27 15:56:46', 9, 4),
(259, '2020-11-27 15:57:15', 9, 2),
(260, '2020-11-27 15:58:04', 9, 4),
(261, '2020-11-27 15:58:21', 9, 6),
(262, '2020-11-27 15:59:37', 9, 2),
(263, '2020-11-27 16:00:38', 9, 2),
(264, '2020-11-27 16:03:23', 9, 2),
(265, '2020-11-27 16:03:33', 9, 4),
(266, '2020-11-30 02:46:58', 9, 4),
(267, '2020-12-03 02:20:59', 9, 2),
(268, '2020-12-09 09:59:14', 9, 2),
(269, '2020-12-09 11:43:47', 9, 2),
(270, '2020-12-09 11:44:03', 9, 4),
(271, '2020-12-09 11:44:25', 9, 6),
(272, '2020-12-09 11:56:16', 9, 2),
(273, '2020-12-09 15:58:23', 9, 2),
(274, '2020-12-09 16:12:12', 9, 2),
(275, '2020-12-09 16:17:51', 9, 4),
(276, '2020-12-14 08:31:52', 9, 2),
(277, '2020-12-14 14:33:12', 9, 2),
(278, '2020-12-14 15:00:54', 9, 2),
(279, '2020-12-14 15:03:00', 9, 2),
(280, '2020-12-14 15:03:44', 9, 2),
(281, '2020-12-14 15:04:34', 9, 2),
(282, '2020-12-14 15:05:37', 9, 2),
(283, '2020-12-14 15:16:52', 149, 1),
(284, '2020-12-14 15:16:52', 9, 2),
(285, '2020-12-14 17:08:27', 9, 2),
(286, '2020-12-15 12:33:39', 147, 2),
(297, '2021-01-27 06:50:06', 0, 0),
(298, '2021-01-27 07:13:18', 0, 0),
(299, '2021-01-27 07:13:53', 0, 0),
(300, '2021-01-27 07:19:29', 0, 0),
(301, '2021-01-27 07:33:22', 0, 0),
(302, '2021-01-27 07:34:48', 0, 0),
(303, '2021-01-27 07:38:49', 0, 0),
(304, '2021-01-27 07:38:57', 0, 0),
(305, '2021-01-27 07:41:13', 0, 0),
(306, '2021-01-27 07:59:42', 0, 0),
(307, '2021-01-27 08:14:27', 0, 0),
(308, '2021-01-27 08:14:47', 0, 0),
(309, '2021-01-27 08:14:55', 0, 0),
(310, '2021-01-27 08:59:36', 0, 0),
(311, '2021-01-27 09:00:57', 0, 0),
(312, '2021-01-27 09:01:38', 0, 0),
(313, '2021-01-27 09:01:44', 0, 0),
(314, '2021-01-27 09:02:19', 0, 0),
(315, '2021-01-27 09:02:31', 0, 0),
(316, '2021-01-27 09:02:39', 0, 0),
(317, '2021-01-27 09:03:15', 0, 0),
(318, '2021-01-27 09:11:48', 0, 0),
(319, '2021-01-27 09:12:41', 0, 0),
(320, '2021-01-27 09:27:45', 0, 0),
(321, '2021-01-27 09:33:34', 0, 0),
(322, '2021-01-27 09:40:42', 0, 0),
(323, '2021-01-27 09:41:17', 0, 0),
(324, '2021-01-27 09:43:20', 0, 0),
(325, '2021-01-27 09:47:46', 0, 0),
(326, '2021-01-27 09:50:57', 0, 0),
(327, '2021-01-27 09:52:34', 0, 0),
(328, '2021-01-27 09:54:09', 0, 0),
(329, '2021-01-27 09:55:13', 217, 0),
(330, '2021-01-27 09:56:12', 59, 0),
(331, '2021-02-01 03:08:43', 729, 0),
(332, '2021-02-01 03:25:23', 721, 0),
(333, '2021-02-01 03:36:17', 9, 266),
(334, '2021-02-01 03:44:38', 727, 0),
(335, '2021-02-01 03:52:56', 729, 0),
(336, '2021-02-01 03:53:12', 726, 0),
(337, '2021-02-01 03:54:28', 0, 0),
(338, '2021-02-01 03:54:56', 0, 0),
(339, '2021-02-01 03:55:33', 0, 0),
(340, '2021-02-01 03:57:37', 729, 0),
(341, '2021-02-01 03:57:45', 0, 0),
(342, '2021-02-01 04:00:54', 721, 0),
(343, '2021-02-01 04:01:01', 727, 0),
(344, '2021-02-01 04:01:07', 728, 0),
(345, '2021-02-01 04:01:51', 728, 0),
(346, '2021-02-01 04:29:48', 0, 0),
(347, '2021-02-01 04:29:56', 0, 0),
(348, '2021-02-01 04:30:36', 727, 0),
(349, '2021-02-01 04:35:21', 728, 0),
(350, '2021-02-01 04:35:43', 728, 0),
(351, '2021-02-01 04:48:49', 727, 0),
(352, '2021-02-01 04:54:28', 725, 0),
(353, '2021-02-01 04:58:58', 726, 0),
(354, '2021-02-01 06:00:37', 9, 532),
(355, '2021-02-01 06:01:18', 15, 0),
(356, '2021-02-01 06:06:25', 724, 0),
(357, '2021-02-01 06:28:03', 724, 0),
(358, '2021-02-01 06:28:18', 715, 0),
(359, '2021-02-01 06:33:37', 125, 0),
(360, '2021-02-01 06:40:33', 128, 0),
(361, '2021-02-01 07:00:31', 124, 0),
(362, '2021-02-10 02:49:02', 0, 0),
(363, '2021-03-29 05:44:38', 340, 0),
(364, '2021-03-29 05:46:11', 341, 0),
(365, '2021-03-29 05:46:23', 341, 0),
(366, '2021-03-29 05:46:25', 343, 0),
(367, '2021-03-29 05:46:29', 342, 0),
(368, '2021-03-29 05:46:35', 341, 0),
(369, '2021-04-02 06:30:45', 352, 0),
(370, '2021-04-02 06:31:02', 352, 0),
(371, '2021-04-02 06:31:08', 351, 0),
(372, '2021-04-02 06:55:48', 354, 0),
(373, '2021-04-02 06:56:14', 347, 0),
(374, '2021-04-02 06:56:19', 348, 0),
(375, '2021-04-02 06:56:35', 349, 0),
(376, '2021-04-02 06:56:39', 346, 0),
(377, '2021-04-02 07:02:27', 357, 0),
(378, '2021-04-02 08:05:00', 366, 0),
(379, '2021-04-02 08:05:09', 365, 0),
(380, '2021-04-02 08:05:16', 364, 0),
(381, '2021-04-02 08:05:20', 363, 0),
(382, '2021-04-02 08:05:26', 362, 0),
(383, '2021-04-02 08:05:31', 361, 0),
(384, '2021-04-02 08:05:34', 360, 0),
(385, '2021-04-02 08:05:40', 359, 0),
(386, '2021-04-02 08:05:45', 358, 0),
(387, '2021-04-02 08:15:46', 356, 0),
(388, '2021-04-02 08:15:53', 370, 0),
(389, '2021-04-02 08:15:56', 369, 0),
(390, '2021-04-02 08:16:01', 368, 0),
(391, '2021-04-02 08:16:09', 367, 0),
(392, '2021-04-02 09:15:37', 374, 0),
(393, '2021-04-02 09:15:41', 373, 0),
(394, '2021-04-02 09:15:44', 372, 0),
(395, '2021-04-02 09:15:48', 371, 0),
(396, '2021-04-02 09:22:07', 375, 0),
(397, '2021-04-08 03:14:05', 353, 0),
(398, '2021-04-08 03:14:40', 355, 0),
(399, '2021-04-08 03:15:11', 350, 0),
(400, '2021-04-08 03:15:38', 379, 0),
(401, '2021-04-08 05:30:54', 382, 0),
(402, '2021-04-08 05:32:02', 384, 0),
(403, '2021-04-08 05:39:55', 388, 0),
(404, '2021-04-12 07:46:50', 392, 0),
(405, '2021-04-12 07:47:09', 391, 0),
(406, '2021-04-12 09:56:33', 389, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `value` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'delivery_charge_in_percentage', '15'),
(2, 'Service fee_in_payment gateway', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `item_number` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency_code` varchar(55) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_response` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `email`, `item_number`, `amount`, `currency_code`, `txn_id`, `payment_status`, `payment_response`, `create_at`) VALUES
(25, 'annaanand143@gmail.com', '147', 345.00, 'myr', 'txn_1HycihFJxoNcsyfgygq1qUc4', 'succeeded', '{\"id\":\"ch_1HycihFJxoNcsyfg1o4GbMif\",\"object\":\"charge\",\"amount\":34500,\"amount_captured\":34500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1HycihFJxoNcsyfgygq1qUc4\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"GOKULDEVI ENTERPRISE\",\"captured\":true,\"created\":1608035615,\"currency\":\"myr\",\"customer\":\"cus_IZmHWumOTLMCQI\",\"description\":\"Test Product\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"order_id\":\"147\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":47,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1HycidFJxoNcsyfg7ZA8v7e8\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":1,\"exp_year\":2021,\"fingerprint\":\"9vLbniaDmNgouONE\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1GmIWVFJxoNcsyfg\\/ch_1HycihFJxoNcsyfg1o4GbMif\\/rcpt_IZmH2baCIhQPhFIVApOZc2efq5Z93o7\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1HycihFJxoNcsyfg1o4GbMif\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1HycidFJxoNcsyfg7ZA8v7e8\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":\"cus_IZmHWumOTLMCQI\",\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":1,\"exp_year\":2021,\"fingerprint\":\"9vLbniaDmNgouONE\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2020-12-15 12:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(225) NOT NULL,
  `terms` longtext NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `terms`, `del_status`) VALUES
(1, 'welcome', 0),
(2, 'rotect your website and its users with clear and fair website terms and conditions. These terms and conditions for a website set out key issues such as acceptable use, privacy, cookies, registration and passwords, intellectual property, links to other sites, termination and disclaimers of responsibility. Terms and conditions are used and necessary to protect a website owner from liability of a user relying on the information or the goods provided from the site then suffering a loss.  Making your own terms and conditions for your website is hard, not impossible, to do. It can take a few hours to few days for a person with no legal background to make. But worry no more; we are here to help you out.  All you need to do is fill up the blank spaces and then you will receive an email with your personalized terms and conditions.', 0),
(3, ' heera', 1),
(4, 'Help protect your website and its users with clear and fair website terms and conditions. These terms and conditions for a website set out key issues such as acceptable use, privacy, cookies, registration and passwords, intellectual property, links to other sites, termination and disclaimers of responsibility. Terms and conditions are used and necessary to protect a website owner from liability of a user relying on the information or the goods provided from the site then suffering a loss.  Making your own terms and conditions for your website is hard, not impossible, to do. It can take a few hours to few days for a person with no legal background to make. But worry no more; we are here to help you out.  All you need to do is fill up the blank spaces and then you will receive an email with your personalized terms and conditions.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `togun_user`
--

CREATE TABLE `togun_user` (
  `id` int(225) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `togun_user`
--

INSERT INTO `togun_user` (`id`, `username`, `email`, `password`, `date_added`, `last_updated`) VALUES
(1, 'admin', 'admin@togunh2plus.com', '$2y$10$0prxCOA9OwRP5ecx4hTf8.SjtztgScrui3INIP1Ks4.LN05eXnuZC', '2019-04-12 00:00:00', '2019-04-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(225) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `full_name` varchar(30) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `national_id` varchar(225) NOT NULL,
  `referral_code` varchar(225) NOT NULL,
  `referred_by` varchar(225) DEFAULT NULL,
  `membership_id` varchar(100) DEFAULT NULL,
  `otp` int(225) DEFAULT NULL,
  `device_token` longtext NOT NULL,
  `address` longtext,
  `first_time` varchar(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `del_status` int(11) NOT NULL DEFAULT '0' COMMENT '0-show,1-hide',
  `first_login` varchar(88) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `time`, `full_name`, `mobile`, `username`, `email`, `password`, `gender`, `national_id`, `referral_code`, `referred_by`, `membership_id`, `otp`, `device_token`, `address`, `first_time`, `status`, `del_status`, `first_login`) VALUES
(345, '2021-03-31 05:28:46', 'vijay frixty', '979765665', 'vijay@gmail.com', 'vijay@gmail.com', '$2y$10$u4szTZ0rUkdRbmrkUOUQreRwYgfmV243XUH.tdbhc4e17f.FS2QWK', 'male', '9090', 'PU-0403', 'PU-0001', '', NULL, '', '', '1', 1, 0, '0'),
(347, '2021-04-02 06:18:53', 'Devi Subramaniam', '0166636347', 'kasthuri24@yahoo.com', 'kasthuri24@yahoo.com', '$2y$10$hQ.SGlOeysy/XnOM5E8jT.K9oRLHpBnZAOOaSzcZxBWjYPV/46lTq', 'female', '830424055260', 'PU-0405', 'PU-0001', '', NULL, '', '33a, Jalan Mangga', '1', 1, 1, '0'),
(348, '2021-04-02 06:19:18', 'Devi Subramaniam', '0166636347', 'kasthuri24@yahoo.com', 'kasthuri24@yahoo.com', '$2y$10$6OoQYo4.sPvlsc1VdPn3D.LRHxo3y.kpITKtaRU21N/Aqup5Ltosi', 'female', '830424055260', 'PU-0406', 'PU-0001', '', NULL, '', '33a, Jalan Mangga', '1', 1, 1, '0'),
(350, '2021-04-02 06:28:14', 'Rokesh Parthiban', '1247853', 'rokesh@ypmail.com', 'rokesh@ypmail.com', '$2y$10$fGyQ8SmNay9Q4atf/BR4wudh0NlYh1e16fN1vKR2/XUNtctw0nfVW', 'male', '123456', 'PU-0408', 'PU-0001', '', NULL, '', '22', '', 1, 0, '0'),
(351, '2021-04-02 06:29:12', 'Rokesh Parthiban', '1247853', 'rokesh@ypmail.com', 'rokesh@ypmail.com', '$2y$10$564chy2a5CHeQolOcRhzGeeE0qW6ObFHSNZLpr58flbUtCZ2zvBKq', 'male', '123456', 'PU-0409', 'PU-0001', '', NULL, '', '22', '', 1, 1, '0'),
(353, '2021-04-02 06:53:38', 'dhananchezhiyan s', '07358747522', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$U.D6nC6D5jVleFsj9vEcnOKJQg2KyEC1eV3BEwTwqbnV45Jvdzr5m', 'male', '9090', 'PU-0411', 'PU-0001', '', NULL, '', 'No.6 East Street 50.Thandarai Vill,perumpakkam Post,Mathurantakam TK,Kancheepuram ds', '', 1, 1, '0'),
(355, '2021-04-02 06:58:20', 'DEVI SUBRAMANIAM', '0166636347', 'kasthuri24@yahoo.com', 'kasthuri24@yahoo.com', '$2y$10$P5SA1lQ1Y6gW1RsFCTK9yufJ4oXolexxDpUBYrX.YhC/B3AgbiZo2', 'female', '830424055260', 'PU-0413', 'PU-0001', '', NULL, '', '33a, Jalan Mangga', '1', 1, 1, '0'),
(356, '2021-04-02 07:02:07', 'Gokulnath Parthiban', '01116902115', 'pgokulnath3@gmail.com', 'pgokulnath3@gmail.com', '$2y$10$hXRWDHVYD3PqnhfubFyfT.Sc.Nlag7vCH2mg28YBiKa7VgLhzaGaK', 'male', 'R9728248', 'PU-0414', 'PU-0001', '', NULL, '', '33a, Jalan Mangga', '1', 1, 1, '0'),
(357, '2021-04-02 07:02:16', 'Gokulnath Parthiban', '01116902115', 'pgokulnath3@gmail.com', 'pgokulnath3@gmail.com', '$2y$10$oyw5qKaKlULW70X1d.nYMuwQe71DrMEi2c8HVft0jT6s1G5g5IkMG', 'male', 'R9728248', 'PU-0415', 'PU-0001', '', NULL, '', '33a, Jalan Mangga', '1', 1, 1, '0'),
(379, '2021-04-08 03:15:25', 'Sv s', '0735874', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$f8SS58yeXbgNxU5ASKPCv.OwScDEYQ69ALmAmlR3eSaT/I556960a', 'male', '', 'PU-0437', 'PU-0001', '', NULL, '', 'No.6 East Street 50.Thandarai Vill,perumpakkam Post,Mathurantakam TK,Kancheepuram ds', '', 1, 1, '0'),
(380, '2021-04-08 03:43:10', 'dhananchezhiyan s', '735874752', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$I0yawsVcTCoGvU.fB.HKSuhI1DJf5EfvBNGVGhiRg7NIJuxhiQLra', 'male', '232', 'PU-0438', 'PU-0001', '', NULL, '', 'East Street, Opppp', '', 1, 0, '0'),
(381, '2021-04-08 03:44:27', 'Sv s', '07358747522', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$M1xTl7qGJPcwun6Qr8KISO1S4hLNKnO8jJWSS1owTIt9kvodylOs2', 'male', '9090', 'PU-0439', 'PU-0001', '', NULL, '', 'chennai, chennai', '', 1, 0, '0'),
(382, '2021-04-08 05:30:22', 'dhananchezhiyan s', '07358747522', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$GcOu2ZWnrsE5Dr7RDxsiHucPLfxotpJLFBgk1JJ90uYChGOvoSD2O', 'male', '9090', 'PU-0440', 'PU-0001', '', NULL, '', 'East Street, Opppp', '', 1, 1, '0'),
(383, '2021-04-08 05:31:27', 'dhananchezhiyan s', '07358747522', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$4xb1EXCgtVIGcVMGnB9Q/uYyq7DGvRF5q9EXUleRuyopLPFp5N49S', 'male', '232', 'PU-0441', 'PU-0001', '', NULL, '', 'chennai, chennai', '', 1, 0, '0'),
(384, '2021-04-08 05:31:57', 'kkkkkkk hhh', '0735874', 'hhh@gmail.com', 'hhh@gmail.com', '$2y$10$KkMXVj2tqJhGaei36lLPguV4uQZ3SEefDi8mViifingmjAg2Xjwua', 'male', '222', 'PU-0442', 'PU-0001', '', NULL, '', 'East Street, Opppp', '', 1, 1, '0'),
(385, '2021-04-08 05:33:12', 'dhananchezhiyan s', '07358747522', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$mlRyhC51xlcV5sfRt9Y3IuHueo3DoQ8Ji9WftUsAx2mzUXqqNPOn.', 'male', '9090', 'PU-0443', 'PU-0001', '', NULL, '', 'East Street, Opppp', '', 1, 0, '0'),
(386, '2021-04-08 05:34:08', 'dhananchezhiyan s', '07358747522', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$uq0la/LsicziavLXsRvdB.TMduIQPuj2IUikiZmO0ROoFGHIvbb3W', 'male', '232', 'PU-0444', 'PU-0001', '', NULL, '', 'chennai, malayia', '', 1, 0, '0'),
(387, '2021-04-08 05:35:40', 'dhananchezhiyan s', '07358747522', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$ZDK8UuUqqavRlyoPGhlUAuOvF2gN6zM3EjXz0YgW8NQqB3gegABCq', 'male', '9090', 'PU-0445', 'PU-0001', '', NULL, '', 'chennai, malayia', '', 1, 0, '0'),
(388, '2021-04-08 05:38:50', 'kkkkkkk jj', '0735874', 'kkk@gmail.com', 'kkk@gmail.com', '$2y$10$wDh6WJOYWHZpy2fTSOY8Lu10StvVc2Puez4jFOSTfdq6ojrbeWrOC', 'male', '77', 'PU-0446', 'PU-0001', '', NULL, '', 'chennai, chennai', '', 1, 1, '0'),
(389, '2021-04-08 05:40:27', 'jjjjjjjj s', '07358747522', 'jjjj@gmail.com', 'jjjj@gmail.com', '$2y$10$q7cBtDnGLm8L3BXpd5x/VuL1oVFsf9nNJbPScVa4WcVHdJmzKpaXi', 'male', '454', 'PU-0447', 'PU-0001', '', NULL, '', 'chennai, malayia', '', 1, 1, '0'),
(390, '2021-04-08 05:40:55', 'Praveen Chezhiyan', '7092892945', 'pradeepkumar05@gmail.com', 'pradeepkumar05@gmail.com', '$2y$10$zovYZBh9v9MyFTPhhkk2FOZge0nUZ3Fw.hRg1cw4fSuVq1ZoK6y9y', 'male', '9090', 'PU-0448', 'PU-0001', '', NULL, '', 'East Street, Opppp', '', 1, 0, '0'),
(391, '2021-04-08 05:45:34', 'heera heerah', '07358747522', 'heera@gmail.com', 'heera@gmail.com', '$2y$10$PulAT1Ki0W0b55IM9hLojeyDsICZedH/CAj2iiM/i/u6VNO5ZAoMW', 'male', '8888', 'PU-0449', 'PU-0001', '', NULL, '', 'chennai, chennai', '', 1, 1, '0'),
(392, '2021-04-12 07:46:45', 'Sv s', '07358747', 'svchezhiyan@gmail.com', 'svchezhiyan@gmail.com', '$2y$10$nmNOOFWBv5H/rAyxzm2nquQFu.WG3B/hHmDwZxo4kIU.N538/tI0u', 'male', '232', 'PU-0450', 'PU-0001', '', NULL, '', 'East Street, Opppp', '', 1, 1, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coc_address`
--
ALTER TABLE `coc_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `csr`
--
ALTER TABLE `csr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_temp`
--
ALTER TABLE `order_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem_request`
--
ALTER TABLE `redeem_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_code`
--
ALTER TABLE `referral_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_history`
--
ALTER TABLE `reward_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `togun_user`
--
ALTER TABLE `togun_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT for table `coc_address`
--
ALTER TABLE `coc_address`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `csr`
--
ALTER TABLE `csr`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `order_temp`
--
ALTER TABLE `order_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `redeem_request`
--
ALTER TABLE `redeem_request`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `referral_code`
--
ALTER TABLE `referral_code`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT for table `reward_history`
--
ALTER TABLE `reward_history`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `togun_user`
--
ALTER TABLE `togun_user`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
