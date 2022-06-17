-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2020 at 01:03 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fc_durian`
--

-- --------------------------------------------------------

--
-- Table structure for table `analisa_hasil`
--

CREATE TABLE `analisa_hasil` (
  `id` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL,
  `noip` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_hasil`
--

INSERT INTO `analisa_hasil` (`id`, `nama`, `kelamin`, `alamat`, `pekerjaan`, `kd_penyakit`, `noip`, `tanggal`) VALUES
(1, 'nazarudin', 'L', 'xzxc', 'zcvv', 'P04', '::1', '2020-08-12 08:59:43'),
(2, 'oul', 'L', 'hhhk', 'yill', 'P01', '::1', '2020-08-12 13:19:14'),
(3, 'gse', 'L', 'jjp', 'dd', 'P04', '::1', '2020-08-12 16:37:40'),
(4, 'oul', 'L', 'h', 'yill', 'P05', '::1', '2020-08-12 16:41:12'),
(5, 'gse', 'P', 'jj', 'dd', 'P05', '::1', '2020-08-12 16:50:38'),
(6, 'gse', 'L', 'poi', 'dd', 'P05', '::1', '2020-08-13 07:33:16'),
(7, 'gse', 'L', 'zd', 'yill', 'P08', '::1', '2020-08-16 10:11:11'),
(8, 'oul', 'L', 'V', 'dd', 'P08', '::1', '2020-08-16 10:27:44'),
(9, 'gse', 'L', 'JJH', 'dd', 'P08', '::1', '2020-08-16 10:28:16'),
(10, 'oul', 'L', 'GG', 'yill', 'P06', '::1', '2020-08-16 10:29:00'),
(11, 'gse', 'L', 'hhkk', 'yill', 'P08', '::1', '2020-08-16 12:12:40'),
(12, 'oul', 'L', 'hv', ' vh h', 'P02', '::1', '2020-08-16 12:13:53'),
(13, 'zx', 'L', 'sd', 'sSS', 'P04', '::1', '2020-08-16 12:17:27'),
(14, 'juhu', 'L', 'uuyi', 'jh', 'P04', '::1', '2020-08-16 14:06:00'),
(15, 'fh', 'L', 'tju', 'yill', 'P06', '::1', '2020-08-16 14:21:06'),
(16, 'gse', 'L', 'daa', 'dd', 'P02', '::1', '2020-08-16 14:22:06'),
(17, 'zx', 'L', 's', 'yill', 'P02', '::1', '2020-08-16 14:23:26'),
(18, 'safsdf', 'L', 'sdfsf', 'dsf', 'P02', '::1', '2020-08-16 14:24:36'),
(19, 'rrtgfg', 'L', 'xg', 'x', 'P02', '::1', '2020-08-16 14:26:38'),
(20, 'safsdf', 'L', 'hghgjg', 'jkgkjg', 'P02', '::1', '2020-08-16 14:27:43'),
(21, 'hh', 'L', 'hik', 'yioiop', 'P05', '::1', '2020-08-22 11:18:09'),
(22, 'gse', 'L', 'gg', 'gggg', 'P05', '::1', '2020-08-22 14:19:34'),
(23, 'gse', 'L', 'XDB', 'rrrr', 'P06', '::1', '2020-08-22 14:29:15'),
(24, 'oul', 'L', 'ty44', 'thjyt', 'P04', '::1', '2020-08-24 17:21:36'),
(25, 'gse', 'P', 'bmbm', 'dd', 'P05', '::1', '2020-08-28 15:05:50'),
(26, 'oul', 'L', 'dg', 'jh', 'P05', '::1', '2020-08-28 15:30:41'),
(27, 'gse', 'L', 'tjjl', 'jh', 'P05', '::1', '2020-08-29 15:11:51'),
(28, 'oul', 'L', 'gkj', 'sSS', 'P08', '::1', '2020-08-29 15:13:00'),
(29, 'gse', 'L', 'y', 'sSS', 'P05', '::1', '2020-09-01 12:49:36'),
(30, 'jk', 'L', 'n,i', 'yuu', 'P05', '::1', '2020-09-01 12:51:21'),
(31, 'zx', 'L', 'k', 'p', 'P05', '::1', '2020-09-01 12:52:21'),
(32, 'aa', 'L', 'aa', 'a', 'P06', '::1', '2020-09-01 12:53:59'),
(33, 'oul', 'L', 's', ' vh h', 'P11', '::1', '2020-09-01 13:50:47'),
(34, 'oul', 'L', 's', 'sSS', 'P05', '::1', '2020-09-01 13:57:50'),
(35, 'oul', 'L', 'fh', 'sSS', 'P02', '::1', '2020-09-01 14:22:19'),
(36, 'indah', 'L', 's', 's', 'P04', '::1', '2020-09-01 14:27:46'),
(37, 'aa', 'L', 'aa', 'aa', 'P05', '::1', '2020-09-01 14:29:58'),
(38, 'ss', 'L', 'ss', 'ss', 'P06', '::1', '2020-09-01 14:32:24'),
(39, 'gse', 'L', 'ss', 'sSS', 'P11', '::1', '2020-09-01 15:30:45'),
(40, 'gse', 'L', 'kk', 'jh', 'P09', '::1', '2020-09-01 15:39:50'),
(41, 'gse', 'L', 'i', 'jh', 'P05', '::1', '2020-09-01 15:51:34'),
(42, 'oul', 'L', 'f', 'rrrr', 'P01', '::1', '2020-09-01 15:53:32'),
(43, 'hahaha', 'L', 'bzxxzxc', 'jjjj', 'P05', '::1', '2020-09-03 06:02:04'),
(44, 'hahaha', 'L', 'bzxxzxc', 'jjjj', 'P04', '::1', '2020-09-03 06:05:08'),
(45, 'hahaha', 'L', 'd', 'sd', 'P04', '::1', '2020-09-03 06:09:59'),
(46, 'papapa', 'L', 'a', 'asdasd', 'P04', '::1', '2020-09-07 18:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kd_gejala` varchar(4) NOT NULL,
  `nm_gejala` varchar(100) DEFAULT NULL,
  `fotogejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kd_gejala`, `nm_gejala`, `fotogejala`) VALUES
('G01', 'Daun rontok ', 'gambar_gejala/G01.jpg'),
('G02', 'Daun keriting', 'gambar_gejala/G01.jpg'),
('G03', 'Batang mati ', 'gambar_gejala/G01.jpg'),
('G04', 'Terdapat cairan kuning dan terselimuti benang jaring seperti jaring laba-laba ', 'gambar_gejala/G01.jpg'),
('G05', 'Daun muncul bercak-bercak kering besar ', 'gambar_gejala/G01.jpg'),
('G06', 'Daun berlubang ', 'gambar_gejala/G01.jpg'),
('G07', 'Daun muncul bercak-bercak kering besar ', 'gambar_gejala/G01.jpg'),
('G08', 'Terdapat ujung-ujung cabang pohon yang mati ', 'gambar_gejala/G01.jpg'),
('G09', 'Warna kulit menjadi coklat tua ', 'gambar_gejala/G01.jpg'),
('G10', 'Daun layu ', 'gambar_gejala/G01.jpg'),
('G11', 'Terdapat banyak semut pada buah ', 'gambar_gejala/G01.jpg'),
('G12', 'Kulit buah berwarna putih ', 'gambar_gejala/G01.jpg'),
('G13', 'Terdapat lubang dikulit buah ', 'gambar_gejala/G01.jpg'),
('G14', 'Terdapat telur dikulit buah ', ''),
('G15', 'Buah busuk berulat ', ''),
('G16', 'Ada lubang pada batang ', ''),
('G17', 'Terlihat dengan adanya alur atau terowongan dari tanah yang menempel di pohon', ''),
('G18', 'Daun Kering', ''),
('G19', 'Keluar lendir warna merah pada kulit pangkal batang', ''),
('G20', 'Batang busuk', ''),
('G21', 'Tanaman layu dan mati ', ''),
('G22', 'Makin lama bercak  mengerut dan mengendap', ''),
('G23', 'Daun akan seperti    tersiram air panas ', ''),
('G24', 'Buah yang busuk diselimuti kumpulan cendawan putih ', ''),
('G25', 'Batang bercak coklat  kebasahan yang memanjang', ''),
('G26', 'Buah bercak kebasahan menjadi  cokelat kehitaman dan lunak', ''),
('G27', 'Terdapat  bercak-bercak basah berwarna gelap ', ''),
('G28', 'Batang   tanaman mengeluarkan lendir putih kental dan lengket ', ''),
('G29', 'Daun tanaman layu meskipun berwarna hijau', ''),
('G30', ' Daun-daun cabang layu ', ''),
('G31', 'Terjadi pengerutan  pada daun', ''),
('G32', ' Warna daun menguning, mengering dan akhirnya mati ', ''),
('G33', 'daun berlubang', '');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kd_penyakit` varchar(4) NOT NULL,
  `nm_penyakit` varchar(60) NOT NULL,
  `keterangan` mediumtext NOT NULL,
  `solusi` mediumtext NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kd_penyakit`, `nm_penyakit`, `keterangan`, `solusi`, `gambar`) VALUES
('P01', 'Penggerek batang', 'Hama penggerek batang menyerang tanaman durian dengan cara mengeluarkan kotoran dibawah batang sehingga mengakibatkan tanaman yang terserang akan layu dan mati.', 'Dengan menyemprotkan insektisida seperti Basudin, Sumithion 50 AC, Thoidan 35 EC, dengan dosis 2â€“3 cc/liter air.', 'gambar_penyakit/busukdaun.jpg'),
('P02', 'Penggerek buah', 'Pada hama penggerek buah adalah serangga yang menyerang tanaman dengan cara menggerek biji dan daging buah sehingga seringkali mengakibatkan buah jatuh sebelum tua. Serangga ini biasanya menyebar dengan cara terbang dari pohon durian satu ke pohon durian lainnya dan bertelur pada buah yang dihinggapinya.\r\nHama ini biasanya menyerang pada waktu kemarau.', 'a.	Semprotkan larutan insektisida sejak stadium bunga sampai buah, atau\r\nb.	Infus insektisida melalui batang atau akar dapat mengatasinya.\r\nDapat mengunakan obat:\r\nï€­	Diazinon Hostation 0,2-0,3 cc/l air, atau\r\nï€­	Dimicron 0,2-0,3 cc/l air\r\n', ''),
('P03', 'Kutu Putih (Pseudococus sp.)', 'Kutu putih (Famili: Pseudococcidae) termasuk ke dalam Superfamili\r\nCoccoidea, Ordo Hemiptera. Kutu ini mempunyai tipe alat mulut berupa stilet\r\ndan disebut kutu putih karena hampir seluruh tubuhnya dilapisi oleh lilin yang\r\nberwarna putih yang dikeluarkan oleh porus pada kutikula melalui proses sekresi.\r\nLilin-lilin ini merupakan salah satu ciri morfologi untuk mengidentifikasi spesies\r\nimago betina. Imago betina tidak aktif bergerak dan berkembang setelah melalui\r\nproses ganti kulit (moulting) (Kalshoven 1981; Williams 2004). ', 'Pengendalian dengan penyemprotan insektisida nabati dan perangkap yellow trap', ''),
('P04', 'Busuk Akar', 'Tanaman durian kadang kala terserang penyakit yang disebut busuk akar dan disebabkan oleh bakteri atau virus yang disebut Phytium complectens Braun. Bagaimana gejalanya?, penyakit ini memiliki gejala berikut ini.\r\n\r\nSerangan dimulai dari akar ditandai dengan  timbulnya bercak nekrotik pada akar lateral, dimulai dari bagian ujung. Nila dilihat dari luar, akar yang sakit tampak normal, tetapi jaringan kulitnya menjadi coklat tua dan bagian berkayu berwarna merah muda. Pada tingkat serangan tinggi, di atas permukaan tanah terdapat ujung ujung cabang pohon yang mati, diikuti dengan berkembangnya tunas tunas dari cabang cabang di bawahnya, daun layu kemudian gugur.', 'a.	Penyakit busuk akar dapat dicegah dengan sistem drainase yang baik serta memilih batang bawah yang tahan terhadap penyakit.\r\nb.	Tanaman yang sudah terjangkit penyakit ini harus dibongkar akarnya dan dimusnahkan.\r\nc.	Pengendalian penyakit ini bisa menggunakan fungisida berbahan aktif Metalaxyl, Phosphonate, atau Foecetyl alumunium.\r\nd.	Memperlebar jarak tanam.\r\ne.	Dengan sanitasi kebun.\r\n\r\n', 'gambar_penyakit/busukdaun.jpg'),
('P05', 'Bercak Daun', 'Gejala ini disebabkan cendawan Fusarium sp., Pestalotia\r\nsp., Gloesporium sp. Gejala berupa bercak berwarna kuning atau hijau pada daun\r\ntua atau muda, bercak tersebut meninggalkan bekas terang berwarna hitam, abuabu dan coklat, yang kemudian akan kering, serangan berat menyebabkan seluruh\r\ntajuk kering, daun menutup, dan buah akan rontok. ', 'a.	Memotong bagian tanaman yang terserang\r\nb.	Menyemprotkan fungisida yang berbahan aktif tembaga.\r\nc.	Memperlebar jarak tanam\r\nd.	Dengan menyemprotkan fungisida dan penyiraman yang teratur sejak dari pembibitan.\r\n', ''),
('P06', 'Jamur Upas', 'Rayap adalah serangga sosial anggota bangsa Isoptera yang dikenal luas sebagai hama pengganggu dalam kehidupan manusia. Rayap bersarang didalam tanah dan memakan kayu. Rayap masih berkerabat dengan semut, yang juga serangga sosial. Dalam bahasa Inggris, rayap disebut juga â€œsemut putihâ€ (white ant) karena kemiripan perilakunya.', 'a.	Melakukan penyemprotan dengan Antrocol 70 WP (propineb 70,5%), dosis 100-200 gram/liter air atau 1-1,5 kg/ha aplikasi.\r\nb.	pada serangan jamur yang masih di tingkat sarang laba-laba, dapat dikendalikan dengan cara melumasi cabang yang terserang dengan fungisida, misalnya calizin RM.\r\nc.	Namun bila jamur sudah membentuk kerak merah jambu, sebaiknya dilakukan pemotongan cabang kirakira lebih 30 cm ke bawah bagian yang berjamur.\r\n', ''),
('P07', 'Rayap', '', 'Pengendalian dengan menaburkan carbofuran atau dengan insektisida nabati', ''),
('P08', 'Kanker Batang', 'Penyakit  ini  disebabkan  oleh  cendawan Phytophthorapalmavora.Umumnya penyakit  ini  sering  ditemukan  pada  saat peralihan   musim   kemarau   ke   musim hujan', 'Yang    bisa    dilakukan    untuk    mencegah serangan  ini  adalah  dengan  sanitasi  kebun, memperlebar  jarak  tanam,  menekan  gulma, menggunakan   batang   bawah   yang   tahan, menggunakan   benih   bebas   penyakit,   dan pemangkasan cabang. Sementara jia tanaman   sudah   terlanjur   terserang,   pada batang yang luka dioleskan bubur bordo, atau fungisida Metalxyl (Ridomyl),Fosetyl aluminum(Alliete),  atau  fungisida  lain  yang berbasis  tembaga  (Cu)\r\n.', ''),
('P09', 'Busuk Buah', '', 'a.Memangkas   daun atau  cabang  yang berlebihan   utntuk mengurangi kelembaban di sekitar tanah. b.Merotasi  tanaman dengan     tanaman yang tidak sefamili dengan durian. c.Mencabut dan membakar tanaman yang terserang ', ''),
('P10', 'Mati Pucuk', '', 'Penyemprotan fungisida seperti ridomil  b.Penyemprotan pada  musim  hujan perlu dilakukan dengan    tambahan perekat agristik', ''),
('P11', 'Layu Bakteri ', ' ', 'a.Sebelum  ditanami, lahan    disterilisasi dengan     Basamid G. b.Benih direndam dalam   bakterisida Agrimyciin atau Agrept. c.Penyemprotan fungisida tembaga', '');

-- --------------------------------------------------------

--
-- Table structure for table `relasi`
--

CREATE TABLE `relasi` (
  `ID` int(11) NOT NULL,
  `kd_penyakit` varchar(16) NOT NULL,
  `kd_gejala` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasi`
--

INSERT INTO `relasi` (`ID`, `kd_penyakit`, `kd_gejala`) VALUES
(1, 'P01', 'G01'),
(2, 'P01', 'G10'),
(3, 'P01', 'G16'),
(4, 'P01', 'G18'),
(5, 'P02', 'G15'),
(6, 'P02', 'G14'),
(7, 'P02', 'G13'),
(8, 'P03', 'G12'),
(9, 'P02', 'G10'),
(10, 'P03', 'G11'),
(11, 'P04', 'G09'),
(12, 'P04', 'G10'),
(13, 'P04', 'G01'),
(16, 'P05', 'G06'),
(17, 'P05', 'G01'),
(18, 'P06', 'G04'),
(19, 'P06', 'G03'),
(21, 'P08', 'G17'),
(22, 'P08', 'G02'),
(23, 'P05', 'G07'),
(24, 'P04', 'G08'),
(25, 'P08', 'G20'),
(26, 'P08', 'G19'),
(28, 'P09', 'G26'),
(29, 'P09', 'G25'),
(30, 'P09', 'G24'),
(31, 'P09', 'G22'),
(32, 'P09', 'G22'),
(33, 'P10', 'G23'),
(34, 'P10', 'G27'),
(35, 'P11', 'G28'),
(36, 'P11', 'G29'),
(37, 'P11', 'G30'),
(38, 'P11', 'G31'),
(39, 'P11', 'G32'),
(40, 'P08', 'G10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_user` varchar(55) NOT NULL,
  `Nama_petani` varchar(55) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `alamat` varchar(50) NOT NULL,
  `usia` int(10) NOT NULL,
  `user_role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_user`, `Nama_petani`, `jenis_kelamin`, `username`, `password`, `alamat`, `usia`, `user_role`) VALUES
('222', 'laka', 'Laki-Laki', 'fahmi', '11111', 'benda', 45, 'User'),
('D1527', 'indah', 'Laki-Laki', 'indah', '123', 'bumiayu', 90, 'User'),
('D7200', 'popok', 'Laki-Laki', 'kokono', '123', 'benda', 70, 'User'),
('Petani6362', 'aku', 'Laki-Laki', 'aku', '123', 'sese', 12, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_analisa`
--

CREATE TABLE `tmp_analisa` (
  `noip` varchar(30) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_analisa`
--

INSERT INTO `tmp_analisa` (`noip`, `kd_penyakit`, `kd_gejala`) VALUES
('::1', 'P04', 'G01'),
('::1', 'P04', 'G08'),
('::1', 'P04', 'G09'),
('::1', 'P04', 'G10');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `noip` varchar(20) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`noip`, `kd_gejala`) VALUES
('::1', 'G01'),
('::1', 'G08');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_pasien`
--

CREATE TABLE `tmp_pasien` (
  `id` int(4) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `noip` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_pasien`
--

INSERT INTO `tmp_pasien` (`id`, `nama`, `kelamin`, `alamat`, `pekerjaan`, `noip`, `tanggal`) VALUES
(120, 'papapa', 'L', 'a', 'asdasd', '::1', '2020-09-07 18:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `noip` varchar(20) NOT NULL,
  `kd_penyakit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_penyakit`
--

INSERT INTO `tmp_penyakit` (`noip`, `kd_penyakit`) VALUES
('::1', 'P04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indexes for table `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisa_hasil`
--
ALTER TABLE `analisa_hasil`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `relasi`
--
ALTER TABLE `relasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tmp_pasien`
--
ALTER TABLE `tmp_pasien`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
