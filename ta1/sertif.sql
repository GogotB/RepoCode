-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 02:36 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sertif`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id`, `nama`, `tanggal`, `jenis`, `lokasi`) VALUES
(1, 'Seminar', '2019-03-09', 'Seminar', 'Batam'),
(2, 'Karya Ilmiah', '2019-04-02', 'Seminar', 'Batam'),
(3, 'Workshop Animasi 3D', '2019-04-06', 'Workshop', 'Politeknik Negeri Batam'),
(4, 'Seminar Pengembangan Sumber Daya Alam', '2019-04-13', 'Seminar', 'Hotel Harris Batam');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`nama`, `gambar`) VALUES
('', 'C:/xampp/htdocs/sertif/upload/upload_image/Koala.jpg'),
('Desert.jpg', 'C:/xampp/htdocs/sertif/upload/upload_image/Desert.jpg'),
('Penguins.jpg', 'C:/xampp/htdocs/sertif/upload/upload_image/Penguins.jpg'),
('Jellyfish.jpg', 'C:/xampp/htdocs/sertif/upload/upload_image/Jellyfish.jpg'),
('Jellyfish1.jpg', 'C:/xampp/htdocs/sertif/upload/upload_image/Jellyfish1.jpg'),
('Tulips.jpg', 'C:/xampp/htdocs/sertif/upload/upload_image/Tulips.jpg'),
('Penguins.jpg', 'C:/xampp/htdocs/sertif/upload/upload_ttd/Penguins.jpg'),
('73f9958dc86523fc489c574387677bc1_600x400.jpg', 'E:/Application/XAMPP/htdocs/sertif/upload/upload_ttd/73f9958dc86523fc489c574387677bc1_600x400.jpg'),
('Waduh.jpg', 'E:/Application/XAMPP/htdocs/sertif/upload/upload_ttd/Waduh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `paraf`
--

CREATE TABLE `paraf` (
  `id` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `no_induk` varchar(20) DEFAULT NULL,
  `jabatan_pp` varchar(100) DEFAULT NULL,
  `paraf_lokasi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paraf`
--

INSERT INTO `paraf` (`id`, `id_user`, `no_induk`, `jabatan_pp`, `paraf_lokasi`) VALUES
(3, NULL, NULL, NULL, './upload/upload_ttd/file_ttd/1557140587.jpg'),
(4, NULL, NULL, NULL, './upload/upload_ttd/file_ttd/1557161558.jpg'),
(5, NULL, NULL, NULL, './upload/upload_ttd/file_ttd/1557162583.jpg'),
(6, NULL, '123456', 'Senior Programmer', './upload/upload_ttd/file_ttd/1557163154.jpg'),
(8, 10, '098765', 'Chief Manager', './upload/upload_ttd/file_ttd/1557196121.jpg'),
(9, 11, '343656546', 'Vice Administrator', './upload/upload_ttd/file_ttd/1563306570.jpg'),
(10, 12, '3532523', 'Accountant Manager', './upload/upload_ttd/file_ttd/1563309325.jpg'),
(11, 13, '3423346', 'Sidekick Friend', './upload/upload_ttd/file_ttd/1563351282.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `paraf2`
--

CREATE TABLE `paraf2` (
  `nama_pp` varchar(50) NOT NULL,
  `paraf` longblob NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `no_induk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persetujuan`
--

CREATE TABLE `persetujuan` (
  `id` int(10) NOT NULL,
  `id_acara` int(10) NOT NULL,
  `id_user1` int(10) DEFAULT NULL,
  `id_user2` int(10) DEFAULT NULL,
  `id_user3` int(10) DEFAULT NULL,
  `status_user1` int(10) DEFAULT NULL,
  `status_user2` int(10) DEFAULT NULL,
  `status_user3` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persetujuan`
--

INSERT INTO `persetujuan` (`id`, `id_acara`, `id_user1`, `id_user2`, `id_user3`, `status_user1`, `status_user2`, `status_user3`) VALUES
(5, 2, 10, NULL, NULL, 1, 0, 0),
(16, 4, 10, NULL, NULL, 1, NULL, NULL),
(17, 3, NULL, 10, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` int(10) NOT NULL,
  `id_acara` int(10) DEFAULT NULL,
  `no_sertif` int(3) UNSIGNED ZEROFILL NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `asal` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `sebagai` varchar(15) NOT NULL,
  `jenis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id`, `id_acara`, `no_sertif`, `nama`, `nim`, `asal`, `jabatan`, `email`, `sebagai`, `jenis`) VALUES
(1, 1, 001, 'Budi', '1234567890', NULL, NULL, 'budi@gmail.com', 'Peserta', 'mhs'),
(2, 2, 001, 'Asta', NULL, 'SMAN 0 Batam', NULL, 'asta@gmail.com', 'Peserta', 'umum'),
(3, NULL, 001, 'Grimgar', '77678', NULL, NULL, 'grimgar@gmail.com', 'Peserta', NULL),
(4, NULL, 002, 'Haha', NULL, 'Universitas', NULL, 'haha@gmail.com', 'Narasumber', NULL),
(5, NULL, 001, 'Grimgar', '77678', NULL, NULL, 'grimgar@gmail.com', 'Peserta', NULL),
(6, NULL, 002, 'Haha', NULL, 'Universitas', NULL, 'haha@gmail.com', 'Narasumber', NULL),
(7, 1, 001, 'Grimgar', '77678', NULL, NULL, 'grimgar@gmail.com', 'Peserta', NULL),
(8, 1, 002, 'Haha', NULL, 'Universitas', NULL, 'haha@gmail.com', 'Narasumber', NULL),
(9, 2, 001, 'Grimgar', '77678', NULL, NULL, 'grimgar@gmail.com', 'Peserta', NULL),
(10, 2, 002, 'Haha', NULL, 'Universitas', NULL, 'haha@gmail.com', 'Narasumber', NULL),
(11, 2, 001, 'Grimgar', '77678', NULL, NULL, 'grimgar@gmail.com', 'Peserta', NULL),
(12, 2, 002, 'Haha', NULL, 'Universitas', NULL, 'haha@gmail.com', 'Narasumber', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sertif`
--

CREATE TABLE `sertif` (
  `id` mediumint(9) NOT NULL,
  `nomor` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `kegiatan` varchar(20) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `sebagai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sertif`
--

INSERT INTO `sertif` (`id`, `nomor`, `nama`, `nim`, `email`, `telepon`, `asal`, `kegiatan`, `tema`, `sebagai`) VALUES
(6, '1', 'Gogot', '77678', 'gogot@gmail.com', '81234567890', 'kampus/umum/sekolah', 'seminar/pelatihan/lo', 'wkwkwkwk', 'peserta/juara'),
(12, '2', 'Haha', '12345', 'haha@gmail.com', '081234579', 'Batu', 'seminar', 'karya', 'peserta');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama_user`, `username`, `password`, `level`) VALUES
(1, 'Agus', 'budi@gmail.com', 'budi', 'PAN'),
(2, 'Agus', 'budi@gmail.com', 'budi', 'PAN'),
(6, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ADM'),
(8, 'Yuno', 'asta@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 'PAN'),
(9, 'Panitia', 'panitia', 'd32b1673837a6a45f795c13ea67ec79e', 'PAN'),
(10, 'Pemilik Paraf', 'pp', 'c483f6ce851c9ecd9fb835ff7551737c', 'PP'),
(11, 'Anas Harusdin', 'pp1', '9ca64a665950d8262317d1b11dfe09ea', 'PP'),
(12, 'Bagus Wargah', 'pp2', '7714999086bfdf880aad945fb6037dde', 'PP'),
(13, 'Casak Gustawa', 'pp3', '23005b4022e8891e764e683d64818988', 'PP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paraf`
--
ALTER TABLE `paraf`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user_paraf` (`id_user`);

--
-- Indexes for table `paraf2`
--
ALTER TABLE `paraf2`
  ADD PRIMARY KEY (`nama_pp`,`no_induk`);

--
-- Indexes for table `persetujuan`
--
ALTER TABLE `persetujuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user1` (`id_user1`),
  ADD KEY `fk_id_acara_persetujuan` (`id_acara`),
  ADD KEY `fk_id_user2` (`id_user2`),
  ADD KEY `fk_id_user3` (`id_user3`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_acara` (`id_acara`);

--
-- Indexes for table `sertif`
--
ALTER TABLE `sertif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paraf`
--
ALTER TABLE `paraf`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `persetujuan`
--
ALTER TABLE `persetujuan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sertif`
--
ALTER TABLE `sertif`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paraf`
--
ALTER TABLE `paraf`
  ADD CONSTRAINT `fk_id_user_paraf` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `persetujuan`
--
ALTER TABLE `persetujuan`
  ADD CONSTRAINT `fk_id_acara_persetujuan` FOREIGN KEY (`id_acara`) REFERENCES `acara` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_user1` FOREIGN KEY (`id_user1`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_user2` FOREIGN KEY (`id_user2`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_user3` FOREIGN KEY (`id_user3`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `fk_id_acara` FOREIGN KEY (`id_acara`) REFERENCES `acara` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
