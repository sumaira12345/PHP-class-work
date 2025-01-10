-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2025 at 07:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pr2202401c1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`) VALUES
(2, 'bags', 'download(14).jpg.webp'),
(3, 'abbayas', 'abbaya.webp'),
(4, 'watches', 'watches.jpeg'),
(5, 'women fashions', 'women fashion.webp'),
(6, 'men fashions', 'men.jpeg'),
(7, 'FootWear Fashion', 'heels.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productImage` varchar(150) NOT NULL,
  `productDesciption` varchar(200) NOT NULL,
  `productCatId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `productPrice`, `productQuantity`, `productImage`, `productDesciption`, `productCatId`) VALUES
(7, 'Bag1', 2300, 1, 'bag1.jpeg', ' leather bag', 2),
(8, 'bag2', 3300, 1, 'bag2.jpeg', 'leather bag', 2),
(9, 'bag3', 4400, 1, 'bag3.jpeg', 'leather bag', 2),
(10, 'abbaya1', 2500, 1, 'abbaya1.webp', 'modern abbaya', 3),
(11, 'abbay2', 1500, 1, 'abbaya2.jpg', 'modern abbaya', 3),
(12, 'abbaya3', 3300, 1, 'abbaya3.webp', 'modern abbaya', 3),
(13, 'watch1', 4500, 1, 'watch1.jpeg', 'women watch', 4),
(14, 'watch2', 5000, 1, 'watch2.jpeg', 'men watch', 4),
(15, 'watch 3', 3300, 1, 'watch3.jpeg', 'men watch', 4),
(16, 'women1', 6600, 1, 'women1.webp', 'fashion', 5),
(17, 'women2', 5500, 1, 'women2.webp', 'women', 5),
(18, 'women3', 4500, 1, 'women3.jpg', 'women fashion', 5),
(19, 'men1', 4400, 1, 'men1.jpeg', 'men fashion', 6),
(20, 'men2', 4200, 1, 'men2.jpg', 'men fashion', 6),
(21, 'men3', 4400, 1, 'men3.jpg', 'men fashion', 6),
(23, 'heel1', 3300, 1, 'heel1.jpg', 'heel1', 7),
(24, 'heel2', 2500, 1, 'heel2.webp', 'heel2', 7),
(25, 'heel3', 4400, 1, 'heel3.webp', 'heel3', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_phone` varchar(11) NOT NULL,
  `user_role_type` varchar(30) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_role_type`) VALUES
(4, 'rabia', 'rabia@gmail.com', '$2y$10$iKRTdvYVUCOBGVsZwKmvqumY4enOwGSoS1HG.UO1dKOhYzSZ8AyeC', 'user', 'user'),
(5, 'sumaira', 'sumaira@gmail.com', '$2y$10$EIoZl5rUyXJEF4N5t3M1ju7yLqmFUgfIVCBbrqqfmU1uD61fp.u4O', 'admin', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `productCatId` (`productCatId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productCatId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
