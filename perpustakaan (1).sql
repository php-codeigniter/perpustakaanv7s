-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2018 at 11:48 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(100) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `terbit` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `halaman` varchar(30) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `peroleh` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `terbit`, `penerbit`, `halaman`, `jumlah`, `peroleh`, `tanggal`) VALUES
(1002, 'Metodologi Penelitian', '2014', 'Erlangga', '250', 15, 'Toko Buku AA', '19-06-2014'),
(1003, 'Multimedia', '2014', 'Erlangga', '300', 13, 'Salemba', '19-06-2014'),
(1004, 'Pemrograman Visual', '2014', 'Erlangga', '300', 24, 'Toko Buku AA', '19-06-2014'),
(679485, 'Pemograman Web', '2007', 'Saktiawan', '549', 5, 'Toko Programing griha', '06/09/2009');

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE IF NOT EXISTS `kas` (
`id_kas` int(100) NOT NULL,
  `tgl` varchar(30) NOT NULL,
  `denda` bigint(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kas`
--

INSERT INTO `kas` (`id_kas`, `tgl`, `denda`) VALUES
(16, '10-05-2018', 5555),
(17, '10-05-2018', 666),
(23, '12-05-2018', 1500),
(27, '24-07-2018', 33000),
(28, '24-07-2018', 33000),
(29, '24-07-2018', 33000),
(30, '24-07-2018', 33000),
(31, '24-07-2018', 33000),
(32, '24-07-2018', 32500),
(33, '04-08-2018', 38500),
(34, '04-08-2018', 38500),
(35, '04-08-2018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
`id_transaksi` int(100) NOT NULL,
  `judul_buku` varchar(250) NOT NULL,
  `id_buku` varchar(30) NOT NULL,
  `nama_peminjam` varchar(100) NOT NULL,
  `id_peminjam` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(15) NOT NULL,
  `tgl_kembali` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `judul_buku`, `id_buku`, `nama_peminjam`, `id_peminjam`, `tgl_pinjam`, `tgl_kembali`, `status`, `ket`) VALUES
(19, 'Pemrograman Visual', '1004', 'wawan', 'wawan', '12-05-2018', '19-05-2018', 'Kembali', '1x'),
(20, 'Metodologi Penelitian', '1002', 'akmas', 'akmas', '2-05-2018', '9-05-2018', 'Kembali', '2x'),
(21, 'Pemrograman Visual', '1004', 'wawan', 'wawan', '12-05-2018', '19-05-2018', 'Kembali', '1x'),
(22, 'Multimedia', '1003', 'wawan', 'wawan', '12-05-2018', '19-05-2018', 'Kembali', ''),
(23, 'Multimedia', '1003', 'akmas', 'akmas', '12-05-2018', '19-05-2018', 'Kembali', ''),
(24, 'Metodologi Penelitian', '1002', 'User-Tian', 'user', '12-05-2018', '19-05-2018', 'Kembali', ''),
(25, 'Pemrograman Visual', '1004', 'akmas', 'akmas', '12-05-2018', '19-05-2018', 'Kembali', ''),
(26, 'bahasa indo', '1132423', 'User-Tian', 'user', '12-05-2018', '19-05-2018', 'Kembali', ''),
(27, 'Metodologi Penelitian', '1002', 'adit', 'adit', '12-05-2018', '19-05-2018', 'Kembali', '<p>sdsdsdsd</p>\r\n'),
(28, 'Multimedia', '1003', 'wawan', 'wawan', '13-05-2018', '20-05-2018', 'Kembali', '<p>dsds</p>\r\n'),
(29, 'bahasa indo', '1132423', 'wawan', 'wawan', '13-05-2018', '20-05-2018', 'Kembali', '<p>dsds</p>\r\n'),
(30, 'Komputer Grafikji', '1001', 'wawan', 'wawan', '13-05-2018', '20-05-2018', 'Pending', '<p>dd</p>\r\n'),
(31, 'bahasa indo', '1132423', 'wawan', 'wawan', '14-05-2018', '21-05-2018', 'Pending', '<p>kkkk</p>\r\n'),
(32, 'Metodologi Penelitian', '1002', 'wawan', 'wawan', '14-05-2018', '21-05-2018', 'Pending', '<p>d</p>\r\n'),
(33, 'Bahasa inggris', '0', 'saktiawan', 'saktiawan', '04-08-2018', '11-08-2018', 'Kembali', '<p><strong>ddad</strong></p>\r\n'),
(34, 'Multimedia', '1003', 'wawan sakti', 'wawan sakti', '04-08-2018', '11-08-2018', 'Pinjam', '<p>-</p>\r\n'),
(35, 'Pemograman Web', '679485', 'saktiawan', 'saktiawan', '04-08-2018', '11-08-2018', 'Pinjam', '<p>-</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` varchar(30) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `lahir` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tahun` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hp` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `jk`, `tempat`, `lahir`, `fakultas`, `jurusan`, `tahun`, `alamat`, `email`, `hp`, `foto`, `level`) VALUES
('admin', 'admin', 'aan', 'laki-Laki', 'Palopo', '24-09-1992', '2', 'IPS', '2011', 'PALOPO', 'pgrphp777@gmail.com', '085397685283', '', 'admin'),
('wawan sakti', 'wawan', 'wawan sakti', 'laki-Laki', 'Palopo', '03/03/1993', '3', 'IPA', '2003', 'pepabri', 'aansak@gmail.com', '085397685283', '', 'user'),
('saktiawan', 'saktiawan', 'saktiawan', 'laki-Laki', 'Palopo', '03/03/1993', '3', 'IPS', '2003', 'pepabri', 'aan.hack@hotmail.com', '085397685283', '', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
 ADD PRIMARY KEY (`id_buku`), ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
 ADD PRIMARY KEY (`id_kas`), ADD KEY `id_transaksi` (`id_kas`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`id_transaksi`), ADD KEY `nama_peminjam` (`nama_peminjam`), ADD KEY `nama_peminjam_2` (`nama_peminjam`), ADD KEY `nama_peminjam_3` (`nama_peminjam`), ADD KEY `nama_peminjam_4` (`nama_peminjam`), ADD KEY `id_peminjam` (`id_peminjam`), ADD KEY `id_buku` (`id_buku`), ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`username`), ADD KEY `nama` (`nama`), ADD KEY `nama_2` (`nama`), ADD KEY `nama_3` (`nama`), ADD KEY `nama_4` (`nama`), ADD KEY `username` (`username`), ADD KEY `username_2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
MODIFY `id_kas` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `id_transaksi` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
