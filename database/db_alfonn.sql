-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 08:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_alfonn`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kategoriID` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kategoriID`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `deskripsi`, `stok`, `foto`) VALUES
(3, 6, 'Dilan 1990', 'Pidi Baiq', 'Pastel Books', '2014-01-17', 'Dia adalah Dilanku Tahun 1990 edisi 1 berwarna biru muda dengan tokoh Dilan dan sepeda motornya yang dijadikan covernya.  Nah, gambar Dilan yang menggunakan seragam SMA dengan gaya yang sangat santai  yang terletak di Cover diilustrasikan sendiri  oleh sang penulis Pidi Baiq. Gambar yang terdapat di cover menjadi ciri dari isi novel yang menggambarkan kehidupan remaja.', 18, 'dilan.jpeg'),
(4, 13, 'Naruto', 'Masashi Kisimoto', 'Gramedia Pustaka Utama', '1997-08-01', 'Naruto (ナルト) adalah sebuah serial manga karya Masashi Kishimoto yang diadaptasi menjadi serial anime. Manga Naruto bercerita seputar kehidupan tokoh utamanya, Naruto Uzumaki, seorang ninja yang hiperaktif, periang, dan ambisius yang ingin mewujudkan keinginannya untuk mendapatkan gelar Hokage, pemimpin dan ninja terkuat di desanya. Serial ini didasarkan pada komik one-shot oleh Kishimoto yang diterbitkan dalam edisi Akamaru Jump pada Agustus 1997', 17, 'Naruto.jpg'),
(5, 7, 'Hantu Di Rumah Kos', 'DINI W.TAMAM & ERBY S', 'Gramedia Pustaka Utama', '2019-01-15', 'Dari Pekanbaru ke kota Bandung, hanya satu tujuan Renata. Kuliah di sebuah Universitas untuk menuntut ilmu dan menggapai cita. Kakak satu-satunya, Radit, memilih sebuah rumah kos yang letaknya terjangkau dari kampusnya.\r\n\r\nBangunan kos terlihat baik-baik saja. Tidak ada kesan menakutkan. Tetapi ternyata itu salah. Renata merasakan keanehan yang tidak disangka. Suasana begitu menakutkan terlebih ketika malam menurunkan gelapnya. Ada sesuatu di sana. Ia terlalu sulit menghindar. Ternyata, kos itu bukan kos seperti pada umumnya\r\n', 18, 'hantu_rumah.jpg'),
(9, 6, 'Harry Potter and the Deathly Hallows is a Fantasy', 'J K Rowling', 'United Kingdom by Bloomsbury', '2007-07-21', 'Harry Potter leaves Privet Drive for the last time. But as he gets into the sidecar of Hagrid’s bike and they go to the skies, he knows that Lord Voldemort and the Death Eaters will not be far away.\r\nThe protective charm that has kept him safe so far is broken. But the Dark Lord is instilling fear in everything he loves. And he knows he can’t keep hiding.\r\nTo stop Voldemort, Harry knows that he must find the remaining Horcruxes and destroy them.\r\nYou will have to face your enemy in a final battle.', 20, 'harry_poa.jpg'),
(10, 12, 'Perkembangan IPTEK', 'Rani Aziz', 'tunagrahita', '2024-02-22', 'Buku ini diharapkan dapat menjadi salah satu sumber belajar siswa dalam proses belajar berbasis aktivitas melalui pendekatan saintifik di sekolah. Penulisan buku ini mengacu pada silabus pembelajaran yang telah\r\nditetapkan serta disesuiakan dengan Kompetensi Inti dan Kompetensi Dasar Pendidikan Khusus.', 19, 'Perkembangan IPTEK.png'),
(11, 15, 'Aku Suka Sains', ' Fajriatun Nur Hidayati', ' Bhuana Ilmu Populer', '2022-11-15', 'Buku ini berisi pengetahuan sains dasar, mulai dari Tata Surya, sifat benda, hingga ilmu tentang hewan dan tumbuhan. Sains dalam buku ini disajikan dalam bentuk dongeng imajinatif, sekaligus mengandung nilai moral yang baik untuk anak. Terdapat penjelasan dan fakta menarik tentang sains pada setiap akhir cerita. Ayo, belajar sains sambil bertualang dengan tokoh-tokoh lucu dalam buku ini!', 19, 'aku suka sains.jpg'),
(12, 17, 'Panduan Penulisan Karya Ilmiah ', 'Dr. H. Masduki. M.Pd.I., Dr. Rasto, M.Pd.,Siha Abdurohim, M.Pd', ' CV.Adanu Abimata', '2022-03-08', 'Karya ilmiah termasuk di dalamnya skripsi berbeda dengan tulisan lepas biasa. Di dalam penulisan skripsi dan karya ilmiah terdapat kaidah-kaidah yang berlaku, yang mana kaidah-kaidah tersebut dapat dijadikan sebagai pedoman dalam penulisan skripsi dan karya ilmiah yang baik dan benar.', 19, 'karya ilmiah.jpg'),
(13, 18, 'Kamus Inggris Indonesia', 'John M. Echols & Hassan Sadily', 'Gramedia Pustaka Utama', '2014-10-16', 'Di zaman yang modern ini, tentu bahasa Inggris menjadi bahasa yang sangat penting bagi semua negara karena bahasa Inggris ini merupakan bahasa internasional. Selain digunakan dalam kegiatan formal seperti pendidikan, bisnis, negosiasi di berbagai sektor, bahasa Inggris juga mulai digunakan untuk percakapan sehari-hari.', 18, 'kamus.jpeg'),
(14, 19, 'Kisah, Perjuangan & Inspirasi: B.J. Habibie', 'Weda S. Atma', 'Checklist', '2017-10-18', 'Siapa yang tidak mengenal B.J. Habibie? Beliau merupakan salah satu putra terbaik yang pernah dimiliki negeri ini. Indonesia patut berbangga memiliki Prof. Dr. Ing. H. Bacharuddin Jusuf Habibie. Tokoh dengan sejuta prestasi ini tak hanya dikenal sebagai presiden ke-3 Republik Indonesia, tapi juga insinyur ternama yang karya dan pencapaiannya melambung hingga ke kancah dunia. Meski begitu, rupanya perjuangan beliau tidaklah mudah.', 18, 'B.J._HABIBIE_KISAH_PERJUANGAN__INSPIRASI.jpg'),
(15, 20, ' 70 Resep Easy Cook: Praktis, Halal & Non-MSG', 'Yunita Anwar', 'Gramedia Pustaka Utama', '2021-12-22', 'Berbagai variasi resep masakan Indonesia, Asian Food, dan Western Food dalam buku ini dapat memberikan inspirasi bagi Anda untuk menyajikan makanan yang bervariasi sehingga tidak membosankan dan bisa dinikmati oleh semua orang, baik dewasa maupun anak-anak.', 18, 'masakan.jpg'),
(16, 21, 'Hukum Pidana Internasional', 'Dr.Diajeng Wulan Christianti, S.H., LL.M.', 'Bumi Aksara Pt', '2021-12-16', 'Hukum pidana internasional merupakan bagian dari aturan internasional yang dirancang untuk melarangan kategori kejahatan tertentu. Hukum pidana internasional juga dapat dikatakan sebagai hukum pidana nasional yang memiliki aspek internasional. Hukum pidana internasional pada hakikatnya diberlakukan pada hukum antar bangsa tanpa mengesampingkan prinsip-prinsip internasional.', 18, 'Hukum_Pidana_Internasional.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(6, 'Novel'),
(7, 'Horor'),
(12, 'Buku Pelajaran'),
(13, 'Komik'),
(15, 'Dongeng'),
(17, 'Karya Ilmiah'),
(18, 'Kamus'),
(19, 'Biografi'),
(20, 'Panduan (how to)'),
(21, 'Hukum');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_peminjaman` varchar(255) NOT NULL,
  `tanggal_pengembalian` varchar(255) NOT NULL,
  `jumlah_pinjam` int(11) NOT NULL,
  `status_peminjaman` enum('dipinjam','dikembalikan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_user`, `id_buku`, `tanggal_peminjaman`, `tanggal_pengembalian`, `jumlah_pinjam`, `status_peminjaman`) VALUES
(43, 10, 4, '2024-02-20', '2024-02-27', 1, 'dipinjam'),
(44, 10, 5, '2024-02-20', '2024-02-21', 1, 'dipinjam'),
(45, 3, 3, '2024-02-21', '2024-02-22', 1, 'dipinjam'),
(46, 3, 9, '2024-02-21', '2024-02-28', 0, 'dikembalikan'),
(51, 14, 15, '2024-02-22', '2024-02-23', 1, 'dipinjam'),
(52, 14, 13, '2024-02-22', '2024-02-23', 1, 'dipinjam'),
(53, 15, 16, '2024-02-22', '2024-02-23', 1, 'dipinjam'),
(54, 15, 12, '2024-02-22', '2024-02-23', 1, 'dipinjam'),
(55, 17, 14, '2024-02-22', '2024-02-23', 1, 'dipinjam'),
(56, 17, 11, '2024-02-22', '2024-02-23', 1, 'dipinjam'),
(57, 13, 10, '2024-02-22', '2024-02-23', 1, 'dipinjam');

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `peminjaman` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN
UPDATE buku set stok=stok-new.jumlah_pinjam
WHERE id_buku = new.id_buku;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pengembalian` AFTER UPDATE ON `peminjaman` FOR EACH ROW BEGIN
UPDATE buku SET stok = stok + old.jumlah_pinjam
WHERE id_buku = old.id_buku;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `id_user`, `id_buku`, `ulasan`, `rating`) VALUES
(13, 3, 3, 'bagus', 10),
(16, 10, 4, 'Bukunya Menyenangkan untuk dibaca', 9),
(17, 15, 16, 'Buku ini bagus dapat mengajarkan saya tentang hukum internasional', 8),
(18, 14, 15, 'Bagus, karena saya mendapatkan beberapa resep baru', 8),
(19, 17, 14, 'Menginspirasi sekali\r\n', 10),
(21, 14, 13, 'masih belum bisa bahasa inggris jadi segini dulu', 5),
(22, 15, 12, 'Memandu saya dalam menulis karya ilmiah, tapi ada kekurangan sedikit di beberapa halaman\r\n', 7),
(23, 17, 11, 'Setelah membaca ini saya jadi menyukai sains', 9),
(24, 10, 5, 'menakutkan sekali', 8),
(25, 13, 10, 'mengajarkan saya tentang perkenbangan IPTEK', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `level` enum('admin','petugas','peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `email`, `alamat`, `no_telp`, `level`) VALUES
(1, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'batujajar', '08957036533', 'admin'),
(3, 'alfon', 'alfon', '2878b00493ed7143f80836780efa53da', 'alfon123@gmail.com', 'Padalarang', '088971594205', 'peminjam'),
(8, 'petugas', 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas@gmail.com', 'Bandung', '08653678908', 'petugas'),
(10, 'aku_peminjam', 'peminjam', '55f3894bc5fc71fead8412d321c2952c', 'ga@gmail.com', 'padalarangan', '0987543', 'peminjam'),
(12, 'petugas1', 'petugas1', 'b53fe7751b37e40ff34d012c7774d65f', 'petugas123@gmail.com', 'Sukabumi', '0888937427', 'petugas'),
(13, 'peminjam2', 'peminjam2', '53c00c96141e24cfff921a36ce962dd6', 'peminjam2@gmail.com', 'Cimerang', '025254521125', 'peminjam'),
(14, 'Agus', 'agus', 'fdf169558242ee051cca1479770ebac3', 'Agus12@gmail.com', 'Batujajar', '084569875415', 'peminjam'),
(15, 'Zikry Nur Salam', 'zikry', '4d0af9dd11cd1c0af4a058dccaa52a61', 'zikri10@gmail.com', 'Padalarang', '085462124589', 'peminjam'),
(16, 'Arya Prasetia S', 'arya', '5882985c8b1e2dce2763072d56a1d6e5', 'arya07@gmail.com', 'Batujajar', '085469713741', 'peminjam'),
(17, 'Budi Santoso', 'budi', '00dfc53ee86af02e742515cdcf075ed3', 'budi15@gmail.com', 'Cibinbin', '087954612302', 'peminjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategoriID` (`kategoriID`) USING BTREE;

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategoriID`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Constraints for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `ulasan_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
