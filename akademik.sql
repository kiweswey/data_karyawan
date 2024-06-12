-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 11:27 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `IdMhsw` int(11) NOT NULL,
  `Nama` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JenisKelamin` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Agama` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NoHp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`IdMhsw`, `Nama`, `JenisKelamin`, `Alamat`, `Agama`, `NoHp`, `Email`) VALUES
(3, 'FARHAN NUR FADILAH', 'Laki-laki', 'JL. bumi raya gang d', 'Hindu', '081932487228', 'farhannurfadilah26@gmail.com'),
(4, 'kakaw', 'Laki-laki', 'Jl. jalan menjadi cakep RT/RW 006/000', 'Protestan', '081212321232', 'kakawtlokjkil@gmail.com'),
(5, 'ALIF FAHLEVI', 'Laki-laki', 'Jl. Haji Yono sutoyo, Manggarai, Jakarta Selatan.', 'Katolik', '0819991345', 'alifasoyasoy@gmail.com'),
(7, 'didimdar', 'Perempuan', 'Jl.nuraiain jujun \r\nRT/RW 008/980', 'Islam', '0856453245676', 'didimdar23213@gmail.com'),
(8, 'bubulok', 'Laki-laki', 'Jl.jgjkiggsd \r\nnbnb', 'Buddha', '08876765433', 'bubunsol@gmail.crot'),
(9, 'DIKA', 'Laki-laki', 'Jl. Prumnas Jkatim', 'Islam', '978564653525', 'dakiahoy@gmail.com'),
(10, 'CAHBAN UHUY', 'Perempuan', 'Jln. Tegalamba 123', 'Khonghucu', '9797543498070', 'cahbanbanban@gmail.com'),
(11, 'KURNIAWANTORO', 'Laki-laki', 'JL. PONDOK KECIL', 'Buddha', '0987654345', 'kurniatot@yahoo.asoy'),
(12, 'Nabil Irwansyah', 'Laki-laki', 'jl. jakarta 89 jakarta', 'Protestan', '000099877899', 'nabilaja@09gmail.id.com'),
(13, 'HAIKYU', 'Laki-laki', 'Jl. Haji Yono sutoyo, Manggarai, Jakarta Selatan.', 'Khonghucu', '0819923455', 'cahyonobispak@gmail.com'),
(14, 'kulyhkhlk', 'Perempuan', 'iuoiiikj', 'Protestan', '0819292937', 'alifsimanjuntak09@gmail.com'),
(15, 'hfjghjhjhj', 'Perempuan', 'Jl. Haji Yono sutoyo, Manggarai, Jakarta Selatan.', 'Islam', '0819923455', 'cahyonobispak@gmail.com'),
(16, 'Alif Fahlevi', 'Laki-laki', 'Jl. Pusaka, Jatibening, Kota Bekasi.', 'Khonghucu', '0819292937', 'alifsimanjuntak09@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`IdMhsw`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `IdMhsw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
