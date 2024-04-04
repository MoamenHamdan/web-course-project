-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 09:55 PM
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
-- 
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 12:14 AM
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
-- Database: `bakentake`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(3, 'croissant', 'Classic butter croissant with soft, flaky layers and a golden-brown crust.', 3, '210228-GFJulesCroissants-R.MoraPhotography-6201-copy-720x720.webp', '722aef4487a43a74e90ec6822a73a7aa.jpg', 'cf1771e4dfb7357420141f27bde281a8.jpg'),
(4, 'donuts', 'Old-fashioned doughnut with a variety of glazes and toppings', 2, 'e0c197059ac98f9ea24c4112a34fe38b.jpg', '8eb272c94b526844adbcace9ef454c27.jpg', 'e0544c2485237c140710f0c3bd28f6b0.jpg'),
(5, 'chocolate chip cookies', 'Semisweet chocolate chips mixed in a thick, chewy cookie, soft on the inside and crunchy on the outside.', 1, 'Classic Toll House Cookies Recipe.jpg', '3b265e60f4eb5e5551e153612139fdc9.jpg', 'c6d5b665ca6f36e2051bc4302bcf326a.jpg'),
(6, 'double chocolate cookies', 'Double Chocolate Chip Cookies that are soft and fudgy and filled to the brim with chocolate. ', 2, 'b9587b0b4d728c235439d36dd6055441.jpg', 'f23416af24d110af4aa58380544eb92b.jpg', '85571b5f700dab925666032eac637306.jpg'),
(7, 'Lotus cookies', 'Biscoff butter cookies with a surprisingly crunchy bite and caramelized flavor.', 3, 'e8bd50dfa7ee7b57d2e9fe2577d11f21.jpg', '28caad976ad8ad37117e1e12d6a08bde.jpg', '693d91e0d51358865ea710810fef3fd0.jpg'),
(8, 'pain au chocolat croissant', 'Golden French Croissant with a rich dark chocolate filling.', 4, 'b899218bfb6112c3c37e108ec280c052.jpg', '7f9d871e53e6190a1b55c003777aa4e8.jpg', '388c394cfaa0767924ad989b86255499.jpg'),
(9, 'baguette bread', 'French bread, hard and crusty on the outside, with a light and soft crumb.', 1, 'bb6d61d14c0dd63708a1710aefbbe5c2.jpg', '351a60075ce9f322bd5c53f7c3e0b33b.jpg', '9dc13c912ae476ea207d122e7b885aea.jpg'),
(11, 'Kaak bread', 'A ring shaped savory roll covered with sesame seeds, crispy on the outside and chewy a bit when eating', 2, '93bdf31d146096cebef7778afca6c2bc.jpg', 'e17ff156547e71c23efa3a060543d801 (1).jpg', 'kaak.jpg'),
(12, 'Eclair', 'French choux pastry éclair,  filled with  pastry cream  and topped with chocolate ganache.', 4, '62e7665cf57796b4753a83c202b8313c.jpg', '8c4888473d32c7f7680d573f15dde947.jpg', '02308669acc3b2bd856b40f43231380b.jpg'),
(13, 'profiteroles eclaire', 'Choux pastries filled with crème pâtissière and coated in chocolate sauce.\r\n', 2, '068b7215ba921bf31fee7cdad4fa5d89.jpg', '626b16e0e22a7c17d4c87857ed7d5810.jpg', '53ef17e90ba6ee4ce08d7e91ed54159b.jpg'),
(14, 'Vanillia cake', 'Soft dreamy Vanilla Cake topped with vanilla buttercream', 8, '91e3c174536f4d26f4edd971159f9528.jpg', 'f66206cb63de41ed7e217a423b514de9.jpg', 'a0173549d43278b4dcd177ead9ab6902.jpg'),
(15, 'chocolate cake', 'Moist chocolate cake with a rich butter cream filling, chocolate sauce and Belgian chocolate ganache', 10, 'Salted-Caramel Six-Layer Chocolate Cake.jpg', '80e21cf0f9e37c578512d29e48c90b32.jpg', 'Salted Caramel Chocolate Cake.jpg'),
(16, 'cup cakes', 'Double classic chocolate cupcake with lot of chocolate chips. ', 2, '3494c2b1572fe41c357aa5672609574e.jpg', '6a822c3814ed6454598c4f4cd3bfebb3.jpg', 'a47e421586166916f39f8d7a10bf88a6.jpg'),
(17, 'blueberry cheesecake', 'This blueberry cheesecake starts with a buttery graham cracker crust, a creamy cheesecake center, and a tangy blueberry swirl.', 12, '5ce3668ff940d6b6d00ef1094da47f52.jpg', '28dc25fef89eae3f540813f53cf32837.jpg', '5746b8f83f3106d949b381221164edc1.jpg'),
(18, 'lotus cheesecake', 'This Biscoff cheesecake uses Biscoff cookies for the crust, cookie butter in the cheesecake and topped with a gorgeous cookie butter swirl.', 12, 'c886b39062f72760e6d15971ae8392fe.jpg', 'b8b9f68b71bb6be85584a14b3d199480.jpg', 'c0333a450a3be84f98494daf3da43521.jpg'),
(19, 'raspberry cheesecake', 'This raspberry cheesecake starts with a buttery graham cracker crust, a creamy cheesecake center, and a tangy raspberry swirl.', 12, 'ef18cd8c1fb988b2235bb5085ce0ba57.jpg', '17262b5b92981f22fa0d958a4ce45a74.jpg', '059f2f570464889d15e46b6c7d6545cb.jpg'),
(20, 'Bomboloni donuts', 'Light and delicious Italian doughnuts that are fried, coated in granulated sugar, and traditionally stuffed with pastry cream.', 4, 'caa048f02b1936e883bca18749de729c.jpg', '365b6dc91d0d11be82cd409ef53ff170.jpg', '151145e757e3b015e62ccb9fcab34cd9.jpg'),
(21, 'mini Fruit tart', 'Fresh fruit slices and a sweet custard filling on top of a bite-sized cookie shell.', 2, 'fd409ad9246d93ca80e01cd043156057.jpg', '660ec6685178a2547595c018778fe123.jpg', 'f010cf2f2ccaf635fe14805d86ec073d.jpg'),
(22, 'mini chocolate tart', 'mini chocolate Tartlets that start with a buttery shortbread crust and filled with rich chocolate ganache', 2, '99eb89ecfebbc929afbc4930321e2108.jpg', 'a5503cf464577718c391e0b6f3ea1990.jpg', 'cd15bea98556095802eedb4b4d6bcc4c.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

