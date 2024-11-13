-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 09:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpeg`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `jam_masuk` varchar(50) NOT NULL,
  `jam_keluar` varchar(50) NOT NULL,
  `status` enum('A','I','S','C','X') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `nip`, `tgl`, `jam_masuk`, `jam_keluar`, `status`) VALUES
(1, '196403261987101001', '2019-01-04', '07:50', '16:46', 'A'),
(3, '9967564568943644234', '2019-01-01', '', '', 'C'),
(4, '9967564568943644234', '2019-01-04', '', '', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE `anak` (
  `id` int(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `ke` int(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `tunjangan` varchar(50) NOT NULL,
  `kawin` varchar(50) NOT NULL,
  `bekerja` varchar(50) NOT NULL,
  `sekolah` varchar(50) NOT NULL,
  `putusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `id` int(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `tgl` date NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tipe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` bigint(11) NOT NULL,
  `id_cek` int(10) NOT NULL,
  `tgl_cuti` date NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jenis_cuti` varchar(100) NOT NULL,
  `alasan` text NOT NULL,
  `lama` int(10) NOT NULL,
  `cek` varchar(50) NOT NULL,
  `tgl_a` date NOT NULL,
  `tgl_b` date NOT NULL,
  `nip_atasan` varchar(255) NOT NULL,
  `status` enum('A','X','Y','P','T','B') NOT NULL,
  `n2` int(10) NOT NULL,
  `n1` int(10) NOT NULL,
  `n` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `id_cek`, `tgl_cuti`, `nip`, `jenis_cuti`, `alasan`, `lama`, `cek`, `tgl_a`, `tgl_b`, `nip_atasan`, `status`, `n2`, `n1`, `n`) VALUES
(20190106011, 11, '2019-01-06', '9967564568943644234', 'Cuti Sakit', 'sfrbn', 3, 'Hari', '2019-01-07', '2019-01-09', '9967564568943644234', 'A', 0, 0, 0),
(20190107001, 1, '2019-01-07', '9967564568943644234', 'Cuti Besar', 'ihweg', 2, 'Hari', '2019-01-15', '2019-01-23', '196403261987101001', 'A', 0, 0, 0),
(20190112001, 1, '2019-01-12', '9967564568943644234', 'Cuti Alasan Penting', 'sfrb', 4, 'Bulan', '2019-01-25', '2019-01-28', '196403261987101001', 'Y', 0, 0, 0),
(20190119001, 1, '2019-01-19', '9967564568943644234', 'Cuti Sakit', 'klneb', 3, 'Hari', '2019-01-21', '2019-01-22', '197403081993111002', 'B', 0, 0, 0),
(20190119002, 2, '2019-01-19', '9967564568943644234', 'Cuti Tahunan', 'kjevb', 2, 'Hari', '2019-01-22', '2019-01-24', '196403261987101001', 'B', 0, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `detail_s_ijasah`
--

CREATE TABLE `detail_s_ijasah` (
  `id_detail_s_ijasah` bigint(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `tingkat` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` int(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `gaji_pokok` int(10) NOT NULL,
  `tunj_istri` int(10) NOT NULL,
  `tunj_anak` int(10) NOT NULL,
  `tunj_hselon` int(10) NOT NULL,
  `tunj_fung_umum` int(10) NOT NULL,
  `tunj_fungsional` int(10) NOT NULL,
  `tunj_khusus` int(10) NOT NULL,
  `tunj_terpencil` int(10) NOT NULL,
  `tkd` int(10) NOT NULL,
  `tunj_beras` int(10) NOT NULL,
  `tunj_pajak` int(10) NOT NULL,
  `tunj_bpjs` int(10) NOT NULL,
  `tunj_jkk` int(10) NOT NULL,
  `tunj_jkm` int(10) NOT NULL,
  `pembulatan` int(10) NOT NULL,
  `pot_pajak` int(10) NOT NULL,
  `pot_bpjs` int(10) NOT NULL,
  `pot_iwp_21` int(10) NOT NULL,
  `pot_iwp_01` int(10) NOT NULL,
  `pot_tapebum` int(10) NOT NULL,
  `pot_jkk` int(10) NOT NULL,
  `pot_jkm` int(10) NOT NULL,
  `hutang` int(10) NOT NULL,
  `bulog` int(10) NOT NULL,
  `sewa_rumah` int(10) NOT NULL,
  `tgl_gaji` date NOT NULL,
  `gaji_bersih` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `nip`, `gaji_pokok`, `tunj_istri`, `tunj_anak`, `tunj_hselon`, `tunj_fung_umum`, `tunj_fungsional`, `tunj_khusus`, `tunj_terpencil`, `tkd`, `tunj_beras`, `tunj_pajak`, `tunj_bpjs`, `tunj_jkk`, `tunj_jkm`, `pembulatan`, `pot_pajak`, `pot_bpjs`, `pot_iwp_21`, `pot_iwp_01`, `pot_tapebum`, `pot_jkk`, `pot_jkm`, `hutang`, `bulog`, `sewa_rumah`, `tgl_gaji`, `gaji_bersih`) VALUES
(4, '19700926 199703 1 007', 4200000, 56456, 565565, 1200000, 400000, 350000, 350000, 0, 0, 250000, 120000, 0, 120000, 0, 0, 40000, 75000, 0, 50000, 0, 0, 40000, 0, 70000, 400000, '2020-09-01', 6937021);

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `golongan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`golongan`, `keterangan`) VALUES
('GOL I A', 'SD'),
('GOL I B', 'SMP'),
('GOL II A', 'SMA'),
('Golongan III A', 'Sarjana S1');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `50` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` enum('pangkat','jenis','status','jabatan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`50`, `nama`, `jenis`) VALUES
(3, 'Pegawai Negeri Sipil', 'jenis'),
(4, 'honorer', 'jenis'),
(5, 'Pengatur Muda / IIa', 'pangkat'),
(6, 'Pengatur Muda Tk I / IIb', 'pangkat'),
(7, 'Aktif', 'status'),
(8, 'Non Aktif', 'status'),
(9, 'Pengatur / IIc', 'pangkat'),
(10, 'Pengatur Tk I /IId', 'pangkat'),
(11, 'Penata Muda / IIIa', 'pangkat'),
(12, 'Penata Muda Tk I / IIIb', 'pangkat'),
(13, 'Penata / IIIc', 'pangkat'),
(14, 'Penata Tk I / IIId', 'pangkat'),
(15, 'Pembina / IVa', 'pangkat'),
(16, 'Pembina Tk I / IVb', 'pangkat'),
(17, 'Pembina Utama Muda / IVc', 'pangkat'),
(18, 'Pembina Utama Madya / IVd', 'pangkat');

-- --------------------------------------------------------

--
-- Table structure for table `jml_hari_rekap`
--

CREATE TABLE `jml_hari_rekap` (
  `id_jml` int(10) NOT NULL,
  `tgl` date NOT NULL,
  `jml` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jml_hari_rekap`
--

INSERT INTO `jml_hari_rekap` (`id_jml`, `tgl`, `jml`) VALUES
(1, '2019-01-01', 19);

-- --------------------------------------------------------

--
-- Table structure for table `keluarga`
--

CREATE TABLE `keluarga` (
  `id` int(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `tgl_nikah` date NOT NULL,
  `ke` int(10) NOT NULL,
  `penghasilan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `nip` varchar(50) NOT NULL,
  `kenaikan_pangkat` varchar(100) NOT NULL,
  `tmt_kenaikan` date NOT NULL,
  `kenaikan_gaji` int(10) NOT NULL,
  `tmt_gaji` date NOT NULL,
  `pensiun` varchar(50) NOT NULL,
  `tmt_pensiun` date NOT NULL,
  `ijasah` varchar(50) NOT NULL,
  `tmt_ijasah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`nip`, `kenaikan_pangkat`, `tmt_kenaikan`, `kenaikan_gaji`, `tmt_gaji`, `pensiun`, `tmt_pensiun`, `ijasah`, `tmt_ijasah`) VALUES
('196403261987101001', 'Penata Muda Tk I / IIIb', '2020-10-01', 65748390, '2020-11-19', '60', '2020-11-18', 'GOL I A', '2019-01-17'),
('196905081995032004', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('19700926 199703 1 007', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('197009261997031007', 'Pembina Utama Madya / IVd', '2021-10-01', 5500000, '2020-10-13', '1', '2022-06-22', 'Golongan III A', '2005-05-10'),
('197301232006041001', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('197403081993111002', 'Pengatur Muda / IIa', '2020-10-01', 543874, '2020-09-07', '60', '2019-01-01', 'GOL I A', '2019-01-03'),
('197405142007011031', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('19741204 200501 2 002', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('197412042005012002', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('197708142002121004', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('197709102007011006', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('197807132002121006', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('197910072003121001', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('198304192010012013 ', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('198407122009031003', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('198505042009032008', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('19940324 201502 1 001', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('199403242015021001', 'Pengatur / IIc', '2020-10-01', 359000, '2020-11-24', '60', '2020-10-15', 'Golongan III A', '2020-12-04'),
('4535345345345', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('7648589', ' ', '0000-00-00', 0, '0000-00-00', '20', '0000-00-00', ' ', '0000-00-00'),
('9967564568943644234', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(10) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('l','p') NOT NULL,
  `agama` varchar(50) NOT NULL,
  `kebangsaan` varchar(50) NOT NULL,
  `jumlah_keluarga` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `sk_terakhir` varchar(100) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `tmt_golongan` date NOT NULL,
  `jenis_pegawai` varchar(100) NOT NULL,
  `tmt_capeg` date NOT NULL,
  `status_pegawai` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `digaji_menurut` varchar(100) NOT NULL,
  `gaji_pokok` int(10) NOT NULL,
  `besarnya_penghasilan` int(10) NOT NULL,
  `masa_kerja_golongan` varchar(50) NOT NULL,
  `masa_kerja_keseluruhan` varchar(50) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `rt` varchar(20) NOT NULL,
  `rw` varchar(10) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `wa` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemberitahuan`
--

CREATE TABLE `pemberitahuan` (
  `nip` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `status_gaji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(1) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `instansi` text NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(100) NOT NULL,
  `bg` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `ig` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `nama`, `instansi`, `provinsi`, `kota`, `alamat`, `logo`, `bg`, `fb`, `twitter`, `ig`) VALUES
(1, ' ', 'Balai Besar Pelatihan Pertanian (BBPP) Batangkaluku', 'Sulawesi Selatan', 'Kabupaten Gowa', 'Jl. Poros Malino KM.3 Sungguminasa', '2_ikon_logo kementan.png', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rekap_absensi`
--

CREATE TABLE `rekap_absensi` (
  `id_rekap` bigint(100) NOT NULL,
  `tgl` date NOT NULL,
  `nip` varchar(50) NOT NULL,
  `i` int(10) NOT NULL,
  `s` int(10) NOT NULL,
  `c` int(10) NOT NULL,
  `tk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekap_absensi`
--

INSERT INTO `rekap_absensi` (`id_rekap`, `tgl`, `nip`, `i`, `s`, `c`, `tk`) VALUES
(2, '2019-01-01', '196403261987101001', 1, 0, 0, 0),
(3, '2019-01-01', '9967564568943644234', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sk`
--

CREATE TABLE `sk` (
  `id` int(10) NOT NULL,
  `keterangan` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sk`
--

INSERT INTO `sk` (`id`, `keterangan`) VALUES
(1, 'Kenaikan Pengkat'),
(2, 'Kenaikan Gaji Berkala');

-- --------------------------------------------------------

--
-- Table structure for table `s_ijasah`
--

CREATE TABLE `s_ijasah` (
  `id_s_ijasah` bigint(100) NOT NULL,
  `tgl` date NOT NULL,
  `banyaknya` int(10) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `nomor_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `s_kenaikan`
--

CREATE TABLE `s_kenaikan` (
  `id_s_kenaikan` bigint(100) NOT NULL,
  `tgl` date NOT NULL,
  `d` bigint(100) NOT NULL,
  `m` bigint(20) NOT NULL,
  `y` int(5) NOT NULL,
  `banyaknya` int(10) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `nomor_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `password` varchar(225) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `gender` enum('l','p') NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `nip`, `password`, `nama`, `level`, `gender`, `foto`, `status`) VALUES
('ananda', '199212152022032001', '$2y$05$vndiPHqNesGbQ9.Zb7u9T.jV8FtSHzfk2R9sl.zs4.4HQ7BMYU1Ia', 'Ananda Amalia Rusfa, S.Sos.', 'admin', '', '', 'Aktif'),
('nukman', '198307062014031001', '$2y$05$nrGjSBmNzm7Dc3JSxnIdbOxukEH/QxlYatfNHtij8.PTNsnNm0cwq', 'Muhammad Nukman', 'admin', 'l', '', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `wa`
--

CREATE TABLE `wa` (
  `id` int(1) NOT NULL,
  `token` varchar(155) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wa`
--

INSERT INTO `wa` (`id`, `token`) VALUES
(1, 'PKNHakeUXpqQVWYv20qCGqcmyRfxdDgk8rzkzafFshf1o7d0y3Q4DWyOwnhSSbBn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indexes for table `detail_s_ijasah`
--
ALTER TABLE `detail_s_ijasah`
  ADD PRIMARY KEY (`id_detail_s_ijasah`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`golongan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`50`);

--
-- Indexes for table `jml_hari_rekap`
--
ALTER TABLE `jml_hari_rekap`
  ADD PRIMARY KEY (`id_jml`);

--
-- Indexes for table `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekap_absensi`
--
ALTER TABLE `rekap_absensi`
  ADD PRIMARY KEY (`id_rekap`);

--
-- Indexes for table `sk`
--
ALTER TABLE `sk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_ijasah`
--
ALTER TABLE `s_ijasah`
  ADD PRIMARY KEY (`id_s_ijasah`);

--
-- Indexes for table `s_kenaikan`
--
ALTER TABLE `s_kenaikan`
  ADD PRIMARY KEY (`id_s_kenaikan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `wa`
--
ALTER TABLE `wa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_s_ijasah`
--
ALTER TABLE `detail_s_ijasah`
  MODIFY `id_detail_s_ijasah` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `50` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `sk`
--
ALTER TABLE `sk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
