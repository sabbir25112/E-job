-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2021 at 08:38 AM
-- Server version: 10.3.29-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alihshawon_activejobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `xx_admin`
--

CREATE TABLE `xx_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_verify` tinyint(4) NOT NULL DEFAULT 0,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL,
  `password_reset_code` varchar(255) NOT NULL,
  `last_ip` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_admin`
--

INSERT INTO `xx_admin` (`id`, `username`, `firstname`, `lastname`, `email`, `mobile_no`, `password`, `address`, `resume`, `role`, `is_active`, `is_verify`, `is_admin`, `token`, `password_reset_code`, `last_ip`, `created_at`, `updated_at`) VALUES
(3, 'alihshawon', 'Ali H', 'Shawon', 'alihshawon@gmail.com', '8801639990099', '$2y$10$EWUrqmNQTtMnoAFz.ZEzO.BnZHszSr6zni3gYiv8f328B/KlNcb9m', '27 new jersey - Level 58 - CA 444 \r\nUnited State ', '', 1, 1, 1, 1, '', '', '', '2017-09-29 10:09:44', '2021-08-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xx_blog_categories`
--

CREATE TABLE `xx_blog_categories` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `category_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_blog_categories`
--

INSERT INTO `xx_blog_categories` (`id`, `lang_id`, `name`, `slug`, `description`, `keywords`, `category_order`) VALUES
(1, 1, 'Economy', 'economy', NULL, NULL, NULL),
(2, 1, 'Finance', 'finance', NULL, NULL, NULL),
(4, 1, 'Information & Technology', 'information-technology', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xx_blog_comments`
--

CREATE TABLE `xx_blog_comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xx_blog_posts`
--

CREATE TABLE `xx_blog_posts` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 1,
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xx_blog_tags`
--

CREATE TABLE `xx_blog_tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xx_categories`
--

CREATE TABLE `xx_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `top_category` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_categories`
--

INSERT INTO `xx_categories` (`id`, `name`, `slug`, `status`, `top_category`) VALUES
(1, 'Accounting', 'accounting', 1, 0),
(2, 'Government / Administration', 'government-administration', 1, 0),
(4, 'Arts / Entertainment', 'arts-entertainment', 1, 0),
(5, 'Banking', 'banking', 1, 0),
(6, 'Beauty / Fashion', 'beauty-fashion', 1, 0),
(7, 'Construction / Real Estate', 'construction-real-estate', 1, 0),
(8, 'Customer Service', 'customer-service', 1, 0),
(9, 'Electronics / Technical', 'electronics-technical', 1, 0),
(10, 'Engineering', 'engineering', 1, 0),
(11, 'Education', 'education', 1, 0),
(12, 'Food and Beverages', 'food-and-beverages', 1, 0),
(13, 'Graphic Design', 'graphic-design', 1, 0),
(14, 'Medical & Healthcare', 'medical-healthcare', 1, 0),
(15, 'Hospitality / Airline', 'hospitality-airline', 1, 0),
(16, 'Human Resources', 'human-resources', 1, 0),
(17, 'Insurance', 'insurance', 1, 0),
(18, 'Legal / Lawyers', 'legal-lawyers', 1, 0),
(19, 'Sales', 'sales', 1, 0),
(20, 'Secretarial', '', 1, 0),
(21, 'Teaching / Training', 'teaching-training', 1, 0),
(22, 'Transportation', 'transportation', 1, 0),
(23, 'Other', '', 1, 0),
(25, 'Information Technology', 'information-technology', 1, 0),
(26, 'Business Development', 'business-development', 1, 0),
(27, 'Resturants', 'resturants', 1, 0),
(28, 'Industrials and Manufecturing', 'industrials-and-manufecturing', 1, 0),
(29, 'Marketing & Advertising', 'marketing-advertising', 1, 0),
(32, 'Designer', 'designer', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xx_cities`
--

CREATE TABLE `xx_cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_cities`
--

INSERT INTO `xx_cities` (`id`, `name`, `slug`, `state_id`, `status`) VALUES
(48358, 'Barguna', 'barguna', 4130, 1),
(48359, 'Barisal', 'barisal', 4130, 1),
(48360, 'Bhola', 'bhola', 4130, 1),
(48362, 'Jhalakathi', 'jhalakathi', 4130, 1),
(48363, 'Patuakhali', 'patuakhali', 4130, 1),
(48364, 'Pirojpur', 'pirojpur', 4130, 1),
(48365, 'Bandarban', 'bandarban', 4131, 1),
(48366, 'Brahmanbaria', 'brahmanbaria', 4131, 1),
(48367, 'Chandpur', 'chandpur', 4131, 1),
(48368, 'Chittagong', 'chittagong', 4131, 1),
(48369, 'Cox\'s Bazar', 'coxs-bazar', 4131, 1),
(48370, 'Cumilla', 'cumilla', 4131, 1),
(48372, 'Feni', 'feni', 4131, 1),
(48373, 'Khagrachari', 'khagrachari', 4131, 1),
(48374, 'Lakshmipur', 'lakshmipur', 4131, 1),
(48375, 'Noakhali', 'noakhali', 4131, 1),
(48376, 'Rangamati', 'rangamati', 4131, 1),
(48377, 'Dhaka', 'dhaka', 4132, 1),
(48378, 'Faridpur', 'faridpur', 4132, 1),
(48379, 'Gazipur', 'gazipur', 4132, 1),
(48380, 'Gopalganj', 'gopalganj', 4132, 1),
(48381, 'Kishoreganj', 'kishoreganj', 4132, 1),
(48382, 'Madaripur', 'madaripur', 4132, 1),
(48383, 'Manikganj', 'manikganj', 4132, 1),
(48384, 'Munshiganj', 'munshiganj', 4132, 1),
(48385, 'Narayanganj', 'narayanganj', 4132, 1),
(48386, 'Narsingdi', 'narsingdi', 4132, 1),
(48387, 'Rajbari', 'rajbari', 4132, 1),
(48388, 'Shariatpur', 'shariatpur', 4132, 1),
(48389, 'Tangail', 'tangail', 4132, 1),
(48390, 'Bagerhat', 'bagerhat', 4133, 1),
(48391, 'Chuadanga', 'chuadanga', 4133, 1),
(48392, 'Jessore', 'jessore', 4133, 1),
(48393, 'Jhenaidah', 'jhenaidah', 4133, 1),
(48394, 'Khulna', 'khulna', 4133, 1),
(48395, 'Kushtia', 'kushtia', 4133, 1),
(48396, 'Magura', 'magura', 4133, 1),
(48397, 'Meherpur', 'meherpur', 4133, 1),
(48398, 'Narail', 'narail', 4133, 1),
(48399, 'Jamalpur', 'jamalpur', 4134, 1),
(48400, 'Mymensingh', 'mymensingh', 4134, 1),
(48401, 'Netrakona', 'netrakona', 4134, 1),
(48402, 'Sherpur', 'sherpur', 4134, 1),
(48403, 'Bogra', 'bogra', 4135, 1),
(48404, 'Chapainawabganj', 'chapainawabganj', 4135, 1),
(48405, 'Joypurhat', 'joypurhat', 4135, 1),
(48406, 'Naogaon', 'naogaon', 4135, 1),
(48407, 'Natore', 'natore', 4135, 1),
(48408, 'Pabna', 'pabna', 4135, 1),
(48409, 'Rajshahi', 'rajshahi', 4135, 1),
(48410, 'Sirajganj', 'sirajganj', 4135, 1),
(48411, 'Dinajpur', 'dinajpur', 4136, 1),
(48412, 'Gaibandha', 'gaibandha', 4136, 1),
(48413, 'Kurigram', 'kurigram', 4136, 1),
(48414, 'Lalmonirhat', 'lalmonirhat', 4136, 1),
(48415, 'Nilphamari', 'nilphamari', 4136, 1),
(48416, 'Panchagarh', 'panchagarh', 4136, 1),
(48417, 'Rangpur', 'rangpur', 4136, 1),
(48418, 'Thakurgaon', 'thakurgaon', 4136, 1),
(48419, 'Habiganj', 'habiganj', 4137, 1),
(48420, 'Moulvibazar', 'moulvibazar', 4137, 1),
(48421, 'Sunamganj', 'sunamganj', 4137, 1),
(48422, 'Sylhet', 'sylhet', 4137, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xx_companies`
--

CREATE TABLE `xx_companies` (
  `id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `company_slug` varchar(155) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `website` varchar(155) DEFAULT NULL,
  `category` int(5) DEFAULT NULL,
  `no_of_employers` varchar(10) NOT NULL,
  `founded_date` date DEFAULT NULL,
  `company_logo` varchar(155) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `org_type` enum('NGO','Private','Public') DEFAULT 'Private',
  `address` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) DEFAULT NULL,
  `postcode` varchar(20) NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `google_link` varchar(255) NOT NULL,
  `youtube_link` varchar(255) NOT NULL,
  `vimeo_link` varchar(255) NOT NULL,
  `linkedin_link` varchar(255) NOT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `updated_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_companies`
--

INSERT INTO `xx_companies` (`id`, `employer_id`, `company_name`, `company_slug`, `email`, `phone_no`, `website`, `category`, `no_of_employers`, `founded_date`, `company_logo`, `description`, `org_type`, `address`, `country`, `state`, `city`, `postcode`, `facebook_link`, `twitter_link`, `google_link`, `youtube_link`, `vimeo_link`, `linkedin_link`, `is_active`, `updated_date`) VALUES
(1, 1, 'OnJob', 'onjob', 'onjob@gmail.com', '1145564754', 'www.domainname.com', 1, '1-10', '2019-05-31', 'uploads/company_logos/default.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 'Public', 'GT Road', 231, 3924, 42800, '2554', '', '', '', '', '', '', 1, '2019-05-26 10:05:22'),
(2, 2, 'Ozient', 'ozient', NULL, '', '', 25, '', NULL, 'uploads/company_logos/default.png', '', 'Private', '-address is near', 166, 2728, 31376, '50700', '', '', '', '', '', '', 1, NULL),
(4, 4, 'Star Solutions', 'star-solutions', NULL, '', '', 25, '', NULL, 'uploads/company_logos/default.png', '', 'Private', '-kbh', 166, 2728, 5749, '123456', '', '', '', '', '', '', 1, NULL),
(5, 5, 'Zcompny', 'zcompny', NULL, '', '', 1, '', NULL, 'uploads/company_logos/default.png', '', 'Public', 'asdfasdfs', 1, 42, 5909, '54000', '', '', '', '', '', '', 1, NULL),
(12, 12, 'TAL Inc.', 'tal-inc', 'alihshawon786@gmail.com', '01639990099', 'https://tal.com.co', 25, '1-10', '0000-00-00', 'uploads/company_logos/default.png', 'A renowned company', 'Private', 'Mirpur, Dhaka', 18, 348, 7291, '1216', '', '', '', '', '', '', 1, '2021-08-18 00:00:00'),
(13, 13, 'Creative Cone Electronics Ltd.', 'creative-cone-electronics-ltd', NULL, '', '', 9, '', NULL, 'uploads/company_logos/default.png', '', 'Private', 'Mirpur, Dhaka', 18, 348, 7291, '1216', '', '', '', '', '', '', 1, NULL),
(14, 14, 'STK Electronics Ltd.', 'stk-electronics-ltd', NULL, '', '', 9, '', NULL, 'uploads/company_logos/default.png', '', 'Private', 'Mirpur, Dhaka', 18, 348, 7291, '1216', '', '', '', '', '', '', 1, NULL),
(15, 15, 'First Choice Electronics Co. Ltd.', 'first-choice-electronics-co-ltd', NULL, '', '', 9, '', NULL, 'uploads/company_logos/default.png', '', 'Private', 'Dhaka', 18, 348, 7291, '1212', '', '', '', '', '', '', 1, NULL),
(16, 16, 'MRT Foods Ltd.', 'mrt-foods-ltd', 'jfi68426@cuoly.com', '1112233445', '', 12, '1-10', '0000-00-00', 'uploads/company_logos/1629474945images_(7).png', 'A renowned food processing company', 'Private', 'Dhaka', 18, 348, 7291, '1210', '', '', '', '', '', '', 1, '2021-08-20 00:00:00'),
(17, 17, 'Alamin', 'alamin', NULL, '', '', 6, '', NULL, 'uploads/company_logos/default.png', '', 'Private', 'Mirpur', 18, 348, 7291, '1216', '', '', '', '', '', '', 1, NULL),
(18, 18, 'Ebhubon Ltd.', 'ebhubon-ltd', 'hr.ebhubon@gmail.com', '01894800720', 'www.ebhubon.com', 29, '20-30', '0000-00-00', 'uploads/company_logos/1629720362icon.jpg', 'One of the best online shopping platform in Bangladesh', 'Private', 'House No. 203, Road No. 09, New DOHS, Mohakhali - 1212', 18, 4132, 48377, '1212', 'https://www.facebook.com/ebhubon', '', '', '', '', '', 1, '2021-08-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xx_contact_us`
--

CREATE TABLE `xx_contact_us` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_contact_us`
--

INSERT INTO `xx_contact_us` (`id`, `username`, `email`, `subject`, `message`, `created_date`, `updated_date`) VALUES
(6, 'asdfasd', 'officialarea423@gmail.com', '111111111', 'asdfasdfasdfasdfas', '2019-11-18', '2019-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `xx_countries`
--

CREATE TABLE `xx_countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_countries`
--

INSERT INTO `xx_countries` (`id`, `sortname`, `name`, `slug`, `phonecode`, `status`) VALUES
(18, 'BD', 'Bangladesh', 'bangladesh', 880, 1),
(101, 'IN', 'India', 'india', 91, 1),
(166, 'PK', 'Pakistan', 'pakistan', 92, 1),
(173, 'PH', 'Philippines', 'philippines', 63, 1),
(217, 'TH', 'Thailand', 'thailand', 66, 1),
(247, '', 'Malaysia', 'malaysia', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xx_currency`
--

CREATE TABLE `xx_currency` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_currency`
--

INSERT INTO `xx_currency` (`id`, `name`, `code`, `symbol`) VALUES
(114, 'Dollars', 'USD', '$'),
(115, 'Afghanis', 'AFN', '؋'),
(116, 'Pesos', 'ARS', '$'),
(117, 'Guilders', 'AWG', 'ƒ'),
(118, 'Dollars', 'AUD', '$'),
(119, 'New Manats', 'AZN', 'ман'),
(120, 'Dollars', 'BSD', '$'),
(121, 'Dollars', 'BBD', '$'),
(122, 'Rubles', 'BYR', 'p.'),
(123, 'Euro', 'EUR', '€'),
(124, 'Dollars', 'BZD', 'BZ$'),
(125, 'Dollars', 'BMD', '$'),
(126, 'Bolivianos', 'BOB', '$b'),
(127, 'Convertible Marka', 'BAM', 'KM'),
(128, 'Pula', 'BWP', 'P'),
(129, 'Leva', 'BGN', 'лв'),
(130, 'Reais', 'BRL', 'R$'),
(131, 'Pounds', 'GBP', '£'),
(132, 'Dollars', 'BND', '$'),
(133, 'Riels', 'KHR', '៛'),
(134, 'Dollars', 'CAD', '$'),
(135, 'Dollars', 'KYD', '$'),
(136, 'Pesos', 'CLP', '$'),
(137, 'Yuan Renminbi', 'CNY', '¥'),
(138, 'Pesos', 'COP', '$'),
(139, 'Colón', 'CRC', '₡'),
(140, 'Kuna', 'HRK', 'kn'),
(141, 'Pesos', 'CUP', '₱'),
(142, 'Koruny', 'CZK', 'Kč'),
(143, 'Kroner', 'DKK', 'kr'),
(144, 'Pesos', 'DOP ', 'RD$'),
(145, 'Dollars', 'XCD', '$'),
(146, 'Pounds', 'EGP', '£'),
(147, 'Colones', 'SVC', '$'),
(148, 'Pounds', 'FKP', '£'),
(149, 'Dollars', 'FJD', '$'),
(150, 'Cedis', 'GHC', '¢'),
(151, 'Pounds', 'GIP', '£'),
(152, 'Quetzales', 'GTQ', 'Q'),
(153, 'Pounds', 'GGP', '£'),
(154, 'Dollars', 'GYD', '$'),
(155, 'Lempiras', 'HNL', 'L'),
(156, 'Dollars', 'HKD', '$'),
(157, 'Forint', 'HUF', 'Ft'),
(158, 'Kronur', 'ISK', 'kr'),
(159, 'Rupees', 'INR', 'Rp'),
(160, 'Rupiahs', 'IDR', 'Rp'),
(161, 'Rials', 'IRR', '﷼'),
(162, 'Pounds', 'IMP', '£'),
(163, 'New Shekels', 'ILS', '₪'),
(164, 'Dollars', 'JMD', 'J$'),
(165, 'Yen', 'JPY', '¥'),
(166, 'Pounds', 'JEP', '£'),
(167, 'Tenge', 'KZT', 'лв'),
(168, 'Won', 'KPW', '₩'),
(169, 'Won', 'KRW', '₩'),
(170, 'Soms', 'KGS', 'лв'),
(171, 'Kips', 'LAK', '₭'),
(172, 'Lati', 'LVL', 'Ls'),
(173, 'Pounds', 'LBP', '£'),
(174, 'Dollars', 'LRD', '$'),
(175, 'Switzerland Francs', 'CHF', 'CHF'),
(176, 'Litai', 'LTL', 'Lt'),
(177, 'Denars', 'MKD', 'ден'),
(178, 'Ringgits', 'MYR', 'RM'),
(179, 'Rupees', 'MUR', '₨'),
(180, 'Pesos', 'MXN', '$'),
(181, 'Tugriks', 'MNT', '₮'),
(182, 'Meticais', 'MZN', 'MT'),
(183, 'Dollars', 'NAD', '$'),
(184, 'Rupees', 'NPR', '₨'),
(185, 'Guilders', 'ANG', 'ƒ'),
(186, 'Dollars', 'NZD', '$'),
(187, 'Cordobas', 'NIO', 'C$'),
(188, 'Nairas', 'NGN', '₦'),
(189, 'Krone', 'NOK', 'kr'),
(190, 'Rials', 'OMR', '﷼'),
(191, 'Rupees', 'PKR', '₨'),
(192, 'Balboa', 'PAB', 'B/.'),
(193, 'Guarani', 'PYG', 'Gs'),
(194, 'Nuevos Soles', 'PEN', 'S/.'),
(195, 'Pesos', 'PHP', 'Php'),
(196, 'Zlotych', 'PLN', 'zł'),
(197, 'Rials', 'QAR', '﷼'),
(198, 'New Lei', 'RON', 'lei'),
(199, 'Rubles', 'RUB', 'руб'),
(200, 'Pounds', 'SHP', '£'),
(201, 'Riyals', 'SAR', '﷼'),
(202, 'Dinars', 'RSD', 'Дин.'),
(203, 'Rupees', 'SCR', '₨'),
(204, 'Dollars', 'SGD', '$'),
(205, 'Dollars', 'SBD', '$'),
(206, 'Shillings', 'SOS', 'S'),
(207, 'Rand', 'ZAR', 'R'),
(208, 'Rupees', 'LKR', '₨'),
(209, 'Kronor', 'SEK', 'kr'),
(210, 'Dollars', 'SRD', '$'),
(211, 'Pounds', 'SYP', '£'),
(212, 'New Dollars', 'TWD', 'NT$'),
(213, 'Baht', 'THB', '฿'),
(214, 'Dollars', 'TTD', 'TT$'),
(215, 'Lira', 'TRY', 'TL'),
(216, 'Liras', 'TRL', '£'),
(217, 'Dollars', 'TVD', '$'),
(218, 'Hryvnia', 'UAH', '₴'),
(219, 'Pesos', 'UYU', '$U'),
(220, 'Sums', 'UZS', 'лв'),
(221, 'Bolivares Fuertes', 'VEF', 'Bs'),
(222, 'Dong', 'VND', '₫'),
(223, 'Rials', 'YER', '﷼'),
(224, 'Zimbabwe Dollars', 'ZWD', 'Z$'),
(225, 'New Ciuurc', 'NCY', '@&323');

-- --------------------------------------------------------

--
-- Table structure for table `xx_cv_shortlisted`
--

CREATE TABLE `xx_cv_shortlisted` (
  `id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_cv_shortlisted`
--

INSERT INTO `xx_cv_shortlisted` (`id`, `employer_id`, `user_id`, `status`, `created_date`) VALUES
(3, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xx_education`
--

CREATE TABLE `xx_education` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_education`
--

INSERT INTO `xx_education` (`id`, `type`) VALUES
(1, 'Bachelor′s degree'),
(2, 'Diploma'),
(3, 'Doctorate'),
(4, 'Higher diploma'),
(5, 'High school or equivalent'),
(6, 'Master&#8242;s degree');

-- --------------------------------------------------------

--
-- Table structure for table `xx_email_templates`
--

CREATE TABLE `xx_email_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(220) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `last_update` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_email_templates`
--

INSERT INTO `xx_email_templates` (`id`, `name`, `slug`, `subject`, `body`, `last_update`) VALUES
(1, 'Welcome', 'welcome', 'Thanks for joining us', 'Hi {FULLNAME},<br><br>Thanks for email verification and we warmly welcome you on largest job portal.<br><br><div><div><i>Lorem ipsum dolor sit amet, consectetur adipiscing, Quisque lobortis elit. Lorem ipsum dolor sit amet, consectetur adipiscing, Quisque lobortis elit.Lorem ipsum dolor sit amet</i><br><br><b>Consectetur adipiscing, Quisque lobortis elit.Lorem ipsum dolor sit amet, consectetur adipiscing, Quisque lobortis elit.</b><br><br></div></div><div><div></div></div><span><b></b><b>Regards,</b><br><b><a href=\"https://activejobs.com.bd/\">Active Jobs Team</a></b></span>', '2021-08-18 18:41:11'),
(3, 'General Notification', 'general-notification', 'Notification', '<p>Hi,</p><p>{CONTENT}</p><p><b>Regards,</b><br><b><a href=\"https://activejobs.com.bd/\">Active Jobs Team</a></b></p>', '2021-08-18 18:41:40'),
(4, 'Applicant Applied', 'applicant-applied', 'New Applicant Applied for job', '<p>Hi,<br></p><p>A new candidate applied of your posted job <b>{JOB_TITLE}</b></p><p>Please login and view detail,</p><p><br></p><p><b>Regards,</b><br><b><a href=\"https://activejobs.com.bd/\">Active Jobs Team</a></b></p>', '2021-08-18 18:42:47'),
(7, 'Email Verification', 'email-verification', 'Verify your account', 'Hello,<div><br>Thank you for signing up with us<br><br>To activate your account and verify your email address,<br><br></div><div>Please click on link bellow  or if the link doesn\'t work, just copy and paste on a browser window.</div><div><br>{VERIFICATION_LINK}<br><a target=\"\" rel=\"\"></a></div><div><a target=\"\" rel=\"\"><br></a></div><div><a target=\"\" rel=\"\"><br></a></div><div><a target=\"\" rel=\"\" title=\"Link: null\">Regards,</a></div><div><a href=\"https://activejobs.com.bd/\">Active Jobs Team</a></div>', '2021-08-20 14:00:56'),
(8, 'Candidate Shortlisted', 'candidate-shortlisted', 'Shortlisted Notification', '<span><u>?</u>Dear Candidate,<br><span><u></u><u></u></span></span><span><br>This is to inform you that you have been shortlisted for the position of <b>{JOB_TITLE}</b>. <br></span><span><br>Please confirm your availability for the interview by acknowledging this email. You are advised to bring your original CNIC and Resume.<br></span><br><b>Best Regards</b><br><b><a href=\"https://activejobs.com.bd/\">Active Jobs Team</a></b>', '2021-08-18 18:47:19'),
(9, 'Job Applied', 'job-applied', 'Job Application Submitted Successfully', '<span>Dear Candidate,<br></span><br>You have successfully applied for the position of <b>{JOB_TITLE}</b>. <br>Employer will review your profile and let you know if your profile matches the job requirements and specifications. Please note that only shortlisted candidates shall be receive email by Employer.<br><br>We wish you best of luck in your job search.<br><br><span><b>Regards,</b><br><b><a href=\"https://activejobs.com.bd/\">Active Jobs Team</a></b></span>', '2021-08-18 18:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `xx_email_template_variables`
--

CREATE TABLE `xx_email_template_variables` (
  `id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `variable_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_email_template_variables`
--

INSERT INTO `xx_email_template_variables` (`id`, `template_id`, `variable_name`) VALUES
(4, 1, '{FULLNAME}'),
(7, 7, '{VERIFICATION_LINK}'),
(14, 4, '{JOB_TITLE}'),
(15, 8, '{JOB_TITLE}'),
(18, 3, '{CONTENT}'),
(20, 9, '{JOB_TITLE}');

-- --------------------------------------------------------

--
-- Table structure for table `xx_employers`
--

CREATE TABLE `xx_employers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_verify` tinyint(4) NOT NULL DEFAULT 0,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL,
  `password_reset_code` varchar(255) NOT NULL,
  `last_ip` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_employers`
--

INSERT INTO `xx_employers` (`id`, `firstname`, `lastname`, `email`, `password`, `designation`, `profile_picture`, `mobile_no`, `gender`, `country`, `state`, `city`, `address`, `role`, `is_active`, `is_verify`, `is_admin`, `token`, `password_reset_code`, `last_ip`, `created_date`, `updated_date`) VALUES
(1, 'Demo', 'User', 'employer@onjob.com', '$2y$10$utS4kMJWWy4GTZLU0isc9.QVeHi.Wj3kI1NWbC6knU0Bar52yWIIa', 'CEO / Founder', 'uploads/profile_pictures/2fce813a970ad3405433f23a8590a468.jpg', '11455479954', '', 231, 3924, 42800, 'Link Road', 1, 1, 1, 0, '', '', '', '2019-05-26 10:05:02', '2019-09-10 11:09:04'),
(12, 'Ali H', 'Shawon', 'alihshawon786@gmail.com', '$2y$10$7LtYWVzCUnntherVld00w.3nC3CBS6qptJih0j13AaQ3bMZgdlM/G', '', '', '', '', 0, 0, 0, '', 1, 1, 0, 0, 'ede7e2b6d13a41ddf9f4bdef84fdc737', '', '', '2021-08-18 00:00:00', '2021-08-18 00:00:00'),
(13, 'Abdul', 'Awal', 'dexebe8755@cytsl.com', '$2y$10$Kygi1guR1fGabUTOlNfmMu/j0xn9.hw2xpaioSds8IZwGZn/wwO4.', '', '', '', '', 0, 0, 0, '', 1, 1, 0, 0, '3b8a614226a953a8cd9526fca6fe9ba5', '', '', '2021-08-18 00:00:00', '2021-08-18 00:00:00'),
(14, 'Abdul', 'Awal', 'gultanirke@yevme.com', '$2y$10$nOPOvlB6NVvYrd8mpJZhO.fpowD2M1OFuXcCWjGIbxdZclGB50MbO', 'CEO', '', '123456789632', '', 18, 348, 7291, 'Dhaka', 1, 1, 0, 0, '3871bd64012152bfb53fdf04b401193f', '', '', '2021-08-18 00:00:00', '2021-08-18 00:00:00'),
(15, 'Abdul', 'Latif', 'galitog167@kembung.com', '$2y$10$fqaCy7v6Pj8Sv439bIQcbOpL7uazVosQeCbuflOStttUtarjnW7FW', '', '', '', '', 0, 0, 0, '', 1, 1, 1, 0, '', '', '', '2021-08-20 00:00:00', '2021-08-20 00:00:00'),
(16, 'Ali', 'Ahmed', 'jfi68426@cuoly.com', '$2y$10$wKxwJoXMymyjAWM9DoFl0u.NDlcNsTC3zqPhNQGjqFBNuaf/Ris0C', '', '', '', '', 0, 0, 0, '', 1, 1, 1, 0, '', '', '', '2021-08-20 00:00:00', '2021-08-20 00:00:00'),
(17, 'Alamin', 'Razu', 'alaminrazu003@gmail.com', '$2y$10$XCjI366qRjqnHsEC7n59OeCm9sJ3SGWYQIk7R9QsNCdyJl/Z0R6DK', 'CEO', 'uploads/profile_pictures/5e9bdc3cad91252a9407c8adc8e3f2d1.jpg', '', '', 18, 348, 7291, 'Mirpur', 1, 1, 1, 0, '', '', '', '2021-08-20 00:00:00', '2021-08-20 00:00:00'),
(18, 'Abdullah', 'Al Mamun', 'hr.ebhubon@gmail.com', '$2y$10$Iso08nBUGF927OAw5S3a8u09u856lHUnUOKGrJOjuqYLIisBuFCGK', 'Sr. Executive ( HR & Admin)', 'uploads/profile_pictures/fc93df3e3a781434892ea6004dc76ece.jpg', '01894800720', '', 18, 4132, 48377, 'House No. 203, Road No. 09, New DOHS, Mohakhali - 1212', 1, 1, 1, 0, '', '', '', '2021-08-23 00:00:00', '2021-08-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xx_employment`
--

CREATE TABLE `xx_employment` (
  `id` int(11) NOT NULL,
  `type` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_employment`
--

INSERT INTO `xx_employment` (`id`, `type`) VALUES
(8, 'Freelance/Contract'),
(10, 'Permanent'),
(12, 'Project');

-- --------------------------------------------------------

--
-- Table structure for table `xx_expected_salary`
--

CREATE TABLE `xx_expected_salary` (
  `id` int(11) NOT NULL,
  `sal_range` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_expected_salary`
--

INSERT INTO `xx_expected_salary` (`id`, `sal_range`) VALUES
(1, 'Unspecified'),
(2, 'Negotiable'),
(3, '500 - 1,000'),
(4, '1,000 - 2,000'),
(5, '2,000 - 3,000'),
(6, '4,000 - 6,000'),
(7, '6,000 - 8,000'),
(8, '8,000 - 10,000'),
(9, '10,000 - 15,000'),
(10, '15,000 - 20,000'),
(11, '20,000 - 30,000'),
(12, '30,000 - 50,000'),
(13, '50,000+');

-- --------------------------------------------------------

--
-- Table structure for table `xx_footer_settings`
--

CREATE TABLE `xx_footer_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `grid_column` int(11) NOT NULL,
  `content` text CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT NULL,
  `updated_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_footer_settings`
--

INSERT INTO `xx_footer_settings` (`id`, `title`, `grid_column`, `content`, `updated_date`) VALUES
(268, 'about_us', 4, '<p>Active Jobs is the largest online job portal in Bangladesh. More than 10000+ companies are looking for employees on Active Jobs.</p>', '2021-08-22 14:02:32'),
(269, 'quick_links', 3, '<ul class=\"footer-nav\">\r\n <li><a href=\"https://jobs.activefans.net/jobs\">Search Jobs</a></li>\r\n <li><a href=\"https://jobs.activefans.net/jobs-by-category\">Jobs by Category</a></li>\r\n <li><a href=\"https://jobs.activefans.net/jobs-by-location\">Jobs by Location</a></li>\r\n <li><a href=\"https://jobs.activefans.net/company\">Listed Companies</a></li>\r\n</ul>', '2021-08-22 14:02:32'),
(270, 'employers', 3, '<ul class=\"footer-nav\">\r\n            <li><a href=\"https://jobs.activefans.net/employers\">Pricing Plans</a></li>\r\n            <li><a href=\"https://codeglamour.com/php/onjob/employers/auth/registration\">Create Account</a></li>\r\n            <li><a href=\"https://jobs.activefans.net/employers/job/post\">Post a Job</a></li>\r\n<li><a href=\"https://jobs.activefans.net/contact\">Contact Us</a></li>\r\n</ul>', '2021-08-22 14:02:32'),
(271, 'job_seekers', 2, '<ul class=\"footer-nav\">\r\n<li><a href=\"https://jobs.activefans.net/auth/registration\">Create Account</a></li>\r\n<li><a href=\"https://jobs.activefans.net/myjobs/matching\">Matching Jobs</a></li>\r\n<li><a href=\"https://jobs.activefans.net/jobs\">Apply for Job</a></li>\r\n<li><a href=\"https://jobs.activefans.net/myjobs\">Applied Jobs</a></li>\r\n</ul>', '2021-08-22 14:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `xx_general_settings`
--

CREATE TABLE `xx_general_settings` (
  `id` int(11) NOT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `application_name` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `copyright` tinytext DEFAULT NULL,
  `admin_email` varchar(225) NOT NULL,
  `email_from` varchar(100) NOT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` int(11) DEFAULT NULL,
  `smtp_user` varchar(50) DEFAULT NULL,
  `smtp_pass` varchar(50) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `google_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `recaptcha_site_key` varchar(255) DEFAULT NULL,
  `recaptcha_lang` varchar(50) DEFAULT NULL,
  `paypal_sandbox` tinyint(4) DEFAULT NULL,
  `paypal_sandbox_url` varchar(255) DEFAULT NULL,
  `paypal_live_url` varchar(255) DEFAULT NULL,
  `paypal_email` varchar(255) DEFAULT NULL,
  `paypal_cur_code` varchar(5) DEFAULT NULL,
  `paypal_client_id` varchar(255) DEFAULT NULL,
  `paypal_status` tinyint(4) NOT NULL DEFAULT 1,
  `stripe_secret_key` varchar(255) DEFAULT NULL,
  `stripe_publish_key` varchar(255) DEFAULT NULL,
  `default_language` varchar(255) DEFAULT NULL COMMENT 'set from the Languages section in admin side',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_general_settings`
--

INSERT INTO `xx_general_settings` (`id`, `favicon`, `logo`, `application_name`, `timezone`, `currency`, `copyright`, `admin_email`, `email_from`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `facebook_link`, `twitter_link`, `google_link`, `youtube_link`, `linkedin_link`, `instagram_link`, `recaptcha_secret_key`, `recaptcha_site_key`, `recaptcha_lang`, `paypal_sandbox`, `paypal_sandbox_url`, `paypal_live_url`, `paypal_email`, `paypal_cur_code`, `paypal_client_id`, `paypal_status`, `stripe_secret_key`, `stripe_publish_key`, `default_language`, `created_date`, `updated_date`) VALUES
(1, 'assets/img/d53b12605fcb73b763124461c9b778bf.png', 'assets/img/c7af2e887536421e7bbe875e02c47e77.png', 'Active Jobs', 'Asia/Dhaka', 'BDT', 'Copyright © 2021 Active Jobs - All Rights Reserved.', 'activejobsbd@gmail.com', 'no-reply@putulive.com', 'smtp-pulse.com', 587, 'support@putulive.com', 'Shawon098765aj', 'https://facebook.com', 'https://twitter.com', 'https://google.com', 'https://youtube.com', 'https://linkedin.com', 'https://instagram.com', '', '', 'en', 1, 'https://sandbox.paypal.com/cgi-bin/webscr', 'https://www.paypal.com/cgi-bin/webscr', 'sb-waxpi431295@business.example.com', 'USD', 'AW1tZTsRtL362R1TvXxV4J6KsXDDszBpxqLpty-dDNTCxqhCsZYWqEqAuc-', 0, '', '', 'english', '2021-08-23 00:00:00', '2021-08-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xx_industries`
--

CREATE TABLE `xx_industries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `top_industry` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_industries`
--

INSERT INTO `xx_industries` (`id`, `name`, `slug`, `status`, `top_industry`) VALUES
(1, 'Accountant', 'accountant', 1, 0),
(2, 'Advertising', 'advertising', 1, 0),
(3, 'Airlines', 'airlines', 1, 0),
(4, 'Architect', 'architect', 1, 0),
(5, 'Audit', 'audit', 1, 0),
(6, 'Aviation', 'aviation', 1, 0),
(7, 'Back Office', 'back-office', 1, 0),
(8, 'Banking', 'banking', 1, 0),
(9, 'Broking', 'broking', 1, 0),
(10, 'CAD CAM', 'cad-cam', 1, 0),
(11, 'Chef', 'chef', 1, 0),
(12, 'Civil Engineering', 'civil-engineering', 1, 0),
(85, 'IT', 'it', 1, 0),
(15, 'Construction', 'construction', 1, 0),
(16, 'Customer service', 'customer-service', 1, 0),
(17, 'Data Entry', 'data-entry', 1, 0),
(18, 'Design Engineer', 'design-engineer', 1, 0),
(19, 'Doctor', 'doctor', 1, 0),
(20, 'Education', 'education', 1, 0),
(21, 'Fashion', 'fashion', 1, 0),
(22, 'Film', 'film', 1, 0),
(23, 'Finance', 'finance', 1, 0),
(24, 'Food and Beverage', 'food-and-beverage', 1, 0),
(25, 'Front Office', 'front-office', 1, 0),
(26, 'Graphic Designer', 'graphic-designer', 1, 0),
(27, 'Hardware', 'hardware', 1, 0),
(28, 'Health Care', 'health-care', 1, 0),
(29, 'Hotel', 'hotel', 1, 0),
(30, 'HR', 'hr', 1, 0),
(31, 'Electrical Engineering', 'electrical-engineering', 1, 0),
(32, 'Industrial', 'industrial', 1, 0),
(33, 'Insurance', 'insurance', 1, 0),
(34, 'Interior Desing', 'interior-desing', 1, 0),
(35, 'IT Hardware', 'it-hardware', 1, 0),
(36, 'IT Networking', 'it-networking', 1, 0),
(37, 'IT Software', 'it-software', 1, 0),
(38, 'Jurnalism', 'jurnalism', 1, 0),
(39, 'Languages', 'languages', 1, 0),
(40, 'Lawyer', 'lawyer', 1, 0),
(41, 'Legal Advisor', 'legal-advisor', 1, 0),
(42, 'Logistics', 'logistics', 1, 0),
(43, 'Maintenance', 'maintenance', 1, 0),
(44, 'Management', 'management', 1, 0),
(45, 'Manufacturing', 'manufacturing', 1, 0),
(46, 'Marketing', 'marketing', 1, 0),
(47, 'Media Planning', 'media-planning', 1, 0),
(48, 'Medical', 'medical', 1, 0),
(49, 'Teaching', 'teaching', 1, 0),
(50, 'MR', 'mr', 1, 0),
(51, 'Nurse', 'nurse', 1, 0),
(52, 'Oil and Gas', 'oil-and-gas', 1, 0),
(53, 'Operation', 'operation', 1, 0),
(54, 'Petroleum', 'petroleum', 1, 0),
(55, 'Pharma', 'pharma', 1, 0),
(56, 'PR', 'pr', 1, 0),
(57, 'Production', 'production', 1, 0),
(58, 'Projects', 'projects', 1, 0),
(59, 'Purchase', 'purchase', 1, 0),
(60, 'Quality', 'quality', 1, 0),
(61, 'Real Estate', 'real-estate', 1, 0),
(62, 'Repair', 'repair', 1, 0),
(63, 'Research and Development', 'research-and-development', 1, 0),
(64, 'Restaurunt', 'restaurunt', 1, 0),
(65, 'Retailing', 'retailing', 1, 0),
(66, 'Sales', 'sales', 1, 0),
(67, 'Secretary', 'secretary', 1, 0),
(68, 'Security', 'security', 1, 0),
(69, 'Shipping', 'shipping', 1, 0),
(70, 'Site Engineering', 'site-engineering', 1, 0),
(71, 'Supply Chain', 'supply-chain', 1, 0),
(72, 'Tax', 'tax', 1, 0),
(73, 'Administration', 'administration', 1, 0),
(74, 'Telecalling', 'telecalling', 1, 0),
(75, 'Telecom', 'telecom', 1, 0),
(76, 'Testing', 'testing', 1, 0),
(77, 'Government', 'government', 1, 0),
(78, 'Textile', 'textile', 1, 0),
(79, 'Ticketing', 'ticketing', 1, 0),
(80, 'Top Management', 'top-management', 1, 0),
(81, 'Traveling', 'traveling', 1, 0),
(82, 'TV', 'tv', 1, 0),
(83, 'Visualizer', 'visualizer', 1, 0),
(84, 'Web Designer', 'web-designer', 1, 0),
(86, 'Mechanical Engineering', 'mechanical-engineering', 1, 0),
(87, 'Photography', 'photography', 1, 0),
(88, 'Ozient12345', 'ozient12345', 1, 0),
(89, 'Wwe', 'wwe', 1, 0),
(90, 'E-commerce', 'ecommerce', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xx_job_post`
--

CREATE TABLE `xx_job_post` (
  `id` int(4) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `job_slug` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `category` varchar(60) NOT NULL,
  `industry` varchar(40) NOT NULL,
  `job_type` varchar(40) NOT NULL,
  `employment_type` varchar(40) NOT NULL,
  `description` longtext NOT NULL,
  `salary_period` varchar(100) NOT NULL,
  `min_salary` int(10) NOT NULL,
  `max_salary` int(10) NOT NULL,
  `education` varchar(255) NOT NULL,
  `experience` varchar(40) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `total_positions` int(11) NOT NULL,
  `skills` longtext NOT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `is_featured` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_status` enum('active','inactive','pending','blocked') NOT NULL DEFAULT 'active',
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_job_post`
--

INSERT INTO `xx_job_post` (`id`, `admin_id`, `employer_id`, `company_id`, `title`, `job_slug`, `page_title`, `category`, `industry`, `job_type`, `employment_type`, `description`, `salary_period`, `min_salary`, `max_salary`, `education`, `experience`, `gender`, `total_positions`, `skills`, `country`, `state`, `city`, `location`, `is_featured`, `is_status`, `created_date`, `updated_date`, `expiry_date`) VALUES
(5, 3, 16, 16, 'Account Officer', 'account-officer-job-in-dhaka', NULL, '1', '1', '10', '10', 'We are looking for a detail-oriented Account Officer to assist in our financial department. The responsibilities of an Account Officer include keeping financial records up-to-date, checking for inaccuracies in invoices, and handling queries on general accounts.\r\n\r\nTo be successful as an Account Officer, you should have knowledge of basic accounting procedures, be open to learning, and have strong communication skills. Ultimately, a quality Account Officer should be able to achieve excellent customer service and maintain accurate financial records.\r\n\r\nAccount Officer Responsibilities:\r\nMaintaining financial records.\r\nHandling accounts payable and receivable.\r\nChecking invoices.\r\nResolving accounts to the general ledger.\r\nContacting clients about transactions and invoices.\r\nHandling queries related to accounts.\r\n\r\nAccount Officer Requirements:\r\n\r\nHigh School Diploma.\r\nProven work experience as an Account Officer.\r\nAble to work well within a team.\r\nProficiency in MS Excel and QuickBooks.\r\nSolid analytical skills.\r\nDetail-oriented.\r\nStrong interpersonal skills.', 'Monthly', 15000, 25000, '1', '1-5', 'No Preference', 1, 'accounting, bookkeeping, accounting software', 18, 4132, 48377, 'Dhaka', 'no', 'active', '2021-08-20 00:00:00', '2021-08-23 00:00:00', '2021-11-30'),
(7, 3, 16, 16, 'Data Entry Operator', 'data-entry-operator-job-in-dhaka', NULL, '12', '17', '10', '12', 'We are seeking a detail-oriented data entry operator to compile, capture, and maintain our digital database. As a data entry operator, you will be required to compile, merge, and format documents for data entry, check documents for errors, input data and update the database, and manage the digital filing systems.\r\n\r\nTo be a successful data entry operator, you should possess excellent typing skills and be attentive to detail. Skilled data entry operators should be able to quickly identify data errors and demonstrate precision in their work.\r\n\r\nData Entry Operator Responsibilities:\r\n\r\nGathering, collating, and preparing documents, materials, and information for data entry.\r\nConducting research to obtain information for incomplete documents and materials.\r\nCreating digital documents from paper or dictation.\r\nReviewing all documents and information for accuracy and informing the supervisor of any errors or inconsistencies.\r\nCapturing data into digital databases and performing regular backups.\r\nUpdating and maintaining databases, archives, and filing systems.\r\nMonitoring and reviewing databases and correcting errors or inconsistencies.\r\nGenerating and exporting data reports, spreadsheets, and documents as needed.\r\nPerforming clerical duties such as filing, monitoring office supplies, scanning, and printing as needed.\r\n\r\nData Entry Operator Requirements:\r\n\r\nHigh school diploma or GED.\r\n1 year experience as a data entry operator or similar.\r\nExcellent typing abilities.\r\nExcellent time management and multitasking abilities.\r\nProficiency in data capturing and office management software such as MS Office and Google Suite.\r\nThe ability to manage and process high volumes of data accurately.\r\nGood understanding of databases and digital and paper filing systems.\r\nKnowledge of administrative and clerical operations.\r\nKeen eye for detail and the ability to concentrate for extended periods.\r\nExcellent verbal and written communication skills.', 'Monthly', 10000, 15000, '5', '1-5', 'No Preference', 15, 'data entry, typing, english typing, bangla typing', 18, 4132, 48377, 'Dhaka', 'no', 'active', '2021-08-20 00:00:00', '2021-08-23 00:00:00', '2021-11-30'),
(6, 3, 16, 16, 'Administrative Secretary', 'administrative-secretary-job-in-dhaka', NULL, '12', '73', '10', '10', 'We are seeking an energetic and capable administrative secretary to assist us with office administration. In this role, you will be responsible for processing documents, maintaining databases, and liaising with the public. You may also be required to manage office supplies.\r\n\r\nTo ensure success as an administrative secretary, you should possess excellent communication skills and demonstrable experience in a secretarial role. Outstanding administrative secretaries are highly organized in performing a wide array of administrative duties.\r\n\r\nAdministrative Secretary Responsibilities:\r\n\r\nReporting to management and performing secretarial duties.\r\nProcessing, typing, editing, and formatting reports and documents.\r\nFiling documents, as well as entering data and maintaining databases.\r\nLiaising with internal departments and communicating with the public.\r\nDirecting internal and external calls, emails, and faxes to designated departments.\r\nArranging and scheduling appointments, meetings, and events.\r\nMonitoring office supplies and ordering replacements.\r\nAssisting with copying, scanning, faxing, emailing, note-taking, and travel bookings.\r\nPreparing facilities and arranging refreshments for events, if required.\r\nObserving the best business practices and etiquette.\r\n\r\nAdministrative Secretary Requirements:\r\n\r\nHigh School Diploma or GED.\r\nFormal qualification in office administration, secretarial work, or related training.\r\n1-2 years of experience as an Administrative Secretary would be advantageous.\r\nAdvanced proficiency in managing documents, spreadsheets, and databases.\r\nAbility to liaise internally and externally on administrative matters.\r\nExceptional filing, recordkeeping, and organizational skills.\r\nWorking knowledge of printers, copiers, scanners, and fax machines.\r\nProficiency in appointment scheduling and call forwarding systems.\r\nExcellent written and verbal communication skills.\r\nExceptional interpersonal skills.', 'Monthly', 10000, 20000, '1', '1-5', 'No Preference', 1, 'administrative, bookkeeping, assistant', 18, 4132, 48377, 'Dhaka', 'no', 'active', '2021-08-20 00:00:00', '2021-08-23 00:00:00', '2021-11-30'),
(8, 0, 18, 18, 'Digital Marketing Strategist', 'digital-marketing-strategist-job-in-dhaka', NULL, '29', '90', '10', '10', '<div>An E-commerce\r\nsite named \"ebhubon.com\" is looking for some self-motivated,\r\nintelligent, and hard working full time Digital Marketing Strategist<br><span><b><br>দায়িত্ব</b><b>:</b></span>\r\n\r\n• আমাদের Marketing Data Base, Email, এবং Display Publicity সহ আমাদের Digital Marketing বিভাগের সমস্ত দিক Design এবং Monitor করা।\r\n\r\n• Publicity\r\nBudget Development এবং Research করা।\r\n\r\n• Social Media\r\nPlatform গুলোর Planning করা এবং Manage করা।\r\n\r\n• আমাদের Marketing and Publicity র সামগ্রিক Performance সম্পর্কে Correct Report ready করা।\r\n\r\n• Digital\r\nmarketing Successful করতে ও Develop করতে Advertisement এবং Media Expert দের সাথে Collaboration করা।\r\n\r\n• আমাদের Business কে Effect করে এমন Latest Trends এবং Technology সনাক্ত করা।\r\n\r\n• আমাদের Website Traffic Service এবং Target Customer দের Effect করে এমন গুরুত্বপূর্ণ Metrics Evaluate করা।\r\n\r\n• New and\r\ninnovative growth strategies কাজে লাগানোর জন্য নিজ দলের সাথে কাজ করা।\r\n\r\n<span>• Others\r\nCompetitor and Digital Project Monitor ও পরিচালনা করা।<br></span><span><b><br>জব</b><b> </b><b>রিকোয়ারমেন্টসঃ</b></span>\r\n\r\n• Marketing বা সমবিষয়ের উপর স্নাতক ডিগ্রি থাকতে হবে। অভিজ্ঞদের ক্ষেত্রে শিক্ষাগত যোগ্যতা শিথিল যোগ্য।\r\n\r\n• Digital\r\nMarketing বা Advertisement কাজের অভিজ্ঞতা থাকতে হবে।\r\n\r\n• বিভিন্ন Social Media Platform এ Practice এবং Website Research বাস্তব অভিজ্ঞতা থাকতে হবে।\r\n\r\n• HTML, CSS এবং JAVAScript বোঝার প্রয়োজনীয় অভিজ্ঞতা থাকতে হবে।\r\n\r\n• Creative কাজের জন্য Great Research ক্ষমতা থাকতে হবে।\r\n\r\n•\r\nPerson-centered communication skills থাকতে হবে।\r\n\r\n<span>• Digital\r\nMarketing এর Latest Trend এবং Technology বিষয়ে Up-to-Date থাকতে হবে।<br></span><span><b><br>Job Location:</b> New DOHS, Mohakhali, Dhaka<br></span><span><b><br>Salary: </b>Negotiable<br></span><span><b><br>Other Benefits:</b> As per company policy</span>\r\n\r\nInterested\r\ncandidate are requested to send their CV with the subject line “Digital\r\nMarketing Strategist (Ebhubon)\" to hr.ebhubon@gmail.com or call\r\n01894800720<br><span><b><br>Application deadline:</b> 10 Aug, 2021</span><br></div>', 'Monthly', 20000, 30000, '1', '2-5', 'No Preference', 1, 'Ecommerce, Digital Marketing,', 18, 4132, 48377, 'House No. 203, Road No. 09, New DOHS, Mohakhali - 1212', 'no', 'active', '2021-08-23 00:00:00', '2021-08-23 00:00:00', '2021-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `xx_job_post_featured`
--

CREATE TABLE `xx_job_post_featured` (
  `id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_job_post_featured`
--

INSERT INTO `xx_job_post_featured` (`id`, `employer_id`, `job_id`, `package_id`, `payment_id`, `is_featured`) VALUES
(1, 1, 1, 5, 0, 0),
(2, 1, 2, 7, 1, 1),
(3, 1, 3, 7, 1, 1),
(4, 4, 4, 6, 3, 1),
(5, 16, 5, 7, 0, 0),
(6, 16, 6, 7, 0, 0),
(7, 16, 7, 7, 0, 0),
(8, 18, 8, 7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xx_job_type`
--

CREATE TABLE `xx_job_type` (
  `id` int(11) NOT NULL,
  `type` varchar(150) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_job_type`
--

INSERT INTO `xx_job_type` (`id`, `type`, `slug`, `created_at`) VALUES
(7, 'Internship', '', '0000-00-00 00:00:00'),
(8, 'On Call/Pay Per Work', '', '0000-00-00 00:00:00'),
(9, 'Part Time', '', '0000-00-00 00:00:00'),
(10, 'Full Time', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xx_languages`
--

CREATE TABLE `xx_languages` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_languages`
--

INSERT INTO `xx_languages` (`lang_id`, `lang_name`) VALUES
(1, 'Urdu'),
(2, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `xx_packages`
--

CREATE TABLE `xx_packages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `detail` varchar(255) NOT NULL,
  `no_of_posts` int(11) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `package_for` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_packages`
--

INSERT INTO `xx_packages` (`id`, `title`, `slug`, `price`, `detail`, `no_of_posts`, `no_of_days`, `package_for`, `is_active`, `sort_order`, `created_date`, `updated_date`) VALUES
(7, 'Free Plan', '', 0, 'Free with limited  features', 5, 30, 1, 1, 0, '2019-05-24 09:05:33', '2021-08-18 00:00:00'),
(6, 'Basic Plan', '', 1500, 'Suitable for small or medium businesses', 15, 30, 1, 1, 1, '2019-05-24 10:05:42', '2021-08-18 00:00:00'),
(5, 'Premium Plan', '', 3000, 'Suitable for medium or large scale businesses', 40, 30, 1, 1, 2, '2019-05-24 10:05:25', '2021-08-18 00:00:00'),
(8, 'Unlimited CV Search', 'ucvs', 200, 'csvss', 100, 90, 1, 0, 1, '2019-10-25 23:39:56', '2020-06-18 02:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `xx_packages_bought`
--

CREATE TABLE `xx_packages_bought` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `expire_date` date NOT NULL,
  `is_renewal` tinyint(4) NOT NULL,
  `is_upgrade` tinyint(4) NOT NULL,
  `buy_date` datetime NOT NULL,
  `renewal_date` datetime DEFAULT NULL,
  `updrade_date` datetime DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_packages_bought`
--

INSERT INTO `xx_packages_bought` (`id`, `payment_id`, `employer_id`, `user_id`, `package_id`, `expire_date`, `is_renewal`, `is_upgrade`, `buy_date`, `renewal_date`, `updrade_date`, `is_active`) VALUES
(1, 0, 1, 0, 5, '2019-06-25', 0, 0, '2019-05-26 10:05:57', NULL, NULL, 0),
(2, 1, 1, 0, 7, '2019-07-01', 0, 0, '2019-06-02 08:57:11', NULL, NULL, 0),
(3, 2, 1, 0, 8, '2020-01-23', 0, 0, '2019-10-25 23:00:22', NULL, NULL, 0),
(4, 3, 4, 0, 6, '2019-12-09', 0, 0, '2019-10-25 23:38:47', NULL, NULL, 0),
(5, 0, 4, 0, 5, '2019-11-24', 0, 0, '2019-10-25 11:10:13', NULL, NULL, 0),
(6, 0, 4, 0, 5, '2019-11-24', 0, 0, '2019-10-25 11:10:52', NULL, NULL, 0),
(7, 0, 4, 0, 5, '2019-11-24', 0, 0, '2019-10-25 11:10:29', NULL, NULL, 0),
(8, 0, 4, 0, 5, '2019-11-24', 0, 0, '2019-10-25 11:10:40', NULL, NULL, 0),
(9, 4, 4, 0, 7, '2019-11-25', 0, 0, '2019-10-26 01:53:34', NULL, NULL, 1),
(10, 5, 1, 0, 7, '2019-11-25', 0, 0, '2019-10-26 02:55:57', NULL, NULL, 1),
(11, 0, 12, 0, 7, '2021-09-17', 0, 0, '2021-08-18 00:00:00', NULL, NULL, 1),
(12, 0, 13, 0, 7, '2021-09-17', 0, 0, '2021-08-18 00:00:00', NULL, NULL, 1),
(13, 0, 14, 0, 7, '2021-09-17', 0, 0, '2021-08-18 00:00:00', NULL, NULL, 1),
(14, 0, 15, 0, 7, '2021-09-19', 0, 0, '2021-08-20 00:00:00', NULL, NULL, 1),
(15, 0, 16, 0, 7, '2021-09-19', 0, 0, '2021-08-20 00:00:00', NULL, NULL, 1),
(16, 0, 17, 0, 7, '2021-09-19', 0, 0, '2021-08-20 00:00:00', NULL, NULL, 1),
(17, 0, 18, 0, 7, '2021-09-22', 0, 0, '2021-08-23 00:00:00', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xx_pages`
--

CREATE TABLE `xx_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `sort_order` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_pages`
--

INSERT INTO `xx_pages` (`id`, `title`, `slug`, `description`, `keywords`, `content`, `sort_order`, `is_active`, `created_date`, `updated_date`) VALUES
(1, 'About Us', 'about-us', 'onjob about page', 'about, aboutus, about us', 'Lorem ipsum dolor sit amet, te mea mundi commune vulputate. Ad errem option sensibus has. Ad eam idque menandri necessitatibus. An mel scaevola scriptorem mediocritatem, illud viderer maiestatis id mei. Vim cibo nusquam disputando ex. No est putant ornatus, quo ut dico graeci.Nec tota feugiat ea, timeam detracto ius id, perpetua suscipiantur mea ex. Sumo eruditi no mel, vel cu integre oportere voluptaria, sea ea euismod officiis luptatum. <br><br>Cu dolor nonumes dissentiet mei, mei verterem sapientem no. Id nam ignota vidisse gubergren. Vel bonorum gloriatur ad, in pro utroque mentitum appareat, vim at omnium abhorreant. Pri id natum velit facilisi, no eos dicat altera commodo.<span>Lorem ipsum dolor sit amet, te mea mundi commune vulputate. Ad errem option sensibus has. Ad eam idque menandri necessitatibus. An mel scaevola scriptorem mediocritatem, illud viderer maiestatis id mei. Vim cibo nusquam disputando ex. No est putant ornatus, quo ut dico graeci.Nec tota feugiat ea, timeam detracto ius id, perpetua suscipiantur mea ex. Sumo eruditi no mel, vel cu integre oportere voluptaria, sea ea euismod officiis luptatum.<br><br> Cu dolor nonumes dissentiet mei, mei verterem sapientem no. Id nam ignota vidisse gubergren. Vel bonorum gloriatur ad, in pro utroque mentitum appareat, vim at omnium abhorreant. Pri id natum velit facilisi, no eos dicat altera commodo.</span>\"', 2, 1, '2019-06-02 11:06:07', '0000-00-00 00:00:00'),
(2, 'Terms n Conditions', 'terms-n-conditions', 'On Job Terms n Condition page', 'tems, condition', 'Lorem ipsum dolor sit amet, te mea mundi commune vulputate. Ad errem option sensibus has. Ad eam idque menandri necessitatibus. An mel scaevola scriptorem mediocritatem, illud viderer maiestatis id mei. Vim cibo nusquam disputando ex. No est putant ornatus, quo ut dico graeci.Nec tota feugiat ea, timeam detracto ius id, perpetua suscipiantur mea ex. Sumo eruditi no mel, vel cu integre oportere voluptaria, sea ea euismod officiis luptatum. Cu dolor nonumes dissentiet mei, mei verterem sapientem no. Id nam ignota vidisse gubergren. Vel bonorum gloriatur ad, in pro utroque mentitum appareat, vim at omnium abhorreant. Pri id natum velit facilisi, no eos dicat altera commodo.Lorem ipsum dolor sit amet, te mea mundi commune vulputate. Ad errem option sensibus has. Ad eam idque menandri necessitatibus. An mel scaevola scriptorem mediocritatem, illud viderer maiestatis id mei. Vim cibo nusquam disputando ex. No est putant ornatus, quo ut dico graeci.Nec tota feugiat ea, timeam detracto ius id, perpetua suscipiantur mea ex. Sumo eruditi no mel, vel cu integre oportere voluptaria, sea ea euismod officiis luptatum. Cu dolor nonumes dissentiet mei, mei verterem sapientem no. Id nam ignota vidisse gubergren. Vel bonorum gloriatur ad, in pro utroque mentitum appareat, vim at omnium abhorreant. Pri id natum velit facilisi, no eos dicat altera commodo.\"', 3, 1, '2019-06-03 01:06:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xx_payments`
--

CREATE TABLE `xx_payments` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `txn_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `payment_amount` varchar(50) DEFAULT NULL,
  `payer_email` varchar(255) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `purchased_plan` varchar(255) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_payments`
--

INSERT INTO `xx_payments` (`id`, `payment_method`, `txn_id`, `user_id`, `employer_id`, `currency`, `payment_amount`, `payer_email`, `payment_status`, `purchased_plan`, `payment_date`) VALUES
(1, 'paypal', '4L928282WK085633B', 0, 1, 'USD', '50.00', 'nacreativeprogrammer-buyer-1@gmail.com', 'Pending', '7', '2019-06-02 03:57:11'),
(2, 'stripe', 'txn_1FXkFpHDx7jzBoS98m5C2Jpl', 0, 1, 'USD', '200', 'john@gmail.com', 'succeeded', '8', '2019-10-25 18:00:22'),
(3, 'stripe', 'txn_1FXkr1HDx7jzBoS9iRJ04NKQ', 0, 4, 'USD', '150', 'star@onjob.com', 'succeeded', '6', '2019-10-25 18:38:47'),
(4, 'stripe', 'txn_1FXmxRHDx7jzBoS9OkqC44EV', 0, 4, 'USD', '50', 'test@example.com', 'succeeded', '7', '2019-10-25 20:53:34'),
(5, 'stripe', 'txn_1FXnvpHDx7jzBoS9eG9VjEkn', 0, 1, 'USD', '50', 'jain@gmail.com', 'succeeded', '7', '2019-10-25 21:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `xx_prohibited_keywords`
--

CREATE TABLE `xx_prohibited_keywords` (
  `ID` int(11) NOT NULL,
  `keyword` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_prohibited_keywords`
--

INSERT INTO `xx_prohibited_keywords` (`ID`, `keyword`) VALUES
(8, 'idiot'),
(9, 'fuck'),
(10, 'bitch');

-- --------------------------------------------------------

--
-- Table structure for table `xx_saved_jobs`
--

CREATE TABLE `xx_saved_jobs` (
  `id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_saved_jobs`
--

INSERT INTO `xx_saved_jobs` (`id`, `seeker_id`, `job_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xx_seeker_applied_job`
--

CREATE TABLE `xx_seeker_applied_job` (
  `id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `cover_letter` longtext NOT NULL,
  `is_shortlisted` tinyint(4) NOT NULL DEFAULT 0,
  `is_interviewed` tinyint(4) NOT NULL DEFAULT 0,
  `applied_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_seeker_applied_job`
--

INSERT INTO `xx_seeker_applied_job` (`id`, `seeker_id`, `employer_id`, `job_id`, `cover_letter`, `is_shortlisted`, `is_interviewed`, `applied_date`) VALUES
(2, 1, 1, 1, 'test', 1, 0, '2019-06-12 10:06:54'),
(3, 45, 11, 4, 'Here i wana to apply for it', 0, 0, '2019-11-16 00:00:00'),
(4, 45, 11, 4, 'Here i wana to apply for it', 1, 0, '2019-11-17 00:00:00'),
(5, 45, 1, 3, 'Hello I want to apply for this positon', 1, 0, '2019-11-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xx_seeker_education`
--

CREATE TABLE `xx_seeker_education` (
  `id` tinyint(4) NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `degree` varchar(40) NOT NULL,
  `degree_title` varchar(40) NOT NULL,
  `major_subjects` varchar(40) NOT NULL,
  `country` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `completion_year` varchar(30) NOT NULL,
  `result_type` varchar(30) NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_seeker_education`
--

INSERT INTO `xx_seeker_education` (`id`, `user_id`, `degree`, `degree_title`, `major_subjects`, `country`, `city`, `institution`, `completion_year`, `result_type`, `updated_date`) VALUES
(1, 1, '1', 'Accounting', 'accounts, finance', '231', '', 'Oxford University', '2016', '', '2019-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `xx_seeker_experience`
--

CREATE TABLE `xx_seeker_experience` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `country` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `starting_month` varchar(30) NOT NULL,
  `starting_year` varchar(30) NOT NULL,
  `ending_month` varchar(30) DEFAULT NULL,
  `ending_year` varchar(30) DEFAULT NULL,
  `currently_working_here` tinyint(4) DEFAULT NULL,
  `description` longtext NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_seeker_experience`
--

INSERT INTO `xx_seeker_experience` (`id`, `user_id`, `job_title`, `company`, `country`, `city`, `starting_month`, `starting_year`, `ending_month`, `ending_year`, `currently_working_here`, `description`, `updated_date`) VALUES
(1, 1, 'Senior Accountant', 'XYZ', '229', '', '2', '2011', '2', '2015', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2019-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `xx_seeker_languages`
--

CREATE TABLE `xx_seeker_languages` (
  `id` tinyint(4) NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `language` varchar(40) NOT NULL,
  `proficiency` varchar(40) NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_seeker_languages`
--

INSERT INTO `xx_seeker_languages` (`id`, `user_id`, `language`, `proficiency`, `updated_date`) VALUES
(1, 11, 'Urdu', 'Expert', '2018-07-19'),
(4, 15, '1', '1', '2019-05-03'),
(5, 17, '1', '1', '2019-05-21'),
(6, 1, '2', '1', '2019-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `xx_seeker_skill`
--

CREATE TABLE `xx_seeker_skill` (
  `id` tinyint(4) NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `new_skill` varchar(40) NOT NULL,
  `experience` varchar(40) NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xx_seeker_summary`
--

CREATE TABLE `xx_seeker_summary` (
  `id` tinyint(4) NOT NULL,
  `user_id` tinyint(4) NOT NULL,
  `summary` longtext NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xx_site_languages`
--

CREATE TABLE `xx_site_languages` (
  `id` int(11) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `directory_name` varchar(100) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_site_languages`
--

INSERT INTO `xx_site_languages` (`id`, `display_name`, `directory_name`, `is_default`, `is_active`, `created_date`, `updated_date`) VALUES
(2, 'English', 'english', 1, 1, '2019-10-29 16:40:53', '2019-11-14 02:25:00'),
(4, '?????', 'bangla', 0, 1, '2020-06-18 13:26:45', '2021-08-18 12:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `xx_skills`
--

CREATE TABLE `xx_skills` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_skills`
--

INSERT INTO `xx_skills` (`id`, `name`, `slug`, `sort_order`, `status`) VALUES
(1, 'HTML5', 'html5', 0, 1),
(2, 'CSS3', 'css3', 0, 1),
(3, 'PHP', 'php', 0, 1),
(4, 'Accounts', 'accounts', 0, 1),
(5, 'Ms office', 'ms-office', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xx_states`
--

CREATE TABLE `xx_states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_states`
--

INSERT INTO `xx_states` (`id`, `name`, `slug`, `country_id`, `status`) VALUES
(4130, 'Barisal', 'barisal', 18, 1),
(4131, 'Chittagong', 'chittagong', 18, 1),
(4132, 'Dhaka', 'dhaka', 18, 1),
(4133, 'Khulna', 'khulna', 18, 1),
(4134, 'Mymensingh', 'mymensingh', 18, 1),
(4135, 'Rajshahi', 'rajshahi', 18, 1),
(4136, 'Rangpur', 'rangpur', 18, 1),
(4137, 'Sylhet', 'sylhet', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xx_subscribers`
--

CREATE TABLE `xx_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xx_testimonials`
--

CREATE TABLE `xx_testimonials` (
  `id` int(11) NOT NULL,
  `testimonial` text NOT NULL,
  `testimonial_by` varchar(225) NOT NULL,
  `comp_and_desig` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx_testimonials`
--

INSERT INTO `xx_testimonials` (`id`, `testimonial`, `testimonial_by`, `comp_and_desig`, `photo`, `is_default`, `status`, `created_at`) VALUES
(2, 'asdfasdfasdfasd', 'Asdfasd', 'Asdfasdfasd', NULL, 1, 1, '2019-11-14 06:53:53'),
(3, 'I found ONJOB a professional and outstanding place to hire real tallent. Wish you best of luck Team!', 'John Lee', 'CTO at TechLeads', 'assets/testimonials/b280f883c21cf7e4f39324fdc67a34e5.png', 0, 1, '2019-11-18 07:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `xx_users`
--

CREATE TABLE `xx_users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `nationality` varchar(40) NOT NULL,
  `category` varchar(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `country` varchar(40) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(40) NOT NULL,
  `postcode` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `experience` varchar(40) NOT NULL,
  `education_level` varchar(50) NOT NULL,
  `skills` longtext NOT NULL,
  `current_salary` varchar(40) NOT NULL,
  `expected_salary` varchar(40) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `profile_completed` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_verify` tinyint(4) NOT NULL DEFAULT 0,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL,
  `password_reset_code` varchar(255) NOT NULL,
  `last_ip` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_users`
--

INSERT INTO `xx_users` (`id`, `firstname`, `lastname`, `email`, `password`, `dob`, `age`, `profile_picture`, `mobile_no`, `nationality`, `category`, `job_title`, `description`, `gender`, `marital_status`, `country`, `state`, `city`, `postcode`, `address`, `experience`, `education_level`, `skills`, `current_salary`, `expected_salary`, `resume`, `role`, `profile_completed`, `is_active`, `is_verify`, `is_admin`, `token`, `password_reset_code`, `last_ip`, `created_date`, `updated_date`) VALUES
(1, 'Demo', 'User', 'user@onjob.com', '$2y$10$utS4kMJWWy4GTZLU0isc9.QVeHi.Wj3kI1NWbC6knU0Bar52yWIIa', '2019-05-01', 22, 'uploads/profile_pictures/2371115986d7a15f9904cb4a355cf5f0.jpg', '00145975456', '166', '25', 'Accountant', '', '', '', '166', '2728', '31376', '', 'Rehman Shaheed Road Gujrat', '2-5', '1', 'HTML5,CSS3,PHP,Accounts,Ms office', '500', '1000', './uploads/resume/d146f081014e83dcf1156c0fb7900787.pdf', 1, 1, 1, 1, 0, '', '', '', '2019-05-26 10:05:04', '2020-06-17 11:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `xx_visa_status`
--

CREATE TABLE `xx_visa_status` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xx_visa_status`
--

INSERT INTO `xx_visa_status` (`id`, `type`) VALUES
(1, 'Citizen'),
(2, 'No Visa'),
(3, 'Residency Visa (Non-Transferable)'),
(4, 'Residency Visa (Transferable)'),
(5, 'Student Visa'),
(6, 'Transit Visa'),
(7, 'Visit Visa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xx_admin`
--
ALTER TABLE `xx_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_blog_categories`
--
ALTER TABLE `xx_blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_blog_comments`
--
ALTER TABLE `xx_blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_blog_posts`
--
ALTER TABLE `xx_blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_blog_tags`
--
ALTER TABLE `xx_blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_categories`
--
ALTER TABLE `xx_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_cities`
--
ALTER TABLE `xx_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_companies`
--
ALTER TABLE `xx_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_contact_us`
--
ALTER TABLE `xx_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_countries`
--
ALTER TABLE `xx_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_currency`
--
ALTER TABLE `xx_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_cv_shortlisted`
--
ALTER TABLE `xx_cv_shortlisted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_education`
--
ALTER TABLE `xx_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_email_templates`
--
ALTER TABLE `xx_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_email_template_variables`
--
ALTER TABLE `xx_email_template_variables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_employers`
--
ALTER TABLE `xx_employers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_employment`
--
ALTER TABLE `xx_employment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_expected_salary`
--
ALTER TABLE `xx_expected_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_footer_settings`
--
ALTER TABLE `xx_footer_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_general_settings`
--
ALTER TABLE `xx_general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_industries`
--
ALTER TABLE `xx_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_job_post`
--
ALTER TABLE `xx_job_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_job_post_featured`
--
ALTER TABLE `xx_job_post_featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_job_type`
--
ALTER TABLE `xx_job_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_languages`
--
ALTER TABLE `xx_languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `xx_packages`
--
ALTER TABLE `xx_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_packages_bought`
--
ALTER TABLE `xx_packages_bought`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_pages`
--
ALTER TABLE `xx_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_payments`
--
ALTER TABLE `xx_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_prohibited_keywords`
--
ALTER TABLE `xx_prohibited_keywords`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `xx_saved_jobs`
--
ALTER TABLE `xx_saved_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_seeker_applied_job`
--
ALTER TABLE `xx_seeker_applied_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_seeker_education`
--
ALTER TABLE `xx_seeker_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_seeker_experience`
--
ALTER TABLE `xx_seeker_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_seeker_languages`
--
ALTER TABLE `xx_seeker_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_seeker_skill`
--
ALTER TABLE `xx_seeker_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_seeker_summary`
--
ALTER TABLE `xx_seeker_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_site_languages`
--
ALTER TABLE `xx_site_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_skills`
--
ALTER TABLE `xx_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_states`
--
ALTER TABLE `xx_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_subscribers`
--
ALTER TABLE `xx_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_testimonials`
--
ALTER TABLE `xx_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_users`
--
ALTER TABLE `xx_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_visa_status`
--
ALTER TABLE `xx_visa_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `xx_admin`
--
ALTER TABLE `xx_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `xx_blog_categories`
--
ALTER TABLE `xx_blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `xx_blog_comments`
--
ALTER TABLE `xx_blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xx_blog_posts`
--
ALTER TABLE `xx_blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `xx_blog_tags`
--
ALTER TABLE `xx_blog_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `xx_categories`
--
ALTER TABLE `xx_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `xx_cities`
--
ALTER TABLE `xx_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48423;

--
-- AUTO_INCREMENT for table `xx_companies`
--
ALTER TABLE `xx_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `xx_contact_us`
--
ALTER TABLE `xx_contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `xx_countries`
--
ALTER TABLE `xx_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `xx_currency`
--
ALTER TABLE `xx_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `xx_cv_shortlisted`
--
ALTER TABLE `xx_cv_shortlisted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `xx_education`
--
ALTER TABLE `xx_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `xx_email_templates`
--
ALTER TABLE `xx_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `xx_email_template_variables`
--
ALTER TABLE `xx_email_template_variables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `xx_employers`
--
ALTER TABLE `xx_employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `xx_employment`
--
ALTER TABLE `xx_employment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `xx_expected_salary`
--
ALTER TABLE `xx_expected_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `xx_footer_settings`
--
ALTER TABLE `xx_footer_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `xx_general_settings`
--
ALTER TABLE `xx_general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xx_industries`
--
ALTER TABLE `xx_industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `xx_job_post`
--
ALTER TABLE `xx_job_post`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `xx_job_post_featured`
--
ALTER TABLE `xx_job_post_featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `xx_job_type`
--
ALTER TABLE `xx_job_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `xx_languages`
--
ALTER TABLE `xx_languages`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xx_packages`
--
ALTER TABLE `xx_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `xx_packages_bought`
--
ALTER TABLE `xx_packages_bought`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `xx_pages`
--
ALTER TABLE `xx_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xx_payments`
--
ALTER TABLE `xx_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xx_prohibited_keywords`
--
ALTER TABLE `xx_prohibited_keywords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `xx_saved_jobs`
--
ALTER TABLE `xx_saved_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xx_seeker_applied_job`
--
ALTER TABLE `xx_seeker_applied_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xx_seeker_education`
--
ALTER TABLE `xx_seeker_education`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xx_seeker_experience`
--
ALTER TABLE `xx_seeker_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xx_seeker_languages`
--
ALTER TABLE `xx_seeker_languages`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `xx_seeker_skill`
--
ALTER TABLE `xx_seeker_skill`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xx_seeker_summary`
--
ALTER TABLE `xx_seeker_summary`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xx_site_languages`
--
ALTER TABLE `xx_site_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `xx_skills`
--
ALTER TABLE `xx_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xx_states`
--
ALTER TABLE `xx_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4138;

--
-- AUTO_INCREMENT for table `xx_subscribers`
--
ALTER TABLE `xx_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `xx_testimonials`
--
ALTER TABLE `xx_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `xx_users`
--
ALTER TABLE `xx_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `xx_visa_status`
--
ALTER TABLE `xx_visa_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
