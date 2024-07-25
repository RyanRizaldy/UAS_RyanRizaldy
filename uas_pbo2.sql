-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 10:59 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_pbo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_penjualan` varchar(20) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `harga_satuan` int(100) NOT NULL,
  `jumlah_barang` int(50) NOT NULL,
  `total_harga` int(250) NOT NULL,
  `bayar` varchar(20) NOT NULL,
  `kembalian` varchar(30) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_penjualan`, `menu_name`, `harga_satuan`, `jumlah_barang`, `total_harga`, `bayar`, `kembalian`, `tanggal`) VALUES
('IS0001', 'Pancake and Berry', 8, 1, 8, '30', '5', '2024-07-17'),
('IS0001', 'Roasted Vegetables', 9, 1, 9, '30', '5', '2024-07-17'),
('IS0001', 'Light Berry Juice', 8, 1, 8, '30', '5', '2024-07-17'),
('IS0002', 'Pancake and Berry', 8, 1, 8, '10', '2', '2024-07-25'),
('IS0003', 'Light Berry Juice', 8, 1, 8, '30', '12', '2024-07-25'),
('IS0003', 'Salmon Burger', 10, 1, 10, '30', '12', '2024-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `pentualan_takeaway`
--

CREATE TABLE `pentualan_takeaway` (
  `no_penjualan` varchar(50) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `harga_satuan` int(50) NOT NULL,
  `jumlah_barang` int(50) NOT NULL,
  `total_harga` int(100) NOT NULL,
  `bayar` int(50) NOT NULL,
  `kembalian` int(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pentualan_takeaway`
--

INSERT INTO `pentualan_takeaway` (`no_penjualan`, `menu_name`, `harga_satuan`, `jumlah_barang`, `total_harga`, `bayar`, `kembalian`, `tanggal`) VALUES
('TA0001', 'Pancake and Berry', 8, 1, 8, 200, 72, '2024-07-24'),
('TA0001', 'Roasted Vegetables', 9, 2, 18, 200, 72, '2024-07-24'),
('TA0001', 'Salmon Burger', 10, 3, 30, 200, 72, '2024-07-24'),
('TA0001', 'Light Berry Juice', 8, 1, 8, 200, 72, '2024-07-24'),
('TA0001', 'Raspberry Choco Juice', 8, 3, 24, 200, 72, '2024-07-24'),
('TA0001', 'Blueberry Juice', 8, 5, 40, 200, 72, '2024-07-24'),
('TA0002', 'Raspberry Choco Juice', 8, 2, 16, 20, 4, '2024-07-25'),
('TA0003', 'Roasted Vegetables', 9, 1, 9, 20, 3, '2024-07-25'),
('TA0003', 'Blueberry Juice', 8, 1, 8, 20, 3, '2024-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hitung_jual`
--

CREATE TABLE `tb_hitung_jual` (
  `id` int(11) NOT NULL,
  `no_penjualan` varchar(25) NOT NULL,
  `nama_menu` varchar(30) NOT NULL,
  `harga_satuan` int(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', 'asd'),
(2, 'asd', 'asd@ASD.COM', 'ASD'),
(3, 'ryan', 'ryan@asd.com', 'asd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_hitung_jual`
--
ALTER TABLE `tb_hitung_jual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hitung_jual`
--
ALTER TABLE `tb_hitung_jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
