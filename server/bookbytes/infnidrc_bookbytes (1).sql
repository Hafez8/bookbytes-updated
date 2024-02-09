-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2024 at 02:09 AM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infnidrc_bookbytes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_books`
--

CREATE TABLE `tbl_books` (
  `book_id` int(5) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `book_isbn` varchar(17) NOT NULL,
  `book_title` varchar(200) NOT NULL,
  `book_desc` varchar(2000) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `book_qty` int(5) NOT NULL,
  `book_status` varchar(10) NOT NULL,
  `book_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_books`
--

INSERT INTO `tbl_books` (`book_id`, `user_id`, `book_isbn`, `book_title`, `book_desc`, `book_author`, `book_price`, `book_qty`, `book_status`, `book_date`) VALUES
(1, '3', '978-0-7475-3269-9', 'Harry Potter and the Philosopher\'s Stone', 'Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 'J.K. Rowling', 260.00, 2, 'Used', '2023-11-27 09:27:18.289638'),
(2, '3', '978-0-439-35548-4', 'The Lord of the Rings', 'One Ring to rule them all, One Ring to find them, One Ring to bring them all, and in the darkness bind them.', 'J.R.R. Tolkien', 560.00, 3, 'Used', '2023-11-27 09:58:52.975503'),
(3, '3', '978-0-316-06529-2', 'The Hitchhiker\'s Guide to the Galaxy', 'Don\'t Panic!', 'Douglas Adams', 300.00, 1, 'Used', '2023-11-27 09:58:52.975503'),
(4, '3', '978-0-099-54281-9', 'Pride and Prejudice', 'It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife.', 'Jane Austen', 250.00, 2, 'New', '2023-11-27 09:58:52.975503'),
(5, '3', '978-0-141-00807-0', 'To Kill a Mockingbird', 'In the sleepy town of Maycomb, Alabama, during the 1930s, Scout Finch, a young girl, experiences racial injustice and defends her father, a lawyer defending a black man accused of raping a white woman.', 'Harper Lee', 350.00, 1, 'Used', '2023-11-27 09:58:52.975503'),
(6, '3', '978-0-8052-1128-9', 'The Catcher in the Rye', 'Holden Caulfield is a troubled teenager who is expelled from his boarding school and wanders around New York City, disillusioned with the world around him.', 'J.D. Salinger', 250.00, 1, 'Used', '2023-11-27 09:58:52.975503'),
(7, '3', '978-0-143-03513-8', 'Animal Farm', 'The animals of Manor Farm overthrow their human owners and establish a utopian society, but their ideals are soon corrupted by power and greed.', 'George Orwell', 300.00, 2, 'New', '2023-11-27 09:58:52.975503'),
(8, '3', '978-0-316-06273-0', 'The Great Gatsby', 'The mysterious millionaire Jay Gatsby throws lavish parties in his mansion, hoping to win back his lost love, Daisy Buchanan.', 'F. Scott Fitzgerald', 450.00, 1, 'Used', '2023-11-27 09:58:52.975503'),
(9, '3', '978-0-141-43175-5', '1984', 'Winston Smith works for the Thought Police in a dystopian society where Big Brother monitors every citizen\'s move.', 'George Orwell', 400.00, 3, 'New', '2023-11-27 09:58:52.975503'),
(10, '3', '978-0-316-00613-9', 'The Handmaid\'s Tale', 'Offred, a woman forced into sexual servitude, recounts her life in a totalitarian society where women are valued only for their reproductive abilities.', 'Margaret Atwood', 350.00, 2, 'Used', '2023-11-27 09:58:52.975503'),
(0, '8', '978-3-16-148410-0', 'The Art of Fiction', 'A compelling exploration of the craft of fiction writing, offering valuable insights and advice for both aspiring and experienced authors', 'John Doe', 150.00, 3, 'New', '2023-12-21 21:27:10.600350');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `cart_id` int(5) NOT NULL,
  `buyer_id` varchar(5) NOT NULL,
  `seller_id` varchar(5) NOT NULL,
  `book_id` varchar(5) NOT NULL,
  `cart_qty` int(5) NOT NULL,
  `cart_status` varchar(10) NOT NULL,
  `order_id` varchar(5) NOT NULL,
  `cart_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`cart_id`, `buyer_id`, `seller_id`, `book_id`, `cart_qty`, `cart_status`, `order_id`, `cart_date`) VALUES
(0, '18', '3', '1', 1, 'New', '', '2024-02-10 00:57:30.494068'),
(0, '18', '3', '2', 1, 'New', '', '2024-02-10 00:57:34.814583'),
(0, '20', '3', '8', 1, 'New', '', '2024-02-10 01:01:26.003774'),
(0, '20', '3', '7', 1, 'New', '', '2024-02-10 01:01:30.392299');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(5) NOT NULL,
  `buyer_id` varchar(5) NOT NULL,
  `seller_id` varchar(5) NOT NULL,
  `order_total` decimal(5,2) NOT NULL,
  `order_date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `order_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(5) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `user_datereg` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_email`, `user_name`, `user_password`, `user_type`, `user_datereg`) VALUES
(8, 'hafiz@gmail.com', 'hafiz', 'c7239b241703de2af0d037da0fe82605029c9dd9', '', '2023-11-26 12:52:24.522306'),
(9, 'aiman@gmail.com', 'Aiman', '1d039fe4426d9b9a5ed3b0d2278a264dd63c07ce', '', '2023-12-09 13:10:48.177122'),
(10, 'abu@gmail.com', 'Abu', '6cd6604c4b1275226a95060e4cd15f370ebd2e38', '', '2023-12-09 22:18:25.290960'),
(11, 'apih@gmail.com', 'apih', '4f0b2c2bea616681e66bb42172b95af6432c4cb6', '', '2023-12-09 22:50:17.561576'),
(12, 'Akmal@gmail.com', 'Akmal', '083ca36ec4a27e253d5e24118d458b275ad9a3df', '', '2023-12-09 22:52:56.711893'),
(13, 'ajib@gmail.com', 'ajib', 'd78dd2d4cb056de40be42e69fbf38b0711a1a092', '', '2023-12-09 23:31:22.181374'),
(14, 'sarah@gmail.com', 'sarah', '8fa179c7e4a182c524074081bc07d010e7dd29b1', '', '2023-12-10 00:02:19.810059'),
(15, 'apizz123@gmail.com', 'Apiss', '74fb031e8fbc326436bb6973bfcbe3f6666c69c0', '', '2024-01-21 12:04:24.782738'),
(17, 'aiman123@gmail.com', 'aiman1', '0135accf1bb2d797832f27e826fd2b4f3219dfb4', '', '2024-01-30 22:08:16.843132'),
(18, 'Kimi123@gmail.com', 'Kimi', '74fb031e8fbc326436bb6973bfcbe3f6666c69c0', 'Buyer', '2024-01-30 22:35:01.487743'),
(20, 'jebat@gmail.com', 'Jebat', '74fb031e8fbc326436bb6973bfcbe3f6666c69c0', 'Buyer', '2024-02-10 01:00:52.638685');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
