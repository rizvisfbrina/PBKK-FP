-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Mei 2019 pada 18.00
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omalaundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `nama`, `username`, `password`, `email`, `no_hp`) VALUES
(401, 'mimin', '', 'mimin123', 'mimin@gmail.com', '091789213562');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `idlay` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `lynket` varchar(100) NOT NULL,
  `durasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`idlay`, `nama`, `harga`, `lynket`, `durasi`) VALUES
(201, 'Cuci Setrika', 5000, 'Paket layanan cuci pakaian hingga kering dan disetrika', 3),
(202, 'Cuci Basah', 1000, 'Paket layanan cuci pakaian ', 1),
(203, 'Setrika', 2000, 'Paket layanan setrika pakaian', 2),
(204, 'Cuci Bed Cover', 20000, 'Paket layanan cuci bed cover hingga kering dan disetrika', 3),
(205, 'Cuci Sepatu', 10000, 'Paket layanan cuci sepatu hingga bersih', 3),
(206, 'Cuci Boneka', 15000, 'Paket layanan cuci boneka hingga bersih', 3),
(207, 'Express', 25000, 'Paket layanan cuci pakaian exkpress hingga kering dan disetrika', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpel` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`idpel`, `nama`, `username`, `email`, `no_hp`, `password`) VALUES
(101, 'veny', '', 'veny@gmail.com', '085345671221', 'veny123'),
(102, 'Budi', '', 'budi@gmail.com', '086352619912', 'budi123'),
(103, 'q', '', 'q', 'q', 'q'),
(104, 'q', '', 'q', 'q', 'q'),
(105, 'a', '', 'a', 'a', 'a'),
(106, 'a', '', 'a', 'a', 'a'),
(107, 'opi', '', 'opi', 'opi', 'opi'),
(108, 'sasha', '', 'sasha@gmail.com', '910267381292', 'sasha123'),
(109, 'sasha', '', 'sasha@gmail.com', '910267381292', 'sasha123'),
(110, 'opi', '', 'pop', 'poipo', 'qpq');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idpesan` int(11) NOT NULL,
  `idlay` int(11) NOT NULL,
  `idpel` int(11) NOT NULL,
  `kilo` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `jenis_lay` varchar(50) NOT NULL,
  `tgl_taruh` date NOT NULL,
  `tgl_ambil` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`idlay`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpel`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idpesan`),
  ADD KEY `idx_idlay` (`idlay`),
  ADD KEY `idx_idpel` (`idpel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;
--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `idlay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `idpesan` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`idlay`) REFERENCES `layanan` (`idlay`),
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`idpel`) REFERENCES `pelanggan` (`idpel`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
