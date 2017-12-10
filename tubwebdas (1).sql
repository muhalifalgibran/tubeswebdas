-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Des 2017 pada 03.34
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
-- Struktur dari tabel `deskripsi`
--

CREATE TABLE `deskripsi` (
  `id_deskripsi` varchar(22) NOT NULL,
  `nama_properti` text NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `hal_sekitar` text NOT NULL,
  `rekomendasi` text NOT NULL,
  `aksesibilitas` text NOT NULL,
  `id_profil` varchar(22) NOT NULL,
  `tanggalcheckin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `deskripsi`
--

INSERT INTO `deskripsi` (`id_deskripsi`, `nama_properti`, `harga`, `deskripsi`, `hal_sekitar`, `rekomendasi`, `aksesibilitas`, `id_profil`, `tanggalcheckin`) VALUES
('1b19-d4e5-0a5d7a50a9ce', 'rumah biasa aja', 1222222, 'asda', 'dase', 'AC,Internet,TV Kabel,Setrika,', 'das', 'd965-199d-46eb79f99982', '0000-00-00'),
('2f89-dd5c-dc8c7da987a3', 'btn griya turatea', 122222, 'bagus', 'lumayan', 'AC,Internet,Pengering Rambut,', 'lift', '3475-2ff0-2d6b7d83b6e6', '0000-00-00'),
('35ab-8b6a-e8dd7c5ca022', 'kamar ', 50000000, 'cocok untuk keluarga', 'dekat dengan atm', 'TV,AC,', 'pintu geser', '6e4a-54d3-d069765280ec', '2017-03-01'),
('3878-fe19-251f77edb578', 'rumah biasa aja', 1222222, 'asda', 'dase', 'AC,Internet,TV Kabel,Setrika,', 'das', 'fe9a-99e7-9beb7c509bd0', '0000-00-00'),
('504d-d8e7-2a2276e9ad14', 'rumah idaman para mahasiswa', 1221223, '3 menit naik gojek dari tasik', 'dekat dengan spbu bojongsoang', 'Internet,TV Kabel,Pengering Rambut,', 'tangga eskalator', '152c-1a8e-cbd2731ca850', '0000-00-00'),
('632b-a50f-98d974ada7e3', 'kamar ', 50000000, 'cocok untuk keluarga', 'dekat dengan atm', 'TV,AC,Internet,TV Kabel,Setrika,Mesin Cuci,Handuk,Pengering Rambut,', 'pintu geser', '4fd6-1c92-d509785d940a', '2017-03-01'),
('6c3c-e286-b20870d7a4a4', 'kamar ', 50000000, 'cocok untuk keluarga', 'dekat dengan atm', 'TV,AC,Internet,TV Kabel,Setrika,Mesin Cuci,Handuk,Pengering Rambut,', 'pintu geser', '608d-6787-a1427e939416', '2017-03-01'),
('7328-9aba-e2db7c59a0e8', 'aasse', 12221, 'asde', 'qwe', 'AC,Internet,Pengering Rambut,', 'adds', '57a5-5af7-3c98753f8a48', '0000-00-00'),
('76c8-e923-fca6710c8b7f', 'hhh', 333, 'rrrr', 'rtr', 'Internet,', 'hhhh', 'c520-c522-7f72773ca69a', '0000-00-00'),
('77b1-dce7-8ffb724991ab', 'bandung keren', 200000, 'cocok untuk keluarga', 'dekat dengan spbu', 'AC,Internet,Pengering Rambut,', 'lift', '31cd-937b-16fc75d2b551', '0000-00-00'),
('7a66-7610-6fac7c6cad00', 'btp', 2111, 'asik', 'keren', 'Internet,TV Kabel,Pengering Rambut,', 'pintu kemana saja', '903d-dcd9-67ab79cb9c90', '0000-00-00'),
('83c8-d5f0-1bb67792a7db', 'pbb', 122222, 'keren', 'cool', 'AC,Internet,Pengering Rambut,', 'lift', 'e8f9-2e11-eafb723d9202', '0000-00-00'),
('8c24-be48-1ece7217ac9f', 'ciganitri bagus', 90011221, '5 menit berjalan dari asia afrika', 'dekat dengan transmart', 'AC,Internet,TV Kabel,Setrika,Pengering Rambut,', 'lift', '3b52-2415-9c4d79299e7c', '0000-00-00'),
('90f9-f6f3-aae877438635', 'rumah keren', 21111, 'bagus', 'rumah banyak', 'TV Kabel,', 'rumah', '68aa-efc6-e5b87d2a83e8', '2017-12-30'),
('9135-3e59-3a967c49a9fb', 'pbb', 122222, 'keren', 'cool', 'AC,Internet,Pengering Rambut,', 'lift', '74ff-af81-9f1b7edb93e6', '0000-00-00'),
('9290-be5f-b3e2732d8d08', 'btp', 2111, 'asik', 'keren', 'Internet,TV Kabel,Pengering Rambut,', 'pintu kemana saja', '31d0-f493-36747b749793', '0000-00-00'),
('94a3-5a30-0ed97db6914b', 'kamar ', 50000000, 'cocok untuk keluarga', 'dekat dengan atm', 'TV,AC,', 'pintu geser', '3de4-233a-9e9e7cd3b19a', '2017-03-01'),
('ca02-4feb-e1d67bed80e5', 'ads2', 211111, 'das', '12', 'AC,Internet,TV Kabel,Pengering Rambut,', 'ad', 'd4ad-0412-599d73f9a54b', '0000-00-00'),
('ecfd-8e6b-ca8878629b59', 'perumahan buah batu', 0, '5 menit dari telkom', 'dekat dengan spbu', 'Internet,TV Kabel,Pengering Rambut,', 'lift', '48f5-20ae-787d74d9a297', '0000-00-00'),
('eeb0-0203-2bf27dc2a13c', 'ads2', 211111, 'das', '12', 'AC,Internet,TV Kabel,Pengering Rambut,', 'ad', '5d43-ca30-575b7fdd9c4a', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` varchar(22) NOT NULL,
  `gambar` text NOT NULL,
  `id_deskripsi` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `gambar`, `id_deskripsi`) VALUES
('', '1.PNG', ''),
('0206-5371-6f937bcb9a2c', 'Al-Fath_HD.png', '90f9-f6f3-aae877438635'),
('03b0-6b58-f6a672328b8e', 'classic-building-white-and-black-wallpaper.jpg', '7328-9aba-e2db7c59a0e8'),
('0bb0-427d-95c6722998c5', 'red-carpet-steps-png-29.jpg', '504d-d8e7-2a2276e9ad14'),
('10ac-6952-3c057f25af10', 'racun.png', '504d-d8e7-2a2276e9ad14'),
('1ae8-ce48-636b7a58b0e4', '1477291642110.png', '90f9-f6f3-aae877438635'),
('1b5d-1285-fe9575aa8973', 'a1.jpg', '35ab-8b6a-e8dd7c5ca022'),
('2345-d715-33087f5b944c', 'a1.jpg', '6c3c-e286-b20870d7a4a4'),
('4168-0e78-12eb78cda1c2', 'NqGG0S9P.jpeg', '504d-d8e7-2a2276e9ad14'),
('6d61-9604-d48a7b64b515', '1.PNG', '76c8-e923-fca6710c8b7f'),
('9085-a1be-cb4e7892ba30', 'Stamford_Bridge.jpg', '8c24-be48-1ece7217ac9f'),
('9318-7f37-ad9f781eb8ec', 'racun2.png', '504d-d8e7-2a2276e9ad14'),
('9f75-f78e-c6c577f89594', 'pedang.jpg', '504d-d8e7-2a2276e9ad14'),
('b02e-7f72-745f7366887d', 'tsukuyomi_madara_flat_wallpapers_hd_by_designuchiha-da4zkkr.jpg', '8c24-be48-1ece7217ac9f'),
('cf7a-17f9-6426753baca6', 'thumb-1920-214269.jpg', '8c24-be48-1ece7217ac9f'),
('d3b9-069d-4f3372499ab4', 'coba.png', '7328-9aba-e2db7c59a0e8'),
('d45e-358a-87f0721b90ca', '1.PNG', 'ca02-4feb-e1d67bed80e5'),
('d7eb-6ea6-5872704da1fb', 'Space Ship Comet Neon Illustration Desktop Wallpaper.jpg', '8c24-be48-1ece7217ac9f'),
('deea-013b-785874cabe90', '1.PNG', 'eeb0-0203-2bf27dc2a13c'),
('e739-6159-75227ff99731', 'a1.jpg', '94a3-5a30-0ed97db6914b'),
('e906-93a6-f80d7ca9a2b1', 'CrG3uz2UEAIsP5J.jpg', '7328-9aba-e2db7c59a0e8'),
('ee6f-a3cb-0e7475c7b9ce', 'a1.jpg', '632b-a50f-98d974ada7e3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `homestay`
--

CREATE TABLE `homestay` (
  `id_homestay` varchar(22) NOT NULL,
  `jenisHomestay` text NOT NULL,
  `id_penyedia` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `homestay`
--

INSERT INTO `homestay` (`id_homestay`, `jenisHomestay`, `id_penyedia`) VALUES
('0669-55c7-cd037e28a20c', 'Villa', '3860-6d27-00547dd4a155'),
('0caa-386b-90437812806a', 'Bungalo', '345f-a459-0e3176f4ad67'),
('15c4-ff2e-90a97980b390', 'Rumah', '345f-a459-0e3176f4ad67'),
('25f5-9351-d40273ce9432', 'Bungalo', '23a5-bec7-224e7dd49a34'),
('3414-34d4-206574e79acd', 'Rumah', '3860-6d27-00547dd4a155'),
('3447-35dc-fa647ef1a121', 'Rumah', '345f-a459-0e3176f4ad67'),
('3e48-a578-a3ae72fda837', 'Bungalo', '345f-a459-0e3176f4ad67'),
('4f1f-354d-a2f878d9912b', 'Rumah', '3860-6d27-00547dd4a155'),
('55e9-8037-3dbe71a8b36b', 'Apartemen', '345f-a459-0e3176f4ad67'),
('61d6-0c39-f80c71d5b4a0', 'Rumah', '78d7-55a1-829a77b190d2'),
('6549-5d8f-dd7071329e49', 'Bungalo', '345f-a459-0e3176f4ad67'),
('7095-9a0b-f5e6772aaf91', 'Villa', '3860-6d27-00547dd4a155'),
('ae6a-0966-b3a772cb86cf', 'Bungalo', '23a5-bec7-224e7dd49a34'),
('b18b-7c3b-0ebb7909b41a', 'Bungalo', '345f-a459-0e3176f4ad67'),
('cfa1-d089-08e37dbdaf92', 'Rumah', '345f-a459-0e3176f4ad67'),
('da14-342f-7b217447a228', 'Rumah', '78d7-55a1-829a77b190d2'),
('ec5d-3ee6-3541757bac85', 'Bungalo', '345f-a459-0e3176f4ad67'),
('f0bd-ac83-1c437186bf64', 'Rumah', '78d7-55a1-829a77b190d2'),
('f17d-8fb2-4a427155a22f', 'Rumah', '78d7-55a1-829a77b190d2'),
('fc86-f5dc-c645786c9931', 'Rumah', '345f-a459-0e3176f4ad67');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesan`
--

CREATE TABLE `pemesan` (
  `id_pemesan` varchar(22) NOT NULL,
  `noidentitas` varchar(22) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `umur` int(11) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesan`
--

INSERT INTO `pemesan` (`id_pemesan`, `noidentitas`, `nama`, `alamat`, `umur`, `password`) VALUES
('378f-80c9-35157b70beb1', '', '', '', 0, 'root'),
('4b82-d49b-05147cc8844b', '768768', 'safdsg', 'fhkk', 7, ''),
('56f1-0ef0-45fb71a0b513', '', '', '', 0, 'root'),
('584b-52df-20147abc8991', '', '', '', 0, 'root'),
('5fd2-41e8-dfe471d29176', '', '', '', 0, 'root'),
('6083-1690-099b733c8e26', '', '', '', 0, 'root'),
('6bd6-c460-a75c7e1dbd95', '', '', '', 0, 'root'),
('70d2-4e51-9ebc7b8d87c4', '', '', '', 0, 'root'),
('71a3-c62c-a4f97a13af79', 'a', '', 'd', 0, ''),
('9542-4fec-be407106a1e1', '', '', '', 0, 'root'),
('a75c-a1fc-fbb173938f7d', '121233', 'gibran', '2213', 21, '112'),
('aaf6-68f7-dd527875a5d0', '4363', 'dfsghdgh', 'drhuytij', 0, ''),
('b1dd-9a0d-cef47c789168', 'alad', 'alif', 'alif', 21, '112'),
('c86f-1d68-40ea727fb934', '', '', '', 0, 'root'),
('c901-a6a5-f7c17ac9abfe', '4363', 'dfsghdgh', 'drhuytij', 0, ''),
('d2d3-54e8-a82178b29902', '4363', 'dfsghdgh', 'drhuytij', 0, ''),
('d30f-4f5e-38607022b0fd', '121233', 'gibran', '2213', 21, '123'),
('d335-6625-3b1771e4bdbc', '864454', 'alif', 'pga', 21, '123'),
('dbf2-9aba-ad9c7c8fb852', '', '', '', 0, 'root'),
('dc97-ab80-89e7748c9217', '', '', '', 0, ''),
('dcab-b5b6-ea817043824c', 'a', 'as', 'd', 0, 'root'),
('dddb-b44e-27fe7079b1d8', '', '', '', 0, 'root'),
('dee0-e9c3-9bf076998b17', '', '', '', 0, 'root'),
('e2c9-4454-58397eada5d3', '', '', '', 0, 'root');

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
('23a5-bec7-224e7dd49a34', 'ade', 'dddd', '45ddddddd_', '123'),
('345f-a459-0e3176f4ad67', 'galih', 'pbb', '7888424', 'galih'),
('3860-6d27-00547dd4a155', 'ucul', 'pbb', '889842', 'ucul'),
('6432-152b-641676acbef1', 'ulum', 'pgaga', '889852', 'ulum'),
('78d7-55a1-829a77b190d2', 'adit', 'pbbc57', 'alifalgibran147@gmail.com', 'adit'),
('dcb4-0ccf-8c6e78159c00', 'priyo', 'pbbc57', '8897534', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` varchar(22) NOT NULL,
  `ranjang` text NOT NULL,
  `kamar_mandi` text NOT NULL,
  `alamat` text NOT NULL,
  `kota` text NOT NULL,
  `id_homestay` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `ranjang`, `kamar_mandi`, `alamat`, `kota`, `id_homestay`) VALUES
('152c-1a8e-cbd2731ca850', 'Ranjang Double', '3', 'perumahan buah batu blok c no 57', 'bandung', '55e9-8037-3dbe71a8b36b'),
('31cd-937b-16fc75d2b551', 'Ranjang Susun', '4', 'perumahan buah batu', 'bandung', '3447-35dc-fa647ef1a121'),
('31d0-f493-36747b749793', 'Futon', '21', 'tamalanrea', 'makassar', 'fc86-f5dc-c645786c9931'),
('3475-2ff0-2d6b7d83b6e6', 'Ranjang Super King', '21', 'binamu', 'jeneponto', 'b18b-7c3b-0ebb7909b41a'),
('3b52-2415-9c4d79299e7c', 'Ranjang Super King', '1', 'ciganitri', 'bandung', 'ae6a-0966-b3a772cb86cf'),
('3de4-233a-9e9e7cd3b19a', 'Ranjang King', '2', 'pbb', 'bandung', 'da14-342f-7b217447a228'),
('48f5-20ae-787d74d9a297', 'Ranjang Susun', '12', 'PBB', 'bandung', 'cfa1-d089-08e37dbdaf92'),
('4fd6-1c92-d509785d940a', 'Ranjang King', '2', 'pbb', 'bandung', 'f0bd-ac83-1c437186bf64'),
('57a5-5af7-3c98753f8a48', 'Ranjang King', '211', 'adss', 'aasdd', 'ec5d-3ee6-3541757bac85'),
('5d43-ca30-575b7fdd9c4a', 'Sofa Bed', '12', 'ads', 'asd3', '7095-9a0b-f5e6772aaf91'),
('608d-6787-a1427e939416', 'Ranjang King', '2', 'pbb', 'bandung', 'f17d-8fb2-4a427155a22f'),
('68aa-efc6-e5b87d2a83e8', 'Ranjang Susun', '2', 'pga', 'bandung', '3e48-a578-a3ae72fda837'),
('6e4a-54d3-d069765280ec', 'Ranjang King', '2', 'pbb', 'bandung', '61d6-0c39-f80c71d5b4a0'),
('74ff-af81-9f1b7edb93e6', 'Ranjang Super King', '2', 'perumahan buah batu', 'bandung', '6549-5d8f-dd7071329e49'),
('903d-dcd9-67ab79cb9c90', 'Futon', '21', 'tamalanrea', 'makassar', '15c4-ff2e-90a97980b390'),
('c520-c522-7f72773ca69a', 'Ranjang Semi Double', '2', 'uuu', 'rrtr', '25f5-9351-d40273ce9432'),
('d4ad-0412-599d73f9a54b', 'Sofa Bed', '12', 'ads', 'asd3', '0669-55c7-cd037e28a20c'),
('d965-199d-46eb79f99982', 'Ranjang Super King', '12', 'disini', 'disitu', '4f1f-354d-a2f878d9912b'),
('e8f9-2e11-eafb723d9202', 'Ranjang Super King', '2', 'perumahan buah batu', 'bandung', '0caa-386b-90437812806a'),
('fe9a-99e7-9beb7c509bd0', 'Ranjang Super King', '12', 'disini', 'disitu', '3414-34d4-206574e79acd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deskripsi`
--
ALTER TABLE `deskripsi`
  ADD PRIMARY KEY (`id_deskripsi`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`id_homestay`);

--
-- Indexes for table `pemesan`
--
ALTER TABLE `pemesan`
  ADD PRIMARY KEY (`id_pemesan`);

--
-- Indexes for table `penyedia`
--
ALTER TABLE `penyedia`
  ADD PRIMARY KEY (`id_penyedia`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
