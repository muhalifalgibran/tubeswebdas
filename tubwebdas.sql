-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28 Nov 2017 pada 10.56
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubwebdas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyedia`
--

CREATE TABLE `penyedia` (
  `id_penyedia` varchar(22) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `no_identitas` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyedia`
--

INSERT INTO `penyedia` (`id_penyedia`, `nama`, `alamat`, `no_identitas`, `password`) VALUES
('1d88-4cd6-86f37bd0ab1d', 'rinda', 'pga', '778987', 'rinda'),
('8b14', 'kevin', 'antapani', '8887894', 'eror'),
('9f72-d7be-c5167096b509', 'alif', 'pga', '121212', '212'),
('b034-2e4d-53777b189847', 'frety', 'ciganitri', '8897861', 'frety');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penyedia`
--
ALTER TABLE `penyedia`
  ADD PRIMARY KEY (`id_penyedia`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
