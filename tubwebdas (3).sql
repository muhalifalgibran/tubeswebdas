-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Des 2017 pada 17.12
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
('0db1-3994-8df3707e84c3', 'jakarta keren', 221412, '5 menit dari monas', 'dekat dengan sungai ciliwung', 'Internet,TV Kabel,Pengering Rambut,', 'motor', '912b-31b3-68327eb584a4', '2017-12-30'),
('1b19-d4e5-0a5d7a50a9ce', 'rumah biasa aja', 1222222, 'asda', 'dase', 'AC,Internet,TV Kabel,Setrika,', 'das', 'd965-199d-46eb79f99982', '0000-00-00'),
('2f89-dd5c-dc8c7da987a3', 'btn griya turatea', 122222, 'bagus', 'lumayan', 'AC,Internet,Pengering Rambut,', 'lift', '3475-2ff0-2d6b7d83b6e6', '0000-00-00'),
('35ab-8b6a-e8dd7c5ca022', 'kamar ', 50000000, 'cocok untuk keluarga', 'dekat dengan atm', 'TV,AC,', 'pintu geser', '6e4a-54d3-d069765280ec', '2017-03-01'),
('3878-fe19-251f77edb578', 'rumah biasa aja', 1222222, 'asda', 'dase', 'AC,Internet,TV Kabel,Setrika,', 'das', 'fe9a-99e7-9beb7c509bd0', '0000-00-00'),
('504d-d8e7-2a2276e9ad14', 'rumah idaman para mahasiswa', 1221223, '3 menit naik gojek dari tasik', 'dekat dengan spbu bojongsoang', 'Internet,TV Kabel,Pengering Rambut,', 'tangga eskalator', '152c-1a8e-cbd2731ca850', '0000-00-00'),
('632b-a50f-98d974ada7e3', 'kamar ', 50000000, 'cocok untuk keluarga', 'dekat dengan atm', 'TV,AC,Internet,TV Kabel,Setrika,Mesin Cuci,Handuk,Pengering Rambut,', 'pintu geser', '4fd6-1c92-d509785d940a', '2017-03-01'),
('6c3c-e286-b20870d7a4a4', 'kamar ', 50000000, 'cocok untuk keluarga', 'dekat dengan atm', 'TV,AC,Internet,TV Kabel,Setrika,Mesin Cuci,Handuk,Pengering Rambut,', 'pintu geser', '608d-6787-a1427e939416', '2017-03-01'),
('6f01-376f-233676bf9db5', 'rumah keren', 12331, '2 menit dari kota', 'dekat dengan indomart', 'AC,Internet,TV Kabel,', 'lift', 'b8f5-6b71-6281731e92ce', '2017-12-02'),
('76c8-e923-fca6710c8b7f', 'hhh', 333, 'rrrr', 'rtr', 'Internet,', 'hhhh', 'c520-c522-7f72773ca69a', '0000-00-00'),
('77b1-dce7-8ffb724991ab', 'bandung keren', 200000, 'cocok untuk keluarga', 'dekat dengan spbu', 'AC,Internet,Pengering Rambut,', 'lift', '31cd-937b-16fc75d2b551', '0000-00-00'),
('7a66-7610-6fac7c6cad00', 'btp', 2111, 'asik', 'keren', 'Internet,TV Kabel,Pengering Rambut,', 'pintu kemana saja', '903d-dcd9-67ab79cb9c90', '0000-00-00'),
('83c8-d5f0-1bb67792a7db', 'pbb', 122222, 'keren', 'cool', 'AC,Internet,Pengering Rambut,', 'lift', 'e8f9-2e11-eafb723d9202', '0000-00-00'),
('8c24-be48-1ece7217ac9f', 'ciganitri bagus', 90011221, '5 menit berjalan dari asia afrika', 'dekat dengan transmart', 'AC,Internet,TV Kabel,Setrika,Pengering Rambut,', 'lift', '3b52-2415-9c4d79299e7c', '0000-00-00'),
('90f9-f6f3-aae877438635', 'rumah keren', 21111, 'bagus', 'rumah banyak', 'TV Kabel,', 'rumah', '68aa-efc6-e5b87d2a83e8', '2017-12-30'),
('9135-3e59-3a967c49a9fb', 'pbb', 122222, 'keren', 'cool', 'AC,Internet,Pengering Rambut,', 'lift', '74ff-af81-9f1b7edb93e6', '0000-00-00'),
('9290-be5f-b3e2732d8d08', 'btp', 2111, 'asik', 'keren', 'Internet,TV Kabel,Pengering Rambut,', 'pintu kemana saja', '31d0-f493-36747b749793', '0000-00-00'),
('9337-cfb1-34a67b0c8a73', 'jakarta keren', 221412, '5 menit dari monas', 'dekat dengan sungai ciliwung', 'Internet,TV Kabel,Pengering Rambut,', 'motor', '5be9-989d-ebfe7cdeab2e', '2017-12-30'),
('94a3-5a30-0ed97db6914b', 'kamar ', 50000000, 'cocok untuk keluarga', 'dekat dengan atm', 'TV,AC,', 'pintu geser', '3de4-233a-9e9e7cd3b19a', '2017-03-01'),
('c5c0-6172-0d5578dbb132', 'rumah gadang', 11213, '5 menit berjalan dari amerika', 'dekat dengan laut', 'Internet,TV Kabel,Setrika,Pengering Rambut,', 'sepeda gunung', '16d5-7608-847572539772', '2017-12-30'),
('ca02-4feb-e1d67bed80e5', 'ads2', 211111, 'das', '12', 'AC,Internet,TV Kabel,Pengering Rambut,', 'ad', 'd4ad-0412-599d73f9a54b', '0000-00-00'),
('ecfd-8e6b-ca8878629b59', 'perumahan buah batu', 0, '5 menit dari telkom', 'dekat dengan spbu', 'Internet,TV Kabel,Pengering Rambut,', 'lift', '48f5-20ae-787d74d9a297', '0000-00-00'),
('eeb0-0203-2bf27dc2a13c', 'ads2', 211111, 'das', '12', 'AC,Internet,TV Kabel,Pengering Rambut,', 'ad', '5d43-ca30-575b7fdd9c4a', '0000-00-00'),
('ff5b-ff23-78337bcdbd62', 'rumah gadang', 11213, '5 menit berjalan dari amerika', 'dekat dengan laut', 'Internet,', '', '9d61-f1f0-0b727ddda7f2', '2017-12-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` varchar(22) NOT NULL,
  `feedback` text NOT NULL,
  `id_homestay` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `feedback`, `id_homestay`) VALUES
('ae44-4535-5189716d8078', 'bagus', '');

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
('2e4b-e4b0-0f777b9eb727', '3.jpg', 'c5c0-6172-0d5578dbb132'),
('4168-0e78-12eb78cda1c2', 'NqGG0S9P.jpeg', '504d-d8e7-2a2276e9ad14'),
('4d5a-93cb-084678c2967d', '9.jpg', '0db1-3994-8df3707e84c3'),
('6bd8-ca1d-ac6c7135996f', '9.jpg', '9337-cfb1-34a67b0c8a73'),
('6d61-9604-d48a7b64b515', '1.PNG', '76c8-e923-fca6710c8b7f'),
('6f6d-ef98-6a3178eaabde', '8.jpg', '0db1-3994-8df3707e84c3'),
('79ac-fd87-d0b2761f8936', '', 'ff5b-ff23-78337bcdbd62'),
('8673-5378-cb3d7429be16', '8.jpg', '9337-cfb1-34a67b0c8a73'),
('9085-a1be-cb4e7892ba30', 'Stamford_Bridge.jpg', '8c24-be48-1ece7217ac9f'),
('9318-7f37-ad9f781eb8ec', 'racun2.png', '504d-d8e7-2a2276e9ad14'),
('9f75-f78e-c6c577f89594', 'pedang.jpg', '504d-d8e7-2a2276e9ad14'),
('a26d-643a-5eaf77c1899e', '2.jpg', 'c5c0-6172-0d5578dbb132'),
('aa3d-30c6-f3727bb9bff3', '9.jpg', '6f01-376f-233676bf9db5'),
('b02e-7f72-745f7366887d', 'tsukuyomi_madara_flat_wallpapers_hd_by_designuchiha-da4zkkr.jpg', '8c24-be48-1ece7217ac9f'),
('c2a5-54d4-3ceb7093a171', '4.jpg', '6f01-376f-233676bf9db5'),
('cf7a-17f9-6426753baca6', 'thumb-1920-214269.jpg', '8c24-be48-1ece7217ac9f'),
('d3b9-069d-4f3372499ab4', 'coba.png', '7328-9aba-e2db7c59a0e8'),
('d45e-358a-87f0721b90ca', '1.PNG', 'ca02-4feb-e1d67bed80e5'),
('d7eb-6ea6-5872704da1fb', 'Space Ship Comet Neon Illustration Desktop Wallpaper.jpg', '8c24-be48-1ece7217ac9f'),
('dd9a-399f-cb3e725b90a8', 'Stamford_Bridge.jpg', '6f01-376f-233676bf9db5'),
('deea-013b-785874cabe90', '1.PNG', 'eeb0-0203-2bf27dc2a13c'),
('e22c-2290-11d977b68a83', '5.jpg', 'c5c0-6172-0d5578dbb132'),
('e69e-eed5-337b7083849b', '4.jpg', 'c5c0-6172-0d5578dbb132'),
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
('4f1f-354d-a2f878d9912b', 'Rumah', '3860-6d27-00547dd4a155'),
('61d6-0c39-f80c71d5b4a0', 'Rumah', '78d7-55a1-829a77b190d2'),
('6549-5d8f-dd7071329e49', 'Bungalo', '345f-a459-0e3176f4ad67'),
('7095-9a0b-f5e6772aaf91', 'Villa', '3860-6d27-00547dd4a155'),
('875e-c3a8-5d9478b8a456', 'Apartemen', 'befd-f8bd-7741754fb0bd'),
('ae6a-0966-b3a772cb86cf', 'Bungalo', '23a5-bec7-224e7dd49a34'),
('b18b-7c3b-0ebb7909b41a', 'Bungalo', '345f-a459-0e3176f4ad67'),
('bba4-6946-1df87062ad02', 'Rumah', 'eb4e-a7f2-7bc9714196ff'),
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
('af64-a8c8-5cb97a2a9c9b', '1231', 'ipat', 'bandung', 12, 'ipat123456'),
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
('e0eb-f0f5-ca3e74b9ac4b', '1244123', 'gibran', 'pga', 21, 'alif'),
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
('befd-f8bd-7741754fb0bd', 'ipat', 'bandung', '232', 'ipat12345678'),
('dcb4-0ccf-8c6e78159c00', 'priyo', 'pbbc57', '8897534', '123'),
('eb4e-a7f2-7bc9714196ff', 'gibran', 'pga', '12', '123456789');

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
('16d5-7608-847572539772', 'Ranjang King', '23', 'buah batu pga', 'padang', 'c90a-22ea-4e857b8f92c1'),
('31cd-937b-16fc75d2b551', 'Ranjang Susun', '4', 'perumahan buah batu', 'bandung', '3447-35dc-fa647ef1a121'),
('31d0-f493-36747b749793', 'Futon', '21', 'tamalanrea', 'makassar', 'fc86-f5dc-c645786c9931'),
('3475-2ff0-2d6b7d83b6e6', 'Ranjang Super King', '21', 'binamu', 'jeneponto', 'b18b-7c3b-0ebb7909b41a'),
('3b52-2415-9c4d79299e7c', 'Ranjang Super King', '1', 'ciganitri', 'bandung', 'ae6a-0966-b3a772cb86cf'),
('3de4-233a-9e9e7cd3b19a', 'Ranjang King', '2', 'pbb', 'bandung', 'da14-342f-7b217447a228'),
('48f5-20ae-787d74d9a297', 'Ranjang Susun', '12', 'PBB', 'bandung', 'cfa1-d089-08e37dbdaf92'),
('4fd6-1c92-d509785d940a', 'Ranjang King', '2', 'pbb', 'bandung', 'f0bd-ac83-1c437186bf64'),
('57a5-5af7-3c98753f8a48', 'Ranjang King', '211', 'adss', 'aasdd', 'ec5d-3ee6-3541757bac85'),
('5be9-989d-ebfe7cdeab2e', 'Futon', '12', 'gang pak uweng', 'jakarta', '812e-15c2-6c9877aa8f39'),
('5d43-ca30-575b7fdd9c4a', 'Sofa Bed', '12', 'ads', 'asd3', '7095-9a0b-f5e6772aaf91'),
('608d-6787-a1427e939416', 'Ranjang King', '2', 'pbb', 'bandung', 'f17d-8fb2-4a427155a22f'),
('68aa-efc6-e5b87d2a83e8', 'Ranjang Susun', '2', 'pga', 'bandung', '3e48-a578-a3ae72fda837'),
('6e4a-54d3-d069765280ec', 'Ranjang King', '2', 'pbb', 'bandung', '61d6-0c39-f80c71d5b4a0'),
('74ff-af81-9f1b7edb93e6', 'Ranjang Super King', '2', 'perumahan buah batu', 'bandung', '6549-5d8f-dd7071329e49'),
('903d-dcd9-67ab79cb9c90', 'Futon', '21', 'tamalanrea', 'makassar', '15c4-ff2e-90a97980b390'),
('912b-31b3-68327eb584a4', 'Futon', '12', 'gang pak uweng', 'jakarta', 'bba4-6946-1df87062ad02'),
('9d61-f1f0-0b727ddda7f2', 'Ranjang King', '23', 'buah batu pga', 'padang', '106b-6c7e-66ca73e38694'),
('b8f5-6b71-6281731e92ce', 'Ranjang Semi Double', '2', 'bandung', 'bandung', '875e-c3a8-5d9478b8a456'),
('c520-c522-7f72773ca69a', 'Ranjang Semi Double', '2', 'uuu', 'rrtr', '25f5-9351-d40273ce9432'),
('d4ad-0412-599d73f9a54b', 'Sofa Bed', '12', 'ads', 'asd3', '0669-55c7-cd037e28a20c'),
('d965-199d-46eb79f99982', 'Ranjang Super King', '12', 'disini', 'disitu', '4f1f-354d-a2f878d9912b'),
('e8f9-2e11-eafb723d9202', 'Ranjang Super King', '2', 'perumahan buah batu', 'bandung', '0caa-386b-90437812806a'),
('fe9a-99e7-9beb7c509bd0', 'Ranjang Super King', '12', 'disini', 'disitu', '3414-34d4-206574e79acd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(22) NOT NULL,
  `tanggalMasuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `harga` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `status` text NOT NULL,
  `id_pemesan` varchar(22) NOT NULL,
  `id_homestay` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tanggalMasuk`, `harga`, `gambar`, `status`, `id_pemesan`, `id_homestay`) VALUES
('0229-0eac-52c172b2bc44', '2017-12-11 03:46:56', 122222, 'S_6867441985290.jpg', 'diterima', 'a75c-a1fc-fbb173938f7d', '0caa-386b-90437812806a'),
('02b5-c60f-e32b75d1ad1c', '2017-12-11 15:22:45', 122222, 'Image_9306c52.jpg', 'diterima', 'b1dd-9a0d-cef47c789168', 'b18b-7c3b-0ebb7909b41a'),
('0e77-d21c-2960775c8189', '2017-12-14 07:48:57', 90011221, 'download (1).png', 'ditolak', 'a75c-a1fc-fbb173938f7d', 'ae6a-0966-b3a772cb86cf'),
('1141-363b-76737c6aa1d8', '2017-12-10 18:33:39', 90011221, '', 'ditolak', 'e0eb-f0f5-ca3e74b9ac4b', 'ae6a-0966-b3a772cb86cf'),
('13e9-8c9a-cf4773fa8abc', '2017-12-10 09:41:10', 90011221, '', 'diterima', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('187c-b7fc-77837a0a916d', '2017-12-11 15:24:56', 2111, '80636.jpg', 'ditolak', 'b1dd-9a0d-cef47c789168', '15c4-ff2e-90a97980b390'),
('20ed-ed6e-b5e477bd869a', '2017-12-10 09:17:27', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('260e-86bf-35567ec7be4a', '2017-12-10 19:10:52', 2111, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('2adc-e621-548372d294c6', '2017-12-13 18:11:13', 90011221, '', 'PENDING', 'a75c-a1fc-fbb173938f7d', 'ae6a-0966-b3a772cb86cf'),
('3284-b050-c01e7371b950', '2017-12-10 18:33:19', 90011221, '', 'ss', 'e0eb-f0f5-ca3e74b9ac4b', 'ae6a-0966-b3a772cb86cf'),
('385a-96db-961b7a40ac7b', '2017-12-18 16:05:57', 90011221, '481px-Connecticut_Huskies_logo.svg.png', 'ditolak', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('3cfa-fccb-aa31747f8d08', '2017-12-11 15:31:44', 1221223, 'Image_a4acbc8.jpg', 'diterima', 'b1dd-9a0d-cef47c789168', '55e9-8037-3dbe71a8b36b'),
('43c6-b174-e48b73439cd7', '2017-12-10 17:42:04', 90011221, '237007.jpg', 'diterima', 'e0eb-f0f5-ca3e74b9ac4b', 'ae6a-0966-b3a772cb86cf'),
('4423-299a-199b7a48ae13', '2017-12-10 10:29:18', 122222, 'S_6867441985290.jpg', 'diterima', 'e0eb-f0f5-ca3e74b9ac4b', 'ae6a-0966-b3a772cb86cf'),
('50b8-bc7d-b3ec7c2ba981', '2017-12-10 09:42:46', 90011221, '', 'diterima', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('5ac5-cd9b-a4f07278865c', '2017-12-11 07:28:30', 1221223, 'Image_9306c52.jpg', 'diterima', 'a75c-a1fc-fbb173938f7d', '55e9-8037-3dbe71a8b36b'),
('6609-c158-73437877a21c', '2017-12-18 05:22:08', 90011221, 'Image_76d16be.jpg', 'ditolak', 'd335-6625-3b1771e4bdbc', 'ae6a-0966-b3a772cb86cf'),
('67fc-6c34-791c7f7fab4c', '2017-12-10 14:42:51', 90011221, 'Image_a4acbc8.png', 'diterima', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('6837-c715-81ab722ea209', '2017-12-11 14:59:06', 0, '', 'diterima', 'b1dd-9a0d-cef47c789168', 'cfa1-d089-08e37dbdaf92'),
('6fd4-bd3a-6cb07747a737', '2017-12-10 09:41:59', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('7597-d908-5c2477ab8e6e', '2017-12-10 09:43:10', 90011221, 'Image_9306c52.jpg', 'diterima', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('7b1d-7821-d39b7f1f9ef8', '2017-12-11 03:42:35', 90011221, '', 'PENDING', 'a75c-a1fc-fbb173938f7d', ''),
('7bda-6914-711b7a0ca8dd', '2017-12-10 09:28:58', 90011221, '', 'diterima', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('7f19-49e9-b39c7566a109', '2017-12-11 03:45:08', 122222, '', 'diterima', 'a75c-a1fc-fbb173938f7d', ''),
('a335-218b-c3a571b88942', '2017-12-10 09:34:24', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('a5f4-84f4-874f7ef285a5', '2017-12-10 09:36:12', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('aba6-590b-b29d79a9af8c', '2017-12-10 09:17:47', 90011221, '', 'diterima', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('adb6-1db4-e7ef7905bbf1', '2017-12-10 09:34:38', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('b31b-d45f-4e5375b5bd65', '2017-12-11 03:44:32', 90011221, '', 'PENDING', 'a75c-a1fc-fbb173938f7d', ''),
('c684-3d09-b26074558822', '2017-12-10 09:34:20', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('e07b-3218-9f6c72d592b9', '2017-12-12 03:36:01', 11213, 'Image_76d16be.jpg', 'diterima', 'b1dd-9a0d-cef47c789168', 'c90a-22ea-4e857b8f92c1'),
('e2cc-ca2e-e13c7dfeb29d', '2017-12-10 09:34:36', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('e469-758b-c65777da95d6', '2017-12-10 09:29:27', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('fa67-1c97-a614752db040', '2017-12-10 09:35:05', 90011221, '', 'PENDING', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('fbe5-484a-5bc4760ea874', '2017-12-10 09:18:00', 90011221, '', 'diterima', 'b1dd-9a0d-cef47c789168', 'ae6a-0966-b3a772cb86cf'),
('fc94-e0ba-3c957b9b95dd', '2017-12-10 18:04:59', 90011221, 'Image_76d16be.jpg', 'diterima', 'e0eb-f0f5-ca3e74b9ac4b', 'ae6a-0966-b3a772cb86cf'),
('fda2-76b1-9f047d66be17', '2017-12-17 14:09:08', 90011221, 'b.PNG', 'PENDING', 'af64-a8c8-5cb97a2a9c9b', 'ae6a-0966-b3a772cb86cf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deskripsi`
--
ALTER TABLE `deskripsi`
  ADD PRIMARY KEY (`id_deskripsi`),
  ADD UNIQUE KEY `id_profil` (`id_profil`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `homestay`
--
ALTER TABLE `homestay`
  ADD PRIMARY KEY (`id_homestay`),
  ADD KEY `id_penyedia1` (`id_penyedia`);

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

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pemesan_id_homestay` (`id_pemesan`,`id_homestay`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `deskripsi`
--
ALTER TABLE `deskripsi`
  ADD CONSTRAINT `pk_idProfil` FOREIGN KEY (`id_profil`) REFERENCES `profil` (`id_profil`);

--
-- Ketidakleluasaan untuk tabel `homestay`
--
ALTER TABLE `homestay`
  ADD CONSTRAINT `homestay_ibfk_1` FOREIGN KEY (`id_penyedia`) REFERENCES `penyedia` (`id_penyedia`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pemesan`) REFERENCES `pemesan` (`id_pemesan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
