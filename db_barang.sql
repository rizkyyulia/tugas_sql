-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2020 at 07:03 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_barang`
--

CREATE TABLE IF NOT EXISTS `t_barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `id_kategori` varchar(10) NOT NULL,
  `harga_barang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga_barang`) VALUES
('181', 'lemari', 'bes1', 70000),
('182', 'meja', 'ber2', 100000),
('183', 'kursi', 'kec3', 45000),
('184', 'kasur', 'emp4', 20000),
('185', 'bantal', 'tid5', 12000),
('186', 'guling', 'lon6', 11000),
('187', 'lampu', 'ter7', 13000),
('188', 'tas', 'sek8', 50000),
('189', 'karpet', 'rua10', 1700000),
('190', 'sofa', 'rt11', 110000),
('191', 'pintu', 'cok12', 300000),
('192', 'rak_buku', 'kam13', 50000),
('193', 'tv', 'rk14', 87000),
('194', 'kulkas', 'dap15', 67000),
('195', 'mesin_cuci', 'km17', 45900),
('196', 'ac', 'din18', 2000000),
('197', 'vas', 'vas19', 34000),
('198', 'dispenser', 'dis20', 56000),
('199', 'kompor', 'pan20', 87000),
('200', 'piring', 'kac21', 765000),
('201', 'seprei', 'hal22', 877000),
('202', 'kipas', 'ang23', 980000),
('203', 'setrika', 'lic24', 940000),
('204', 'vacum_cleaner', 'ber25', 780000),
('205', 'sapu', 'lan26', 870000),
('206', 'aquarium', 'ika27', 979000),
('207', 'blender', 'js28', 986000),
('208', 'tempat_sampah', 'kor29', 123000),
('209', 'oven', 'rti30', 600000),
('210', 'play_station', 'per31', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `t_kategori`
--

CREATE TABLE IF NOT EXISTS `t_kategori` (
  `id_kategori` varchar(10) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kategori`
--

INSERT INTO `t_kategori` (`id_kategori`, `nama_kategori`) VALUES
('bes1', 'besar'),
('ber2', 'berat'),
('kec3', 'kecil'),
('emp4', 'empuk'),
('tid5,', 'tidur'),
('lon6', 'lonjong'),
('ter8', 'terang'),
('sek9', 'sekolah'),
('rua10', 'ruangan'),
('rt11', 'ruang_tamu'),
('cok12', 'coklat'),
('kam13', 'kamar'),
('rk14', 'ruang_keluarga'),
('dap15', 'dapur'),
('km16', 'kamar_mandi'),
('din17', 'dingin'),
('can18', 'cantik'),
('ar19', 'air'),
('pan20', 'panas'),
('kac21', 'kaca'),
('hal22', 'halus'),
('ang23', 'angin'),
('lic24', 'licin'),
('ber25', 'bersih'),
('lan26', 'lantai'),
('ika27', 'ikan'),
('js28', 'jus'),
('kor29', 'kotor'),
('rti30', 'roti'),
('per31', 'permainan'),
('bes1', 'besar'),
('ber2', 'berat'),
('kec3', 'kecil'),
('emp4', 'empuk'),
('tid5,', 'tidur'),
('lon6', 'lonjong'),
('ter8', 'terang'),
('sek9', 'sekolah'),
('rua10', 'ruangan'),
('rt11', 'ruang_tamu'),
('cok12', 'coklat'),
('kam13', 'kamar'),
('rk14', 'ruang_keluarga'),
('dap15', 'dapur'),
('km16', 'kamar_mandi'),
('din17', 'dingin'),
('can18', 'cantik'),
('ar19', 'air'),
('pan20', 'panas'),
('kac21', 'kaca'),
('hal22', 'halus'),
('ang23', 'angin'),
('lic24', 'licin'),
('ber25', 'bersih'),
('lan26', 'lantai'),
('ika27', 'ikan'),
('js28', 'jus'),
('kor29', 'kotor'),
('rti30', 'roti'),
('per31', 'permainan');

-- --------------------------------------------------------

--
-- Table structure for table `t_transaksi`
--

CREATE TABLE IF NOT EXISTS `t_transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `no_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_transaksi`
--

INSERT INTO `t_transaksi` (`id_transaksi`, `no_transaksi`, `id_user`, `tanggal_transaksi`, `id_barang`, `qty`, `harga`, `total`) VALUES
('be180', 121, 1, '2020-02-01', 180, 1, 70000, 70000),
('be181', 122, 2, '2020-02-02', 181, 2, 100000, 200000),
('ke182', 123, 3, '2020-02-03', 182, 3, 45000, 135000),
('em183', 124, 4, '2020-02-04', 183, 3, 20000, 60000),
('ti184', 125, 5, '2020-02-05', 184, 3, 12000, 36000),
('lo185', 126, 6, '2020-02-06', 185, 4, 11000, 44000),
('ter186', 127, 7, '2020-02-07', 186, 4, 13000, 52000),
('sek187', 128, 8, '2020-02-08', 182, 5, 50000, 250000),
('rua188', 129, 9, '2020-02-09', 188, 4, 1700000, 6800000),
('rt189', 130, 10, '2020-02-10', 189, 3, 110000, 330000),
('cok190', 131, 10, '2020-02-11', 182, 2, 300000, 600000),
('kam191', 131, 10, '2020-02-12', 191, 2, 50000, 100000),
('rk192', 131, 10, '2020-02-13', 192, 3, 87000, 261000),
('dap193', 131, 10, '2020-02-14', 193, 3, 67000, 201000),
('km194', 131, 10, '2020-02-15', 194, 4, 45900, 183600),
('din195', 131, 10, '2020-02-16', 195, 3, 2000000, 6000000),
('can196', 131, 10, '2020-02-17', 196, 3, 34000, 102000),
('ar197', 131, 10, '2020-02-18', 197, 4, 56000, 224000),
('pan198', 131, 10, '2020-02-19', 198, 4, 87000, 348000),
('kac199', 131, 10, '2020-02-20', 199, 5, 765000, 3825000),
('hal200', 141, 17, '2020-02-21', 200, 3, 877000, 2631000),
('ang201', 142, 22, '2020-02-22', 201, 3, 980000, 2940000),
('lic202', 143, 23, '2020-02-23', 202, 1, 940000, 940000),
('ber203', 144, 24, '2020-02-24', 203, 2, 780000, 1560000),
('lan204', 145, 25, '2020-02-25', 204, 2, 870000, 1740000),
('ika205', 146, 26, '2020-02-26', 205, 33, 979000, 32307000),
('js206', 147, 27, '2020-02-27', 206, 3, 986000, 2958000),
('kor207', 148, 28, '2020-02-28', 207, 3, 123000, 369000),
('rti208', 149, 29, '2020-02-29', 182, 3, 600000, 1800000),
('per209', 150, 30, '2020-03-01', 209, 3, 40000, 120000);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama_user`) VALUES
(1, 'rizky'),
(2, 'yulia'),
(3, 'justin'),
(4, 'biber'),
(5, 'ardhito'),
(6, 'nichole'),
(7, 'pramono'),
(8, 'hariri'),
(9, 'shinta'),
(10, 'lifia'),
(11, 'vita'),
(12, 'faisal'),
(13, 'dani'),
(14, 'doni'),
(15, 'andre'),
(16, 'tania'),
(17, 'intan'),
(18, 'kayyah'),
(19, 'ayyu'),
(20, 'ali'),
(21, 'nadya'),
(22, 'kamil'),
(23, 'april'),
(24, 'anjas'),
(25, 'jaenal'),
(26, 'asep'),
(27, 'andri'),
(28, 'sekar'),
(29, 'novia'),
(30, 'novia');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
