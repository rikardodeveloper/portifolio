-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Ago-2019 às 04:27
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `api_complatte`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `access_token`
--

CREATE TABLE `access_token` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `access_token`
--

INSERT INTO `access_token` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `user_id`, `token`) VALUES
(0, '2019-07-23 23:12:33', 0, '', 1, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2MzkzNDM1MywiZXhwIjoxNTY0MDIwNzUzfQ.YDJ9viPHHKAPRgHCmDEOhBkVFCA9anDTb1iKECByAnQ'),
(0, '2019-07-25 01:41:09', 0, '', 2, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2NDAyOTY2OSwiZXhwIjoxNTY0MTE2MDY5fQ.rNp5ZQ_EutBwJ9JDXroY8M8DUiWBGyfV4OkeHryWsX4'),
(0, '2019-07-25 15:12:44', 0, '', 3, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2NDA3ODM2NCwiZXhwIjoxNTY0MTY0NzY0fQ.FY0AKEbx1lhAxDEDKzwb7Y7xGckCQ3BKPnB2iNO6zBo'),
(0, '2019-08-02 18:51:09', 0, '', 4, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2NDc4MjY2OSwiZXhwIjoxNTY0ODY5MDY5fQ.mKWP1ioalJLRpseOQnnGWfByx8iHIyD9jcpfiAr0WeM'),
(0, '2019-08-04 22:16:35', 0, '', 5, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2NDk2Nzc5NSwiZXhwIjoxNTY1MDU0MTk1fQ.PIOzSP24-TFC0Rkh2cjt4DgXxBYewhJCgCme8ecxXzs'),
(0, '2019-08-05 20:51:26', 0, '', 6, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2NTA0OTA4NiwiZXhwIjoxNTY1MTM1NDg2fQ.edJoNo14Wm5HreQME8TLgFQKzc3rExTOKzXb1qlf4XM'),
(0, '2019-08-06 19:30:44', 0, '', 7, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2NTEzMDY0NCwiZXhwIjoxNTY1MjE3MDQ0fQ.vqXp6H5y8ClaafIYE8Jq0kptpfoU2942jKo5yw26FZM'),
(0, '2019-08-08 21:46:37', 0, '', 8, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2NTMxMTU5NywiZXhwIjoxNTY1Mzk3OTk3fQ.rCe4vHVDP1vHBRmZwf4wfCiAY1toktmpb2hxj7O3rck'),
(0, '2019-08-12 19:16:35', 0, '', 9, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2NTY0ODE5NSwiZXhwIjoxNTY1NzM0NTk1fQ.676RvqJVz3kRzkCLcxNMJVGhgtiThQMNz-b6-lvqmBw'),
(0, '2019-08-12 19:51:52', 0, '', 10, 49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDksImlhdCI6MTU2NTY1MDMxMiwiZXhwIjoxNTY1NzM2NzEyfQ.ArIqZ63o05Ao2mGMBoYptAbKDH-Ag68vkrQLKMG8vgE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--

CREATE TABLE `address` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `postcode` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `address_type` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `banner_group_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `container_name` varchar(255) NOT NULL,
  `view_page_count` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `banner_group_banner_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`created_by`, `created_date`, `modified_by`, `modified_date`, `banner_id`, `title`, `sort_order`, `url`, `link`, `content`, `position`, `banner_group_id`, `image`, `image_path`, `container_name`, `view_page_count`, `is_active`, `banner_group_banner_group_id`) VALUES
(0, '2019-02-18 03:20:11', 0, '2019-07-25 15:15:00', 48, 'festival offer 2019', 0, '', 'www.piccocart.com', '', 1, 0, 'Img_1564078500109.jpeg', 'banner/', '', 0, 0, 0),
(0, '2019-02-18 04:12:32', 0, '2019-07-25 01:44:36', 50, 'March - CARNIVAL', 0, '', 'www.content.com', '', 4, 0, 'Img_1551872953437.jpeg', 'banner/', '', 0, 0, 0),
(0, '2019-05-09 04:26:47', 0, '2019-07-25 01:44:21', 68, 'SAMSUNG', 0, '', 'www.samsung.com', '', 2, 0, 'Img_1553263062033.jpeg', 'banner/', '', 0, 0, 0),
(0, '2019-05-09 05:52:57', 0, '2019-07-25 01:44:29', 69, 'Mobile Offers', 0, '', 'www.moboffers.com', '', 3, 0, 'Img_1551871752833.jpeg', 'banner/', '', 0, 0, 0),
(0, '2019-07-25 01:46:35', 0, '', 71, 'Teste banner', 0, '', '', '<p>blahahaahajha</p>\n', 5, 0, 'Img_1564029995337.jpeg', 'banner/', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner_group`
--

CREATE TABLE `banner_group` (
  `banner_group_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner_image`
--

CREATE TABLE `banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(45) NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner_image_description`
--

CREATE TABLE `banner_image_description` (
  `banner_image_description_id` int(11) NOT NULL,
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(4) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

CREATE TABLE `category` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `parent_int` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `meta_tag_title` varchar(255) NOT NULL,
  `meta_tag_description` varchar(255) NOT NULL,
  `meta_tag_keyword` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `category`
--

INSERT INTO `category` (`created_by`, `created_date`, `modified_by`, `modified_date`, `category_id`, `name`, `image`, `image_path`, `parent_int`, `sort_order`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keyword`, `is_active`) VALUES
(0, '2019-08-02 19:06:07', 0, '2019-08-05 20:56:41', 91, 'IMPRESSÃO', 'image', '', 0, 1, '', '', '', 0),
(0, '2019-08-05 20:57:16', 0, '', 92, 'Impressão Digital', 'image', '', 91, 1, '', '', '', 0),
(0, '2019-08-05 21:29:02', 0, '2019-08-05 21:29:13', 93, 'GRAVAÇÃO', 'image', '', 0, 1, '', '', '', 0),
(0, '2019-08-05 21:29:41', 0, '', 94, 'Gravação de Chapas', 'image', '', 93, 1, '', '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `category_description`
--

CREATE TABLE `category_description` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_description` varchar(65) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `category_description_id` int(11) NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `category_path`
--

CREATE TABLE `category_path` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `category_path_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `category_path`
--

INSERT INTO `category_path` (`created_by`, `created_date`, `modified_by`, `modified_date`, `category_path_id`, `category_id`, `path_id`, `level`) VALUES
(0, '', 0, '', 247, 91, 91, 0),
(0, '', 0, '', 248, 92, 91, 0),
(0, '', 0, '', 249, 92, 92, 1),
(0, '', 0, '', 251, 93, 93, 0),
(0, '', 0, '', 252, 94, 93, 0),
(0, '', 0, '', 253, 94, 94, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact`
--

CREATE TABLE `contact` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contact`
--

INSERT INTO `contact` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `name`, `email`, `phone_number`, `message`, `is_active`) VALUES
(0, '2019-08-04 22:50:27', 0, '', 1, 'Ricardo Corrêa da Costa', 'rikardodeveloper@outlook.com', '981402954', 'teste de mensagem do site blablabla', 0),
(0, '2019-08-06 22:27:19', 0, '', 2, 'Ricardo Corrêa da Costa', 'rikardodeveloper@gmail.com', '+5551981402954', 'ssssssadsdasdfsadfsdfsdfsdfsdfsdfdsf', 0),
(0, '2019-08-06 22:29:20', 0, '', 3, 'Ricardo Corrêa da Costa', 'rikardodeveloper@gmail.com', '+5551981402954', 'dsfdszsdfsfsdf', 0),
(0, '2019-08-06 22:33:26', 0, '', 4, 'Costa', 'rikardodeveloper@outlook.com', '51981502954', 'sdffdfdfsfdgdfgdfg', 0),
(0, '2019-08-06 22:34:32', 0, '', 5, 'Ricardo Corrêa da Costa', 'rikardodeveloper@outlook.com', '+5551981402954', 'sdfsdfgsgdfhgdfhg', 0),
(0, '2019-08-06 22:46:19', 0, '', 6, 'Ricardo Corrêa da Costa', 'rikardodeveloper@outlook.com', '+5551981402954', 'dddddddddddddddddddddddddddd', 0),
(0, '2019-08-06 22:51:56', 0, '', 7, 'wewewe', 'rikardodeveloper@outlook.com', '34343434343', 'srtgsrtsdfgdsfgdfg', 0),
(0, '2019-08-06 22:53:19', 0, '', 8, 'Ricardo Corrêa da Costa', 'rikardodeveloper@outlook.com', '+5551981402954', 'dfhdfgdfgdfgdfgf', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iso_code_2` varchar(255) NOT NULL,
  `iso_code_3` varchar(255) NOT NULL,
  `address_format` varchar(255) NOT NULL,
  `postcode_required` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `country`
--

INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `is_active`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `currency`
--

CREATE TABLE `currency` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `symbol_left` varchar(255) NOT NULL,
  `symbol_right` varchar(255) NOT NULL,
  `decimal_place` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `currency`
--

INSERT INTO `currency` (`created_by`, `created_date`, `modified_by`, `modified_date`, `currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `is_active`) VALUES
(0, '2019-02-17 22:18:16', 0, '2019-05-10 04:06:48', 46, 'Doller', 'US', '1', '8', 0, 12, 0),
(0, '2019-03-20 01:57:14', 0, '2019-05-10 04:06:54', 57, 'Rupees', 'IND', 'INR -', 'IN', 0, 123, 0),
(0, '2019-08-04 22:19:31', 0, '2019-08-04 22:20:33', 58, 'Real', 'BR', '3', '8', 0, 12, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `customer`
--

CREATE TABLE `customer` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` bigint(18) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `local` varchar(255) NOT NULL,
  `oauth_data` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `newsletter` varchar(255) NOT NULL,
  `avatar_path` varchar(255) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `last_login` varchar(255) NOT NULL,
  `safe` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  `mail_status` int(11) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `delete_flag` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `tipo_cadastro` varchar(150) NOT NULL,
  `cnpj_cpf` varchar(30) NOT NULL,
  `inscr_estad_rg` varchar(30) NOT NULL,
  `address_numero` bigint(11) NOT NULL,
  `address_complem` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `contato_resp` varchar(200) NOT NULL,
  `email_pre_impres` varchar(200) NOT NULL,
  `email_financeiro` varchar(200) NOT NULL,
  `website` varchar(255) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `bairro` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `customer`
--

INSERT INTO `customer` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `first_name`, `last_name`, `username`, `password`, `email`, `mobile`, `address`, `country_id`, `zone_id`, `city`, `local`, `oauth_data`, `avatar`, `newsletter`, `avatar_path`, `customer_group_id`, `last_login`, `safe`, `ip`, `mail_status`, `pincode`, `delete_flag`, `is_active`, `tipo_cadastro`, `cnpj_cpf`, `inscr_estad_rg`, `address_numero`, `address_complem`, `cidade`, `contato_resp`, `email_pre_impres`, `email_financeiro`, `website`, `phone`, `bairro`) VALUES
(0, '2019-08-08 21:51:34', 0, '2019-08-12 16:25:50', 7, 'Admin', '', 'rikardodeveloper@outlook.com', '$2b$10$IO2GXX/oI6MO51Rx6j8DG..a2gni3QOBc1B64o/aW/CTz69aHn49u', 'rikardodeveloper@outlook.com', 981402954, '', 0, 0, '', '', '', '', '1', '', 1, '2019-08-12 16:25:50', 0, 0, 1, '', 0, 1, '', '', '', 0, '', '', '', '', '', '', 0, ''),
(0, '2019-08-12 19:20:36', 0, '2019-08-12 23:26:49', 20, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', '$2b$10$IP62qi9glp4VUjSkkPBKGu2RxV5EhLfijhevsukMM/wRA3OGgOTBq', 'rikardodeveloper@gmail.com', 51981402954, 'rua cruz alta', 30, 63, 'esteio2233', '', '', 'Img_1565661925257.jpeg', '', 'customer/', 1, '2019-08-12 23:22:30', 0, 0, 1, '9328028022', 0, 1, 'Pessoa Fisica', '001.656.640-88', '1084953247', 2, 'casa', '', 'ricardo costa', 'teste@teste.com', 'rikardodeveloper@teste2.com', 'www.teste.com', 5134586790, 'centro22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `customer_group`
--

CREATE TABLE `customer_group` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `customer_ip`
--

CREATE TABLE `customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `customer_transaction`
--

CREATE TABLE `customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(15,4) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `customer_wishlist`
--

CREATE TABLE `customer_wishlist` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_template`
--

CREATE TABLE `email_template` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `shortname` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `email_template`
--

INSERT INTO `email_template` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `shortname`, `subject`, `message`, `is_active`) VALUES
(0, '2019-02-23 09:47:35', 0, '2019-08-04 22:23:15', 1, 'Register Content', 'Registration Successfully', '<p>Prezado(a) {name},</p>\n\n<pre>\nObrigado por expressar seu interesse e registrar-se na Complatte, a via mais r&aacute;pida para uma unidade de com&eacute;rcio eletr&ocirc;nico mais inteligente.</pre>\n', 1),
(0, '2019-02-23 09:53:09', 0, '2019-08-04 22:23:45', 2, 'Forgot Password Content', 'Forgot Password', '<p>Prezado(a) {name},<br />\n&nbsp;</p>\n\n<p>Seu novo password &eacute;&nbsp;: {xxxxxx}</p>\n', 1),
(0, '', 0, '2019-08-06 22:42:45', 3, 'Contact Content', 'ContactUs', '<p>Prezado Admin,<br />\n&nbsp;</p>\n\n<p>Voc&ecirc; acabou de receber uma pergunta de&nbsp;{name} e os detalhes estao abaixo:</p>\n\n<p>Detalhes:</p>\n\n<p>Email : {email},</p>\n\n<p>Telefone : {phoneNumber},</p>\n\n<p>Mensagem</p>\n\n<p>{message}</p>\n', 1),
(0, '', 0, '2019-08-06 22:42:58', 4, 'Create Customer Login', 'User Login', '<p>Prezado(a) {name},<br />\n&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Temos o prazer de informar que a Complatte adicionou voc&ecirc; como Cliente.Aqui est&atilde;o suas Credenciais de Usu&aacute;rio para fazer login no Aplicativo</p>\n\n<p>User ID : {username}</p>\n', 1),
(0, '', 0, '2019-08-04 22:26:55', 5, 'Customer Order Content', 'Details of your recent Order', '<p>Prezado {name}, Servi&ccedil;o encomendado com sucesso!</p>\n', 1),
(0, '', 0, '2019-08-04 22:27:35', 6, 'Admin Mail Content', 'Congratulations on your recent order', '<p>Prezado Mr.Admin, Um novo servi&ccedil;o foi solicitado</p>\n', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `geo_zone`
--

CREATE TABLE `geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `language`
--

CREATE TABLE `language` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `locale` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `language`
--

INSERT INTO `language` (`created_by`, `created_date`, `modified_by`, `modified_date`, `language_id`, `name`, `code`, `image`, `image_path`, `locale`, `sort_order`, `is_active`) VALUES
(0, '2019-03-15 04:30:44', 0, '2019-08-04 22:21:33', 54, 'Hindi', 'HIN', 'Img_1556347942580.png', 'language/', 0, 1, 0),
(0, '2019-05-06 03:58:01', 0, '2019-08-04 22:21:01', 57, 'English', 'ENG', 'Img_1557133081101.png', 'language/', 0, 1, 0),
(0, '2019-05-06 06:57:05', 0, '2019-08-04 22:21:12', 58, 'French', 'FR', 'Img_1557569207176.png', 'language/', 0, 1, 0),
(0, '2019-07-23 23:18:32', 0, '2019-08-04 22:21:49', 59, 'Portugues', 'pt-br', '', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_log`
--

CREATE TABLE `login_log` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login_log`
--

INSERT INTO `login_log` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `customer_id`, `email_id`, `first_name`, `ip_address`) VALUES
(0, '2019-02-18 04:18:54', 0, '', 34, 57, 'veerapandi.picco@gmail.com', 'veerapandi', '49.206.115.221'),
(0, '2019-02-19 08:26:34', 0, '', 35, 67, 'ganapathy.picco@gmail.com', 'sss', '49.204.210.77'),
(0, '2019-02-21 00:34:14', 0, '', 36, 76, 'akishamary.picco@gmail.com', 'akisha', '49.204.211.235'),
(0, '2019-02-21 23:17:39', 0, '', 37, 40, 'ganesh.picco@gmail.com', 'ganesh', '183.82.38.164'),
(0, '2019-02-27 00:12:17', 0, '', 38, 83, 'vijayalakshmi.picco@gmail.com', 'vijayalakshmi', '49.204.211.239'),
(0, '2019-02-27 01:48:01', 0, '', 39, 83, 'vijayalakshmi.picco@gmail.com', 'vijayalakshmi', '49.204.211.239'),
(0, '2019-02-27 02:20:46', 0, '', 40, 83, 'vijayalakshmi.picco@gmail.com', 'vijayalakshmi', '49.204.211.239'),
(0, '2019-02-27 03:29:25', 0, '', 41, 77, 'amitpiccosoft@gmail.com', 'Amit', '49.204.211.239'),
(0, '2019-02-27 05:09:33', 0, '', 42, 77, 'amitpiccosoft@gmail.com', 'Amit', '49.204.211.239'),
(0, '2019-02-28 05:12:01', 0, '', 43, 84, 'hanumanth.piccosoft@gmail.com', 'hanumanth', '49.204.209.130'),
(0, '2019-02-28 05:22:12', 0, '', 44, 84, 'hanumanth.piccosoft@gmail.com', 'hanumanth', '49.204.209.130'),
(0, '2019-02-28 05:47:02', 0, '', 45, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.204.209.130'),
(0, '2019-02-28 06:05:20', 0, '', 46, 84, 'hanumanth.piccosoft@gmail.com', 'hanumanth', '49.204.209.130'),
(0, '2019-02-28 06:17:26', 0, '', 47, 84, 'hanumanth.piccosoft@gmail.com', 'hanumanth', '49.204.209.130'),
(0, '2019-02-28 06:56:02', 0, '', 48, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.204.209.130'),
(0, '2019-02-28 07:03:30', 0, '', 49, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.204.209.130'),
(0, '2019-03-01 01:10:22', 0, '', 50, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.206.114.29'),
(0, '2019-03-01 04:04:28', 0, '', 51, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.206.114.29'),
(0, '2019-03-01 06:27:53', 0, '', 52, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.206.114.29'),
(0, '2019-03-01 07:50:21', 0, '', 53, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.206.114.29'),
(0, '2019-03-01 12:19:43', 0, '', 54, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '27.5.58.128'),
(0, '2019-03-01 22:06:54', 0, '', 55, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.204.208.22'),
(0, '2019-03-01 23:07:02', 0, '', 56, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.206.117.186'),
(0, '2019-03-02 00:41:29', 0, '', 57, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.204.208.22'),
(0, '2019-03-02 00:44:32', 0, '', 58, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.204.208.22'),
(0, '2019-03-02 01:21:46', 0, '', 59, 93, 'veerapandi.picco@gmail.com', 'veerapandi', '49.204.208.22'),
(0, '2019-03-02 03:19:38', 0, '', 60, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '49.204.208.22'),
(0, '2019-03-03 22:43:58', 0, '', 61, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.84'),
(0, '2019-03-04 00:50:51', 0, '', 62, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.84'),
(0, '2019-03-04 01:41:54', 0, '', 63, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.84'),
(0, '2019-03-04 03:07:18', 0, '', 64, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '183.82.39.84'),
(0, '2019-03-04 03:10:05', 0, '', 65, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.84'),
(0, '2019-03-04 04:04:33', 0, '', 66, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.84'),
(0, '2019-03-04 05:58:39', 0, '', 67, 97, 'jerald@gmail.com', 'jerald', '157.51.148.109'),
(0, '2019-03-04 06:05:57', 0, '', 68, 97, 'jerald@gmail.com', 'jerald', '157.51.148.109'),
(0, '2019-03-04 06:07:32', 0, '', 69, 97, 'jerald@gmail.com', 'jerald', '157.51.148.109'),
(0, '2019-03-04 06:08:03', 0, '', 70, 97, 'jerald@gmail.com', 'jerald', '157.51.148.109'),
(0, '2019-03-04 06:08:20', 0, '', 71, 97, 'jerald@gmail.com', 'jerald', '157.51.148.109'),
(0, '2019-03-04 06:12:53', 0, '', 72, 97, 'jerald@gmail.com', 'jerald', '157.51.148.109'),
(0, '2019-03-04 06:14:09', 0, '', 73, 97, 'jerald@gmail.com', 'jerald', '157.51.148.109'),
(0, '2019-03-04 06:19:14', 0, '', 74, 97, 'jerald@gmail.com', 'jerald', '157.51.148.109'),
(0, '2019-03-04 07:54:12', 0, '', 75, 97, 'jerald@gmail.com', 'jerald', '49.206.115.135'),
(0, '2019-03-04 11:17:04', 0, '', 76, 85, 'amitpiccosoft@gmail.com', 'amit kumar', '27.5.97.136'),
(0, '2019-03-04 23:44:52', 0, '', 77, 85, 'amitpiccosoft@gmail.com', 'amit', '49.206.116.40'),
(0, '2019-03-05 00:39:28', 0, '', 78, 103, 'jerald1@gmail.com', 'jerald', '49.206.117.223'),
(0, '2019-03-05 01:17:26', 0, '', 79, 93, 'veerapandi.picco@gmail.com', 'veerapandi', '49.206.117.223'),
(0, '2019-03-05 03:00:27', 0, '', 80, 103, 'jerald1@gmail.com', 'jerald', '49.206.117.223'),
(0, '2019-03-05 03:07:35', 0, '', 81, 84, 'hanumanth.piccosoft@gmail.com', 'hanumanth', '49.206.117.223'),
(0, '2019-03-05 03:07:45', 0, '', 82, 103, 'jerald1@gmail.com', 'jerald', '49.206.117.223'),
(0, '2019-03-05 06:49:52', 0, '', 83, 108, 'veer@gmail.com', 'verr', '49.206.117.223'),
(0, '2019-03-05 06:54:47', 0, '', 84, 108, 'veer@gmail.com', 'verr', '49.206.117.223'),
(0, '2019-03-05 11:16:24', 0, '', 85, 85, 'amitpiccosoft@gmail.com', 'amit', '60.243.56.158'),
(0, '2019-03-05 22:48:50', 0, '', 86, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.215'),
(0, '2019-03-05 23:33:46', 0, '', 87, 110, 'hanuamnth12@gmail.com', 'hanumanth12', '49.204.208.215'),
(0, '2019-03-05 23:40:36', 0, '', 88, 109, 'aravind.picco@gmail.com', 'Aravindhan', '49.204.208.215'),
(0, '2019-03-05 23:43:44', 0, '', 89, 110, 'hanuamnth12@gmail.com', 'hanumanth12', '49.204.208.215'),
(0, '2019-03-06 00:20:31', 0, '', 90, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.215'),
(0, '2019-03-06 00:47:36', 0, '', 91, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.215'),
(0, '2019-03-06 00:59:38', 0, '', 92, 85, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.115'),
(0, '2019-03-06 03:58:52', 0, '', 93, 76, 'ganapathy.picco@gmail.com', 'akishas', '49.204.208.215'),
(0, '2019-03-06 03:59:33', 0, '', 94, 76, 'ganapathy.picco@gmail.com', 'akishas', '49.204.208.215'),
(0, '2019-03-06 04:13:04', 0, '', 95, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.215'),
(0, '2019-03-06 05:00:21', 0, '', 96, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.215'),
(0, '2019-03-06 07:45:27', 0, '', 97, 83, 'vijayalakshmi.picco@gmail.com', 'vijayalakshmi', '49.204.208.215'),
(0, '2019-03-06 08:22:03', 0, '', 98, 92, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.215'),
(0, '2019-03-06 23:12:12', 0, '', 99, 76, 'ganapathy.picco@gmail.com', 'akishas', '49.204.211.64'),
(0, '2019-03-07 01:27:17', 0, '', 100, 83, 'vijayalakshmi.picco@gmail.com', 'vijayalakshmi', '49.204.209.92'),
(0, '2019-03-07 01:38:30', 0, '', 101, 124, 'veerapandi.piccosoft@gmail.com', 'hanumanth', '49.204.209.92'),
(0, '2019-03-07 03:11:58', 0, '', 102, 128, 'farman@gmail.com', 'farman', '49.204.209.92'),
(0, '2019-03-07 04:22:14', 0, '', 103, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.191'),
(0, '2019-03-07 04:41:17', 0, '', 104, 143, 'aravind.picco@gmail.com', 'Aravindhan', '49.204.211.64'),
(0, '2019-03-07 04:48:37', 0, '', 105, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.191'),
(0, '2019-03-07 04:54:20', 0, '', 106, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.191'),
(0, '2019-03-07 04:56:20', 0, '', 107, 143, 'aravind.picco@gmail.com', 'Aravindhan', '49.204.211.64'),
(0, '2019-03-07 04:56:21', 0, '', 108, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.209.191'),
(0, '2019-03-07 04:57:45', 0, '', 109, 143, 'aravind.picco@gmail.com', 'Aravindhan', '49.204.211.64'),
(0, '2019-03-07 04:59:00', 0, '', 110, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.191'),
(0, '2019-03-07 05:04:37', 0, '', 111, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.209.191'),
(0, '2019-03-07 05:39:17', 0, '', 112, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.191'),
(0, '2019-03-07 05:40:35', 0, '', 113, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.191'),
(0, '2019-03-07 05:58:55', 0, '', 114, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.191'),
(0, '2019-03-07 06:01:43', 0, '', 115, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.191'),
(0, '2019-03-07 06:11:37', 0, '', 116, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.191'),
(0, '2019-03-07 06:12:20', 0, '', 117, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.191'),
(0, '2019-03-07 06:22:51', 0, '', 118, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.191'),
(0, '2019-03-07 07:08:07', 0, '', 119, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.191'),
(0, '2019-03-07 07:10:03', 0, '', 120, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.191'),
(0, '2019-03-07 07:43:08', 0, '', 121, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.191'),
(0, '2019-03-07 07:43:41', 0, '', 122, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.191'),
(0, '2019-03-08 01:36:18', 0, '', 123, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.195'),
(0, '2019-03-08 01:47:02', 0, '', 124, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.38.195'),
(0, '2019-03-08 02:56:36', 0, '', 125, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.195'),
(0, '2019-03-08 07:53:48', 0, '', 126, 139, 'amitpiccosoft@gmail.com', 'amit', '49.206.114.132'),
(0, '2019-03-11 03:55:47', 0, '', 127, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.39.227'),
(0, '2019-03-11 03:56:39', 0, '', 128, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.39.227'),
(0, '2019-03-11 04:15:51', 0, '', 129, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.39.227'),
(0, '2019-03-11 04:17:48', 0, '', 130, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.39.227'),
(0, '2019-03-11 04:20:26', 0, '', 131, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.39.227'),
(0, '2019-03-11 04:54:24', 0, '', 132, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.210.129'),
(0, '2019-03-11 05:06:35', 0, '', 133, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.210.129'),
(0, '2019-03-11 05:16:36', 0, '', 134, 146, 'ganapathy.piccosoft@gmail.com', 'ShivaGanapathy', '49.204.210.129'),
(0, '2019-03-11 05:16:59', 0, '', 135, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.39.227'),
(0, '2019-03-11 05:20:27', 0, '', 136, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.210.129'),
(0, '2019-03-11 05:22:24', 0, '', 137, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.39.227'),
(0, '2019-03-11 05:47:39', 0, '', 138, 148, 'jai@gmail.com', 'JaiGanesh', '49.204.210.129'),
(0, '2019-03-11 05:51:18', 0, '', 139, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.210.129'),
(0, '2019-03-11 05:55:54', 0, '', 140, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.210.129'),
(0, '2019-03-11 06:23:30', 0, '', 141, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.39.227'),
(0, '2019-03-11 08:40:45', 0, '', 142, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.210.129'),
(0, '2019-03-11 08:45:23', 0, '', 143, 145, 'amit.picco@gmail.com', 'Amit', '49.204.210.129'),
(0, '2019-03-11 09:08:01', 0, '', 144, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.39.227'),
(0, '2019-03-12 00:42:31', 0, '', 145, 149, 'veerapandi.picco@gmail.com', 'veer', '183.82.39.123'),
(0, '2019-03-12 00:47:22', 0, '', 146, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.58'),
(0, '2019-03-12 01:00:39', 0, '', 147, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.58'),
(0, '2019-03-12 01:12:24', 0, '', 148, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.123'),
(0, '2019-03-12 01:40:42', 0, '', 149, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.123'),
(0, '2019-03-12 01:54:31', 0, '', 150, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.123'),
(0, '2019-03-12 07:13:48', 0, '', 151, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.123'),
(0, '2019-03-12 09:04:27', 0, '', 152, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.39.123'),
(0, '2019-03-12 13:41:41', 0, '', 153, 139, 'amitpiccosoft@gmail.com', 'amit', '27.5.56.172'),
(0, '2019-03-12 13:58:38', 0, '', 154, 139, 'amitpiccosoft@gmail.com', 'amit', '27.5.56.172'),
(0, '2019-03-12 14:01:40', 0, '', 155, 139, 'amitpiccosoft@gmail.com', 'amit', '27.5.56.172'),
(0, '2019-03-13 00:02:29', 0, '', 156, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 00:08:35', 0, '', 157, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 00:09:40', 0, '', 158, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 00:11:00', 0, '', 159, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 00:55:53', 0, '', 160, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 01:00:52', 0, '', 161, 149, 'veerapandi.picco@gmail.com', 'veer', '183.82.38.76'),
(0, '2019-03-13 01:23:16', 0, '', 162, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 01:44:25', 0, '', 163, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 02:04:45', 0, '', 164, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 02:07:10', 0, '', 165, 150, 'pavithra.picco@gmail.com', 'Pavithra', '183.82.38.76'),
(0, '2019-03-13 02:27:08', 0, '', 166, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 02:47:00', 0, '', 167, 140, 'admin@piccocart.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 02:50:20', 0, '', 168, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 02:55:22', 0, '', 169, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 03:00:08', 0, '', 170, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 03:53:45', 0, '', 171, 140, 'admin@piccocart.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 03:54:10', 0, '', 172, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 03:55:08', 0, '', 173, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 04:00:44', 0, '', 174, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 04:49:33', 0, '', 175, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 04:52:42', 0, '', 176, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 05:00:21', 0, '', 177, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 05:04:21', 0, '', 178, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 05:08:55', 0, '', 179, 140, 'admin@piccocart.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 05:37:58', 0, '', 180, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 05:43:45', 0, '', 181, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 05:44:38', 0, '', 182, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 05:46:05', 0, '', 183, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 05:46:43', 0, '', 184, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 05:54:26', 0, '', 185, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 05:59:07', 0, '', 186, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 06:06:15', 0, '', 187, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 06:18:17', 0, '', 188, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 06:21:06', 0, '', 189, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 06:32:20', 0, '', 190, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 06:36:40', 0, '', 191, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 06:38:35', 0, '', 192, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 06:39:01', 0, '', 193, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 06:39:35', 0, '', 194, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 06:41:10', 0, '', 195, 150, 'pavithra.picco@gmail.com', 'Pavithra', '183.82.38.76'),
(0, '2019-03-13 06:51:55', 0, '', 196, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 06:54:10', 0, '', 197, 140, 'admin@piccocart.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 07:06:28', 0, '', 198, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 07:13:29', 0, '', 199, 140, 'admin@piccocart.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 07:37:52', 0, '', 200, 140, 'admin@piccocart.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 07:57:42', 0, '', 201, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 08:31:44', 0, '', 202, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 08:32:50', 0, '', 203, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 08:34:44', 0, '', 204, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 08:38:28', 0, '', 205, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 08:41:43', 0, '', 206, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 08:47:17', 0, '', 207, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.69'),
(0, '2019-03-13 09:04:49', 0, '', 208, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 09:06:27', 0, '', 209, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.76'),
(0, '2019-03-13 12:58:45', 0, '', 210, 139, 'amitpiccosoft@gmail.com', 'amit', '27.5.87.178'),
(0, '2019-03-13 12:59:37', 0, '', 211, 139, 'amitpiccosoft@gmail.com', 'amit', '27.5.87.178'),
(0, '2019-03-13 13:00:51', 0, '', 212, 139, 'amitpiccosoft@gmail.com', 'amit', '27.5.87.178'),
(0, '2019-03-13 23:54:13', 0, '', 213, 140, 'admin@piccocart.com', 'amit', '49.204.209.71'),
(0, '2019-03-13 23:54:44', 0, '', 214, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.71'),
(0, '2019-03-14 00:30:24', 0, '', 215, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.71'),
(0, '2019-03-14 01:34:09', 0, '', 216, 145, 'amit.picco@gmail.com', 'Amit', '49.204.211.59'),
(0, '2019-03-14 04:41:50', 0, '', 217, 145, 'amit.picco@gmail.com', 'Amit', '49.204.211.59'),
(0, '2019-03-14 04:42:56', 0, '', 218, 140, 'admin@piccocart.com', 'amit', '49.204.209.71'),
(0, '2019-03-14 05:25:31', 0, '', 219, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.211.59'),
(0, '2019-03-14 06:31:51', 0, '', 220, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.211.59'),
(0, '2019-03-14 06:39:34', 0, '', 221, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.211.59'),
(0, '2019-03-14 07:06:55', 0, '', 222, 153, 'test.picco@gmail.com', 'veerapandi', '49.204.211.59'),
(0, '2019-03-14 07:07:50', 0, '', 223, 140, 'admin@piccocart.com', 'amit', '49.204.211.59'),
(0, '2019-03-14 07:29:08', 0, '', 224, 145, 'amit.picco@gmail.com', 'Amit', '49.204.211.59'),
(0, '2019-03-15 00:06:13', 0, '', 225, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.208.5'),
(0, '2019-03-15 00:38:17', 0, '', 226, 145, 'amit.picco@gmail.com', 'Amit', '49.204.208.98'),
(0, '2019-03-15 02:02:26', 0, '', 227, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.208.5'),
(0, '2019-03-15 02:03:10', 0, '', 228, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.208.5'),
(0, '2019-03-15 02:49:47', 0, '', 229, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.208.98'),
(0, '2019-03-15 05:23:56', 0, '', 230, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.98'),
(0, '2019-03-15 08:11:16', 0, '', 231, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.98'),
(0, '2019-03-15 08:44:21', 0, '', 232, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.98'),
(0, '2019-03-15 23:03:05', 0, '', 233, 140, 'admin@piccocart.com', 'amit', '49.204.211.216'),
(0, '2019-03-16 00:05:15', 0, '', 234, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.210.3'),
(0, '2019-03-16 04:36:37', 0, '', 235, 140, 'admin@piccocart.com', 'amit', '49.204.211.216'),
(0, '2019-03-18 00:08:54', 0, '', 236, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.206.116.227'),
(0, '2019-03-18 04:58:27', 0, '', 237, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.228'),
(0, '2019-03-18 06:59:55', 0, '', 238, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.211.228'),
(0, '2019-03-19 00:52:22', 0, '', 239, 161, 'test.picco@gmail.com', 'demo', '49.204.210.123'),
(0, '2019-03-19 03:46:45', 0, '', 240, 145, 'amit.picco@gmail.com', 'Amit', '49.204.211.50'),
(0, '2019-03-19 05:20:16', 0, '', 241, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.211.50'),
(0, '2019-03-19 08:17:58', 0, '', 242, 145, 'amit.picco@gmail.com', 'Amit', '157.51.246.2'),
(0, '2019-03-19 08:56:29', 0, '', 243, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.211.41'),
(0, '2019-03-19 09:57:24', 0, '', 244, 166, 'test@gmail.com', 'test', '49.204.211.41'),
(0, '2019-03-19 10:05:41', 0, '', 245, 169, 'testdemo@gmail.com', 'test', '49.204.211.41'),
(0, '2019-03-19 10:08:04', 0, '', 246, 169, 'testdemo@gmail.com', 'test', '49.204.211.41'),
(0, '2019-03-19 10:13:13', 0, '', 247, 171, 'testdemoo@gmail.com', 'test', '49.204.211.41'),
(0, '2019-03-19 23:51:37', 0, '', 248, 166, 'test@gmail.com', 'test', '49.206.114.158'),
(0, '2019-03-20 00:17:42', 0, '', 249, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.147'),
(0, '2019-03-20 00:21:27', 0, '', 250, 149, 'veerapandi.picco@gmail.com', 'veer', '49.206.114.158'),
(0, '2019-03-20 00:23:42', 0, '', 251, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.206.114.158'),
(0, '2019-03-20 04:59:06', 0, '', 252, 166, 'test@gmail.com', 'test', '49.206.114.158'),
(0, '2019-03-20 05:10:52', 0, '', 253, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.147'),
(0, '2019-03-20 05:16:23', 0, '', 254, 166, 'test@gmail.com', 'test', '49.206.114.158'),
(0, '2019-03-20 06:21:37', 0, '', 255, 166, 'test@gmail.com', 'test', '49.206.114.158'),
(0, '2019-03-20 07:22:46', 0, '', 256, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.206.114.158'),
(0, '2019-03-20 07:47:16', 0, '', 257, 139, 'amitpiccosoft@gmail.com', 'amit', '49.206.114.158'),
(0, '2019-03-20 09:18:25', 0, '', 258, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.206.114.158'),
(0, '2019-03-20 12:49:52', 0, '', 259, 139, 'amitpiccosoft@gmail.com', 'amit', '60.243.55.27'),
(0, '2019-03-20 23:45:07', 0, '', 260, 173, 'srilekha@novamed.com', 'Srilekha', '49.206.114.188'),
(0, '2019-03-20 23:49:24', 0, '', 261, 173, 'srilekha@novamed.com', 'srilekha', '49.206.114.188'),
(0, '2019-03-20 23:55:48', 0, '', 262, 173, 'srilekha@novamed.com', 'srilekha', '49.206.114.188'),
(0, '2019-03-21 00:29:42', 0, '', 263, 166, 'test@gmail.com', 'test', '183.82.39.153'),
(0, '2019-03-21 00:49:20', 0, '', 264, 139, 'amitpiccosoft@gmail.com', 'amit', '49.206.114.188'),
(0, '2019-03-21 00:57:48', 0, '', 265, 139, 'amitpiccosoft@gmail.com', 'amit', '49.206.114.188'),
(0, '2019-03-21 01:00:35', 0, '', 266, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.206.114.188'),
(0, '2019-03-21 01:11:04', 0, '', 267, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.206.114.188'),
(0, '2019-03-21 02:18:43', 0, '', 268, 149, 'veerapandi.picco@gmail.com', 'veer', '183.82.39.153'),
(0, '2019-03-21 02:30:57', 0, '', 269, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.206.114.188'),
(0, '2019-03-21 02:31:24', 0, '', 270, 139, 'amitpiccosoft@gmail.com', 'amit', '49.206.114.188'),
(0, '2019-03-21 05:58:08', 0, '', 271, 166, 'test@gmail.com', 'test', '49.204.208.7'),
(0, '2019-03-23 00:12:33', 0, '', 272, 166, 'test@gmail.com', 'test', '49.204.209.84'),
(0, '2019-03-23 00:44:46', 0, '', 273, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.84'),
(0, '2019-03-23 00:52:35', 0, '', 274, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.84'),
(0, '2019-03-23 00:53:50', 0, '', 275, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.84'),
(0, '2019-03-23 02:30:45', 0, '', 276, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.220'),
(0, '2019-03-23 04:29:02', 0, '', 277, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.220'),
(0, '2019-03-25 08:59:42', 0, '', 278, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.206.114.54'),
(0, '2019-03-25 23:55:46', 0, '', 279, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.217.15'),
(0, '2019-03-26 03:49:42', 0, '', 280, 183, 'prabhusivansit@gmail.com', 'prabhu', '116.72.231.15'),
(0, '2019-03-26 08:06:04', 0, '', 281, 145, 'amit.picco@gmail.com', 'Amit', '49.204.216.216'),
(0, '2019-03-26 08:38:36', 0, '', 282, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.218.97'),
(0, '2019-03-27 02:43:45', 0, '', 283, 184, 'keyur@gmail.com', 'keyur', '123.201.226.105'),
(0, '2019-03-29 08:03:33', 0, '', 284, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.208.33'),
(0, '2019-04-01 05:54:41', 0, '', 285, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.208.94'),
(0, '2019-04-01 06:55:56', 0, '', 286, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.208.94'),
(0, '2019-04-02 00:31:18', 0, '', 287, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.142'),
(0, '2019-04-02 01:27:42', 0, '', 288, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.142'),
(0, '2019-04-02 07:24:37', 0, '', 289, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '183.82.246.67'),
(0, '2019-04-02 07:34:20', 0, '', 290, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 07:35:59', 0, '', 291, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '183.82.246.67'),
(0, '2019-04-02 07:44:49', 0, '', 292, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 07:44:57', 0, '', 293, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 07:46:09', 0, '', 294, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 07:47:24', 0, '', 295, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 07:48:18', 0, '', 296, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 07:49:37', 0, '', 297, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 07:50:42', 0, '', 298, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 07:51:57', 0, '', 299, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 07:52:49', 0, '', 300, 133, 'ganapathy.picco@gmail.com', 'GanapathyRam', '49.204.209.223'),
(0, '2019-04-02 08:49:19', 0, '', 301, 185, 'hari@gmail.com', 'Hari', '49.204.209.223'),
(0, '2019-04-04 04:12:29', 0, '', 302, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.209.187'),
(0, '2019-04-05 00:52:13', 0, '', 303, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.204.209.67'),
(0, '2019-04-05 01:13:33', 0, '', 304, 192, 'vallarasan.piccosoft@gmail.com', 'Vallarasan T', '49.204.209.67'),
(0, '2019-04-05 01:17:01', 0, '', 305, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.209.67'),
(0, '2019-04-05 05:33:20', 0, '', 306, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.204.208.240'),
(0, '2019-04-05 05:34:54', 0, '', 307, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.204.208.240'),
(0, '2019-04-06 00:55:15', 0, '', 308, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.210.227'),
(0, '2019-04-06 01:50:40', 0, '', 309, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '183.82.38.84'),
(0, '2019-04-06 04:44:29', 0, '', 310, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '183.82.38.84'),
(0, '2019-04-06 05:05:50', 0, '', 311, 196, 'testing@gmail.com', 'veerapandi', '49.204.210.227'),
(0, '2019-04-08 00:24:19', 0, '', 312, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.204.209.50'),
(0, '2019-04-08 06:16:51', 0, '', 313, 139, 'amitpiccosoft@gmail.com', 'amit', '183.82.247.250'),
(0, '2019-04-09 00:36:29', 0, '', 314, 139, 'amitpiccosoft@gmail.com', 'amit', '49.206.114.79'),
(0, '2019-04-09 02:03:08', 0, '', 315, 139, 'amitpiccosoft@gmail.com', 'amit', '49.206.114.79'),
(0, '2019-04-09 02:38:24', 0, '', 316, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.114.79'),
(0, '2019-04-09 05:02:31', 0, '', 317, 145, 'amit.picco@gmail.com', 'Amit', '183.82.247.251'),
(0, '2019-04-09 05:28:28', 0, '', 318, 145, 'amit.picco@gmail.com', 'Amit', '183.82.247.251'),
(0, '2019-04-10 04:59:59', 0, '', 319, 145, 'amit.picco@gmail.com', 'Amit', '49.206.114.2'),
(0, '2019-04-10 06:50:56', 0, '', 320, 196, 'testing@gmail.com', 'veerapandi', '49.206.114.2'),
(0, '2019-04-11 00:19:31', 0, '', 321, 185, 'hari@gmail.com', 'Hari', '49.204.218.112'),
(0, '2019-04-11 04:07:18', 0, '', 322, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.210.117'),
(0, '2019-04-11 04:23:55', 0, '', 323, 185, 'hari@gmail.com', 'Hari', '49.204.218.112'),
(0, '2019-04-12 06:43:59', 0, '', 324, 185, 'hari@gmail.com', 'Hari', '49.204.210.203'),
(0, '2019-04-12 06:48:10', 0, '', 325, 185, 'hari@gmail.com', 'Hari', '49.204.210.203'),
(0, '2019-04-12 06:55:44', 0, '', 326, 185, 'hari@gmail.com', 'Hari', '49.204.210.203'),
(0, '2019-04-12 07:25:17', 0, '', 327, 185, 'hari@gmail.com', 'Hari', '49.204.210.203'),
(0, '2019-04-13 00:02:53', 0, '', 328, 185, 'hari@gmail.com', 'Hari', '49.204.210.141'),
(0, '2019-04-13 01:28:27', 0, '', 329, 185, 'hari@gmail.com', 'Hari', '49.204.210.141'),
(0, '2019-04-14 01:34:11', 0, '', 330, 185, 'hari@gmail.com', 'Hari', '49.204.210.125'),
(0, '2019-04-14 02:08:35', 0, '', 331, 185, 'hari@gmail.com', 'Hari', '49.204.210.125'),
(0, '2019-04-14 02:54:05', 0, '', 332, 185, 'hari@gmail.com', 'Hari', '49.204.210.125'),
(0, '2019-04-14 05:14:09', 0, '', 333, 185, 'hari@gmail.com', 'Hari', '49.204.210.125'),
(0, '2019-04-15 04:10:08', 0, '', 334, 185, 'hari@gmail.com', 'Hari', '183.82.247.249'),
(0, '2019-04-15 05:07:33', 0, '', 335, 185, 'hari@gmail.com', 'Hari', '49.204.214.24'),
(0, '2019-04-16 02:40:53', 0, '', 336, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.114.181'),
(0, '2019-04-16 02:52:42', 0, '', 337, 145, 'amit.picco@gmail.com', 'Amit', '49.206.114.181'),
(0, '2019-04-16 04:16:10', 0, '', 338, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.114.181'),
(0, '2019-04-16 05:13:19', 0, '', 339, 192, 'vallarasan.piccosoft@gmail.com', 'Vallarasan T', '49.206.114.181'),
(0, '2019-04-16 05:24:43', 0, '', 340, 145, 'amit.picco@gmail.com', 'Amit', '49.206.114.181'),
(0, '2019-04-16 05:42:39', 0, '', 341, 185, 'hari@gmail.com', 'Hari', '49.204.209.70'),
(0, '2019-04-16 06:29:18', 0, '', 342, 145, 'amit.picco@gmail.com', 'Amit', '49.206.114.181'),
(0, '2019-04-16 23:51:02', 0, '', 343, 185, 'hari@gmail.com', 'Hari', '157.50.75.151'),
(0, '2019-04-17 01:10:46', 0, '', 344, 185, 'hari@gmail.com', 'Hari', '49.206.117.61'),
(0, '2019-04-17 01:12:50', 0, '', 345, 138, 'jayaprakash.picco@gmail.com', 'jayaprakash', '49.206.116.107'),
(0, '2019-04-19 01:57:13', 0, '', 346, 145, 'amit.picco@gmail.com', 'Amit', '49.204.208.91'),
(0, '2019-04-21 23:46:17', 0, '', 347, 185, 'hari@gmail.com', 'Hari', '157.46.13.174'),
(0, '2019-04-22 00:27:33', 0, '', 348, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.218.9'),
(0, '2019-04-22 00:27:34', 0, '', 349, 145, 'amit.picco@gmail.com', 'Amit', '49.204.218.9'),
(0, '2019-04-22 00:28:37', 0, '', 350, 145, 'amit.picco@gmail.com', 'Amit', '49.204.218.9'),
(0, '2019-04-22 02:12:17', 0, '', 351, 145, 'amit.picco@gmail.com', 'Amit', '49.204.218.9'),
(0, '2019-04-22 04:25:24', 0, '', 352, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.218.135'),
(0, '2019-04-22 05:29:07', 0, '', 353, 145, 'amit.picco@gmail.com', 'Amit', '49.204.218.135'),
(0, '2019-04-23 00:07:25', 0, '', 354, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '183.82.38.180'),
(0, '2019-04-23 00:23:17', 0, '', 355, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.210.60'),
(0, '2019-04-23 00:24:14', 0, '', 356, 145, 'amit.picco@gmail.com', 'Amit', '49.204.210.60'),
(0, '2019-04-23 01:25:23', 0, '', 357, 143, 'aravind.picco@gmail.com', 'Aravindhan', '49.204.209.6'),
(0, '2019-04-23 08:45:57', 0, '', 358, 145, 'amit.picco@gmail.com', 'Amit', '183.82.38.180'),
(0, '2019-04-23 23:49:02', 0, '', 359, 185, 'hari@gmail.com', 'Hari', '49.204.208.185'),
(0, '2019-04-24 00:23:28', 0, '', 360, 185, 'hari@gmail.com', 'Hari', '49.204.208.185'),
(0, '2019-04-24 00:23:58', 0, '', 361, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.17'),
(0, '2019-04-24 00:30:56', 0, '', 362, 185, 'hari@gmail.com', 'Hari', '49.204.208.185'),
(0, '2019-04-24 00:44:11', 0, '', 363, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.17'),
(0, '2019-04-24 01:06:03', 0, '', 364, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.17'),
(0, '2019-04-24 01:09:13', 0, '', 365, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.17'),
(0, '2019-04-24 01:23:02', 0, '', 366, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.17'),
(0, '2019-04-24 02:30:14', 0, '', 367, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.17'),
(0, '2019-04-24 04:04:27', 0, '', 368, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.17'),
(0, '2019-04-24 05:11:29', 0, '', 369, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.17'),
(0, '2019-04-24 05:25:51', 0, '', 370, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.17'),
(0, '2019-04-24 08:48:13', 0, '', 371, 185, 'hari@gmail.com', 'Hari', '49.204.208.185'),
(0, '2019-04-24 23:58:32', 0, '', 372, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.210.109'),
(0, '2019-04-24 23:59:23', 0, '', 373, 145, 'amit.picco@gmail.com', 'Amit', '49.204.210.109'),
(0, '2019-04-25 00:57:34', 0, '', 374, 143, 'aravind.picco@gmail.com', 'Aravindhan', '49.204.217.200'),
(0, '2019-04-25 01:18:26', 0, '', 375, 185, 'hari@gmail.com', 'Hari', '49.204.217.200'),
(0, '2019-04-25 04:11:17', 0, '', 376, 145, 'amit.picco@gmail.com', 'Amit', '49.204.210.109'),
(0, '2019-04-25 07:03:01', 0, '', 377, 185, 'hari@gmail.com', 'Hari', '157.50.123.86'),
(0, '2019-04-26 00:05:03', 0, '', 378, 145, 'amit.picco@gmail.com', 'Amit', '49.206.117.86'),
(0, '2019-04-26 00:10:22', 0, '', 379, 145, 'amit.picco@gmail.com', 'Amit', '49.206.117.86'),
(0, '2019-04-26 00:18:20', 0, '', 380, 185, 'hari@gmail.com', 'Hari', '49.206.115.134'),
(0, '2019-04-26 00:30:03', 0, '', 381, 145, 'amit.picco@gmail.com', 'Amit', '49.206.117.86'),
(0, '2019-04-26 01:52:46', 0, '', 382, 145, 'amit.picco@gmail.com', 'Amit', '49.206.117.86'),
(0, '2019-04-26 01:57:43', 0, '', 383, 145, 'amit.picco@gmail.com', 'Amit', '49.206.117.86'),
(0, '2019-04-26 02:04:36', 0, '', 384, 145, 'amit.picco@gmail.com', 'Amit', '49.206.117.86'),
(0, '2019-04-26 02:31:43', 0, '', 385, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.115.134'),
(0, '2019-04-26 04:09:02', 0, '', 386, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.117.86'),
(0, '2019-04-26 07:43:06', 0, '', 387, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.117.86'),
(0, '2019-04-26 09:00:22', 0, '', 388, 145, 'amit.picco@gmail.com', 'Amit', '49.206.115.134'),
(0, '2019-04-27 00:19:58', 0, '', 389, 185, 'hari@gmail.com', 'Hari', '49.204.208.141'),
(0, '2019-04-27 00:34:42', 0, '', 390, 145, 'amit.picco@gmail.com', 'Amit', '183.82.246.123'),
(0, '2019-04-27 00:53:08', 0, '', 391, 145, 'amit.picco@gmail.com', 'Amit', '183.82.246.123'),
(0, '2019-04-27 05:31:25', 0, '', 392, 185, 'hari@gmail.com', 'Hari', '157.50.95.246'),
(0, '2019-04-28 08:55:58', 0, '', 393, 185, 'hari@gmail.com', 'Hari', '157.50.72.64'),
(0, '2019-04-28 23:52:21', 0, '', 394, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.204.208.16'),
(0, '2019-04-28 23:59:01', 0, '', 395, 185, 'hari@gmail.com', 'Hari', '49.204.208.16'),
(0, '2019-04-29 04:35:00', 0, '', 396, 145, 'amit.picco@gmail.com', 'Amit', '49.204.208.203'),
(0, '2019-04-29 05:44:23', 0, '', 397, 211, 'demodemo@email.com', 'demodemo', '182.52.217.160'),
(0, '2019-04-29 07:10:56', 0, '', 398, 212, 'gurneetgurneet10@gmail.com', 'kabir', '171.48.116.53'),
(0, '2019-04-30 00:11:05', 0, '', 399, 185, 'hari@gmail.com', 'Hari', '49.204.217.173'),
(0, '2019-04-30 04:01:50', 0, '', 400, 213, 'singamuthu@gmail.com', 'Singamuthu', '27.62.38.117'),
(0, '2019-04-30 04:11:12', 0, '', 401, 213, 'shine@gmail.com', 'shine', '49.204.217.173'),
(0, '2019-04-30 04:31:01', 0, '', 402, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.173'),
(0, '2019-04-30 04:35:19', 0, '', 403, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.173'),
(0, '2019-04-30 04:41:16', 0, '', 404, 145, 'amit.picco@gmail.com', 'Amit', '183.82.246.141'),
(0, '2019-04-30 04:44:20', 0, '', 405, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.173'),
(0, '2019-04-30 04:48:31', 0, '', 406, 192, 'vallarasan.piccosoft@gmail.com', 'Vallarasan T', '49.204.217.173'),
(0, '2019-04-30 05:47:51', 0, '', 407, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.173'),
(0, '2019-04-30 06:43:54', 0, '', 408, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.173'),
(0, '2019-04-30 07:36:18', 0, '', 409, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.173'),
(0, '2019-04-30 08:08:36', 0, '', 410, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.173'),
(0, '2019-04-30 09:02:07', 0, '', 411, 185, 'hari@gmail.com', 'Hari', '49.204.217.173'),
(0, '2019-05-01 23:54:40', 0, '', 412, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.211.245'),
(0, '2019-05-01 23:56:48', 0, '', 413, 145, 'amit.picco@gmail.com', 'Amit', '49.206.114.83'),
(0, '2019-05-02 00:44:44', 0, '', 414, 145, 'amit.picco@gmail.com', 'Amit', '49.204.211.245'),
(0, '2019-05-02 01:06:55', 0, '', 415, 145, 'amit.picco@gmail.com', 'Amit', '49.204.211.245'),
(0, '2019-05-02 01:10:29', 0, '', 416, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.211.245'),
(0, '2019-05-02 01:45:45', 0, '', 417, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.114.83'),
(0, '2019-05-02 02:01:44', 0, '', 418, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.206.114.83'),
(0, '2019-05-02 03:54:30', 0, '', 419, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.211.245'),
(0, '2019-05-02 04:53:01', 0, '', 420, 145, 'amit.picco@gmail.com', 'Amit', '49.204.211.245'),
(0, '2019-05-02 05:08:06', 0, '', 421, 145, 'amit.picco@gmail.com', 'Amit', '49.204.211.245'),
(0, '2019-05-02 07:27:23', 0, '', 422, 185, 'hari@gmail.com', 'Hari', '49.206.114.83'),
(0, '2019-05-02 07:41:18', 0, '', 423, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.114.83'),
(0, '2019-05-02 07:43:32', 0, '', 424, 185, 'hari@gmail.com', 'Hari', '27.62.32.117'),
(0, '2019-05-02 07:46:11', 0, '', 425, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.114.83'),
(0, '2019-05-02 08:18:19', 0, '', 426, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.211.245'),
(0, '2019-05-02 08:59:13', 0, '', 427, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.226'),
(0, '2019-05-02 09:01:30', 0, '', 428, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.226'),
(0, '2019-05-02 09:12:48', 0, '', 429, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.226'),
(0, '2019-05-02 09:17:42', 0, '', 430, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.226'),
(0, '2019-05-02 09:23:04', 0, '', 431, 145, 'amit.picco@gmail.com', 'Amit', '49.204.217.226'),
(0, '2019-05-02 09:45:13', 0, '', 432, 185, 'hari@gmail.com', 'Hari', '49.206.114.83'),
(0, '2019-05-03 00:08:40', 0, '', 433, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.208.185'),
(0, '2019-05-03 00:24:21', 0, '', 434, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.208.185'),
(0, '2019-05-03 00:35:47', 0, '', 435, 217, 'vallarasan@gmail.com', 'vallarasan', '49.204.208.185'),
(0, '2019-05-03 00:36:43', 0, '', 436, 218, 'vallarasan@spurt.com', 'vallarasan', '49.204.208.185'),
(0, '2019-05-03 00:43:44', 0, '', 437, 145, 'amit.picco@gmail.com', 'Amit', '49.204.208.185'),
(0, '2019-05-03 01:04:19', 0, '', 438, 185, 'hari@gmail.com', 'Hari', '49.206.116.70'),
(0, '2019-05-03 01:58:51', 0, '', 439, 145, 'amit.picco@gmail.com', 'Amit', '49.204.208.185'),
(0, '2019-05-03 02:03:37', 0, '', 440, 221, 'karthi@gmail.com', 'Karthi K', '49.204.208.185'),
(0, '2019-05-03 02:06:07', 0, '', 441, 221, 'karthi@gmail.com', 'Karthi K', '49.204.208.185'),
(0, '2019-05-03 04:03:12', 0, '', 442, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.208.185'),
(0, '2019-05-03 05:16:30', 0, '', 443, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.116.70'),
(0, '2019-05-03 06:08:58', 0, '', 444, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.208.185'),
(0, '2019-05-03 07:19:25', 0, '', 445, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.208.185'),
(0, '2019-05-03 23:09:58', 0, '', 446, 185, 'hari@gmail.com', 'Hari', '183.82.247.94'),
(0, '2019-05-04 00:25:59', 0, '', 447, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.209.24'),
(0, '2019-05-04 00:39:53', 0, '', 448, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.24'),
(0, '2019-05-04 04:12:00', 0, '', 449, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '183.82.246.77'),
(0, '2019-05-04 04:16:26', 0, '', 450, 145, 'amit.picco@gmail.com', 'Amit', '183.82.39.126'),
(0, '2019-05-04 04:43:23', 0, '', 451, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '183.82.246.77'),
(0, '2019-05-04 05:14:26', 0, '', 452, 145, 'amit.picco@gmail.com', 'Amit', '183.82.39.126'),
(0, '2019-05-04 06:29:41', 0, '', 453, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '183.82.39.126'),
(0, '2019-05-06 00:03:57', 0, '', 454, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '183.82.39.126'),
(0, '2019-05-06 00:14:52', 0, '', 455, 145, 'amit.picco@gmail.com', 'Amit', '183.82.39.126'),
(0, '2019-05-06 00:48:01', 0, '', 456, 145, 'amit.picco@gmail.com', 'Amit', '183.82.39.126'),
(0, '2019-05-06 01:08:20', 0, '', 457, 145, 'amit.picco@gmail.com', 'Amit', '183.82.39.126'),
(0, '2019-05-06 02:55:04', 0, '', 458, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '183.82.39.126'),
(0, '2019-05-06 05:30:29', 0, '', 459, 145, 'amit.picco@gmail.com', 'Amit', '183.82.39.126'),
(0, '2019-05-06 05:36:48', 0, '', 460, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '183.82.39.126'),
(0, '2019-05-06 05:38:59', 0, '', 461, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '183.82.39.126'),
(0, '2019-05-06 07:24:56', 0, '', 462, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '183.82.39.126'),
(0, '2019-05-06 07:25:56', 0, '', 463, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '183.82.39.126'),
(0, '2019-05-06 07:45:25', 0, '', 464, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.204.218.56'),
(0, '2019-05-06 08:06:24', 0, '', 465, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.204.218.56'),
(0, '2019-05-06 09:54:30', 0, '', 466, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.218.56'),
(0, '2019-05-06 23:37:30', 0, '', 467, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.117.137'),
(0, '2019-05-06 23:51:07', 0, '', 468, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.117.137'),
(0, '2019-05-07 00:50:12', 0, '', 469, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.209.101'),
(0, '2019-05-07 00:57:25', 0, '', 470, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.209.101'),
(0, '2019-05-07 01:07:05', 0, '', 471, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.101'),
(0, '2019-05-07 01:08:36', 0, '', 472, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.101'),
(0, '2019-05-07 01:09:02', 0, '', 473, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.209.101'),
(0, '2019-05-07 03:00:31', 0, '', 474, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.101'),
(0, '2019-05-07 04:03:03', 0, '', 475, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.101'),
(0, '2019-05-07 04:15:34', 0, '', 476, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.101'),
(0, '2019-05-07 04:25:14', 0, '', 477, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.209.101'),
(0, '2019-05-07 04:45:29', 0, '', 478, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.209.101'),
(0, '2019-05-07 05:01:51', 0, '', 479, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.209.101'),
(0, '2019-05-07 08:08:00', 0, '', 480, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.117.137'),
(0, '2019-05-07 23:38:01', 0, '', 481, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '183.82.247.116'),
(0, '2019-05-08 00:28:12', 0, '', 482, 145, 'amit.picco@gmail.com', 'Amit', '183.82.247.55'),
(0, '2019-05-08 00:46:58', 0, '', 483, 145, 'amit.picco@gmail.com', 'Amit', '183.82.247.55'),
(0, '2019-05-08 01:34:35', 0, '', 484, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '183.82.247.116'),
(0, '2019-05-08 01:40:14', 0, '', 485, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '183.82.247.55'),
(0, '2019-05-08 03:57:05', 0, '', 486, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '183.82.247.116'),
(0, '2019-05-08 04:11:50', 0, '', 487, 145, 'amit.picco@gmail.com', 'Amit', '183.82.247.55'),
(0, '2019-05-08 04:46:38', 0, '', 488, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '183.82.247.116'),
(0, '2019-05-08 05:17:00', 0, '', 489, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '183.82.247.55'),
(0, '2019-05-08 07:15:31', 0, '', 490, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '183.82.247.116'),
(0, '2019-05-08 08:54:37', 0, '', 491, 145, 'amit.picco@gmail.com', 'Amit', '183.82.247.116'),
(0, '2019-05-08 09:14:43', 0, '', 492, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '183.82.247.116'),
(0, '2019-05-08 09:15:13', 0, '', 493, 145, 'amit.picco@gmail.com', 'Amit', '183.82.247.116'),
(0, '2019-05-08 23:45:44', 0, '', 494, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.211.251'),
(0, '2019-05-08 23:46:18', 0, '', 495, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '183.82.246.9'),
(0, '2019-05-09 00:27:34', 0, '', 496, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.211.251'),
(0, '2019-05-09 00:32:47', 0, '', 497, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.211.251'),
(0, '2019-05-09 00:34:01', 0, '', 498, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.211.251'),
(0, '2019-05-09 00:34:49', 0, '', 499, 214, 'ganapathyd.picco@gmail.com', 'sivaGanapathy', '49.204.211.251'),
(0, '2019-05-09 00:54:46', 0, '', 500, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.211.251'),
(0, '2019-05-09 00:59:06', 0, '', 501, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.204.218.32'),
(0, '2019-05-09 01:38:32', 0, '', 502, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.211.251'),
(0, '2019-05-09 01:39:40', 0, '', 503, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.211.251'),
(0, '2019-05-09 02:06:57', 0, '', 504, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.211.251'),
(0, '2019-05-09 02:23:44', 0, '', 505, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.211.251'),
(0, '2019-05-09 03:32:02', 0, '', 506, 145, 'amit.picco@gmail.com', 'Amit', '49.204.211.251'),
(0, '2019-05-09 07:08:19', 0, '', 507, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.211.251'),
(0, '2019-05-09 07:11:51', 0, '', 508, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.211.251'),
(0, '2019-05-09 07:59:25', 0, '', 509, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.204.209.204'),
(0, '2019-05-09 08:24:10', 0, '', 510, 139, 'amitpiccosoft@gmail.com', 'amit', '49.204.218.32'),
(0, '2019-05-10 01:38:03', 0, '', 511, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.116.175'),
(0, '2019-05-10 02:00:52', 0, '', 512, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.116.175'),
(0, '2019-05-10 02:02:34', 0, '', 513, 145, 'amit.picco@gmail.com', 'Amit', '49.206.117.60'),
(0, '2019-05-10 03:55:24', 0, '', 514, 194, 'sou.piccosoft@gmail.com', 'soundariyaa', '49.206.116.175'),
(0, '2019-05-10 04:14:02', 0, '', 515, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.117.60'),
(0, '2019-05-10 04:29:19', 0, '', 516, 145, 'amit.picco@gmail.com', 'Amit', '49.206.117.60'),
(0, '2019-05-10 04:46:21', 0, '', 517, 145, 'amit.picco@gmail.com', 'Amit', '49.206.117.60'),
(0, '2019-05-10 06:49:49', 0, '', 518, 185, 'hari@gmail.com', 'Hari', '49.206.116.175'),
(0, '2019-05-10 08:52:08', 0, '', 519, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.117.60'),
(0, '2019-05-10 08:53:39', 0, '', 520, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.117.60'),
(0, '2019-05-10 09:32:30', 0, '', 521, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.206.116.175'),
(0, '2019-05-10 23:48:22', 0, '', 522, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.208.60'),
(0, '2019-05-11 00:07:33', 0, '', 523, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.208.60'),
(0, '2019-05-11 02:44:41', 0, '', 524, 145, 'amit.picco@gmail.com', 'Amit', '49.204.208.60'),
(0, '2019-05-11 03:52:27', 0, '', 525, 145, 'amit.picco@gmail.com', 'Amit', '49.204.209.204'),
(0, '2019-05-11 06:42:31', 0, '', 526, 145, 'amit.picco@gmail.com', 'Amit', '49.204.208.179'),
(0, '2019-05-11 07:07:09', 0, '', 527, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '183.82.38.79'),
(0, '2019-05-11 07:38:08', 0, '', 528, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '27.62.41.33'),
(0, '2019-05-12 01:09:01', 0, '', 529, 223, 'developer.suresh@gmail.com', 'suresh s', '49.204.210.70'),
(0, '2019-05-12 18:31:55', 0, '', 530, 224, 'hard@hotmail.com', 'Tiago', '187.39.86.27'),
(0, '2019-05-12 23:43:12', 0, '', 531, 142, 'vijayalakshmi.picco@gmail.com', 'viji', '49.204.210.37'),
(0, '2019-05-12 23:59:39', 0, '', 532, 227, 'veerapandi.picco@gmail.com', 'veerapandi', '49.204.210.37'),
(0, '2019-05-13 01:10:02', 0, '', 533, 228, 'aravind.picco@gmail.com', 'Aravindhan', '49.204.210.37'),
(0, '2019-05-13 01:10:30', 0, '', 534, 228, 'aravind.picco@gmail.com', 'Aravindhan', '49.204.210.37'),
(0, '2019-05-13 01:17:50', 0, '', 535, 229, 'ganesh.picco@gmail.com', 'ganesh', '49.204.210.37'),
(0, '2019-05-13 02:40:19', 0, '', 536, 142, 'vijayalakshmi.picco@gmail.com', 'vijayalakshmi', '49.204.210.37'),
(0, '2019-05-13 02:51:11', 0, '', 537, 230, 'ganesh@gmail.com', 'ganesh v', '49.204.210.37'),
(0, '2019-05-13 03:01:20', 0, '', 538, 230, 'ganesh@gmail.com', 'ganesh v', '49.204.210.37'),
(0, '2019-05-13 03:04:20', 0, '', 539, 230, 'ganesh@gmail.com', 'ganesh v', '49.204.210.37'),
(0, '2019-05-13 03:06:59', 0, '', 540, 142, 'vijayalakshmi.picco@gmail.com', 'vijayalakshmi', '49.204.210.37'),
(0, '2019-05-13 04:11:49', 0, '', 541, 229, 'ganesh.picco@gmail.com', 'ganesh', '49.204.210.37'),
(0, '2019-05-13 05:08:42', 0, '', 542, 142, 'vijayalakshmi.picco@gmail.com', 'vijayalakshmi', '49.204.210.37'),
(0, '2019-05-13 08:42:02', 0, '', 543, 227, 'veerapandi.picco@gmail.com', 'veerapandi', '49.204.210.37');
INSERT INTO `login_log` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `customer_id`, `email_id`, `first_name`, `ip_address`) VALUES
(0, '2019-07-25 01:51:25', 0, '', 544, 1, 'rikardodeveloper@gmail.com', 'Ricardo Corrêa da Costa', '::1'),
(0, '2019-07-25 20:21:57', 0, '', 545, 1, 'rikardodeveloper@gmail.com', 'Ricardo Corrêa da Costa', '::1'),
(0, '2019-07-27 17:58:33', 0, '', 546, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-07-27 21:44:27', 0, '', 547, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-07-27 23:39:20', 0, '', 548, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-07-28 23:44:06', 0, '', 549, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-04 21:35:07', 0, '', 550, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-04 22:49:52', 0, '', 551, 3, 'rikardodeveloper@outlook.com', 'Ricardo Corrêa da Costa 2', '::1'),
(0, '2019-08-04 23:11:59', 0, '', 552, 4, 'rikardodeveloper@outlook.com', 'Ricardo Corrêa da Costa', '::1'),
(0, '2019-08-04 23:15:39', 0, '', 553, 4, 'rikardodeveloper@outlook.com', 'Ricardo Corrêa da Costa', '::1'),
(0, '2019-08-05 16:06:15', 0, '', 554, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-05 16:36:28', 0, '', 555, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-05 20:38:20', 0, '', 556, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-05 20:47:14', 0, '', 557, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-06 18:13:54', 0, '', 558, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-07 15:25:50', 0, '', 559, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-07 17:34:39', 0, '', 560, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-08 21:53:28', 0, '', 561, 5, 'rikardodeveloper@outlook.com', 'Ricardo Corrêa da Costa', '::1'),
(0, '2019-08-08 21:55:15', 0, '', 562, 1, 'rikardodeveloper@gmail.com', 'Ricardo', '::1'),
(0, '2019-08-12 16:25:50', 0, '', 563, 7, 'rikardodeveloper@outlook.com', 'Admin', '::1'),
(0, '2019-08-12 19:53:16', 0, '', 564, 20, 'rikardodeveloper@gmail.com', 'Ricardo Corrêa da Costa', '::1'),
(0, '2019-08-12 23:22:30', 0, '', 565, 20, 'rikardodeveloper@gmail.com', 'Ricardo Corrêa da Costa', '::1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `manufacturer`
--

CREATE TABLE `manufacturer` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `manufacturer`
--

INSERT INTO `manufacturer` (`created_by`, `created_date`, `modified_by`, `modified_date`, `manufacturer_id`, `name`, `image`, `image_path`, `sort_order`, `is_active`) VALUES
(0, '2019-08-05 22:05:11', 0, '', 97, 'Impressao', 'Img_1565053511382.png', 'manufacturer/', 1, 1),
(0, '2019-08-05 22:05:32', 0, '2019-08-05 22:05:41', 98, 'Gravacao Chapas', 'Img_1565053532390.png', 'manufacturer/', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `timestamp`, `name`) VALUES
(1, 1546513939916, 'CreateUserTable1546513939916'),
(2, 1546516990326, 'CreateUserGroupTable1546516990326'),
(3, 1546521833384, 'CreateUserRelationToUserGroupTable1546521833384'),
(4, 1546522725201, 'CreateCategoryTable1546522725201'),
(5, 1546523068121, 'CreateZoneToGeoZoneTable1546523068121'),
(6, 1546523201059, 'CreateCustomerGroupTable1546523201059'),
(7, 1546523577052, 'CreateCustomerIpTable1546523577052'),
(8, 1546523725119, 'CreateGeoZoneTable1546523725119'),
(9, 1546523802480, 'CreateBannerGroupTable1546523802480'),
(10, 1546524333028, 'CreateCurrencyTable1546524333028'),
(11, 1546524561001, 'CreateCustomerTable1546524561001'),
(12, 1546525248338, 'CreateAddessTable1546525248338'),
(13, 1546525786783, 'CreateBannerImageTable1546525786783'),
(14, 1546525833396, 'CreateStockStatusTable1546525833396'),
(15, 1546526076621, 'CreateBannerTable1546526076621'),
(16, 1546526936010, 'CreateBannerImageDescriptionTable1546526936010'),
(17, 1546527306595, 'CreateCustomerTransactionTable1546527306595'),
(18, 1546528787878, 'CreateProductTable1546528787878'),
(19, 1546529746397, 'CreateProductRelatedTable1546529746397'),
(20, 1546529906290, 'CreateManufacturerTable1546529906290'),
(21, 1546530096773, 'CreateProductTagTable1546530096773'),
(22, 1546578299514, 'CreateLanguageTable1546578299514'),
(23, 1546578412979, 'AddProductRelatedRelationToProductTable1546578412979'),
(24, 1546578790576, 'CreateCategoryDescriptionTable1546578790576'),
(25, 1546579410193, 'CreateProductImageTable1546579410193'),
(26, 1546579597970, 'CreateEmailTemplateTable1546579597970'),
(27, 1546579614441, 'CreateProductDescriptionTable1546579614441'),
(28, 1546579884423, 'CreateProductToCategoryTable1546579884423'),
(29, 1546580085881, 'CreateCountryTable1546580085881'),
(30, 1546580179314, 'CreateProductDiscountTable1546580179314'),
(31, 1546580427531, 'CreateProductRatingTable1546580427531'),
(32, 1546580612161, 'CreateZoneTable1546580612161'),
(33, 1546580872313, 'CreateOrderProductTable1546580872313'),
(34, 1546580970382, 'CreateSettingsTable1546580970382'),
(35, 1546581203387, 'CreateOrderOptionTable1546581203387'),
(36, 1546581429998, 'CreateOrderTotalTable1546581429998'),
(37, 1546581683040, 'CreatePageGroupTable1546581683040'),
(38, 1546581933917, 'CreateOrderHistoryTable1546581933917'),
(39, 1546582132870, 'CreateOrderStatusTable1546582132870'),
(40, 1546582513520, 'CreatePageTable1546582513520'),
(41, 1546585163896, 'AddProductImageRelationToProductTable1546585163896'),
(42, 1546585326281, 'AddProductDiscountRelationToProductTable1546585326281'),
(43, 1546585460413, 'AddProductRatingRelationToProductTable1546585460413'),
(44, 1546585572765, 'AddPageRelationToPageGroupTable1546585572765'),
(45, 1546586351105, 'CreateZoneCountryRelationToZoneGeoTable1546586351105'),
(46, 1546587376381, 'CreateOrderTable1546587376381'),
(47, 1546588310183, 'CreateCountryRelationToZoneGeoTable1546588310183'),
(48, 1546588504951, 'CreateZoneRelationToCountryTable1546588504951');

-- --------------------------------------------------------

--
-- Estrutura da tabela `option`
--

CREATE TABLE `option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `option_description`
--

CREATE TABLE `option_description` (
  `option_description_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `option_value`
--

CREATE TABLE `option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `option_value_description`
--

CREATE TABLE `option_value_description` (
  `option_value_description_id` int(11) NOT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `invoice_prefix` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `shipping_firstname` varchar(255) NOT NULL,
  `shipping_lastname` varchar(255) NOT NULL,
  `shipping_company` varchar(255) NOT NULL,
  `shipping_address_1` varchar(255) NOT NULL,
  `shipping_address_2` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_postcode` varchar(255) NOT NULL,
  `shipping_country` varchar(255) NOT NULL,
  `shipping_zone` varchar(255) NOT NULL,
  `shipping_address_format` varchar(255) NOT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `payment_firstname` varchar(255) NOT NULL,
  `payment_lastname` varchar(255) NOT NULL,
  `payment_company` varchar(255) NOT NULL,
  `payment_address_1` varchar(255) NOT NULL,
  `payment_address_2` varchar(255) NOT NULL,
  `payment_city` varchar(255) NOT NULL,
  `payment_postcode` varchar(255) NOT NULL,
  `payment_country` varchar(255) NOT NULL,
  `payment_zone` varchar(255) NOT NULL,
  `payment_address_format` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `reward` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `order_prefix_id` varchar(255) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commision` int(11) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_value` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `payment_flag` int(11) NOT NULL,
  `order_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `currency_id`, `shipping_zone_id`, `payment_zone_id`, `shipping_country_id`, `payment_country_id`, `invoice_no`, `invoice_prefix`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_zone`, `shipping_address_format`, `shipping_method`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_zone`, `payment_address_format`, `payment_method`, `comment`, `total`, `reward`, `order_status_id`, `order_prefix_id`, `affiliate_id`, `commision`, `currency_code`, `currency_value`, `ip`, `payment_flag`, `order_name`, `created_by`, `created_date`, `modified_by`, `modified_date`, `is_active`) VALUES
(1, 1, 0, 0, 0, 0, 0, '1', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Brazil', 'RS', '', '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '30', 'RS', '', '', '', 91900, 0, 1, 'SPU-201907251', 0, 0, '', 0, '', 0, '', 0, '2019-07-25 20:31:22', 0, '2019-07-25 20:31:22', 1),
(2, 1, 0, 0, 0, 0, 0, '2', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Brazil', 'RS', '', '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '30', 'RS', '', '', '', 91900, 0, 1, 'SPU-201907272', 0, 0, '', 0, '', 0, '', 0, '2019-07-27 17:59:10', 0, '2019-07-27 17:59:10', 1),
(3, 1, 0, 0, 0, 0, 0, '3', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Belarus', 'RS', '', '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '20', 'RS', '', '', '', 91900, 0, 1, 'SPU-201907273', 0, 0, '', 0, '', 0, '', 0, '2019-07-27 18:41:54', 0, '2019-07-27 18:41:54', 1),
(4, 1, 0, 0, 0, 0, 0, '4', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'American Samoa', 'RS', '', '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '4', 'RS', '', '', '', 91900, 0, 1, 'SPU-201907274', 0, 0, '', 0, '', 0, '', 0, '2019-07-27 18:43:28', 0, '2019-07-27 18:43:29', 1),
(5, 1, 0, 0, 0, 0, 0, '5', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Australia', 'RS', '', '', 'Ricardo', 'Corrêa da Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '13', 'RS', '', '', '', 1378500, 0, 1, 'SPU-201907275', 0, 0, '', 0, '', 0, '', 0, '2019-07-27 21:16:34', 0, '2019-07-27 21:16:34', 1),
(6, 1, 0, 0, 0, 0, 0, '6', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'rua cruz alta', 'Corrêa da Costa', '', 'rua cruz alta', '', 'dd', 'dd', 'Bangladesh', 'dd', '', '', 'rua cruz alta', 'Corrêa da Costa', '', 'rua cruz alta', '', 'dd', 'dd', '18', 'dd', '', '', '', 919000, 0, 1, 'SPU-201907276', 0, 0, '', 0, '', 0, '', 0, '2019-07-27 21:38:41', 0, '2019-07-27 21:38:41', 1),
(7, 1, 0, 0, 0, 0, 0, '7', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo', 'Corrêa da Costa', '', 'dsf', '', 'sdsd', '34343', 'Albania', 'sdds', '', '', 'Ricardo', 'Corrêa da Costa', '', 'dsf', '', 'sdsd', '34343', '2', 'sdds', '', '', '', 367600, 0, 1, 'SPU-201907287', 0, 0, '', 0, '', 0, '', 0, '2019-07-28 01:34:28', 0, '2019-07-28 01:34:28', 1),
(8, 1, 0, 0, 0, 0, 0, '8', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Algeria', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '3', 'RS', '', '', '', 183800, 0, 1, 'SPU-201907288', 0, 0, '', 0, '', 0, '', 0, '2019-07-28 01:36:22', 0, '2019-07-28 01:36:22', 1),
(9, 1, 0, 0, 0, 0, 0, '9', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 91900, 0, 1, 'SPU-201907289', 0, 0, '', 0, '', 0, '', 0, '2019-07-28 01:37:37', 0, '2019-07-28 01:37:37', 1),
(10, 1, 0, 0, 0, 0, 0, '10', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Algeria', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '3', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019072810', 0, 0, '', 0, '', 0, '', 0, '2019-07-28 01:41:56', 0, '2019-07-28 01:41:56', 1),
(11, 1, 0, 0, 0, 0, 0, '11', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Algeria', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '3', 'RS', '', '', '', 183800, 0, 1, 'SPU-2019072811', 0, 0, '', 0, '', 0, '', 0, '2019-07-28 16:22:40', 0, '2019-07-28 16:22:41', 1),
(12, 1, 0, 0, 0, 0, 0, '', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '4', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '4', 'RS', '', '', '', 0, 0, 1, '', 0, 0, '', 0, '', 0, '', 0, '2019-07-28 16:49:18', 0, '', 1),
(13, 1, 0, 0, 0, 0, 0, '', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '19', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '19', 'RS', '', '', '', 0, 0, 1, '', 0, 0, '', 0, '', 0, '', 0, '2019-07-28 16:59:47', 0, '', 1),
(14, 1, 0, 0, 0, 0, 0, '', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '6', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '6', 'RS', '', '', '', 0, 0, 1, '', 0, 0, '', 0, '', 0, '', 0, '2019-07-28 17:03:41', 0, '', 1),
(15, 1, 0, 0, 0, 0, 0, '15', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Angola', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '6', 'RS', '', '', '', 183800, 0, 1, 'SPU-2019072815', 0, 0, '', 0, '', 0, '', 0, '2019-07-28 17:05:03', 0, '2019-07-28 17:05:03', 1),
(16, 1, 0, 0, 0, 0, 0, '16', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'American Samoa', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '4', 'RS', '', '', '', 183885, 0, 1, 'SPU-2019072916', 0, 0, '', 0, '', 0, '', 0, '2019-07-29 00:14:31', 0, '2019-07-29 00:14:31', 1),
(17, 1, 0, 0, 0, 0, 0, '17', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 183800, 0, 1, 'SPU-2019072917', 0, 0, '', 0, '', 0, '', 0, '2019-07-29 00:56:01', 0, '2019-07-29 00:56:01', 1),
(18, 1, 0, 0, 0, 0, 0, '18', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Afghanistan', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '1', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019072918', 0, 0, '', 0, '', 0, '', 0, '2019-07-29 00:57:28', 0, '2019-07-29 00:57:28', 1),
(19, 1, 0, 0, 0, 0, 0, '19', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Angola', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '6', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019072919', 0, 0, '', 0, '', 0, '', 0, '2019-07-29 01:17:53', 0, '2019-07-29 01:17:53', 1),
(20, 1, 0, 0, 0, 0, 0, '', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '19', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '19', 'RS', '', '', '', 0, 0, 1, '', 0, 0, '', 0, '', 0, '', 0, '2019-07-29 01:20:43', 0, '', 1),
(21, 1, 0, 0, 0, 0, 0, '21', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Barbados', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '19', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019072921', 0, 0, '', 0, '', 0, '', 0, '2019-07-29 01:22:55', 0, '2019-07-29 01:22:55', 1),
(22, 1, 0, 0, 0, 0, 0, '22', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Anguilla', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '7', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019072922', 0, 0, '', 0, '', 0, '', 0, '2019-07-29 01:25:08', 0, '2019-07-29 01:25:09', 1),
(23, 1, 0, 0, 0, 0, 0, '23', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Afghanistan', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '1', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019072923', 0, 0, '', 0, '', 0, '', 0, '2019-07-29 01:28:26', 0, '2019-07-29 01:28:26', 1),
(24, 1, 0, 0, 0, 0, 0, '', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '15', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '15', 'RS', '', '', '', 0, 0, 1, '', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 15:55:57', 0, '', 1),
(25, 1, 0, 0, 0, 0, 0, '', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '15', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '15', 'RS', '', '', '', 0, 0, 1, '', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 15:57:18', 0, '', 1),
(26, 1, 0, 0, 0, 0, 0, '', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '15', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '15', 'RS', '', '', '', 0, 0, 1, '', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 15:58:19', 0, '', 1),
(27, 1, 0, 0, 0, 0, 0, '27', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080227', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 16:07:37', 0, '2019-08-02 16:07:38', 1),
(28, 1, 0, 0, 0, 0, 0, '28', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Afghanistan', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '1', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080228', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:34:05', 0, '2019-08-02 17:34:05', 1),
(29, 1, 0, 0, 0, 0, 0, '29', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Afghanistan', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '1', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080229', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:43:52', 0, '2019-08-02 17:43:52', 1),
(30, 1, 0, 0, 0, 0, 0, '30', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Afghanistan', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '1', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080230', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:44:45', 0, '2019-08-02 17:44:45', 1),
(31, 1, 0, 0, 0, 0, 0, '31', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Bahrain', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '17', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080231', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:47:20', 0, '2019-08-02 17:47:20', 1),
(32, 1, 0, 0, 0, 0, 0, '32', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Afghanistan', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '1', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080232', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:49:03', 0, '2019-08-02 17:49:03', 1),
(33, 1, 0, 0, 0, 0, 0, '33', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Austria', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '14', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080233', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:50:53', 0, '2019-08-02 17:50:53', 1),
(34, 1, 0, 0, 0, 0, 0, '34', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080234', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:51:47', 0, '2019-08-02 17:51:47', 1),
(35, 1, 0, 0, 0, 0, 0, '35', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080235', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:54:38', 0, '2019-08-02 17:54:38', 1),
(36, 1, 0, 0, 0, 0, 0, '36', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Bahamas', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '16', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080236', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:57:24', 0, '2019-08-02 17:57:24', 1),
(37, 1, 0, 0, 0, 0, 0, '37', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080237', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 17:58:14', 0, '2019-08-02 17:58:14', 1),
(38, 1, 0, 0, 0, 0, 0, '38', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080238', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:00:27', 0, '2019-08-02 18:00:27', 1),
(39, 1, 0, 0, 0, 0, 0, '39', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080239', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:01:12', 0, '2019-08-02 18:01:12', 1),
(40, 1, 0, 0, 0, 0, 0, '40', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Bahamas', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '16', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080240', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:02:33', 0, '2019-08-02 18:02:33', 1),
(41, 1, 0, 0, 0, 0, 0, '41', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Algeria', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '3', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080241', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:03:28', 0, '2019-08-02 18:03:28', 1),
(42, 1, 0, 0, 0, 0, 0, '42', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Afghanistan', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '1', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080242', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:09:51', 0, '2019-08-02 18:09:51', 1),
(43, 1, 0, 0, 0, 0, 0, '43', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Azerbaijan', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '15', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080243', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:12:03', 0, '2019-08-02 18:12:03', 1),
(44, 1, 0, 0, 0, 0, 0, '44', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080244', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:13:24', 0, '2019-08-02 18:13:24', 1),
(45, 1, 0, 0, 0, 0, 0, '45', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Bahamas', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '16', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080245', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:17:44', 0, '2019-08-02 18:17:44', 1),
(46, 1, 0, 0, 0, 0, 0, '46', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Bahamas', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '16', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080246', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:18:04', 0, '2019-08-02 18:18:04', 1),
(47, 1, 0, 0, 0, 0, 0, '47', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Algeria', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '3', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080247', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:20:50', 0, '2019-08-02 18:20:50', 1),
(48, 1, 0, 0, 0, 0, 0, '48', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Algeria', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '3', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080248', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:44:05', 0, '2019-08-02 18:44:05', 1),
(49, 1, 0, 0, 0, 0, 0, '49', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Algeria', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '3', 'RS', '', '', '', 91900, 0, 1, 'SPU-2019080249', 0, 0, '', 0, '', 0, '', 0, '2019-08-02 18:44:28', 0, '2019-08-02 18:44:28', 1),
(50, 1, 0, 0, 0, 0, 0, '50', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'American Samoa', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '4', 'RS', '', '', '', 70, 0, 1, 'SPU-2019080450', 0, 0, '', 0, '', 0, '', 0, '2019-08-04 21:36:10', 0, '2019-08-04 21:36:11', 1),
(51, 1, 0, 0, 0, 0, 0, '51', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 35, 0, 1, 'SPU-2019080451', 0, 0, '', 0, '', 0, '', 0, '2019-08-04 21:38:31', 0, '2019-08-04 21:38:31', 1),
(52, 1, 0, 0, 0, 0, 0, '52', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Angola', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '6', 'RS', '', '', '', 35, 0, 1, 'SPU-2019080452', 0, 0, '', 0, '', 0, '', 0, '2019-08-04 21:45:10', 0, '2019-08-04 21:45:10', 1),
(53, 1, 0, 0, 0, 0, 0, '53', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Bangladesh', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '18', 'RS', '', '', '', 35, 0, 1, 'SPU-2019080453', 0, 0, '', 0, '', 0, '', 0, '2019-08-04 21:59:12', 0, '2019-08-04 21:59:12', 1),
(54, 1, 0, 0, 0, 0, 0, '54', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 35, 0, 3, 'SPU-2019080454', 0, 0, '', 0, '', 0, '', 0, '2019-08-04 22:02:04', 0, '2019-08-04 22:29:21', 1),
(55, 1, 0, 0, 0, 0, 0, '55', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Algeria', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '3', 'RS', '', '', '', 35, 0, 1, 'SPU-2019080555', 0, 0, '', 0, '', 0, '', 0, '2019-08-05 20:48:21', 0, '2019-08-05 20:48:21', 1),
(56, 1, 0, 0, 0, 0, 0, '56', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 18, 0, 1, 'SPU-2019080556', 0, 0, '', 0, '', 0, '', 0, '2019-08-05 23:17:57', 0, '2019-08-05 23:17:57', 1),
(57, 1, 0, 0, 0, 0, 0, '57', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Anguilla', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '7', 'RS', '', '', '', 88, 0, 1, 'SPU-2019080657', 0, 0, '', 0, '', 0, '', 0, '2019-08-06 17:03:01', 0, '2019-08-06 17:03:01', 1),
(58, 1, 0, 0, 0, 0, 0, '58', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 12, 0, 1, 'SPU-2019080658', 0, 0, '', 0, '', 0, '', 0, '2019-08-06 20:50:43', 0, '2019-08-06 20:50:43', 1),
(59, 1, 0, 0, 0, 0, 0, '59', 'SPU', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 3, 0, 2, 'SPU-2019080659', 0, 0, '', 0, '', 0, '', 0, '2019-08-06 22:58:36', 0, '2019-08-06 23:03:18', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_history`
--

CREATE TABLE `order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `notify` tinytext DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_log`
--

CREATE TABLE `order_log` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `order_log_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `invoice_prefix` varchar(255) NOT NULL,
  `order_prefix_id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `shipping_firstname` varchar(255) NOT NULL,
  `shipping_lastname` varchar(255) NOT NULL,
  `shipping_company` varchar(255) NOT NULL,
  `shipping_address_1` varchar(255) NOT NULL,
  `shipping_address_2` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_postcode` varchar(255) NOT NULL,
  `shipping_country` varchar(255) NOT NULL,
  `shipping_zone` varchar(255) NOT NULL,
  `shipping_address_format` varchar(255) NOT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `payment_firstname` varchar(255) NOT NULL,
  `payment_lastname` varchar(255) NOT NULL,
  `payment_company` varchar(255) NOT NULL,
  `payment_address_1` varchar(255) NOT NULL,
  `payment_address_2` varchar(255) NOT NULL,
  `payment_city` varchar(255) NOT NULL,
  `payment_postcode` varchar(255) NOT NULL,
  `payment_country` varchar(255) NOT NULL,
  `payment_zone` varchar(255) NOT NULL,
  `payment_address_format` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `reward` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commision` int(11) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_value` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `payment_flag` int(11) NOT NULL,
  `order_name` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `order_log`
--

INSERT INTO `order_log` (`created_by`, `created_date`, `modified_by`, `modified_date`, `order_log_id`, `customer_id`, `currency_id`, `shipping_zone_id`, `payment_zone_id`, `shipping_country_id`, `payment_country_id`, `invoice_no`, `invoice_prefix`, `order_prefix_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_zone`, `shipping_address_format`, `shipping_method`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_zone`, `payment_address_format`, `payment_method`, `comment`, `total`, `reward`, `order_status_id`, `affiliate_id`, `commision`, `currency_code`, `currency_value`, `ip`, `payment_flag`, `order_name`, `is_active`) VALUES
(0, '2019-08-04 22:02:04', 0, '2019-08-04 22:02:05', 1, 1, 0, 0, 0, 0, 0, '54', 'SPU', 'SPU-2019080454', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 35, 0, 1, 0, 0, '', 0, '', 0, '', 1),
(0, '2019-08-06 22:58:36', 0, '2019-08-06 22:58:36', 2, 1, 0, 0, 0, 0, 0, '59', 'SPU', 'SPU-2019080659', '', '', 'rikardodeveloper@gmail.com', 2147483647, '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', 'Albania', 'RS', '', '', 'Ricardo Corrêa', 'Costa', '', 'rua cruz alta', '', 'esteio', '93280280', '2', 'RS', '', '', '', 3, 0, 1, 0, 0, '', 0, '', 0, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_option`
--

CREATE TABLE `order_option` (
  `order_option_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_product_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_product`
--

CREATE TABLE `order_product` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `tamanho` varchar(50) NOT NULL,
  `midia` varchar(50) NOT NULL,
  `frente_verso` varchar(50) NOT NULL,
  `super_a3` varchar(50) NOT NULL,
  `fecham_arquivo` varchar(50) NOT NULL,
  `ajuste_cor` varchar(50) NOT NULL,
  `nome_arquivo` varchar(50) NOT NULL,
  `tipo_entrega` varchar(50) NOT NULL,
  `tipo_pagto` varchar(50) NOT NULL,
  `image_arquivo` text NOT NULL,
  `arquivo_anexo` text NOT NULL,
  `observacao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `order_product`
--

INSERT INTO `order_product` (`created_by`, `created_date`, `modified_by`, `modified_date`, `order_product_id`, `product_id`, `order_id`, `name`, `model`, `quantity`, `product_price`, `total`, `titulo`, `tamanho`, `midia`, `frente_verso`, `super_a3`, `fecham_arquivo`, `ajuste_cor`, `nome_arquivo`, `tipo_entrega`, `tipo_pagto`, `image_arquivo`, `arquivo_anexo`, `observacao`) VALUES
(0, '2019-08-06 20:50:43', 0, '', 51, 314, 58, 'Impressão Digital A3 (33x48) Adesivo fosco/brilho', 'Impressão Digital A3 (33x48) Adesivo fosco/brilho', 2, 6, 12, 'tetet', '330x480', 'Adesivo Brilho', 'Não', 'Não', 'Não', 'Não', '1_rikardodeveloper_impDigital.png|', 'local', 'pagto', '', '', 'sdsdsd\nsdsdsdfsdfsdf'),
(0, '2019-08-06 22:58:36', 0, '', 52, 315, 59, 'Impressão Digital A3 Plus - (33x48 cm)', 'Impressão Digital A3 Plus - (33x48 cm)', 1, 3, 3, '3434', '330x480', 'Adesivo Brilho', 'Não', 'Não', 'Não', 'Não', '1_rikardodeveloper_gravChapas.png|1_rikardodevelop', 'local', 'pagto', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_status`
--

CREATE TABLE `order_status` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `color_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `order_status`
--

INSERT INTO `order_status` (`created_by`, `created_date`, `modified_by`, `modified_date`, `order_status_id`, `name`, `is_active`, `color_code`) VALUES
(0, '2019-02-19 04:04:03', 0, '2019-08-04 22:28:09', 1, 'Pendente', 0, '#6798e3'),
(0, '2019-02-19 04:04:21', 0, '2019-08-04 22:28:24', 2, 'Concluído', 1, '#25a006'),
(0, '2019-02-19 04:04:58', 0, '2019-08-04 22:28:37', 3, 'Aguarde', 1, '#f71d1d');

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_total`
--

CREATE TABLE `order_total` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `order_total_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `order_total`
--

INSERT INTO `order_total` (`created_by`, `created_date`, `modified_by`, `modified_date`, `order_total_id`, `order_id`, `value`) VALUES
(0, '2019-07-25 20:31:22', 0, '', 1, 1, 91900),
(0, '2019-07-27 17:59:10', 0, '', 2, 2, 91900),
(0, '2019-07-27 18:41:54', 0, '', 3, 3, 91900),
(0, '2019-07-27 18:43:29', 0, '', 4, 4, 91900),
(0, '2019-07-27 21:16:34', 0, '', 5, 5, 1378500),
(0, '2019-07-27 21:38:41', 0, '', 6, 6, 919000),
(0, '2019-07-28 01:34:28', 0, '', 7, 7, 367600),
(0, '2019-07-28 01:36:22', 0, '', 8, 8, 183800),
(0, '2019-07-28 01:37:37', 0, '', 9, 9, 91900),
(0, '2019-07-28 01:41:57', 0, '', 10, 10, 91900),
(0, '2019-07-28 16:22:41', 0, '', 11, 11, 183800),
(0, '2019-07-28 17:05:03', 0, '', 12, 15, 183800),
(0, '2019-07-29 00:14:31', 0, '', 13, 16, 183885),
(0, '2019-07-29 00:56:01', 0, '', 14, 17, 183800),
(0, '2019-07-29 00:57:28', 0, '', 15, 18, 91900),
(0, '2019-07-29 01:17:53', 0, '', 16, 19, 91900),
(0, '2019-07-29 01:22:55', 0, '', 17, 21, 91900),
(0, '2019-07-29 01:25:09', 0, '', 18, 22, 91900),
(0, '2019-07-29 01:28:26', 0, '', 19, 23, 91900),
(0, '2019-08-02 16:07:38', 0, '', 20, 27, 91900),
(0, '2019-08-02 17:34:05', 0, '', 21, 28, 91900),
(0, '2019-08-02 17:43:52', 0, '', 22, 29, 91900),
(0, '2019-08-02 17:44:45', 0, '', 23, 30, 91900),
(0, '2019-08-02 17:47:20', 0, '', 24, 31, 91900),
(0, '2019-08-02 17:49:03', 0, '', 25, 32, 91900),
(0, '2019-08-02 17:50:53', 0, '', 26, 33, 91900),
(0, '2019-08-02 17:51:47', 0, '', 27, 34, 91900),
(0, '2019-08-02 17:54:38', 0, '', 28, 35, 91900),
(0, '2019-08-02 17:57:24', 0, '', 29, 36, 91900),
(0, '2019-08-02 17:58:14', 0, '', 30, 37, 91900),
(0, '2019-08-02 18:00:27', 0, '', 31, 38, 91900),
(0, '2019-08-02 18:01:12', 0, '', 32, 39, 91900),
(0, '2019-08-02 18:02:33', 0, '', 33, 40, 91900),
(0, '2019-08-02 18:03:28', 0, '', 34, 41, 91900),
(0, '2019-08-02 18:09:51', 0, '', 35, 42, 91900),
(0, '2019-08-02 18:12:03', 0, '', 36, 43, 91900),
(0, '2019-08-02 18:13:24', 0, '', 37, 44, 91900),
(0, '2019-08-02 18:17:44', 0, '', 38, 45, 91900),
(0, '2019-08-02 18:18:04', 0, '', 39, 46, 91900),
(0, '2019-08-02 18:20:50', 0, '', 40, 47, 91900),
(0, '2019-08-02 18:44:05', 0, '', 41, 48, 91900),
(0, '2019-08-02 18:44:28', 0, '', 42, 49, 91900),
(0, '2019-08-04 21:36:11', 0, '', 43, 50, 70),
(0, '2019-08-04 21:38:31', 0, '', 44, 51, 35),
(0, '2019-08-04 21:45:10', 0, '', 45, 52, 35),
(0, '2019-08-04 21:59:12', 0, '', 46, 53, 35),
(0, '2019-08-04 22:02:05', 0, '', 47, 54, 35),
(0, '2019-08-05 20:48:22', 0, '', 48, 55, 35),
(0, '2019-08-05 23:17:57', 0, '', 49, 56, 18),
(0, '2019-08-06 17:03:01', 0, '', 50, 57, 88),
(0, '2019-08-06 20:50:43', 0, '', 51, 58, 12),
(0, '2019-08-06 22:58:36', 0, '', 52, 59, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `page`
--

CREATE TABLE `page` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `page_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `full_text` varchar(255) NOT NULL,
  `page_group_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `meta_tag_title` varchar(255) NOT NULL,
  `meta_tag_description` varchar(255) NOT NULL,
  `meta_tag_keywords` varchar(255) NOT NULL,
  `view_page_count` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `page`
--

INSERT INTO `page` (`created_by`, `created_date`, `modified_by`, `modified_date`, `page_id`, `title`, `intro`, `full_text`, `page_group_id`, `sort_order`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `view_page_count`, `is_active`) VALUES
(0, '2019-03-14 06:08:56', 0, '2019-04-04 05:00:40', 130, 'COMPANY', '', '<ul>\n	<li>\n	<p>This InDesign Brochure is Clean &amp; Professional. Create your company&#39;s documentation quick and easy. The template comes with paragraph and character styles, swatches, styles for your spreadsheet / financial info, block quotes, key fi', 0, 0, 'Company Profile', 'If you continue to have trouble, check out this help file for more tips.', 'company profile', 0, 0),
(0, '2019-03-14 06:16:25', 0, '2019-03-15 00:38:22', 132, 'RESOURCES', '', '<h2><img alt=\"\" src=\"https://www.google.com/url?sa=i&amp;source=images&amp;cd=&amp;cad=rja&amp;uact=8&amp;ved=2ahUKEwjNqoesyoHhAhUI7HMBHQuNAu8QjRx6BAgBEAU&amp;url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fbeautiful%2F&amp;psig=AOvVaw3BVX6YphWlhIlgpF7S6C_i&a', 0, 0, 'Resources information', 'New Resources Page full of information @2019', ' Resources Page full of information', 0, 1),
(0, '2019-03-14 06:30:33', 0, '2019-07-24 22:20:23', 133, 'ABOUT US', '', '<p><strong>piccocart.com&nbsp;is an Indian e-commerce company based in Chennai, India. Founded by Mr&nbsp;</strong><strong>Suresh Sekar, the company initially focused on software Development, before expanding into other product categories such as consumer', 0, 0, 'about us', 'about us', 'The total cost of ownership for software created in this manner is reduced', 0, 1),
(0, '2019-03-21 00:31:43', 0, '2019-05-06 08:05:10', 138, 'PAGE INFO', '', '<p>Description of the page</p>\n', 0, 0, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `page_group`
--

CREATE TABLE `page_group` (
  `page_group_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product`
--

CREATE TABLE `product` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `upc` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `minimum_quantity` int(11) NOT NULL,
  `subtract_stock` int(11) NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date_available` datetime NOT NULL,
  `sort_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `meta_tag_title` varchar(255) NOT NULL,
  `meta_tag_description` varchar(255) NOT NULL,
  `meta_tag_keyword` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `delete_flag` int(11) NOT NULL,
  `is_featured` int(11) NOT NULL,
  `today_deals` int(11) NOT NULL,
  `condition` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `wishlist_status` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `product`
--

INSERT INTO `product` (`created_by`, `created_date`, `modified_by`, `modified_date`, `product_id`, `sku`, `upc`, `location`, `quantity`, `minimum_quantity`, `subtract_stock`, `stock_status_id`, `image`, `image_path`, `manufacturer_id`, `shipping`, `price`, `date_available`, `sort_order`, `name`, `description`, `amount`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keyword`, `discount`, `delete_flag`, `is_featured`, `today_deals`, `condition`, `rating`, `wishlist_status`, `is_active`) VALUES
(0, '2019-08-05 21:05:41', 0, '2019-08-06 23:01:37', 314, 'IMP001', '330x480', 'Brasil', 1000, 1, 0, 2, '', '', 97, 1, 3, '2019-08-05 00:00:00', 1, 'Impressão Digital A3 (33x48) Adesivo fosco/brilho', '<p>ADESIVO BRILHO ADESIVO FOSCO</p>\n', 0, 'Impressão Digital A3 (33x48) Adesivo fosco/brilho', '', '', 0, 0, 1, 1, 1, 0, 0, 1),
(0, '2019-08-05 21:25:17', 0, '2019-08-06 20:21:13', 315, 'IMP002', '330x480', 'Brasil', 1000, 1, 0, 2, '', '', 97, 1, 3, '2019-08-05 00:00:00', 1, 'Impressão Digital A3 Plus - (33x48 cm)', '<p>Diversas gramaturas.</p>\n', 0, 'Impressão Digital A3 Plus - (33x48 cm)', '', '', 0, 0, 1, 1, 1, 0, 0, 1),
(0, '2019-08-05 21:26:43', 0, '2019-08-06 20:21:15', 316, 'IMP003', '297x420', 'Brasil', 1000, 1, 0, 2, '', '', 97, 1, 5, '2019-08-05 00:00:00', 1, 'Laser Filme - A3 Plus - (297 x 420 ) POLIESTER', '<p>Laser filme.</p>\n', 0, 'Laser Filme - A3 Plus - (297 x 420 ) POLIESTER', '', '', 0, 0, 1, 1, 1, 0, 0, 1),
(0, '2019-08-05 21:28:23', 0, '2019-08-06 20:21:14', 317, 'IMP004', '330x480', 'Brasil', 1000, 1, 0, 2, '', '', 97, 1, 5, '2019-08-05 00:00:00', 1, 'Papéis Especiais - A3 Plus - (33x48 cm)', '<p>Pap&eacute;is Especiais - A3 Plus&nbsp;</p>\n', 0, 'Papéis Especiais - A3 Plus - (33x48 cm)', '', '', 0, 0, 1, 1, 1, 0, 0, 1),
(0, '2019-08-05 21:31:30', 0, '2019-08-06 20:20:59', 318, 'GRA001', '335x485', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 18, '2019-08-05 00:00:00', 1, 'Chapa CTP 335x485 - 0,15', '<p>Chapa CTP 335x485 - 0,15</p>\n', 0, 'Chapa CTP 335x485 - 0,15', '', '', 0, 0, 1, 1, 1, 0, 0, 1),
(0, '2019-08-05 21:33:17', 0, '2019-08-06 20:21:09', 319, 'GRA002', '381x457', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 19, '2019-08-05 00:00:00', 1, 'Chapa CTP 381x457 - 0,15', '<p>Chapa CTP 381x457 - 0,15</p>\n', 0, 'Chapa CTP 381x457 - 0,15', '', '', 0, 0, 1, 1, 1, 0, 0, 1),
(0, '2019-08-05 21:34:31', 0, '2019-08-06 20:21:10', 320, 'GRA003', '388x510', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 20, '2019-08-05 00:00:00', 1, 'Chapa CTP 388x510 - 0,15', '<p>Chapa CTP 388x510 - 0,15</p>\n', 0, 'Chapa CTP 388x510 - 0,15', '', '', 0, 0, 1, 1, 1, 0, 0, 1),
(0, '2019-08-05 21:35:53', 0, '2019-08-06 20:21:11', 321, 'GRA004', '400x510', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 20, '2019-08-05 00:00:00', 1, 'Chapa CTP 400x510 - 0,15', '<p>Chapa CTP 400x510 - 0,15</p>\n', 0, 'Chapa CTP 400x510 - 0,15', '', '', 0, 0, 1, 1, 1, 0, 0, 1),
(0, '2019-08-05 21:37:09', 0, '2019-08-06 16:55:40', 322, 'GRA005', '415x521', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 22, '2019-08-05 00:00:00', 1, 'Chapa CTP 415x521 - 0,15', '<p>Chapa CTP 415x521 - 0,15</p>\n', 0, 'Chapa CTP 415x521 - 0,15', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(0, '2019-08-05 21:38:31', 0, '2019-08-06 16:56:00', 323, 'GRA006', '459x525', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 23, '2019-08-05 00:00:00', 1, 'Chapa CTP 459x525 - 0,15', '<p>Chapa CTP 459x525 - 0,15</p>\n', 0, 'Chapa CTP 459x525 - 0,15', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(0, '2019-08-05 21:39:50', 0, '2019-08-06 16:57:04', 324, 'GRA007', '490x660', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 30, '2019-08-05 00:00:00', 1, 'Chapa CTP 490x660 - 0,30', '<p>Chapa CTP 490x660 - 0,30</p>\n', 0, 'Chapa CTP 490x660 - 0,30', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(0, '2019-08-05 21:40:56', 0, '2019-08-06 16:57:37', 325, 'GRA008', '505x580', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 28, '2019-08-05 00:00:00', 1, 'Chapa CTP 505x580 - 0,30', '<p>Chapa CTP 505x580 - 0,30</p>\n', 0, 'Chapa CTP 505x580 - 0,30', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(0, '2019-08-05 21:42:05', 0, '2019-08-06 16:58:08', 326, 'GRA009', '508x645', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 30, '2019-08-05 00:00:00', 1, 'Chapa CTP 508x645 - 0,30', '<p>Chapa CTP 508x645 - 0,30</p>\n', 0, 'Chapa CTP 508x645 - 0,30', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(0, '2019-08-05 21:43:11', 0, '2019-08-06 16:58:32', 327, 'GRA010', '530x660', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 32, '2019-08-05 00:00:00', 1, 'Chapa CTP 530x660 - 0,30', '<p>Chapa CTP 530x660 - 0,30</p>\n', 0, 'Chapa CTP 530x660 - 0,30', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(0, '2019-08-05 21:44:14', 0, '2019-08-06 16:58:50', 328, 'GRA011', '550x650', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 32, '2019-08-05 00:00:00', 1, 'Chapa CTP 550x650 - 0,30', '<p>Chapa CTP 550x650 - 0,30</p>\n', 0, 'Chapa CTP 550x650 - 0,30', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(0, '2019-08-05 21:45:23', 0, '2019-08-06 16:59:10', 329, 'GRA012', '600x730', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 34, '2019-08-05 00:00:00', 1, 'Chapa CTP 600x730 - 0,30', '<p>Chapa CTP 600x730 - 0,30</p>\n', 0, 'Chapa CTP 600x730 - 0,30', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(0, '2019-08-05 21:46:37', 0, '2019-08-06 16:59:30', 330, 'GRA013', '605x745', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 34, '2019-08-05 00:00:00', 1, 'Chapa CTP 605x745 - 0,30', '<p>Chapa CTP 605x745 - 0,30</p>\n', 0, 'Chapa CTP 605x745 - 0,30', '', '', 0, 0, 0, 0, 1, 0, 0, 1),
(0, '2019-08-05 21:47:38', 0, '2019-08-06 16:59:49', 331, 'GRA014', '615x724', 'Brasil', 1000, 1, 0, 2, '', '', 98, 1, 36, '2019-08-05 00:00:00', 1, 'Chapa CTP 615x724 - 0,30', '<p>Chapa CTP 615x724 - 0,30</p>\n', 0, 'Chapa CTP 615x724 - 0,30', '', '', 0, 0, 0, 0, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_description`
--

CREATE TABLE `product_description` (
  `product_description_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_discount`
--

CREATE TABLE `product_discount` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `product_discount`
--

INSERT INTO `product_discount` (`created_by`, `created_date`, `modified_by`, `modified_date`, `product_discount_id`, `product_id`, `quantity`, `priority`, `price`, `is_active`, `date_start`, `date_end`) VALUES
(0, '', 0, '', 348, 286, 1, 1, 45000, 0, '2019-05-11 00:00:00', '2019-05-15 00:00:00'),
(0, '', 0, '', 354, 291, 1, 1, 35000, 0, '2019-05-11 00:00:00', '2019-05-15 00:00:00'),
(0, '', 0, '', 360, 292, 1, 1, 350, 0, '2019-05-15 00:00:00', '2019-06-19 00:00:00'),
(0, '', 0, '', 361, 290, 1, 1, 38000, 0, '2019-05-11 00:00:00', '2019-05-22 00:00:00'),
(0, '', 0, '', 362, 288, 1, 1, 15000, 0, '2019-05-11 00:00:00', '2019-05-21 00:00:00'),
(0, '', 0, '', 363, 293, 1, 1, 11000, 0, '2019-05-05 00:00:00', '2019-05-16 00:00:00'),
(0, '', 0, '', 365, 294, 1, 1, 1500, 0, '2019-05-06 00:00:00', '2019-05-17 00:00:00'),
(0, '', 0, '', 367, 295, 1, 1, 800, 0, '2019-06-05 00:00:00', '2019-05-31 00:00:00'),
(0, '', 0, '', 370, 298, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, '', 0, '', 371, 299, 1, 1, 650, 0, '2019-04-11 00:00:00', '2019-05-23 00:00:00'),
(0, '', 0, '', 375, 300, 1, 1, 6500, 0, '2019-05-25 00:00:00', '2019-06-13 00:00:00'),
(0, '', 0, '', 378, 289, 5, 5, 27500, 0, '2019-05-08 00:00:00', '2019-05-14 00:00:00'),
(0, '', 0, '', 379, 302, 1, 1, 550, 0, '2019-05-31 00:00:00', '2019-06-05 00:00:00'),
(0, '2019-05-11 07:29:15', 0, '', 381, 285, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, '2019-08-02 19:13:00', 0, '', 395, 307, 0, 0, 0, 0, '2019-08-02 00:00:00', '2019-12-05 00:00:00'),
(0, '2019-08-02 19:13:18', 0, '', 396, 308, 0, 0, 0, 0, '2019-08-02 00:00:00', '2019-12-05 00:00:00'),
(0, '2019-08-02 19:14:19', 0, '', 398, 309, 0, 0, 4, 0, '2019-08-02 00:00:00', '2019-12-05 00:00:00'),
(0, '2019-08-05 21:01:06', 0, '', 399, 313, 0, 0, 0, 0, '2019-08-05 00:00:00', '2019-08-05 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_image`
--

CREATE TABLE `product_image` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `container_name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `default_image` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `product_image`
--

INSERT INTO `product_image` (`created_by`, `created_date`, `modified_by`, `modified_date`, `product_image_id`, `product_id`, `image`, `container_name`, `sort_order`, `default_image`, `is_active`) VALUES
(0, '2019-08-06 16:52:53', 0, '', 2065, 315, 'Img_1565053005062.png', '', 0, 1, 0),
(0, '2019-08-06 16:53:20', 0, '', 2066, 316, 'Img_1565053005062.png', '', 0, 1, 0),
(0, '2019-08-06 16:53:43', 0, '', 2067, 317, 'Img_1565053005062.png', '', 0, 1, 0),
(0, '2019-08-06 16:54:10', 0, '', 2068, 318, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:54:35', 0, '', 2069, 319, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:54:57', 0, '', 2070, 320, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:55:19', 0, '', 2071, 321, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:55:40', 0, '', 2072, 322, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:56:00', 0, '', 2073, 323, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:57:04', 0, '', 2074, 324, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:57:37', 0, '', 2075, 325, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:58:08', 0, '', 2076, 326, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:58:32', 0, '', 2077, 327, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:58:51', 0, '', 2078, 328, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:59:10', 0, '', 2079, 329, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:59:30', 0, '', 2080, 330, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 16:59:49', 0, '', 2081, 331, 'Img_1565053013799.png', '', 0, 1, 0),
(0, '2019-08-06 23:01:37', 0, '', 2082, 314, 'Img_1565053005062.png', '', 0, 1, 0),
(0, '2019-08-06 23:01:37', 0, '', 2083, 314, 'Img_1557490591725.jpeg', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_rating`
--

CREATE TABLE `product_rating` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_related`
--

CREATE TABLE `product_related` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `related_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `related_product_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_special`
--

CREATE TABLE `product_special` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `product_special`
--

INSERT INTO `product_special` (`created_by`, `created_date`, `modified_by`, `modified_date`, `product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(0, '', 0, '', 382, 286, 0, 1, 40000, '2019-05-12 00:00:00', '2019-05-20 00:00:00'),
(0, '', 0, '', 394, 292, 0, 1, 380, '2019-05-08 00:00:00', '2019-06-30 00:00:00'),
(0, '', 0, '', 395, 290, 0, 1, 35000, '2019-05-06 00:00:00', '2019-05-28 00:00:00'),
(0, '', 0, '', 396, 288, 0, 1, 15000, '2019-05-08 00:00:00', '2019-05-24 00:00:00'),
(0, '', 0, '', 397, 293, 0, 1, 10000, '2019-04-02 00:00:00', '2019-05-30 00:00:00'),
(0, '', 0, '', 399, 294, 0, 1, 1700, '2019-05-08 00:00:00', '2019-05-18 00:00:00'),
(0, '', 0, '', 401, 295, 0, 1, 800, '2019-05-01 00:00:00', '2019-06-05 00:00:00'),
(0, '', 0, '', 402, 296, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, '', 0, '', 404, 298, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, '', 0, '', 405, 299, 0, 1, 600, '2019-05-17 00:00:00', '2019-06-06 00:00:00'),
(0, '', 0, '', 409, 300, 0, 1, 6000, '2019-05-23 00:00:00', '2019-06-05 00:00:00'),
(0, '', 0, '', 412, 289, 0, 5, 23990, '2019-05-13 00:00:00', '2019-05-18 00:00:00'),
(0, '', 0, '', 413, 302, 0, 1, 450, '2019-05-02 00:00:00', '2019-05-21 00:00:00'),
(0, '2019-05-11 07:29:15', 0, '', 415, 285, 0, 1, 19000, '2019-05-10 00:00:00', '2019-05-31 00:00:00'),
(0, '2019-08-02 19:05:10', 0, '', 429, 287, 0, 1, 73999, '2019-05-09 00:00:00', '2019-05-25 00:00:00'),
(0, '2019-08-02 19:14:19', 0, '', 431, 309, 0, 0, 0, '2019-08-02 00:00:00', '2019-11-08 00:00:00'),
(0, '2019-08-05 21:01:06', 0, '', 432, 313, 0, 0, 0, '2019-08-05 00:00:00', '2019-08-05 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_tag`
--

CREATE TABLE `product_tag` (
  `product_tag_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_tagname` text DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_to_category`
--

CREATE TABLE `product_to_category` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `product_to_category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `product_to_category`
--

INSERT INTO `product_to_category` (`created_by`, `created_date`, `modified_by`, `modified_date`, `product_to_category_id`, `product_id`, `category_id`, `is_active`) VALUES
(0, '2019-08-06 16:52:53', 0, '', 2350, 315, 92, 1),
(0, '2019-08-06 16:53:20', 0, '', 2351, 316, 92, 1),
(0, '2019-08-06 16:53:43', 0, '', 2352, 317, 92, 1),
(0, '2019-08-06 16:54:10', 0, '', 2353, 318, 94, 1),
(0, '2019-08-06 16:54:35', 0, '', 2354, 319, 94, 1),
(0, '2019-08-06 16:54:57', 0, '', 2355, 320, 94, 1),
(0, '2019-08-06 16:55:19', 0, '', 2356, 321, 94, 1),
(0, '2019-08-06 16:55:40', 0, '', 2357, 322, 94, 1),
(0, '2019-08-06 16:56:00', 0, '', 2358, 323, 94, 1),
(0, '2019-08-06 16:57:04', 0, '', 2359, 324, 94, 1),
(0, '2019-08-06 16:57:37', 0, '', 2360, 325, 94, 1),
(0, '2019-08-06 16:58:08', 0, '', 2361, 326, 94, 1),
(0, '2019-08-06 16:58:50', 0, '', 2362, 328, 94, 1),
(0, '2019-08-06 16:59:10', 0, '', 2363, 329, 94, 1),
(0, '2019-08-06 16:59:30', 0, '', 2364, 330, 94, 1),
(0, '2019-08-06 16:59:49', 0, '', 2365, 331, 94, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_view_log`
--

CREATE TABLE `product_view_log` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `product_view_log`
--

INSERT INTO `product_view_log` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `product_id`, `customer_id`, `first_name`, `last_name`, `username`, `email`, `mobile`, `address`, `is_active`) VALUES
(0, '2019-07-25 20:22:06', 0, '', 1, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:23:18', 0, '', 2, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:23:55', 0, '', 3, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:29:19', 0, '', 4, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:31:54', 0, '', 5, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:38:59', 0, '', 6, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:39:23', 0, '', 7, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:40:25', 0, '', 8, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:41:38', 0, '', 9, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:42:58', 0, '', 10, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:44:33', 0, '', 11, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:45:50', 0, '', 12, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:48:23', 0, '', 13, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:49:37', 0, '', 14, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:49:43', 0, '', 15, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:50:20', 0, '', 16, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:51:25', 0, '', 17, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:51:40', 0, '', 18, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:52:22', 0, '', 19, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:53:07', 0, '', 20, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:53:51', 0, '', 21, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 20:54:49', 0, '', 22, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:00:37', 0, '', 23, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:02:25', 0, '', 24, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:04:32', 0, '', 25, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:05:57', 0, '', 26, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:06:48', 0, '', 27, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:07:33', 0, '', 28, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:07:42', 0, '', 29, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:10:41', 0, '', 30, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:11:38', 0, '', 31, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:13:01', 0, '', 32, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:18:27', 0, '', 33, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:18:42', 0, '', 34, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:18:57', 0, '', 35, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:19:25', 0, '', 36, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:23:06', 0, '', 37, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:26:27', 0, '', 38, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:27:07', 0, '', 39, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:28:06', 0, '', 40, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:29:20', 0, '', 41, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:30:36', 0, '', 42, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:31:01', 0, '', 43, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:31:30', 0, '', 44, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:32:05', 0, '', 45, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:32:17', 0, '', 46, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:33:57', 0, '', 47, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:34:18', 0, '', 48, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:35:04', 0, '', 49, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:35:39', 0, '', 50, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:36:32', 0, '', 51, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:37:14', 0, '', 52, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:37:31', 0, '', 53, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:37:55', 0, '', 54, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:38:48', 0, '', 55, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:40:23', 0, '', 56, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:41:09', 0, '', 57, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:41:50', 0, '', 58, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:42:37', 0, '', 59, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:43:20', 0, '', 60, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:44:02', 0, '', 61, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:44:23', 0, '', 62, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:48:23', 0, '', 63, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:49:02', 0, '', 64, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:49:28', 0, '', 65, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:50:46', 0, '', 66, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:51:20', 0, '', 67, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:54:25', 0, '', 68, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:55:01', 0, '', 69, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:55:29', 0, '', 70, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:56:02', 0, '', 71, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:56:18', 0, '', 72, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:56:42', 0, '', 73, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:58:01', 0, '', 74, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:58:33', 0, '', 75, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 21:59:52', 0, '', 76, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:00:42', 0, '', 77, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:01:55', 0, '', 78, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:04:07', 0, '', 79, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:04:40', 0, '', 80, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:06:19', 0, '', 81, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:07:47', 0, '', 82, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:08:21', 0, '', 83, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:09:17', 0, '', 84, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:11:55', 0, '', 85, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:12:48', 0, '', 86, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:13:29', 0, '', 87, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:14:27', 0, '', 88, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:17:03', 0, '', 89, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:18:56', 0, '', 90, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:19:27', 0, '', 91, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:21:14', 0, '', 92, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:22:08', 0, '', 93, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:22:26', 0, '', 94, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:25:00', 0, '', 95, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:25:31', 0, '', 96, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:25:44', 0, '', 97, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:26:17', 0, '', 98, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:26:37', 0, '', 99, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:27:56', 0, '', 100, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:28:24', 0, '', 101, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:29:02', 0, '', 102, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:29:14', 0, '', 103, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:29:51', 0, '', 104, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:39:23', 0, '', 105, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:40:04', 0, '', 106, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:40:42', 0, '', 107, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:41:32', 0, '', 108, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:43:51', 0, '', 109, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:44:17', 0, '', 110, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:44:43', 0, '', 111, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:45:31', 0, '', 112, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:46:29', 0, '', 113, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:47:29', 0, '', 114, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:48:57', 0, '', 115, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:49:42', 0, '', 116, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:50:50', 0, '', 117, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:51:17', 0, '', 118, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 22:52:03', 0, '', 119, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:04:43', 0, '', 120, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:05:17', 0, '', 121, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:07:06', 0, '', 122, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:07:25', 0, '', 123, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:07:43', 0, '', 124, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:08:22', 0, '', 125, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:08:35', 0, '', 126, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:08:58', 0, '', 127, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:19:50', 0, '', 128, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:23:49', 0, '', 129, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:34:49', 0, '', 130, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:36:15', 0, '', 131, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:37:19', 0, '', 132, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:38:00', 0, '', 133, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:38:22', 0, '', 134, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:38:54', 0, '', 135, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:40:45', 0, '', 136, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:41:14', 0, '', 137, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:43:12', 0, '', 138, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:45:59', 0, '', 139, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:48:20', 0, '', 140, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:49:27', 0, '', 141, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:49:56', 0, '', 142, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:52:18', 0, '', 143, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:53:17', 0, '', 144, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:55:02', 0, '', 145, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:55:29', 0, '', 146, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:56:10', 0, '', 147, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:56:35', 0, '', 148, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:57:04', 0, '', 149, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:57:46', 0, '', 150, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:59:33', 0, '', 151, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-25 23:59:53', 0, '', 152, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:01:38', 0, '', 153, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:02:08', 0, '', 154, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:02:43', 0, '', 155, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:03:27', 0, '', 156, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:03:45', 0, '', 157, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:03:51', 0, '', 158, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:05:01', 0, '', 159, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:05:48', 0, '', 160, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:07:24', 0, '', 161, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:08:30', 0, '', 162, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:08:44', 0, '', 163, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:09:54', 0, '', 164, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:10:10', 0, '', 165, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:10:36', 0, '', 166, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:13:42', 0, '', 167, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:17:33', 0, '', 168, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:18:13', 0, '', 169, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:18:39', 0, '', 170, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:19:11', 0, '', 171, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:19:33', 0, '', 172, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:20:45', 0, '', 173, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:21:22', 0, '', 174, 288, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 00:21:40', 0, '', 175, 289, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 14:35:21', 0, '', 176, 287, 1, 'Ricardo Corrêa da Costa', '', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, '', 0),
(0, '2019-07-26 14:53:07', 0, '', 177, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 14:53:29', 0, '', 178, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 14:58:54', 0, '', 179, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:01:43', 0, '', 180, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:06:44', 0, '', 181, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:07:34', 0, '', 182, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:08:53', 0, '', 183, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:11:24', 0, '', 184, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:14:14', 0, '', 185, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:15:14', 0, '', 186, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:16:31', 0, '', 187, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:18:02', 0, '', 188, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:20:48', 0, '', 189, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:23:08', 0, '', 190, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:24:29', 0, '', 191, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:24:56', 0, '', 192, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:26:15', 0, '', 193, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:38:33', 0, '', 194, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:40:32', 0, '', 195, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:40:41', 0, '', 196, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:41:08', 0, '', 197, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:42:23', 0, '', 198, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:44:07', 0, '', 199, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:44:35', 0, '', 200, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:46:05', 0, '', 201, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:46:26', 0, '', 202, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:47:10', 0, '', 203, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:47:54', 0, '', 204, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:48:17', 0, '', 205, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:48:38', 0, '', 206, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:50:38', 0, '', 207, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:53:21', 0, '', 208, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:55:36', 0, '', 209, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:56:11', 0, '', 210, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:56:34', 0, '', 211, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 15:57:53', 0, '', 212, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:00:08', 0, '', 213, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:01:54', 0, '', 214, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:02:27', 0, '', 215, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:03:39', 0, '', 216, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:04:27', 0, '', 217, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:05:51', 0, '', 218, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:11:09', 0, '', 219, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:11:49', 0, '', 220, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:12:57', 0, '', 221, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:14:12', 0, '', 222, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:14:59', 0, '', 223, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:15:21', 0, '', 224, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:16:00', 0, '', 225, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:16:28', 0, '', 226, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:17:40', 0, '', 227, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:18:38', 0, '', 228, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:18:56', 0, '', 229, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:19:30', 0, '', 230, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:20:44', 0, '', 231, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:21:16', 0, '', 232, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:26:17', 0, '', 233, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:26:40', 0, '', 234, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:28:50', 0, '', 235, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:29:49', 0, '', 236, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:32:36', 0, '', 237, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:34:27', 0, '', 238, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:34:48', 0, '', 239, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:36:29', 0, '', 240, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:38:40', 0, '', 241, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:39:45', 0, '', 242, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:40:41', 0, '', 243, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:41:12', 0, '', 244, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:41:36', 0, '', 245, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:43:12', 0, '', 246, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:43:58', 0, '', 247, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 16:44:43', 0, '', 248, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 17:49:11', 0, '', 249, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-26 17:49:11', 0, '', 250, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 17:59:55', 0, '', 251, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:00:26', 0, '', 252, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:01:44', 0, '', 253, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:03:04', 0, '', 254, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:04:23', 0, '', 255, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:16:00', 0, '', 256, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:16:50', 0, '', 257, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:19:05', 0, '', 258, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:41:24', 0, '', 259, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:42:29', 0, '', 260, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:43:36', 0, '', 261, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:45:35', 0, '', 262, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:47:33', 0, '', 263, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:48:23', 0, '', 264, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 18:54:21', 0, '', 265, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:03:00', 0, '', 266, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:12:47', 0, '', 267, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:15:46', 0, '', 268, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:19:13', 0, '', 269, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:22:20', 0, '', 270, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:23:58', 0, '', 271, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:25:46', 0, '', 272, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:28:28', 0, '', 273, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:29:38', 0, '', 274, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:34:03', 0, '', 275, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:40:48', 0, '', 276, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:47:49', 0, '', 277, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 19:53:45', 0, '', 278, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:00:30', 0, '', 279, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:01:02', 0, '', 280, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:02:03', 0, '', 281, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:02:50', 0, '', 282, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:03:48', 0, '', 283, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:04:17', 0, '', 284, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:05:57', 0, '', 285, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:09:16', 0, '', 286, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:09:45', 0, '', 287, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:10:54', 0, '', 288, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:11:36', 0, '', 289, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:12:49', 0, '', 290, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:14:34', 0, '', 291, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:16:39', 0, '', 292, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:23:09', 0, '', 293, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:23:56', 0, '', 294, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:24:34', 0, '', 295, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:25:19', 0, '', 296, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:26:08', 0, '', 297, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:27:38', 0, '', 298, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:29:08', 0, '', 299, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:30:37', 0, '', 300, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:31:10', 0, '', 301, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:31:30', 0, '', 302, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:34:18', 0, '', 303, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:34:43', 0, '', 304, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:35:21', 0, '', 305, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:37:24', 0, '', 306, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:38:32', 0, '', 307, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:39:51', 0, '', 308, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:41:25', 0, '', 309, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0);
INSERT INTO `product_view_log` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `product_id`, `customer_id`, `first_name`, `last_name`, `username`, `email`, `mobile`, `address`, `is_active`) VALUES
(0, '2019-07-27 20:44:56', 0, '', 310, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:46:30', 0, '', 311, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:48:00', 0, '', 312, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:50:36', 0, '', 313, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:51:10', 0, '', 314, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:52:13', 0, '', 315, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:53:39', 0, '', 316, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 20:57:00', 0, '', 317, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:02:00', 0, '', 318, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:03:19', 0, '', 319, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:04:15', 0, '', 320, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:05:08', 0, '', 321, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:06:49', 0, '', 322, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:08:07', 0, '', 323, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:08:49', 0, '', 324, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:09:36', 0, '', 325, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:10:19', 0, '', 326, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:12:40', 0, '', 327, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:13:30', 0, '', 328, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:13:48', 0, '', 329, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:14:09', 0, '', 330, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:16:09', 0, '', 331, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:16:40', 0, '', 332, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:21:08', 0, '', 333, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:25:45', 0, '', 334, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:29:29', 0, '', 335, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:31:43', 0, '', 336, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:32:23', 0, '', 337, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:34:01', 0, '', 338, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:35:09', 0, '', 339, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:36:14', 0, '', 340, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:37:54', 0, '', 341, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:38:48', 0, '', 342, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:42:37', 0, '', 343, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:43:22', 0, '', 344, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:44:39', 0, '', 345, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:45:28', 0, '', 346, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:47:06', 0, '', 347, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 21:48:19', 0, '', 348, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 23:32:10', 0, '', 349, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 23:34:37', 0, '', 350, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 23:36:05', 0, '', 351, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 23:37:08', 0, '', 352, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 23:39:28', 0, '', 353, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 23:41:08', 0, '', 354, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-27 23:42:38', 0, '', 355, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:06:23', 0, '', 356, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:10:21', 0, '', 357, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:11:12', 0, '', 358, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:12:09', 0, '', 359, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:13:16', 0, '', 360, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:13:47', 0, '', 361, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:14:49', 0, '', 362, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:16:44', 0, '', 363, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:17:26', 0, '', 364, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:18:41', 0, '', 365, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:20:28', 0, '', 366, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:22:58', 0, '', 367, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:24:30', 0, '', 368, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:25:24', 0, '', 369, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:26:38', 0, '', 370, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:28:43', 0, '', 371, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:30:57', 0, '', 372, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:35:28', 0, '', 373, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:36:00', 0, '', 374, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:36:24', 0, '', 375, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:41:33', 0, '', 376, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:42:17', 0, '', 377, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:42:35', 0, '', 378, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:48:06', 0, '', 379, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:53:40', 0, '', 380, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:54:11', 0, '', 381, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:58:29', 0, '', 382, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 00:59:57', 0, '', 383, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:02:54', 0, '', 384, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:05:47', 0, '', 385, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:07:43', 0, '', 386, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:08:10', 0, '', 387, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:10:40', 0, '', 388, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:10:56', 0, '', 389, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:11:40', 0, '', 390, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:12:33', 0, '', 391, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:12:45', 0, '', 392, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:13:00', 0, '', 393, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:13:41', 0, '', 394, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:14:37', 0, '', 395, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:16:55', 0, '', 396, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:20:28', 0, '', 397, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:21:50', 0, '', 398, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:25:27', 0, '', 399, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:26:58', 0, '', 400, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:30:48', 0, '', 401, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:33:59', 0, '', 402, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:34:55', 0, '', 403, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:36:06', 0, '', 404, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:36:30', 0, '', 405, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:37:14', 0, '', 406, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:37:27', 0, '', 407, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:41:38', 0, '', 408, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:41:45', 0, '', 409, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:42:04', 0, '', 410, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:42:26', 0, '', 411, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:45:00', 0, '', 412, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:58:39', 0, '', 413, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 01:59:09', 0, '', 414, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:01:06', 0, '', 415, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:04:09', 0, '', 416, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:04:51', 0, '', 417, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:05:57', 0, '', 418, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:07:00', 0, '', 419, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:07:18', 0, '', 420, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:08:02', 0, '', 421, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:09:43', 0, '', 422, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:10:41', 0, '', 423, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:11:24', 0, '', 424, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 02:11:36', 0, '', 425, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 15:12:01', 0, '', 426, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 15:12:27', 0, '', 427, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 15:55:13', 0, '', 428, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 15:55:19', 0, '', 429, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:04:20', 0, '', 430, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:10:05', 0, '', 431, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:10:39', 0, '', 432, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:11:29', 0, '', 433, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:12:22', 0, '', 434, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:12:51', 0, '', 435, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:14:53', 0, '', 436, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:16:04', 0, '', 437, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:16:24', 0, '', 438, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:18:10', 0, '', 439, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:18:56', 0, '', 440, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:19:35', 0, '', 441, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:20:33', 0, '', 442, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:21:16', 0, '', 443, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:21:55', 0, '', 444, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:25:00', 0, '', 445, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:31:39', 0, '', 446, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:33:27', 0, '', 447, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:35:57', 0, '', 448, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:49:03', 0, '', 449, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:53:34', 0, '', 450, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:54:52', 0, '', 451, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:58:19', 0, '', 452, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 16:59:22', 0, '', 453, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:03:09', 0, '', 454, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:06:17', 0, '', 455, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:08:38', 0, '', 456, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:09:46', 0, '', 457, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:10:25', 0, '', 458, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:11:14', 0, '', 459, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:20:51', 0, '', 460, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:21:55', 0, '', 461, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:22:40', 0, '', 462, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:27:11', 0, '', 463, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:27:42', 0, '', 464, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:28:00', 0, '', 465, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:29:25', 0, '', 466, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:29:52', 0, '', 467, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:31:09', 0, '', 468, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:33:01', 0, '', 469, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:33:42', 0, '', 470, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:36:45', 0, '', 471, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:38:14', 0, '', 472, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:39:10', 0, '', 473, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:39:45', 0, '', 474, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:40:34', 0, '', 475, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:42:30', 0, '', 476, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:43:55', 0, '', 477, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:44:25', 0, '', 478, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:44:49', 0, '', 479, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:45:10', 0, '', 480, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:45:57', 0, '', 481, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:47:46', 0, '', 482, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:48:06', 0, '', 483, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:49:08', 0, '', 484, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:50:06', 0, '', 485, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:51:42', 0, '', 486, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:52:00', 0, '', 487, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:53:30', 0, '', 488, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:54:41', 0, '', 489, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:55:24', 0, '', 490, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 17:56:10', 0, '', 491, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 18:44:24', 0, '', 492, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 18:45:04', 0, '', 493, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 18:45:30', 0, '', 494, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 18:46:09', 0, '', 495, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 18:49:45', 0, '', 496, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 18:50:09', 0, '', 497, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:26:14', 0, '', 498, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:28:26', 0, '', 499, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:30:00', 0, '', 500, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:31:15', 0, '', 501, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:31:38', 0, '', 502, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:33:01', 0, '', 503, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:33:22', 0, '', 504, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:34:35', 0, '', 505, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:34:49', 0, '', 506, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:36:53', 0, '', 507, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:41:18', 0, '', 508, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:42:07', 0, '', 509, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:42:29', 0, '', 510, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:42:48', 0, '', 511, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:43:16', 0, '', 512, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:46:13', 0, '', 513, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:46:35', 0, '', 514, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:48:28', 0, '', 515, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:50:06', 0, '', 516, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:51:29', 0, '', 517, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:54:18', 0, '', 518, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:55:01', 0, '', 519, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:55:14', 0, '', 520, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:56:55', 0, '', 521, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:57:18', 0, '', 522, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 19:58:05', 0, '', 523, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:00:49', 0, '', 524, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:01:43', 0, '', 525, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:02:28', 0, '', 526, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:02:49', 0, '', 527, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:04:23', 0, '', 528, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:05:14', 0, '', 529, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:05:56', 0, '', 530, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:08:09', 0, '', 531, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:10:35', 0, '', 532, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:11:11', 0, '', 533, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:11:23', 0, '', 534, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:11:41', 0, '', 535, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:12:23', 0, '', 536, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:12:37', 0, '', 537, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:13:05', 0, '', 538, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:15:12', 0, '', 539, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:15:37', 0, '', 540, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:16:44', 0, '', 541, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:17:47', 0, '', 542, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:18:16', 0, '', 543, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:18:41', 0, '', 544, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:20:28', 0, '', 545, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:20:46', 0, '', 546, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:23:14', 0, '', 547, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:23:55', 0, '', 548, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:24:33', 0, '', 549, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:25:00', 0, '', 550, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:27:19', 0, '', 551, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:27:26', 0, '', 552, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:28:03', 0, '', 553, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:29:40', 0, '', 554, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:31:29', 0, '', 555, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:31:36', 0, '', 556, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:32:18', 0, '', 557, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:32:56', 0, '', 558, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:33:33', 0, '', 559, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:34:10', 0, '', 560, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:34:39', 0, '', 561, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:35:28', 0, '', 562, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:35:59', 0, '', 563, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:40:05', 0, '', 564, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:40:40', 0, '', 565, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:41:53', 0, '', 566, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:42:46', 0, '', 567, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:43:40', 0, '', 568, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:43:54', 0, '', 569, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:53:16', 0, '', 570, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:54:02', 0, '', 571, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:54:33', 0, '', 572, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:56:49', 0, '', 573, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:57:07', 0, '', 574, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:58:25', 0, '', 575, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 20:59:54', 0, '', 576, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:03:46', 0, '', 577, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:04:02', 0, '', 578, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:07:25', 0, '', 579, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:08:09', 0, '', 580, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:09:49', 0, '', 581, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:10:45', 0, '', 582, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:12:00', 0, '', 583, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:13:20', 0, '', 584, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:14:29', 0, '', 585, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:15:18', 0, '', 586, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:15:35', 0, '', 587, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:16:20', 0, '', 588, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:17:58', 0, '', 589, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:19:23', 0, '', 590, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:20:22', 0, '', 591, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:21:49', 0, '', 592, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:23:02', 0, '', 593, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:25:55', 0, '', 594, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:27:57', 0, '', 595, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:29:47', 0, '', 596, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:30:45', 0, '', 597, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:31:12', 0, '', 598, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:31:40', 0, '', 599, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:32:18', 0, '', 600, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:34:30', 0, '', 601, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:35:51', 0, '', 602, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:36:52', 0, '', 603, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:39:29', 0, '', 604, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:39:52', 0, '', 605, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0);
INSERT INTO `product_view_log` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `product_id`, `customer_id`, `first_name`, `last_name`, `username`, `email`, `mobile`, `address`, `is_active`) VALUES
(0, '2019-07-28 21:40:19', 0, '', 606, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:42:08', 0, '', 607, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:43:22', 0, '', 608, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:48:00', 0, '', 609, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:48:21', 0, '', 610, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:49:23', 0, '', 611, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:50:07', 0, '', 612, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:52:12', 0, '', 613, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:52:36', 0, '', 614, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:53:06', 0, '', 615, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:53:40', 0, '', 616, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:56:21', 0, '', 617, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:56:34', 0, '', 618, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:57:44', 0, '', 619, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 21:58:40', 0, '', 620, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 22:00:50', 0, '', 621, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 22:02:04', 0, '', 622, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 22:06:14', 0, '', 623, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 23:44:13', 0, '', 624, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 23:46:23', 0, '', 625, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 23:50:29', 0, '', 626, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 23:51:01', 0, '', 627, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 23:53:23', 0, '', 628, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 23:54:10', 0, '', 629, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 23:55:11', 0, '', 630, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 23:56:05', 0, '', 631, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-28 23:56:50', 0, '', 632, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:01:56', 0, '', 633, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:08:43', 0, '', 634, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:11:28', 0, '', 635, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:11:57', 0, '', 636, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:13:08', 0, '', 637, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:14:37', 0, '', 638, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:21:26', 0, '', 639, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:22:52', 0, '', 640, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:23:23', 0, '', 641, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:23:49', 0, '', 642, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:25:38', 0, '', 643, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:27:19', 0, '', 644, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:46:23', 0, '', 645, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:51:01', 0, '', 646, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:57:04', 0, '', 647, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 00:58:25', 0, '', 648, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:02:50', 0, '', 649, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:03:53', 0, '', 650, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:04:25', 0, '', 651, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:04:38', 0, '', 652, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:04:57', 0, '', 653, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:15:14', 0, '', 654, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:16:06', 0, '', 655, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:16:34', 0, '', 656, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:20:09', 0, '', 657, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:24:27', 0, '', 658, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:27:12', 0, '', 659, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:33:20', 0, '', 660, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-07-29 01:34:27', 0, '', 661, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 15:55:04', 0, '', 662, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 16:06:55', 0, '', 663, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 16:09:57', 0, '', 664, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 16:10:03', 0, '', 665, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 16:10:11', 0, '', 666, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:10:33', 0, '', 667, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:11:40', 0, '', 668, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:19:04', 0, '', 669, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:19:56', 0, '', 670, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:20:24', 0, '', 671, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:27:56', 0, '', 672, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:29:03', 0, '', 673, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:31:18', 0, '', 674, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:32:43', 0, '', 675, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:33:28', 0, '', 676, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:34:12', 0, '', 677, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:34:46', 0, '', 678, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:36:36', 0, '', 679, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:37:56', 0, '', 680, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:38:51', 0, '', 681, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:40:41', 0, '', 682, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:42:40', 0, '', 683, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:43:11', 0, '', 684, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:44:21', 0, '', 685, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:46:38', 0, '', 686, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:47:00', 0, '', 687, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:48:43', 0, '', 688, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:49:10', 0, '', 689, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:50:18', 0, '', 690, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:50:36', 0, '', 691, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:51:13', 0, '', 692, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:51:30', 0, '', 693, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:53:44', 0, '', 694, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:54:03', 0, '', 695, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:56:28', 0, '', 696, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:57:37', 0, '', 697, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 17:57:56', 0, '', 698, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:00:10', 0, '', 699, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:00:35', 0, '', 700, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:00:55', 0, '', 701, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:02:16', 0, '', 702, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:02:45', 0, '', 703, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:03:08', 0, '', 704, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:09:18', 0, '', 705, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:09:57', 0, '', 706, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:11:03', 0, '', 707, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:13:02', 0, '', 708, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:17:26', 0, '', 709, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:17:49', 0, '', 710, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:18:09', 0, '', 711, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:19:39', 0, '', 712, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:20:26', 0, '', 713, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:21:36', 0, '', 714, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:22:10', 0, '', 715, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:43:38', 0, '', 716, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 18:44:11', 0, '', 717, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 19:18:54', 0, '', 718, 303, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-02 19:20:28', 0, '', 719, 306, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-04 21:35:15', 0, '', 720, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-04 21:38:01', 0, '', 721, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-04 21:44:35', 0, '', 722, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-04 21:58:46', 0, '', 723, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-04 22:01:48', 0, '', 724, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:06:21', 0, '', 725, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:06:41', 0, '', 726, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:07:08', 0, '', 727, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:09:10', 0, '', 728, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:09:44', 0, '', 729, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:11:02', 0, '', 730, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:11:45', 0, '', 731, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:12:26', 0, '', 732, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:14:56', 0, '', 733, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:15:06', 0, '', 734, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:15:12', 0, '', 735, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:15:40', 0, '', 736, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:15:54', 0, '', 737, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:16:39', 0, '', 738, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:16:50', 0, '', 739, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:16:54', 0, '', 740, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:18:28', 0, '', 741, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:18:41', 0, '', 742, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:19:05', 0, '', 743, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:36:35', 0, '', 744, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:36:51', 0, '', 745, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 16:37:49', 0, '', 746, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 20:38:22', 0, '', 747, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 20:39:14', 0, '', 748, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 20:47:17', 0, '', 749, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 21:13:31', 0, '', 750, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 21:16:56', 0, '', 751, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:13:17', 0, '', 752, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:14:33', 0, '', 753, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:15:16', 0, '', 754, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:15:23', 0, '', 755, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:16:33', 0, '', 756, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:20:43', 0, '', 757, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:21:18', 0, '', 758, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:21:45', 0, '', 759, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:23:16', 0, '', 760, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:24:16', 0, '', 761, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:24:39', 0, '', 762, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:25:21', 0, '', 763, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:25:34', 0, '', 764, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:26:11', 0, '', 765, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:26:37', 0, '', 766, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:27:39', 0, '', 767, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:28:06', 0, '', 768, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:29:04', 0, '', 769, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:29:47', 0, '', 770, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:30:31', 0, '', 771, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:32:25', 0, '', 772, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:32:57', 0, '', 773, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:33:11', 0, '', 774, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:34:13', 0, '', 775, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:35:20', 0, '', 776, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:37:14', 0, '', 777, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:37:37', 0, '', 778, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:38:16', 0, '', 779, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:38:40', 0, '', 780, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:38:59', 0, '', 781, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:39:11', 0, '', 782, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:39:34', 0, '', 783, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:40:04', 0, '', 784, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:42:46', 0, '', 785, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:43:04', 0, '', 786, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:48:28', 0, '', 787, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:49:40', 0, '', 788, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:50:11', 0, '', 789, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:50:51', 0, '', 790, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:51:19', 0, '', 791, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:52:16', 0, '', 792, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:52:45', 0, '', 793, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:53:04', 0, '', 794, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:53:38', 0, '', 795, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:54:10', 0, '', 796, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:55:28', 0, '', 797, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:55:47', 0, '', 798, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 22:56:07', 0, '', 799, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 23:07:16', 0, '', 800, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 23:11:00', 0, '', 801, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 23:12:18', 0, '', 802, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 23:15:15', 0, '', 803, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 23:15:52', 0, '', 804, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 23:16:02', 0, '', 805, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 23:16:45', 0, '', 806, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 23:17:28', 0, '', 807, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-05 23:19:13', 0, '', 808, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 16:42:46', 0, '', 809, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 16:44:33', 0, '', 810, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 16:46:00', 0, '', 811, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 16:47:00', 0, '', 812, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 16:47:20', 0, '', 813, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 16:48:34', 0, '', 814, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 16:49:12', 0, '', 815, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:02:14', 0, '', 816, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:02:21', 0, '', 817, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:04:20', 0, '', 818, 320, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:12:51', 0, '', 819, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:13:01', 0, '', 820, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:17:12', 0, '', 821, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:19:07', 0, '', 822, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:19:51', 0, '', 823, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:21:37', 0, '', 824, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:21:46', 0, '', 825, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:24:40', 0, '', 826, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:25:20', 0, '', 827, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:26:52', 0, '', 828, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:27:29', 0, '', 829, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:27:53', 0, '', 830, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:28:13', 0, '', 831, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:29:57', 0, '', 832, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:30:21', 0, '', 833, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:30:44', 0, '', 834, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:32:10', 0, '', 835, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:37:04', 0, '', 836, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:37:13', 0, '', 837, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:37:43', 0, '', 838, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:38:08', 0, '', 839, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:40:18', 0, '', 840, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:41:14', 0, '', 841, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:41:28', 0, '', 842, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:43:34', 0, '', 843, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:45:48', 0, '', 844, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:46:19', 0, '', 845, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:46:40', 0, '', 846, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:47:12', 0, '', 847, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:48:07', 0, '', 848, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:50:13', 0, '', 849, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:50:56', 0, '', 850, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:51:53', 0, '', 851, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:52:56', 0, '', 852, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:54:08', 0, '', 853, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:55:24', 0, '', 854, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:56:24', 0, '', 855, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:57:16', 0, '', 856, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:57:45', 0, '', 857, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 17:57:54', 0, '', 858, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:00:13', 0, '', 859, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:00:41', 0, '', 860, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:01:33', 0, '', 861, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:03:22', 0, '', 862, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:03:55', 0, '', 863, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:04:44', 0, '', 864, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:05:21', 0, '', 865, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:05:40', 0, '', 866, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:06:07', 0, '', 867, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:06:36', 0, '', 868, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:10:21', 0, '', 869, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:10:44', 0, '', 870, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:11:04', 0, '', 871, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:11:33', 0, '', 872, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:11:55', 0, '', 873, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:12:06', 0, '', 874, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:12:21', 0, '', 875, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:12:26', 0, '', 876, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:12:58', 0, '', 877, 287, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:13:11', 0, '', 878, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:14:06', 0, '', 879, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:15:43', 0, '', 880, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:19:38', 0, '', 881, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:21:24', 0, '', 882, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:26:02', 0, '', 883, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:26:34', 0, '', 884, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:27:22', 0, '', 885, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:27:33', 0, '', 886, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:28:11', 0, '', 887, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:28:18', 0, '', 888, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:29:00', 0, '', 889, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:29:10', 0, '', 890, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:29:19', 0, '', 891, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:36:01', 0, '', 892, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:38:35', 0, '', 893, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:39:30', 0, '', 894, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:40:15', 0, '', 895, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:41:12', 0, '', 896, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:42:54', 0, '', 897, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:43:14', 0, '', 898, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:44:01', 0, '', 899, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:44:46', 0, '', 900, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 18:45:35', 0, '', 901, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0);
INSERT INTO `product_view_log` (`created_by`, `created_date`, `modified_by`, `modified_date`, `id`, `product_id`, `customer_id`, `first_name`, `last_name`, `username`, `email`, `mobile`, `address`, `is_active`) VALUES
(0, '2019-08-06 19:27:48', 0, '', 902, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 19:28:09', 0, '', 903, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 19:29:00', 0, '', 904, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 19:29:12', 0, '', 905, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 19:30:19', 0, '', 906, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:37:53', 0, '', 907, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:38:30', 0, '', 908, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:39:34', 0, '', 909, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:41:54', 0, '', 910, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:42:51', 0, '', 911, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:43:38', 0, '', 912, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:44:16', 0, '', 913, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:45:18', 0, '', 914, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:46:11', 0, '', 915, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:46:41', 0, '', 916, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:48:16', 0, '', 917, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:49:53', 0, '', 918, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:51:29', 0, '', 919, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:52:09', 0, '', 920, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:54:35', 0, '', 921, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:57:47', 0, '', 922, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:58:18', 0, '', 923, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 20:58:40', 0, '', 924, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:00:57', 0, '', 925, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:02:29', 0, '', 926, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:04:36', 0, '', 927, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:07:05', 0, '', 928, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:07:51', 0, '', 929, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:08:13', 0, '', 930, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:08:29', 0, '', 931, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:09:01', 0, '', 932, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:09:43', 0, '', 933, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:09:54', 0, '', 934, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:12:14', 0, '', 935, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:12:25', 0, '', 936, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:14:06', 0, '', 937, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:14:35', 0, '', 938, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:15:34', 0, '', 939, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:15:55', 0, '', 940, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:17:08', 0, '', 941, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:24:06', 0, '', 942, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:24:49', 0, '', 943, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:25:49', 0, '', 944, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:26:20', 0, '', 945, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:26:38', 0, '', 946, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:27:14', 0, '', 947, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:27:27', 0, '', 948, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:27:40', 0, '', 949, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:27:51', 0, '', 950, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:28:05', 0, '', 951, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:28:16', 0, '', 952, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:28:49', 0, '', 953, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:29:06', 0, '', 954, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:29:17', 0, '', 955, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:29:40', 0, '', 956, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:30:28', 0, '', 957, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:30:56', 0, '', 958, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:31:10', 0, '', 959, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:32:21', 0, '', 960, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:32:40', 0, '', 961, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:32:47', 0, '', 962, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:33:10', 0, '', 963, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:33:44', 0, '', 964, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:34:26', 0, '', 965, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:34:58', 0, '', 966, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:35:15', 0, '', 967, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:36:23', 0, '', 968, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:37:44', 0, '', 969, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:38:22', 0, '', 970, 319, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:38:45', 0, '', 971, 314, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:38:57', 0, '', 972, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:40:04', 0, '', 973, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:40:58', 0, '', 974, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:43:02', 0, '', 975, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:46:35', 0, '', 976, 316, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 21:47:38', 0, '', 977, 316, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 22:14:01', 0, '', 978, 330, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 22:15:30', 0, '', 979, 330, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 22:15:41', 0, '', 980, 330, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 22:16:48', 0, '', 981, 330, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 22:18:59', 0, '', 982, 330, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 22:56:33', 0, '', 983, 316, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 22:56:45', 0, '', 984, 315, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 22:57:06', 0, '', 985, 315, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 22:57:40', 0, '', 986, 315, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0),
(0, '2019-08-06 23:00:51', 0, '', 987, 318, 1, 'Ricardo', 'Corrêa da Costa', 'rikardodeveloper@gmail.com', 'rikardodeveloper@gmail.com', 2147483647, 'rua cruz alta', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `meta_tag_title` varchar(255) NOT NULL,
  `meta_tag_description` varchar(255) NOT NULL,
  `meta_tag_keywords` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `store_owner` varchar(255) NOT NULL,
  `store_address` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `store_email` varchar(255) NOT NULL,
  `store_telephone` varchar(255) NOT NULL,
  `store_fax` varchar(255) NOT NULL,
  `store_logo` varchar(255) NOT NULL,
  `store_logo_path` varchar(255) NOT NULL,
  `maintenance_mode` int(11) NOT NULL,
  `store_language_name` varchar(255) NOT NULL,
  `store_currency_id` int(11) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_image_path` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `invoice_prefix` varchar(255) NOT NULL,
  `category_product_count` int(11) NOT NULL,
  `items_per_page` int(11) NOT NULL,
  `is_active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`created_by`, `created_date`, `modified_by`, `modified_date`, `settings_id`, `url`, `meta_tag_title`, `meta_tag_description`, `meta_tag_keywords`, `store_name`, `store_owner`, `store_address`, `country_id`, `zone_id`, `order_status`, `store_email`, `store_telephone`, `store_fax`, `store_logo`, `store_logo_path`, `maintenance_mode`, `store_language_name`, `store_currency_id`, `store_image`, `store_image_path`, `facebook`, `google`, `twitter`, `instagram`, `invoice_prefix`, `category_product_count`, `items_per_page`, `is_active`) VALUES
(0, '2019-02-13 06:00:00', 0, '2019-08-05 21:03:43', 2, 'www.spurt.com', 'Complatte', 'description', 'keyword', 'Complatte', 'Admin', 'Porto Alegre, Brasil', 30, 73, 1, 'admin@complatte.com', '0000000000', '1221', 'Img_1564006955546.png', 'storeLogo/', 0, 'Portugues', 58, 'storeImage', 'storeImage/', 'https://www.facebook.com/spurtcommerce/', 'https://plus.google.com/106505712715559114904', 'https://twitter.com/Spurtcommerce', 'https://www.instagram.com/spurt_commerce/', 'SPU', 0, 40, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `stock_status`
--

CREATE TABLE `stock_status` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `stock_status`
--

INSERT INTO `stock_status` (`created_by`, `created_date`, `modified_by`, `modified_date`, `stock_status_id`, `name`, `is_active`) VALUES
(0, '2019-03-25 00:49:53', 0, '2019-04-05 02:33:42', 78, 'Pre Order', 1),
(0, '2019-03-25 00:50:34', 0, '', 79, 'More Stock', 1),
(0, '2019-03-25 00:50:50', 0, '', 80, '3 day befor stock', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `avatar_path` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`created_by`, `created_date`, `modified_by`, `modified_date`, `user_id`, `user_group_id`, `username`, `password`, `first_name`, `last_name`, `email`, `avatar`, `avatar_path`, `is_active`, `code`, `ip`, `phone_number`, `address`) VALUES
(0, '2019-02-15 04:13:22', 0, '2019-07-25 15:16:11', 49, 1, 'admin@piccocart.com', '$2a$10$UxGUfPF1/sHJdueBeEQQsOej8hkvEwypOk487D7FjMgi/FhSRLSny', 'Admin', ' ', 'admin@piccocart.com', 'Img_1564078571752.png', 'user/', 1, '', '', '5456465656', 'India');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_group`
--

CREATE TABLE `user_group` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_group`
--

INSERT INTO `user_group` (`created_by`, `created_date`, `modified_by`, `modified_date`, `group_id`, `name`, `slug`, `is_active`) VALUES
(0, '2019-01-21 10:38:14', 0, '2019-04-08 03:59:33', 1, 'Admin', 'optional', 0),
(0, '2019-02-18 03:58:03', 0, '2019-04-08 01:31:15', 78, 'Sales Team', '', 1),
(0, '2019-02-18 05:08:55', 0, '2019-02-19 00:42:26', 79, 'Role 1', '', 0),
(0, '2019-02-18 05:09:42', 0, '', 80, 'Role 2', '', 1),
(0, '2019-02-18 23:14:33', 0, '2019-03-19 21:33:00', 81, 'Marketting', '', 0),
(0, '2019-02-20 05:52:08', 0, '', 82, 'admins', '', 1),
(0, '2019-03-20 04:51:56', 0, '', 83, 'aaaa', '', 0),
(0, '2019-03-20 04:52:22', 0, '2019-03-23 04:56:51', 84, 'Marketing', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `zone`
--

CREATE TABLE `zone` (
  `created_by` int(11) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `zone`
--

INSERT INTO `zone` (`created_by`, `created_date`, `modified_by`, `modified_date`, `zone_id`, `country_id`, `code`, `name`, `is_active`) VALUES
(0, '2019-02-17 22:17:27', 0, '2019-04-08 01:28:07', 58, 45, 'JAF', 'Jaffna', 0),
(0, '2019-02-17 22:17:49', 0, '2019-04-06 03:32:42', 59, 22, 'MUM', 'Mumbai', 1),
(0, '2019-02-18 23:46:22', 0, '2019-05-10 04:05:34', 63, 22, 'KL', 'kerala', 1),
(0, '2019-02-19 07:19:48', 0, '2019-03-12 09:11:16', 66, 22, 'GOA', 'Goa', 1),
(0, '2019-02-19 07:24:14', 0, '2019-05-10 04:05:46', 67, 22, 'PY', 'Pondy', 0),
(0, '2019-02-19 07:25:57', 0, '2019-04-06 03:33:07', 68, 24, 'ss', 'ss', 1),
(0, '2019-02-19 07:46:47', 0, '2019-04-06 03:33:01', 73, 24, 'Zone', 'Zone', 1),
(0, '2019-02-20 06:38:52', 0, '2019-04-06 03:32:56', 74, 30, 'ZX', 'YUY', 1),
(0, '2019-02-20 06:39:04', 0, '2019-04-06 03:32:53', 75, 24, 'Y', 'UIU', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `zone_to_geo_zone`
--

CREATE TABLE `zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `access_token`
--
ALTER TABLE `access_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_4bd9bc00776919370526766eb43` (`user_id`);

--
-- Índices para tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Índices para tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Índices para tabela `banner_group`
--
ALTER TABLE `banner_group`
  ADD PRIMARY KEY (`banner_group_id`);

--
-- Índices para tabela `banner_image`
--
ALTER TABLE `banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Índices para tabela `banner_image_description`
--
ALTER TABLE `banner_image_description`
  ADD PRIMARY KEY (`banner_image_description_id`);

--
-- Índices para tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Índices para tabela `category_description`
--
ALTER TABLE `category_description`
  ADD PRIMARY KEY (`category_description_id`);

--
-- Índices para tabela `category_path`
--
ALTER TABLE `category_path`
  ADD PRIMARY KEY (`category_path_id`);

--
-- Índices para tabela `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Índices para tabela `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Índices para tabela `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `customer_ip`
--
ALTER TABLE `customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`);

--
-- Índices para tabela `customer_transaction`
--
ALTER TABLE `customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Índices para tabela `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e919c0b8fda06743978544a3eab` (`product_id`);

--
-- Índices para tabela `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `geo_zone`
--
ALTER TABLE `geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Índices para tabela `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Índices para tabela `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_6283d0ef6e09502a9ed38da83b1` (`order_status_id`);

--
-- Índices para tabela `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Índices para tabela `order_log`
--
ALTER TABLE `order_log`
  ADD PRIMARY KEY (`order_log_id`);

--
-- Índices para tabela `order_option`
--
ALTER TABLE `order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Índices para tabela `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `FK_400f1584bf37c21172da3b15e2d` (`product_id`),
  ADD KEY `FK_ea143999ecfa6a152f2202895e2` (`order_id`);

--
-- Índices para tabela `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Índices para tabela `order_total`
--
ALTER TABLE `order_total`
  ADD PRIMARY KEY (`order_total_id`);

--
-- Índices para tabela `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `fk_page_page_group1` (`page_group_id`);

--
-- Índices para tabela `page_group`
--
ALTER TABLE `page_group`
  ADD PRIMARY KEY (`page_group_id`);

--
-- Índices para tabela `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Índices para tabela `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`product_description_id`);

--
-- Índices para tabela `product_discount`
--
ALTER TABLE `product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `fk_product_discount_product1` (`product_id`);

--
-- Índices para tabela `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `fk_product_image_product1` (`product_id`);

--
-- Índices para tabela `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `FK_471d781129287bd9016d2e74d01` (`customer_id`),
  ADD KEY `fk_product_rating_product1` (`product_id`);

--
-- Índices para tabela `product_related`
--
ALTER TABLE `product_related`
  ADD PRIMARY KEY (`related_id`),
  ADD KEY `FK_ba347f6825d99560f91f69e0232` (`related_product_id`),
  ADD KEY `fk_product_related_product1` (`product_id`);

--
-- Índices para tabela `product_special`
--
ALTER TABLE `product_special`
  ADD PRIMARY KEY (`product_special_id`);

--
-- Índices para tabela `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`product_tag_id`);

--
-- Índices para tabela `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD PRIMARY KEY (`product_to_category_id`),
  ADD KEY `FK_ef1119ce91f7cb425a5862be941` (`product_id`),
  ADD KEY `FK_c56688ed83d7e74fa56452a0641` (`category_id`);

--
-- Índices para tabela `product_view_log`
--
ALTER TABLE `product_view_log`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Índices para tabela `stock_status`
--
ALTER TABLE `stock_status`
  ADD PRIMARY KEY (`stock_status_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_users_usergroup` (`user_group_id`);

--
-- Índices para tabela `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Índices para tabela `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `fk_Zone_Country` (`country_id`);

--
-- Índices para tabela `zone_to_geo_zone`
--
ALTER TABLE `zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`),
  ADD KEY `fk_Zone_ZoneGeo` (`zone_id`),
  ADD KEY `fk_Country_ZoneGeo` (`country_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `access_token`
--
ALTER TABLE `access_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `banner_group`
--
ALTER TABLE `banner_group`
  MODIFY `banner_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `banner_image`
--
ALTER TABLE `banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `banner_image_description`
--
ALTER TABLE `banner_image_description`
  MODIFY `banner_image_description_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de tabela `category_description`
--
ALTER TABLE `category_description`
  MODIFY `category_description_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `category_path`
--
ALTER TABLE `category_path`
  MODIFY `category_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT de tabela `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT de tabela `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `customer_ip`
--
ALTER TABLE `customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `customer_transaction`
--
ALTER TABLE `customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `geo_zone`
--
ALTER TABLE `geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `login_log`
--
ALTER TABLE `login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT de tabela `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `order_history`
--
ALTER TABLE `order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `order_log`
--
ALTER TABLE `order_log`
  MODIFY `order_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `order_option`
--
ALTER TABLE `order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `order_product`
--
ALTER TABLE `order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `order_status`
--
ALTER TABLE `order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `order_total`
--
ALTER TABLE `order_total`
  MODIFY `order_total_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de tabela `page_group`
--
ALTER TABLE `page_group`
  MODIFY `page_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT de tabela `product_description`
--
ALTER TABLE `product_description`
  MODIFY `product_description_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `product_discount`
--
ALTER TABLE `product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT de tabela `product_image`
--
ALTER TABLE `product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2084;

--
-- AUTO_INCREMENT de tabela `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `product_related`
--
ALTER TABLE `product_related`
  MODIFY `related_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT de tabela `product_special`
--
ALTER TABLE `product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT de tabela `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `product_tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `product_to_category`
--
ALTER TABLE `product_to_category`
  MODIFY `product_to_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2366;

--
-- AUTO_INCREMENT de tabela `product_view_log`
--
ALTER TABLE `product_view_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `stock_status`
--
ALTER TABLE `stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de tabela `zone`
--
ALTER TABLE `zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de tabela `zone_to_geo_zone`
--
ALTER TABLE `zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `access_token`
--
ALTER TABLE `access_token`
  ADD CONSTRAINT `FK_4bd9bc00776919370526766eb43` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `customer_wishlist`
--
ALTER TABLE `customer_wishlist`
  ADD CONSTRAINT `FK_e919c0b8fda06743978544a3eab` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_6283d0ef6e09502a9ed38da83b1` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `FK_400f1584bf37c21172da3b15e2d` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ea143999ecfa6a152f2202895e2` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK_dbc7d9aa7ed42c9141b968a9ed3` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `product_rating`
--
ALTER TABLE `product_rating`
  ADD CONSTRAINT `FK_471d781129287bd9016d2e74d01` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_fdfbb8dd069a3a21d8339b5e9db` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `product_related`
--
ALTER TABLE `product_related`
  ADD CONSTRAINT `FK_ba347f6825d99560f91f69e0232` FOREIGN KEY (`related_product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD CONSTRAINT `FK_c56688ed83d7e74fa56452a0641` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ef1119ce91f7cb425a5862be941` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_c4ddb11f1661cb6507b3557fbd3` FOREIGN KEY (`user_group_id`) REFERENCES `user_group` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `zone`
--
ALTER TABLE `zone`
  ADD CONSTRAINT `FK_64f346ab055ac37932e8a4b2366` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `zone_to_geo_zone`
--
ALTER TABLE `zone_to_geo_zone`
  ADD CONSTRAINT `fk_Country_ZoneGeo` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_Zone_ZoneGeo` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
