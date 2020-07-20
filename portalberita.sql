-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 12:47 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalberita`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `ID` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `Nama` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`ID`, `email`, `Nama`, `username`, `password`) VALUES
(2, 'admin@email.com', 'admin', 'admin', '123'),
(9, 'defriandatkd@gmail.com', 'Defrianda', 'Defri', '123');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `ID` int(10) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `teks` text NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `updateby` varchar(50) NOT NULL,
  `viewnum` varchar(20) NOT NULL,
  `post_type` varchar(20) NOT NULL,
  `terbit` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`ID`, `judul`, `kategori`, `isi`, `gambar`, `teks`, `tanggal`, `updateby`, `viewnum`, `post_type`, `terbit`) VALUES
(28, 'Digital Wellbeing untuk mengurangi penggunaan ponsel berlebihan', 'teknologi', '<p>Jakarta - Google memiliki inisiatif yang diberi nama Digital Wellbeing untuk mengurangi penggunaan ponsel berlebih sehari-hari.</p><p>Baru-baru ini, Google meluncurkan tiga aplikasi eksperimental sebagai bagian dari inisiatif tersebut.</p><p><br></p><p>Ketiga aplikasi tersebut memiliki fungsi yang berbeda-beda. Bahkan salah satunya bisa \'menyembunyikan\' ponsel kalian di dalam amplop agar penggunaannya bisa dibatasi.</p><p><br></p><p>Apa saja tiga aplikasi yang diperkenalkan Google tersebut? Yuk kita bahas satu-persatu.</p><p><br></p><p>Envelope</p><p><br></p><p>Aplikasi pertama bernama Envelope yang saat ini baru tersedia untuk pengguna Pixel 3A. Dilansir detikINET dari Android Police, Rabu (22/2/2020) aplikasi ini mengandalkan amplop untuk menyimpan ponsel agar kalian bisa beristirahat dari dunia digital.</p><p><br></p><p>Walau ponsel kalian disembunyikan di dalam amplop, kalian tetap bisa membuat panggilan telepon berkat keypad yang ada di bagian depan amplop.</p><p><br></p><p>Untuk menggunakan aplikasi ini pertama kalian harus mengunduh aplikasi Envelope di Play Store. Setelah itu, cetak PDF khusus yang berisi pola amplop, potong template-nya dan ikuti instruksi untuk membentuknya.</p><p><br></p><p>Jika sudah siap untuk memisahkan diri dari ponsel kalian, buka aplikasi envelope, masukkan Pixel 3A milik kalian ke dalam amplop dan tutup amplop dengan rapat menggunakan lem.</p><p><br></p><p>Aplikasi ini adalah proyek open source dan Google telah menaruh semua kodenya di GitHub. Jadi menarik ditunggu inovasi baru lainnya yang akan datang dari proyek ini.</p>', 'photo/Digital_Wellbeing_untuk_mengurangi_penggunaan_ponsel_berlebihan.png', 'penggunaan ponsel berlebihan', '2020-01-22 07:14:32', 'admin', '4', 'berita', '1'),
(31, 'StartGo S1, Smartwatch teranyar dari ADVAN', 'teknologi', '<p><b>Jakarta -</b></p><p>Saat ini semakin banyak pilihan jam tangan pintar alias smartwatch di pasaran. ADVAN sebagai perusahaan teknologi terdepan asli Indonesia menawarkan smartwatch canggih StartGo S1 untuk membantu aktivitas sehari-hari penggunanya. StartGo S1 adalah smartwatch teranyar dari ADVAN dengan berbagai kecanggihan teknologi dengan harga yang masih terjangkau.</p><p><br></p><p>StartGo S1 membuat penggunanya seakan memiliki asisten pribadi yang memudahkan untuk beraktivitas sehari-hari. StartGo S1 diperuntukkan untuk pribadi yang aktif dengan sensor denyut jantung secara real time sehingga bisa digunakan untuk memantau kondisi kesehatan Anda.</p><p><br></p><p>\"StartGo S1 cocok digunakan untuk pengguna yang aktif, di mana smartwatch ini bisa memantau kondisi kesehatan penggunanya sehari-hari sehingga kondisi kesehatan bisa terpantau secara real time. Kualitas kesehatan yang terpantau melalui StartGo S1 tentunya akan membuat penggunanya bisa lebih produktif dalam beraktivitas sehari-hari,\" ungkap GM Marketing ADVAN Aria Wahyudi.</p><p><br></p><p>Layaknya memiliki asisten pribadi, wearables ini bisa mencatat rekam medis jantung Anda yang meliputi rangkuman rata-rata kegiatan, bagaimana kualitas tidur serta rata-rata denyut jantung selama seminggu.</p><p><br></p><p>StartGo S1 juga bisa menjadi teman berolahraga dengan menentukan target harian, persentase target harian yang telah tercapai atau jumlah kalori yang terbakar melalui aktivitas yang telah Anda lakukan. Bahkan berapa jarak yang telah dicapai juga bisa terlihat melalui StartGo S1 ini.</p><p><br></p><p>Kelebihan lain dari StartGo S1 adalah wearables ini hanya perlu diisi ulang (charge) sekali saja dalam jangka waktu 30 hari atau sebulan penuh! Jadi tak perlu khawatir smartwatch ini mati mendadak karena kehabisan daya karena daya tahannya yang berdurasi sangat lama.</p><p><br></p><p>ADVAN menyematkan banderol khusus seharga Rp 499 ribu dari harga normal Rp 699 ribu pada tanggal 23 hingga 27 Januari 2020. StartGo S1 bisa didapatkan di lima e-commerce yang bekerja sama dengan ADVAN yaitu Bukalapak, Shopee, Lazada, Blibli, serta Tokopedia.</p>', 'photo/StartGo_S1__Smartwatch_teranyar_dari_ADVAN.png', 'Smartwatch', '2020-01-22 18:53:18', 'admin', '5', 'berita', '1'),
(33, 'Bisnis Krakatau Steel, BUMN Baja Tapi Jadi Developer Rumah Tipe 52', 'ekonomi', '<p><b>AKARTA</b>, <b>KOMPAS.com</b> - PT Krakatau Steel (Persero) Tbk tengah jadi sorotan. </p><p>Menteri BUMN Erick Thohir memelototi kinerja keuangan yang terus merugi bertahun-tahun serta utang yang menggunung hingga Rp 40 triliun. Erick Thohir juga menyoroti struktur perusahaan yang gemuk. Dimana banyak perusahaan anak dan cucu tak terkait dengan lini bisnis utamanya (core business), yakni industri baja. Uniknya, meski punya fokus pada industri baja, Kratau Steel juga merambah bisnis pengembang atau developer perumahan. Di bawah bendera anak usaha PT Krakatau Industrial Estate Cilegon atau KIEC, Krakatau Steel membangun hunian di dua lokasi. Dilihat dari laman resmi KIEC, perusahaan mengembangkan kawasan perumahan Pejaten Mas Estate di Serang, Banten. Rumah bertipe 52 itu telah terjual habis alias sudah sold out. \"Pejaten Mas Estate, seluas 15 ha dapat dicapai hanya dalam waktu 10 menit dari Cilegon dan 10 menit dari Serang, Ibu Kota Provinsi Banten. Letaknya yang ada di kaki Gunung Pinang, membuat penghuninya selalu dapat menikmati kenyamanan tinggal di nuansa pegunungan,\" bunyi iklan marketing KIEC.</p><p><br></p><p>Proyek residensial lain yang digarap anak usaha Krakatau Steel ini yaitu Bumi Rakata Asri. Dalam keterangan KIEC, perumahan ini dapat dijangkau hanya 5 menit dari Kota Cilegon. Selain itu, keistimewaan hunian ini adalah punya akses langsung ke Jalan Lingkar Selatan Kota Cilegon. \"Berada pada kawasan perbukitan yang terpisah jauh dari daerah industri membuat Bumi Rakata Asri menjadi hunian yang nyaman dengan lingkungan yang alami dan asri,\" bunyi keterangan KIEC dikutip dari laman resminya.</p><p><br></p><p>Sebagai informasi, seperti dikutip dari Annual Report 2018, emiten bursa berkode KRAS ini tercatat memiliki 11 anak perusahaan 15 perusahaan afiliasi atau bukan pengendali saham mayoritas sebanyak 15 perusahaan.</p>', 'photo/Bisnis_Krakatau_Steel__BUMN_Baja_Tapi_Jadi_Developer_Rumah_Tipe_52.png', 'Bisnis Krakatau Steel', '2020-01-29 18:53:11', 'Defrianda', '1', 'berita', '1'),
(34, 'Besok! Garuda Indonesia Diskon 71% Seluruh Rute Domestik dan LN untuk Tiket 26 Januari -14 Mei 2020', 'ekonomi', '<p><b>BANGKAPOS.COM</b> - Garuda Indonesia memberikan potongan tiket hingga 71 persen. Promo yang diberikan kepada seluruh rute penerbangan domestik dan internasional ini dalam rangka ulang tahun ke-71 Garuda Indonesioa.</p><p>Melansir artikel kompas.com, dalam rangka menyambut ulang tahun ke-71, Garuda Indonesia memberikan potongan harga tiket atau diskon tiket pesawat hingga 71 persen&nbsp;</p><p>Promo ini berlaku untuk hampir seluruh rute penerbangan domestik dan internasional.</p><p>Direktur Utama Garuda Irfan Setiaputra mengatakan, promo ini berlaku untuk pembelian tiket pada tanggal 26 Januari 2020,</p><p>dengan periode perjalanan mulai dari 26 Januari hingga 14 Mei 2020.</p><p>Menurutnyaa, promo ini merupakan upaya maskapai pelat merah tersebut untuk memenuhi ekspektasi konsumen.</p><p>“Penawaran khusus tersebut merupakan bagian dari komitmen dalam memberikan nilai tambah bagi para pengguna jasa yang selama ini telah mendukung Garuda Indonesia dengan selalu menggunakan layanan penerbangan Garuda Indonesia hingga menginjak usia ke-71 tahun ini,\" tutur dia dalam keterangan tertulisnya, Sabtu (25/1/2020).</p><p>Selain itu, Irfan menjelaskan promo ini membuktikan bahwa pihaknya tidak hanya fokus pada pengembangan bisnis,</p><p>namun juga berupaya untuk medukung program pariwisata pemerintah.</p>', 'photo/Besok__Garuda_Indonesia_Diskon_71__Seluruh_Rute_Domestik_dan_LN_untuk_Tiket_26_Januari__14_Mei_2020.png', ' Garuda Indonesia Diskon 71%', '2020-01-29 18:56:29', 'Defrianda', '1', 'berita', '1'),
(36, 'Sejarah Lomba Panjat Pinang, Ternyata Dulu Diadakan sebagai Hiburan Acara Pernikahan dan Hajatan', 'nasional', '<p>BANGKAPOS.COM - Lomba panjat pinang biasanya jadi satu di antara lomba yang paling ditunggu-tunggu di setiap momen perayaan HUT Kemerdekaan RI.</p><p><br></p><p>Ini karena lomba panjat pinang jadi salah satu ciri khas perayaan kemerdekaan Indonesia.</p><p><br></p><p>Lomba panjat pinang terlihat seru sekaligus menegangkan karena peserta harus bertahan memanjat tiang yang licin dan mencapai puncak, untuk mendapatkan berbagai hadiah.</p><p><br></p><p><br></p><p>Tahukah anda, lomba panjat pinang rupanya sudah ada sejak zaman Belanda menduduki Indonesia.&nbsp;</p><p><br></p><p>Tahukah anda, lomba panjat pinang rupanya sudah ada sejak zaman Belanda menduduki Indonesia.&nbsp;</p><p><br></p><p>Artinya lomba memperingati kemerdekaan itu sudah ada sebelum Indonesia merdeka.</p><p><br></p><p>Sejarah Lomba Panjat Pinang yang Sudah Ada Sejak Zaman Belanda</p><p><br></p><p>Panjat pinang awalnya merupakan bagian hiburan dari acara besar orang Belanda.</p><p><br></p><p>Dulu, panjat pinang diadakan saat orang Belanda di Indonesia mengadakan acara pernikahan, hajatan, atau acara yang lainnya.</p><p><br></p><p>Ide perlombaan ini dicetuskan orang Belanda, namun mereka mengharapkan orang Indonesia menjadi peserta.</p>', 'photo/Sejarah_Lomba_Panjat_Pinang__Ternyata_Dulu_Diadakan_sebagai_Hiburan_Acara_Pernikahan_dan_Hajatan.png', 'Sejarah Lomba Panjat Pinang', '2020-01-29 19:03:00', 'Defrianda', '3', 'berita', '1'),
(37, 'Mudah Banget, Resep Pempek Panggang Ikan Lele yang Lezat', 'hiburan', '<p>BANGKAPOS.COM-- Resep Pempek Panggang Ikan Lele ini bisa menjadi inspirasi kita untuk membuat pempek yang tampil istimewa.</p><p><br></p><p>Kreasikan Resep Pempek Panggang Ikan Lele dengan resep mudah sederhana berikut ini.</p><p><br></p><p>Karena rasanya yang enak, Resep Pempek Panggang Ikan Lele pasti bakal jadi favorit keluarga di rumah.</p><p><br></p><p><br></p><p>Waktu: 45 Menit</p><p><br></p><p>Sajian: 20 Buah</p><p><br></p><p>Bahan:</p><p>350 gram daging ikan lele, dihaluskan</p><p>100 ml air</p><p>3/4 sendok teh garam</p><p>1/2 sendok teh gula pasir</p><p>1/2 sendok makan minyak goreng</p><p>2 putih telur</p><p>200 gram tepung sagu</p><p><br></p><p>Bahan Isi (aduk rata):</p><p>50 gram ebi, diseduh, disangrai, dihaluskan</p><p>8 buah cabai rawit ijo, dihaluskan</p><p>3 sendok makan kecap manis</p><p><br></p><p>Cara Membuat Pempek Panggang Ikan Lele Ebi :</p><p><br></p><p>1. Uleni ikan lele, air, garam, gula pasir, minyak goreng, dan putih telur sampai rata. Tambahkan tepung sagu. Aduk rata.</p><p><br></p><p>2. Ambil adonan. Bentuk bulat pipih. Panggang di atas bara api sambil dibolak balik sampai matang.</p><p><br></p><p>3. Belah pempek tidak putus. Beri isi. Sajikan selagi hangat.</p>', 'photo/Mudah_Banget__Resep_Pempek_Panggang_Ikan_Lele_yang_Lezat.png', 'Pempek', '2020-01-29 19:06:23', 'Defrianda', '4', 'berita', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `ID` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `terbit` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`ID`, `kategori`, `alias`, `terbit`) VALUES
(2, 'Nasional', 'nasional', '1'),
(3, 'Ekonomi', 'ekonomi', '1'),
(10, 'Teknologi', 'teknologi', '1'),
(11, 'Hiburan', 'hiburan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `ID` int(5) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Tax` varchar(100) NOT NULL,
  `Isi` varchar(255) NOT NULL,
  `Link` varchar(100) NOT NULL,
  `Tipe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`ID`, `Nama`, `Tax`, `Isi`, `Link`, `Tipe`) VALUES
(1, 'Judul Situs', 'title_site', 'Portal Berita Terbaik di Indonesia', 'http://localhost/portalberita/', 'konfigurasi'),
(2, 'Meta Description', 'meta_desc', 'Portal berita terdepan', '', 'konfigurasi'),
(4, 'Meta Keyword', 'meta_key', 'Portal Berita, Situs Berita, Berita terkini', '', 'konfigurasi'),
(9, 'Email', 'email', 'defriandatkd@gmail.com', 'mailto:defriandatkd@gmail.com', 'konfigurasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
