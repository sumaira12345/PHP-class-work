-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 01:02 PM
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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoiceId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `totalProductQuantity` int(11) NOT NULL,
  `itemCount` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `invoiceDate` date NOT NULL,
  `invoiceTime` time NOT NULL,
  `userPhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoiceId`, `userName`, `userEmail`, `totalProductQuantity`, `itemCount`, `subtotal`, `invoiceDate`, `invoiceTime`, `userPhone`) VALUES
(1, ' Amjad', 'malika786009@gmail.com', 3, 2, 12100, '2025-01-10', '13:51:44', '03153831104');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPhone` varchar(15) NOT NULL,
  `userAddress` varchar(200) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productTotal` int(11) NOT NULL,
  `productImage` varchar(200) NOT NULL,
  `orderDate` date NOT NULL,
  `orderTime` time NOT NULL,
  `orderStatus` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `userEmail`, `userPhone`, `userAddress`, `userName`, `productName`, `productPrice`, `productQuantity`, `productTotal`, `productImage`, `orderDate`, `orderTime`, `orderStatus`) VALUES
(1, 11, 'malika786009@gmail.com', '03153831104', 'asdf', ' Amjad', 'heel3', 4400, 1, 4400, 'heel3.webp', '2025-01-10', '13:35:28', 'pending'),
(2, 11, 'malika786009@gmail.com', '03153831104', 'asdf', ' Amjad', 'heel3', 4400, 1, 4400, 'heel3.webp', '2025-01-10', '13:35:32', 'pending'),
(3, 11, 'malika786009@gmail.com', '03153831104', 'asdf', ' Amjad', 'heel3', 4400, 1, 4400, 'heel3.webp', '2025-01-10', '13:36:35', 'pending'),
(4, 11, 'malika786009@gmail.com', '03153831104', 'asdf', ' Amjad', 'heel3', 4400, 1, 4400, 'heel3.webp', '2025-01-10', '13:36:39', 'pending'),
(5, 11, 'malika786009@gmail.com', '03153831104', 'asdffg', ' Amjad', 'heel3', 4400, 2, 8800, 'heel3.webp', '2025-01-10', '13:47:31', 'pending'),
(6, 11, 'malika786009@gmail.com', '03153831104', 'asdffg', ' Amjad', 'heel1', 3300, 1, 3300, 'heel1.jpg', '2025-01-10', '13:47:31', 'pending'),
(7, 11, 'malika786009@gmail.com', '03153831104', 'asdf', ' Amjad', 'heel3', 4400, 2, 8800, 'heel3.webp', '2025-01-10', '13:51:44', 'pending'),
(8, 11, 'malika786009@gmail.com', '03153831104', 'asdf', ' Amjad', 'heel1', 3300, 1, 3300, 'heel1.jpg', '2025-01-10', '13:51:44', 'pending');

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
(6, 'sumaira@gmail.com', 'sumaira@gmail.com', '$2y$10$MYndRlkE1f2uuD8O60pG0u7ywyH7.Gs/tgossfkrLS.L4CSJjrVfO', '03153831104', 'user'),
(8, 'hasnain', 'hasnain@gmail.com', '$2y$10$/PmHBw1GGV.ULFUazn3xm.E2Ayg.EwHwDH3wm3Cg3gwIqyWhgIKgO', '03153831104', 'user'),
(9, 'sumaira hasnain', 'sumairahasnain@gmail.com', '$2y$10$V5aST5rAcE7WOAxghpoW5eq9Rd4gdfzMsvSZoAz3aYJFbeFl.W5HW', '03153831104', 'user'),
(10, 'sumaira hasnain', 'sumairahasnain@gmail.com', '$2y$10$uNlukaJ4.rUXy8T7H4C1GuenT2pDiTUlBJ82QCfgrx.MG8p6NA.Bi', '03153831104', 'user'),
(11, ' Amjad', 'malika786009@gmail.com', '$2y$10$btzHOG.reKRUWPJw3fBVAeEh81X3q7MaFN5zZYsDAgIkjXXuPyAqO', '03153831104', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoiceId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `userId` (`userId`);

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
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoiceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productCatId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
