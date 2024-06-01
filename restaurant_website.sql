-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2023 at 09:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(5) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(50) NOT NULL,
  `client_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`, `client_phone`, `client_email`) VALUES
(9, 'Clinet 1', '02020202020', 'client1@gmail.com'),
(10, 'Client 10', '0638383933', 'client10@gmail.com'),
(11, 'Client 11', '06242556272', 'client11@yahoo.fr'),
(13, 'Client 12', '030303030202', 'client1133@gmail.com'),
(14, 'Client 12', '030303030', 'client14@gmail.com'),
(16, 'Client 14', '0203203203', 'client14@gmail.com'),
(17, 'Client 17', '0737373822', 'client17@gmail.com'),
(18, 'Client 12', '02920320', 'client12@yahoo.fr'),
(19, 'Test', '1034304300', 'test@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery`
--

CREATE TABLE `image_gallery` (
  `image_id` int(2) NOT NULL,
  `image_name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `image_gallery`
--

INSERT INTO `image_gallery` (`image_id`, `image_name`, `image`) VALUES
(1, 'Moroccan Tajine', '58146_Moroccan Chicken Tagine.jpeg'),
(2, 'Italian Pasta', 'img_1.jpg'),
(3, 'Cook', 'img_2.jpg'),
(4, 'Pizza', 'img_3.jpg'),
(5, 'Burger', 'burger.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `in_order`
--

CREATE TABLE `in_order` (
  `id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `quantity` int(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `in_order`
--

INSERT INTO `in_order` (`id`, `order_id`, `menu_name`, `quantity`) VALUES
(1, 10, 'Beef Hamburger', 1),
(2, 11, 'Ice Cream', 1),
(3, 11, 'Coffee', 1),
(4, 12, 'Moroccan Couscous', 1);


-- ----------------------------------------------------------
-- Table structure for table `type`
--

CREATE TABLE `types` (
  `type_id` int(3) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `in_order`
--

INSERT INTO `types` (`type_id`, `type_name`) VALUES
(1, 'Pasta Italian Paste'),
(2, 'Malaysian Local Cuisine'),
(3, 'Western Original Touch'),
(4, 'Sanggar Snack & Booking');


-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(5) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_description` varchar(255) NOT NULL,
  `menu_price` decimal(6,2) NOT NULL,
  `menu_image` varchar(255) NOT NULL,
  `category_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_name`, `menu_description`, `menu_price`, `menu_image`, `category_id`) VALUES
(301, 'aglio olio', 'Moroccan couscous is a traditional dish consisting of fluffy semolina grains steamed to perfection, accompanied by a rich and aromatic stew of tender meat, vegetables, &amp; fragrant spices.', 14.90, '88737_couscous_meat.jpg', 1),
(302, 'carbonara', 'Moroccan couscous is a traditional dish consisting of fluffy semolina grains steamed to perfection, accompanied by a rich and aromatic stew of tender meat, vegetables, &amp; fragrant spices.', 11.90, '88737_couscous_meat.jpg', 1),
(303, 'bolognese', 'Moroccan couscous is a traditional dish consisting of fluffy semolina grains steamed to perfection, accompanied by a rich and aromatic stew of tender meat, vegetables, &amp; fragrant spices.', 11.90, '88737_couscous_meat.jpg', 1),
(304, 'marinara', 'Moroccan couscous is a traditional dish consisting of fluffy semolina grains steamed to perfection, accompanied by a rich and aromatic stew of tender meat, vegetables, &amp; fragrant spices.', 15.90, '88737_couscous_meat.jpg', 1),
(305, 'ramen cheese', 'Moroccan couscous is a traditional dish consisting of fluffy semolina grains steamed to perfection, accompanied by a rich and aromatic stew of tender meat, vegetables, &amp; fragrant spices.', 12.90, '88737_couscous_meat.jpg', 1),

(310, 'Pasta + G.C.C', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 19.90, 'burger.jpeg', 2),
(311, 'Pasta + F.C.C', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 18.90, 'burger.jpeg', 2),
(312, 'Pasta + Lamb', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 25.90, 'burger.jpeg', 2),
(313, 'Pasta + Beef', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 25.90, 'burger.jpeg', 2),
(314, 'Pasta + Meatball', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 18.90, 'burger.jpeg', 2),
(321, 'Ramen + G.C.C', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 19.90, 'burger.jpeg', 2),
(322, 'Ramen + F.C.C', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 18.90, 'burger.jpeg', 2),
(323, 'Ramen + Lamb', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 23.90, 'burger.jpeg', 2),
(324, 'Ramen + Beef', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 25.90, 'burger.jpeg', 2),
(325, 'Ramen + Meatball', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 18.90, 'burger.jpeg', 2),

(401, 'Nasi Goreng Kampung', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.00, 'summer-dessert-sweet-ice-cream.jpg', 3),
(402, 'Nasi Goreng Cina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.00, 'summer-dessert-sweet-ice-cream.jpg', 3),
(403, 'Nasi Goreng Biasa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.00, 'summer-dessert-sweet-ice-cream.jpg', 3),
(404, 'Nasi Goreng Pataya', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 7.90, 'summer-dessert-sweet-ice-cream.jpg', 3),
(405, 'Nasi Goreng Paprik', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 7.90, 'summer-dessert-sweet-ice-cream.jpg', 3),

(410, 'Mee Goreng', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.00, 'pizza.jpeg', 4),
(411, 'Mee Goreng Basah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.90, 'pizza.jpeg', 4),
(412, 'Mee Sup', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 6.90, 'pizza.jpeg', 4),
(413, 'Mee Tomyam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 7.90, 'pizza.jpeg', 4),
(414, 'Mee Hailam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 7.90, 'pizza.jpeg', 4),

(417, 'Sup Ayam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.90, '58146_Moroccan Chicken Tagine.jpeg', 5),
(418, 'Sup Daging', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 6.90, '58146_Moroccan Chicken Tagine.jpeg', 5),
(419, 'Sup Campur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 7.90, '58146_Moroccan Chicken Tagine.jpeg', 5),
(420, 'Sup Sayur', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.90, '58146_Moroccan Chicken Tagine.jpeg', 5),

(421, 'Tomyam Ayam', 'Bissara is a traditional Moroccan dish made from dried split fava beans (also known as broad beans) that are cooked and blended into a smooth and flavorful soup.', 5.90, '61959_Bissara.jpg', 6),
(422, 'Tomyam Daging', 'Bissara is a traditional Moroccan dish made from dried split fava beans (also known as broad beans) that are cooked and blended into a smooth and flavorful soup.', 6.90, '61959_Bissara.jpg', 6),
(423, 'Tomyam Seafood', 'Bissara is a traditional Moroccan dish made from dried split fava beans (also known as broad beans) that are cooked and blended into a smooth and flavorful soup.', 7.90, '61959_Bissara.jpg', 6),
(424, 'Tomyam Campur', 'Bissara is a traditional Moroccan dish made from dried split fava beans (also known as broad beans) that are cooked and blended into a smooth and flavorful soup.', 9.90, '61959_Bissara.jpg', 6),

(447, 'SB Hoon Crispy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 10.90, '76635_57738_w1024h768c1cx256cy192.jpg', 7),
(448, 'Yee Mee Egg Tofu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 14.90, '76635_57738_w1024h768c1cx256cy192.jpg', 7),
(449, 'Nasi Putih + Egg Tofu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 13.90, '76635_57738_w1024h768c1cx256cy192.jpg', 7),
(450, 'Nasi Goreng + Egg Tofu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 15.90, '76635_57738_w1024h768c1cx256cy192.jpg', 7),
(451, 'Telur Bungkus Ayam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.90, '76635_57738_w1024h768c1cx256cy192.jpg', 7),

(425, 'Ayam Paprik', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.90, '76635_57738_w1024h768c1cx256cy192.jpg', 8),
(426, 'Daging Paprik', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 6.90, '76635_57738_w1024h768c1cx256cy192.jpg', 8),
(427, 'Seafood Paprik', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 7.90, '76635_57738_w1024h768c1cx256cy192.jpg', 8),
(428, 'Ayam Masak Merah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.90, '76635_57738_w1024h768c1cx256cy192.jpg', 8),
(429, 'Daging Masak Merah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 6.90, '76635_57738_w1024h768c1cx256cy192.jpg', 8),
(430, 'Seafood Masak Merah', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 7.90, '76635_57738_w1024h768c1cx256cy192.jpg', 8),

(315, 'Nasi Goreng + G.C.C', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 12.90, '76635_57738_w1024h768c1cx256cy192.jpg', 9),
(316, 'Nasi Goreng + F.C.C', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 13.90, '76635_57738_w1024h768c1cx256cy192.jpg', 9),
(317, 'Nasi Goreng + LAMB', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 15.90, '76635_57738_w1024h768c1cx256cy192.jpg', 9),
(318, 'Nasi Goreng + BEEF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 15.90, '76635_57738_w1024h768c1cx256cy192.jpg', 9),
(453, 'Mee/Kuey Tiow / Bihun + G.C.C', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 10.90, '76635_57738_w1024h768c1cx256cy192.jpg', 9),
(454, 'Mee/Kuey Tiow / Bihun + F.C.C', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 10.90, '76635_57738_w1024h768c1cx256cy192.jpg', 9),

(601, 'Fried Chicken Chop', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 10.90, '76635_57738_w1024h768c1cx256cy192.jpg', 10),
(602, 'Fried Chicken Chop', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 13.90, '76635_57738_w1024h768c1cx256cy192.jpg', 10),
(603, 'SB Chicken Cheese', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 14.90, '76635_57738_w1024h768c1cx256cy192.jpg', 10),
(604, 'Cheezy Meatball', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 13.90, '76635_57738_w1024h768c1cx256cy192.jpg', 10),
(605, 'Beef Steak', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 13.90, '76635_57738_w1024h768c1cx256cy192.jpg', 10),

(612, 'Grilled Chicken Salad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 6.90, '76635_57738_w1024h768c1cx256cy192.jpg', 11),
(613, 'Sausage Salad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 4.90, '76635_57738_w1024h768c1cx256cy192.jpg', 11),
(614, 'Seafood Salad', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 8.90, '76635_57738_w1024h768c1cx256cy192.jpg', 11),

(615, 'Small Mix', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 40.00, '76635_57738_w1024h768c1cx256cy192.jpg', 12),
(616, 'Western Mix', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 80.00, '76635_57738_w1024h768c1cx256cy192.jpg', 12),

(617, 'Tortila Chicken', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 8.90, '76635_57738_w1024h768c1cx256cy192.jpg', 13),
(618, 'Beef Wrap', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 9.90, '76635_57738_w1024h768c1cx256cy192.jpg', 13),
(619, 'Vegeterian Wrap', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 6.90, '76635_57738_w1024h768c1cx256cy192.jpg', 13),
(620, 'Fried Chicken Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 13.90, '76635_57738_w1024h768c1cx256cy192.jpg', 13),
(621, 'Chicken Acerbo Burger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 14.90, '76635_57738_w1024h768c1cx256cy192.jpg', 13),

(624, 'SB Set 1 (1 coke, 2pcs chicken, wedges, coleslow)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 8.90, '76635_57738_w1024h768c1cx256cy192.jpg', 14),
(625, 'SB Set 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 9.90, '76635_57738_w1024h768c1cx256cy192.jpg', 14),

(626, 'Kid Box A', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 9.90, '76635_57738_w1024h768c1cx256cy192.jpg', 15),
(627, 'Kid Box B', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 7.90, '76635_57738_w1024h768c1cx256cy192.jpg', 15),
(628, 'Kid Box C', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 8.90, '76635_57738_w1024h768c1cx256cy192.jpg', 15),

(801, 'Fries', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 3.50, '76635_57738_w1024h768c1cx256cy192.jpg', 16),
(802, 'Wedges', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 4.50, '76635_57738_w1024h768c1cx256cy192.jpg', 16),
(803, 'Cheezy Wedges', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.50, '76635_57738_w1024h768c1cx256cy192.jpg', 16),
(804, 'Chicken Finger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 5.00, '76635_57738_w1024h768c1cx256cy192.jpg', 16),
(805, 'Fried Chicken Wing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 6.50, '76635_57738_w1024h768c1cx256cy192.jpg', 16),

(630, 'Smoke Chicken Chop', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 15.50, '76635_57738_w1024h768c1cx256cy192.jpg', 17),
(631, 'Lamb Shoulder', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 17.50, '76635_57738_w1024h768c1cx256cy192.jpg', 17),
(632, 'Beef Tenderloin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 20.50, '76635_57738_w1024h768c1cx256cy192.jpg', 17),
(901, 'Siakap Sweet Sour Set', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere, lectus et mollis ultricies, justo arcu dignissim enim, eu eleifend lectus nulla.', 70.00, '76635_57738_w1024h768c1cx256cy192.jpg', 17);

-- --------------------------------------------------------

--
-- Table structure for table `menu_categories`
--

CREATE TABLE `menu_categories` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `type_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `menu_categories`
--

INSERT INTO `menu_categories` (`category_id`, `category_name`) VALUES
(1, 'pasta and ramen', 1),
(2, 'combo special', 1),
(3, 'nasi', 2),
(4, 'mee/kuey teow/bihun', 2),
(5, 'sup', 2),
(6, 'tomyam', 2),
(7, 'sanggar touch', 2),
(8, 'ala carte cuisine', 2),
(9, 'local v western', 2),
(10, 'piatto sanggar', 3),
(11, 'aperitivo', 3),
(12, 'platter', 3),
(13, 'tortilla and burgers', 3),
(14, 'sb super jimat', 4),
(15, 'kids meal', 4),
(16, 'snack time', 4),
(17, 'booking order', 4);

-- --------------------------------------------------------

--
-- Table structure for table `placed_orders`
--

CREATE TABLE `placed_orders` (
  `order_id` int(5) NOT NULL,
  `order_time` datetime NOT NULL,
  `client_id` int(5) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `delivered` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `placed_orders`
--

INSERT INTO `placed_orders` (`order_id`, `order_time`, `client_id`, `delivery_address`, `delivered`, `canceled`, `cancellation_reason`) VALUES
(7, '2020-06-22 12:01:00', 9, 'Bloc A Nr 80000 Hay ElAgadir', 0, 1, 'Sorry! I changed my mind!'),
(8, '2020-06-23 06:07:00', 10, 'Chengdu, China', 0, 1, ''),
(9, '2020-06-24 16:40:00', 11, 'Hay El Houda Agadir', 1, 0, NULL),
(10, '2023-07-01 04:02:00', 16, 'Bloc A', 0, 0, NULL),
(11, '2023-10-30 20:09:00', 18, 'Test testst asds', 0, 0, NULL),
(12, '2023-10-30 21:46:00', 19, 'tests sd', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(5) NOT NULL,
  `date_created` datetime NOT NULL,
  `client_id` int(5) NOT NULL,
  `selected_time` datetime NOT NULL,
  `nbr_guests` int(2) NOT NULL,
  `table_id` int(3) NOT NULL,
  `liberated` tinyint(1) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `cancellation_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `date_created`, `client_id`, `selected_time`, `nbr_guests`, `table_id`, `liberated`, `canceled`, `cancellation_reason`) VALUES
(1, '2020-07-18 09:07:00', 13, '2020-07-30 09:07:00', 0, 1, 0, 0, NULL),
(2, '2020-07-18 09:11:00', 14, '2020-07-29 13:00:00', 4, 1, 0, 0, NULL),
(3, '2023-07-01 04:01:00', 15, '2023-07-02 05:00:00', 2, 1, 0, 0, NULL),
(4, '2023-10-30 20:03:00', 17, '2023-11-08 20:03:00', 1, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `table_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`table_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `full_name`, `password`) VALUES
(1, 'admin_user', 'user_admin@gmail.com', 'User Admin', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `option_id` int(5) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'restaurant_name', 'VINCENT PIZZA'),
(2, 'restaurant_email', 'vincent.pizza@gmail.com'),
(3, 'admin_email', 'admin_email@gmail.com'),
(4, 'restaurant_phonenumber', '088866777555'),
(5, 'restaurant_address', '1580  Boone Street, Corpus Christi, TX, 78476 - USA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `in_order`
--
ALTER TABLE `in_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu` (`menu_name`),
  ADD KEY `fk_order` (`order_id`);
  
--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`),

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `FK_menu_category_id` (`category_id`);

--
-- Indexes for table `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`category_id`);
  ADD KEY `fk_type_id` (`type_id`);
  
--
-- Indexes for table `placed_orders`
--
ALTER TABLE `placed_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_client` (`client_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`option_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `image_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `in_order`
--
ALTER TABLE `in_order`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `types`
  MODIFY `type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `placed_orders`
--
ALTER TABLE `placed_orders`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `table_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `option_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `in_order`
--
ALTER TABLE `in_order`
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`order_id`) REFERENCES `placed_orders` (`order_id`);
  
--
-- Constraints for table `types`
--
ALTER TABLE `types`
  ADD CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `types` (`type_id`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `FK_menu_category_id` FOREIGN KEY (`category_id`) REFERENCES `menu_categories` (`category_id`);

--
-- Constraints for table `placed_orders`
--
ALTER TABLE `placed_orders`
  ADD CONSTRAINT `fk_client` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
