-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 02:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(5, 'Sphynx'),
(6, 'Siames'),
(9, 'Persa'),
(10, 'Maine Coon');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total_price` float(200,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` date DEFAULT curdate(),
  `time` time DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `state`, `city`, `address`, `total_price`, `status`, `date`, `time`) VALUES
(1, 2, 'quebec', 'montral', 'vouberitne 9988', 80.00, 'confirmed', '2023-12-18', '20:27:16'),
(2, 2, 'Quebec', 'montreal', 'nioasdnio', 30.00, 'confirmed', '2023-12-18', '21:17:52'),
(3, 2, 'Quebec', 'montreal', 'vouberitne 9988', 90.00, 'sent', '2023-12-18', '21:22:23'),
(4, 2, 'ontario', 'toronto', 'vouberitne 9988', 4200.00, 'confirmed', '2023-12-20', '20:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `ordersproducts`
--

CREATE TABLE `ordersproducts` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unities` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordersproducts`
--

INSERT INTO `ordersproducts` (`id`, `order_id`, `product_id`, `unities`) VALUES
(1, 1, 3, 1),
(2, 1, 2, 1),
(3, 2, 3, 1),
(4, 3, 3, 3),
(5, 4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` float(100,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` varchar(2) DEFAULT NULL,
  `date` date NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `stock`, `discount`, `date`, `image`) VALUES
(2, 5, 'Sphynx type 2', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ipsam facilis quis, saepe, laborum obcaecati nisi omnis eligendi reprehenderit voluptatum esse quo debitis ipsa. Nulla, provident rem quisquam saepe tempore doloribus labore neque dicta consequatur placeat libero laudantium iusto? Aliquid in inventore voluptatibus excepturi dolorum repellat minima alias? Veniam, dignissimos?', 1400.00, 20, NULL, '2023-12-18', 'sphynx 2.jpg'),
(3, 5, 'Sphyx type 1 ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ipsam facilis quis, saepe, laborum obcaecati nisi omnis eligendi reprehenderit voluptatum esse quo debitis ipsa. Nulla, provident rem quisquam saepe tempore doloribus labore neque dicta consequatur placeat libero laudantium iusto? Aliquid in inventore voluptatibus excepturi dolorum repellat minima alias? Veniam, dignissimos?', 1200.00, 50, NULL, '2023-12-18', 'sphynx 1.jpg'),
(4, 6, 'Siames type1', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ipsam facilis quis, saepe, laborum obcaecati nisi omnis eligendi reprehenderit voluptatum esse quo debitis ipsa. Nulla, provident rem quisquam saepe tempore doloribus labore neque dicta consequatur placeat libero laudantium iusto? Aliquid in inventore voluptatibus excepturi dolorum repellat minima alias? Veniam, dignissimos?', 800.00, 15, NULL, '2023-12-20', 'siames 1.jpg'),
(5, 6, 'Siames type2', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ipsam facilis quis, saepe, laborum obcaecati nisi omnis eligendi reprehenderit voluptatum esse quo debitis ipsa. Nulla, provident rem quisquam saepe tempore doloribus labore neque dicta consequatur placeat libero laudantium iusto? Aliquid in inventore voluptatibus excepturi dolorum repellat minima alias? Veniam, dignissimos?', 900.00, 10, NULL, '2023-12-20', 'siames 2.jpg'),
(6, 9, 'Persa type1', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ipsam facilis quis, saepe, laborum obcaecati nisi omnis eligendi reprehenderit voluptatum esse quo debitis ipsa. Nulla, provident rem quisquam saepe tempore doloribus labore neque dicta consequatur placeat libero laudantium iusto? Aliquid in inventore voluptatibus excepturi dolorum repellat minima alias? Veniam, dignissimos?', 750.00, 30, NULL, '2023-12-20', 'persa1.jpeg'),
(7, 9, 'Persa type 2', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ipsam facilis quis, saepe, laborum obcaecati nisi omnis eligendi reprehenderit voluptatum esse quo debitis ipsa. Nulla, provident rem quisquam saepe ventore voluptatibus excepturi dolorum repellat minima alias? Veniam, dignissimos?', 550.00, 50, NULL, '2023-12-20', 'persa2.jpeg'),
(8, 10, 'Maine Coon type 1', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ipsam facilis quis, saepe, laborum obcaecati nisi omnis eligendi reprehenderit voluptatum esse quo debitis ipsa. Nulla, provident rem quisquam saepe tempore doloribus labore neque dicta consequatur placeat libero laudantium iusto? Aliquid in inventore voluptatibus excepturi dolorum repellat minima alias? Veniam, dignissimos?', 2000.00, 20, NULL, '2023-12-20', 'Maine-Coon-1.jpg'),
(9, 10, 'Maine Coon type 2', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ipsam facilis quis, saepe, laborum obcaecati nisi omnis eligendi reprehenderit voluptatum esse quo debitis ipsa. Nulla, provident rem quisquam saepe tempore doloribus labore neque dicta consequatur placeat libero laudantium iusto? Aliquid in inventore voluptatibus excepturi dolorum repellat minima alias? Veniam, dignissimos?', 1500.00, 5, NULL, '2023-12-20', 'Maine Coon 2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `image`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', '$2y$04$9fUXqjzlQLxULLf92/Zhke6tTUsQLMTZzyH/3HBvEXXbUZyymuXJW', 'admin', NULL),
(2, 'test', 'test', 'test@gmail.com', '$2y$04$9fUXqjzlQLxULLf92/Zhke6tTUsQLMTZzyH/3HBvEXXbUZyymuXJW', 'user', NULL),
(4, 'test2', 'test2', 'test2@gmail.com', '$2y$04$9fUXqjzlQLxULLf92/Zhke6tTUsQLMTZzyH/3HBvEXXbUZyymuXJW', 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_users` (`user_id`);

--
-- Indexes for table `ordersproducts`
--
ALTER TABLE `ordersproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order` (`order_id`),
  ADD KEY `fk_product` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordersproducts`
--
ALTER TABLE `ordersproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_order_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ordersproducts`
--
ALTER TABLE `ordersproducts`
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
