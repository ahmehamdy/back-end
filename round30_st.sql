-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2024 at 01:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `round30_st`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT 'cairo',
  `age` int(11) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `country`, `age`, `phone`, `gender`) VALUES
(1, 'Mohamed elhossiny', 'China', 37, '+86 (397) 108-1291', 'Male'),
(2, 'Ogden Ilewicz', 'Poland', 17, '+48 (421) 312-3330', 'Male'),
(3, 'Johannes Pelzer', 'Poland', 68, '+48 (779) 301-6262', 'Male'),
(4, 'Charyl Linton', 'Indonesia', 26, '+62 (965) 369-5473', 'Female'),
(5, 'Merna MacCard', 'China', 29, '+86 (115) 211-0555', 'Female'),
(6, 'Dorris Rizzini', 'China', 50, '+86 (788) 171-3733', 'Female'),
(7, 'Sibeal Chittem', 'Bangladesh', 54, '+880 (691) 878-0346', 'Female'),
(8, 'Judi Clapperton', 'China', 63, '+86 (542) 819-3379', 'Female'),
(9, 'Laird Nevet', 'China', 85, '+86 (533) 360-3093', 'Male'),
(10, 'Cleo Umpleby', 'Peru', 45, '+51 (258) 855-8836', 'Female'),
(11, 'Cam Newart', 'China', 76, '+86 (253) 310-2939', 'Male'),
(12, 'Freddy Formoy', 'Czech Republic', 59, '+420 (419) 427-7941', 'Male'),
(13, 'Verney Stronge', 'Philippines', 45, '+63 (222) 948-0461', 'Male'),
(14, 'Jo-anne Spours', 'China', 73, '+86 (625) 241-8715', 'Female'),
(15, 'Gerardo Mawditt', 'Tunisia', 70, '+216 (786) 762-3877', 'Male'),
(16, 'Stella Sutehall', 'Russia', 46, '+7 (669) 653-8251', 'Female'),
(17, 'Blanche Redferne', 'China', 86, '+86 (448) 904-4570', 'Female'),
(18, 'Darius Wolfarth', 'China', 29, '+86 (344) 350-9287', 'Male'),
(19, 'Boote Denning', 'Philippines', 54, '+63 (740) 915-7885', 'Male'),
(20, 'Wallie Scothern', 'Central African Republic', 70, '+236 (932) 466-9934', 'Male'),
(21, 'Candide Menci', 'Palestinian Territory', 85, '+970 (815) 867-3383', 'Female'),
(22, 'Blanche Daws', 'Zimbabwe', 31, '+263 (353) 401-2252', 'Female'),
(23, 'Benedikt Cymper', 'United States', 82, '+1 (614) 227-8121', 'Male'),
(24, 'Chrotoem Acey', 'Russia', 86, '+7 (732) 111-7566', 'Male'),
(25, 'Sid Dimblebee', 'France', 63, '+33 (958) 950-1686', 'Male'),
(26, 'Gaylor Hincham', 'Norway', 19, '+47 (571) 716-8515', 'Male'),
(27, 'Haily McNeachtain', 'Australia', 86, '+61 (754) 434-7080', 'Male'),
(28, 'Anne-corinne Matussow', 'China', 55, '+86 (510) 905-6400', 'Female'),
(29, 'Wilona Feeny', 'Russia', 53, '+7 (623) 816-8337', 'Female'),
(30, 'Ronnie Batson', 'Portugal', 30, '+351 (339) 242-0230', 'Female'),
(31, 'Betteann Quan', 'Bosnia and Herzegovina', 27, '+387 (606) 568-1381', 'Female'),
(32, 'Walther Finlan', 'Thailand', 84, '+66 (386) 692-5618', 'Male'),
(33, 'Bailie Knowles', 'Syria', 71, '+963 (108) 816-9586', 'Male'),
(34, 'Dillie Bagger', 'Indonesia', 31, '+62 (841) 693-4137', 'Male'),
(35, 'Terrill Bewlie', 'Venezuela', 24, '+58 (807) 225-1247', 'Male'),
(36, 'Carlee Churchlow', 'China', 43, '+86 (242) 523-6514', 'Female'),
(37, 'Bevvy Minihan', 'Peru', 58, '+51 (210) 842-2032', 'Female'),
(38, 'Gaby Doram', 'Indonesia', 56, '+62 (919) 367-4851', 'Male'),
(39, 'Melodee Monte', 'Peru', 42, '+51 (201) 217-6109', 'Female'),
(40, 'Klara Yewdell', 'Indonesia', 26, '+62 (400) 809-2202', 'Female'),
(41, 'Fairfax Capel', 'Canada', 52, '+1 (364) 395-2107', 'Male'),
(42, 'Rosalie Abbe', 'China', 25, '+86 (830) 814-0457', 'Female'),
(43, 'Reece Trafford', 'China', 29, '+86 (453) 426-4192', 'Male'),
(44, 'Ron Dulake', 'South Africa', 17, '+27 (785) 326-9235', 'Male'),
(45, 'Dawna Mapletoft', 'Nauru', 26, '+674 (878) 194-6696', 'Female'),
(46, 'Celestina Fontenot', 'Portugal', 26, '+351 (532) 832-0210', 'Female'),
(47, 'Ninnetta Adel', 'Poland', 85, '+48 (745) 460-2412', 'Female'),
(48, 'Burgess Alsopp', 'Philippines', 78, '+63 (350) 946-0609', 'Male'),
(49, 'Alic Smissen', 'Armenia', 82, '+374 (669) 387-9797', 'Male'),
(50, 'Diandra Orteu', 'Morocco', 68, '+212 (703) 515-4525', 'Female'),
(51, 'Karlens Drakeford', 'Uganda', 73, '+256 (878) 220-6322', 'Male'),
(52, 'Humfried Broe', 'Philippines', 46, '+63 (109) 574-6546', 'Male'),
(53, 'Kyrstin Loughlin', 'Sudan', 61, '+249 (165) 423-9377', 'Female'),
(54, 'Pearle Gobert', 'Japan', 77, '+81 (238) 349-5072', 'Female'),
(55, 'Elonore Catteroll', 'Mexico', 16, '+52 (994) 948-8090', 'Female'),
(56, 'Chad Cunnington', 'Vietnam', 27, '+84 (819) 658-8167', 'Male'),
(57, 'Alano Tipler', 'Peru', 73, '+51 (641) 681-2011', 'Male'),
(58, 'Maire Childe', 'Republic of the Congo', 65, '+242 (235) 393-7666', 'Female'),
(59, 'Darcee Cerith', 'Indonesia', 65, '+62 (771) 404-3394', 'Female'),
(60, 'Braden Catmull', 'United States', 78, '+1 (208) 414-4407', 'Male'),
(61, 'Mozes Dever', 'Morocco', 59, '+212 (853) 107-4034', 'Male'),
(62, 'Umeko Kaas', 'Tonga', 25, '+676 (597) 650-1667', 'Female'),
(63, 'Kaylee Pennacci', 'Thailand', 78, '+66 (534) 782-3750', 'Female'),
(64, 'Laverna Krzysztofiak', 'Haiti', 69, '+509 (582) 478-6681', 'Female'),
(65, 'Rouvin Lillicrop', 'Mexico', 70, '+52 (656) 462-8158', 'Male'),
(66, 'Bernard Hugonnet', 'Indonesia', 68, '+62 (934) 582-8710', 'Male'),
(67, 'Collie Quaife', 'New Caledonia', 47, '+687 (472) 342-1768', 'Female'),
(68, 'Tatiana Duesberry', 'France', 26, '+33 (687) 920-0908', 'Female'),
(69, 'Olivia Hargraves', 'Germany', 55, '+49 (953) 170-4509', 'Female'),
(70, 'Vaughn Dufoure', 'Thailand', 22, '+66 (619) 404-4913', 'Male'),
(71, 'Ora Belsey', 'Sweden', 52, '+46 (643) 991-7665', 'Female'),
(72, 'Germain Eyers', 'Indonesia', 23, '+62 (862) 715-2550', 'Male'),
(73, 'Georgetta Sokill', 'Serbia', 45, '+381 (822) 244-0565', 'Female'),
(74, 'Gloriane Bramsom', 'Gambia', 43, '+220 (311) 160-3019', 'Female'),
(75, 'Bennie McPhillips', 'Indonesia', 37, '+62 (125) 483-2183', 'Female'),
(76, 'Guntar Tonkinson', 'Indonesia', 26, '+62 (801) 626-3478', 'Male'),
(77, 'Archibaldo Imrie', 'New Zealand', 53, '+64 (398) 594-9055', 'Male'),
(78, 'Jessee Colgan', 'Honduras', 43, '+504 (489) 559-8897', 'Male'),
(79, 'Rich Passo', 'Tajikistan', 82, '+992 (226) 514-9455', 'Male'),
(80, 'Rooney McLinden', 'Ukraine', 64, '+380 (414) 636-6011', 'Male'),
(81, 'Chrissie Cleere', 'Belarus', 52, '+375 (231) 123-7141', 'Female'),
(82, 'Lindsey Ogelsby', 'Paraguay', 43, '+595 (178) 227-3329', 'Male'),
(83, 'Harald Dohmer', 'Indonesia', 56, '+62 (532) 127-0447', 'Male'),
(84, 'Jesse Dowyer', 'Russia', 17, '+7 (208) 319-2240', 'Male'),
(85, 'Marna Menear', 'China', 21, '+86 (146) 902-9073', 'Female'),
(86, 'Anders Goadsby', 'Uganda', 53, '+256 (916) 284-1685', 'Male'),
(87, 'Thadeus Rault', 'United States', 18, '+1 (229) 749-8723', 'Male'),
(88, 'Shelley Purry', 'Greece', 15, '+30 (774) 725-2090', 'Male'),
(89, 'Britt Jamot', 'Portugal', 15, '+351 (834) 787-4166', 'Female'),
(90, 'Carolynn Annice', 'Indonesia', 74, '+62 (438) 731-7102', 'Female');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customers_not_in_orders`
-- (See below for the actual view)
--
CREATE TABLE `customers_not_in_orders` (
`id` int(11)
,`full_name` varchar(200)
,`country` varchar(200)
,`age` int(11)
,`phone` varchar(200)
,`gender` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `join_all_data`
-- (See below for the actual view)
--
CREATE TABLE `join_all_data` (
`ord_id` int(11)
,`amount` int(11)
,`create_date` varchar(323)
,`cust_id` int(11)
,`full_name` varchar(200)
,`country` varchar(200)
,`age` int(11)
,`phone` varchar(200)
,`gender` varchar(30)
,`prod_id` int(11)
,`title` varchar(200)
,`price` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `create_date` varchar(323) DEFAULT current_timestamp(),
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `amount`, `create_date`, `customer_id`, `product_id`) VALUES
(1, 8204, '07-09-2024', 14, 83),
(2, 84606, '30-09-2024', 49, 72),
(3, 104938, '03-06-2024', 29, 29),
(4, 74027, '31-08-2024', 27, 61),
(5, 105240, '10-05-2024', 29, 23),
(6, 264549, '26-09-2024', 85, 30),
(7, 54474, '19-05-2024', 38, 71),
(8, 199279, '19-06-2024', 90, 20),
(9, 193295, '03-05-2024', 72, 45),
(10, 272704, '16-06-2024', 30, 65),
(11, 58083, '16-12-2023', 12, 24),
(12, 147881, '05-09-2024', 78, 23),
(13, 73337, '23-01-2024', 11, 62),
(14, 57904, '27-06-2024', 4, 76),
(15, 236859, '13-09-2024', 31, 67),
(16, 318645, '11-06-2024', 40, 80),
(17, 111338, '22-03-2024', 69, 13),
(18, 127110, '24-04-2024', 10, 81),
(19, 37543, '21-12-2023', 71, 71),
(20, 231397, '23-07-2024', 27, 87),
(21, 194646, '12-05-2024', 19, 52),
(22, 117117, '25-05-2024', 22, 79),
(23, 176532, '07-07-2024', 64, 33),
(24, 172262, '22-07-2024', 76, 53),
(25, 196189, '16-02-2024', 63, 26),
(26, 27767, '26-12-2023', 16, 48),
(27, 32297, '23-01-2024', 74, 14),
(28, 138044, '28-10-2023', 22, 42),
(29, 160448, '19-03-2024', 42, 2),
(30, 140795, '20-04-2024', 12, 64),
(31, 264888, '08-02-2024', 71, 37),
(32, 192399, '05-10-2023', 2, 10),
(33, 147656, '09-10-2023', 52, 59),
(34, 117252, '25-09-2024', 65, 59),
(35, 241385, '10-11-2023', 30, 48),
(36, 309982, '07-03-2024', 46, 57),
(37, 319928, '30-10-2023', 60, 4),
(38, 115470, '27-07-2024', 90, 21),
(39, 107575, '31-12-2023', 2, 42),
(40, 133138, '15-02-2024', 65, 55),
(41, 293621, '17-05-2024', 29, 51),
(42, 299408, '02-06-2024', 54, 74),
(43, 244839, '30-06-2024', 30, 21),
(44, 209131, '26-03-2024', 80, 65),
(45, 321117, '16-09-2024', 38, 66),
(46, 305972, '23-07-2024', 42, 44),
(47, 133965, '02-03-2024', 38, 7),
(48, 208106, '06-11-2023', 17, 33),
(49, 42316, '27-04-2024', 78, 35),
(50, 170275, '20-03-2024', 81, 39),
(51, 80000, 'current_timestamp()', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`) VALUES
(1, 'Bagels Poppyseed', 567873),
(2, 'Swiss Chard', 346253),
(3, 'Carrots - Jumbo', 307722),
(4, 'Wine - Niagara Peninsula Vqa', 749962),
(5, 'Rice - Brown', 51622),
(6, 'Calvados - Boulard', 625363),
(7, 'Sour Puss Raspberry', 838031),
(8, 'Strawberries', 152816),
(9, 'Cheese - Camembert', 505929),
(10, 'Ginsing - Fresh', 424038),
(11, 'Rosemary - Primerba, Paste', 418265),
(12, 'Dc - Sakura Fu', 827667),
(13, 'Wine - Magnotta - Pinot Gris Sr', 774198),
(14, 'Coffee - French Vanilla Frothy', 193376),
(15, 'Spaghetti Squash', 551411),
(16, 'Sprouts - Brussel', 172697),
(17, 'Wine - Placido Pinot Grigo', 865195),
(18, 'Onions - Pearl', 511576),
(19, 'Eel - Smoked', 108187),
(20, 'Energy Drink - Franks Pineapple', 675135),
(21, 'Cheese - Cottage Cheese', 841440),
(22, 'Chicken - Livers', 842581),
(23, 'Pork - Ham, Virginia', 649910),
(24, 'Grapefruit - Pink', 751321),
(25, 'Potatoes - Mini White 3 Oz', 355486),
(26, 'Pastry - Key Limepoppy Seed Tea', 336222),
(27, 'Wine - Red, Wolf Blass, Yellow', 294877),
(28, 'Garlic - Peeled', 127962),
(29, 'Sauce - Salsa', 521659),
(30, 'Towels - Paper / Kraft', 469862),
(31, 'Table Cloth 54x54 Colour', 595782),
(32, 'Worcestershire Sauce', 368593),
(33, 'Jolt Cola - Electric Blue', 520671),
(34, 'Turnip - Mini', 160743),
(35, 'Cheese - Manchego, Spanish', 499113),
(36, 'Apple - Delicious, Golden', 139669),
(37, 'Soupfoamcont12oz 112con', 380198),
(38, 'Scallops - 10/20', 216536),
(39, 'Pastry - Lemon Danish - Mini', 770387),
(40, 'Extract - Lemon', 268241),
(41, 'Appetizer - Mushroom Tart', 388473),
(42, 'Turkey - Oven Roast Breast', 39354),
(43, 'Club Soda - Schweppes, 355 Ml', 579368),
(44, 'Oil - Avocado', 146261),
(45, 'Pizza', 883320),
(46, 'Beer - True North Strong Ale', 215970),
(47, 'Shrimp - Black Tiger 26/30', 197525),
(48, 'Carbonated Water - Lemon Lime', 3575),
(49, 'Bread - Mini Hamburger Bun', 655450),
(50, 'Creamers - 10%', 536571),
(51, 'Cabbage Roll', 564284),
(52, 'Gherkin', 98),
(53, 'Scallops - 10/20', 554754),
(54, 'Syrup - Monin - Passion Fruit', 339013),
(55, 'Pepper - Jalapeno', 381247),
(56, 'Cloves - Ground', 567750),
(57, 'Lamb - Ground', 447864),
(58, 'Tomato', 873537),
(59, 'Sauerkraut', 851982),
(60, 'Stock - Beef, White', 329419),
(61, 'Clam Nectar', 813821),
(62, 'Kaffir Lime Leaves', 673269),
(63, 'Wine - Casablanca Valley', 825863),
(64, 'Basil - Primerba, Paste', 240306),
(65, 'Cheese - Blue', 538663),
(66, 'Lamb Rack - Ontario', 98132),
(67, 'Daikon Radish', 546566),
(68, 'Cookie Dough - Double', 342723),
(69, 'Wine - Wyndham Estate Bin 777', 438560),
(70, 'Wine - Marlbourough Sauv Blanc', 61457),
(71, 'Tea Peppermint', 253471),
(72, 'Isomalt', 261449),
(73, 'Pineapple - Canned, Rings', 638412),
(74, 'Dr. Pepper - 355ml', 37193),
(75, 'Cake - Night And Day Choclate', 228797),
(76, 'Sterno - Chafing Dish Fuel', 524125),
(77, 'Juice - Apple Cider', 401382),
(78, 'Olives - Stuffed', 786206),
(79, 'Napkin White - Starched', 291822),
(80, 'Sprouts - Onion', 661006),
(81, 'Flour - All Purpose', 819073),
(82, 'Pasta - Cappellini, Dry', 640886),
(83, 'Grapes - Black', 766421),
(84, 'Soy Protein', 167487),
(85, 'Mousse - Banana Chocolate', 83946),
(86, 'Gatorade - Fruit Punch', 438993),
(87, 'Pasta - Shells, Medium, Dry', 884416),
(88, 'Dc - Frozen Momji', 718570),
(89, 'Broom Handle', 501874),
(90, 'Cookie Chocolate Chip With', 27596);

-- --------------------------------------------------------

--
-- Structure for view `customers_not_in_orders`
--
DROP TABLE IF EXISTS `customers_not_in_orders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customers_not_in_orders`  AS SELECT `customers`.`id` AS `id`, `customers`.`full_name` AS `full_name`, `customers`.`country` AS `country`, `customers`.`age` AS `age`, `customers`.`phone` AS `phone`, `customers`.`gender` AS `gender` FROM `customers` WHERE !(`customers`.`id` in (select `orders`.`customer_id` from `orders`)) ;

-- --------------------------------------------------------

--
-- Structure for view `join_all_data`
--
DROP TABLE IF EXISTS `join_all_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `join_all_data`  AS SELECT `orders`.`id` AS `ord_id`, `orders`.`amount` AS `amount`, `orders`.`create_date` AS `create_date`, `customers`.`id` AS `cust_id`, `customers`.`full_name` AS `full_name`, `customers`.`country` AS `country`, `customers`.`age` AS `age`, `customers`.`phone` AS `phone`, `customers`.`gender` AS `gender`, `products`.`id` AS `prod_id`, `products`.`title` AS `title`, `products`.`price` AS `price` FROM ((`orders` join `customers` on(`orders`.`customer_id` = `customers`.`id`)) join `products` on(`orders`.`product_id` = `products`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
