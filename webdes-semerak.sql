-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 31, 2023 at 11:45 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `apb_desas`
--

CREATE TABLE `apb_desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hasil_usaha` json NOT NULL,
  `hasil_aset` json NOT NULL,
  `hasil_lain` json NOT NULL,
  `dana_desa` json NOT NULL,
  `bagi_hasil_pajak` json NOT NULL,
  `alokasi_dana_desa` json NOT NULL,
  `bantuan_keuangan_kabupaten` json NOT NULL,
  `bantuan_keuangan_provinsi` json NOT NULL,
  `hibah` json NOT NULL,
  `sumbangan_pihak_ketiga` json NOT NULL,
  `pendapatan_lain` json NOT NULL,
  `penyelenggaraan_pemerintahan_desa` json NOT NULL,
  `pelaksanaan_pembangunan_desa` json NOT NULL,
  `pembinaan_kemasyarakatan_desa` json NOT NULL,
  `pemberdayaan_masyarakat_desa` json NOT NULL,
  `belanja_tidak_terduga` json NOT NULL,
  `silpa` json NOT NULL,
  `pencairan_dana_cadangan` json NOT NULL,
  `hasil_penjualan_kekayaan_desa` json NOT NULL,
  `pembentukan_dana_cadangan` json NOT NULL,
  `penyertaan_modal_desa` json NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apb_desas`
--

INSERT INTO `apb_desas` (`id`, `tahun`, `judul`, `gambar`, `hasil_usaha`, `hasil_aset`, `hasil_lain`, `dana_desa`, `bagi_hasil_pajak`, `alokasi_dana_desa`, `bantuan_keuangan_kabupaten`, `bantuan_keuangan_provinsi`, `hibah`, `sumbangan_pihak_ketiga`, `pendapatan_lain`, `penyelenggaraan_pemerintahan_desa`, `pelaksanaan_pembangunan_desa`, `pembinaan_kemasyarakatan_desa`, `pemberdayaan_masyarakat_desa`, `belanja_tidak_terduga`, `silpa`, `pencairan_dana_cadangan`, `hasil_penjualan_kekayaan_desa`, `pembentukan_dana_cadangan`, `penyertaan_modal_desa`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '2020', 'Laporan APB Desa', 'storage/public/apb_desa/YPqje0hvnbbQGu1e2BRr1q8ADkmhScD2XC6yqoGr.png', '{\"lebih\": \"3\", \"rencana\": \"1\", \"realisasi\": \"2\"}', '{\"lebih\": \"22\", \"rencana\": \"23120\", \"realisasi\": \"11\"}', '{\"lebih\": \"234\", \"rencana\": \"44\", \"realisasi\": \"33\"}', '{\"lebih\": \"654\", \"rencana\": \"324\", \"realisasi\": \"111111111\"}', '{\"lebih\": \"4564352\", \"rencana\": \"1215\", \"realisasi\": \"42\"}', '{\"lebih\": \"546\", \"rencana\": \"41\", \"realisasi\": \"345\"}', '{\"lebih\": \"456\", \"rencana\": \"645\", \"realisasi\": \"456\"}', '{\"lebih\": \"433\", \"rencana\": \"34\", \"realisasi\": \"74\"}', '{\"lebih\": \"351\", \"rencana\": \"35\", \"realisasi\": \"45\"}', '{\"lebih\": \"345\", \"rencana\": \"234\", \"realisasi\": \"34\"}', '{\"lebih\": \"35\", \"rencana\": \"31\", \"realisasi\": \"24\"}', '{\"lebih\": \"53333122\", \"rencana\": \"32\", \"realisasi\": \"45\"}', '{\"lebih\": \"3400000\", \"rencana\": \"234\", \"realisasi\": \"121\"}', '{\"lebih\": \"342342\", \"rencana\": \"342\", \"realisasi\": \"345\"}', '{\"lebih\": \"44444\", \"rencana\": \"35\", \"realisasi\": \"534534\"}', '{\"lebih\": \"09032902930\", \"rencana\": \"34\", \"realisasi\": \"555\"}', '{\"lebih\": \"6745\", \"rencana\": \"234\", \"realisasi\": \"345\"}', '{\"lebih\": \"35\", \"rencana\": \"456\", \"realisasi\": \"456\"}', '{\"lebih\": \"45\", \"rencana\": \"456\", \"realisasi\": \"56\"}', '{\"lebih\": \"546\", \"rencana\": \"456\", \"realisasi\": \"456\"}', '{\"lebih\": \"56\", \"rencana\": \"56\", \"realisasi\": \"76\"}', NULL, '2023-05-30 07:39:36', '2023-05-31 08:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_singkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_singkat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `judul`, `judul_singkat`, `slug`, `gambar`, `deskripsi`, `deskripsi_singkat`, `author_id`, `tipe`, `views`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 'POSYANDU / PMT LANSIA DESA SEMERAK', 'POSYANDU / PMT LANSIA DESA SEMERAK', 'posyandu-pmt-lansia-desa-semerak', 'cms/berita/thumbnail/3dmkoiz6d01JYbcdIRAeAxORlg14wJbwHZVxUrLJ.jpg', '<p>Pelaksaan program POSYANDU / PMT Lansia dilaksanakan oleh Pemerintah Desa Semerak dalam rangka melaksanakan Program Pemerintah. <img src=\"http://semerak-margoyoso.desa.id/assets/files/data/website-desa-semerak-3318162022/uploads/sites/5338/2019/08/WhatsApp-Image-2019-08-05-at-09.27.18-300x150.jpeg\" alt=\"\"> Angka keberhasilan pembangunan, terutama dibidang kesehatan, secara tidak langsung telah menurunkan angka kesakitan dan kematian penduduk, serta meningkatkan angka harapan hidup, meskipun tidak sekaligus berarti mutu kehidupan yang gilirannya menimbulkan perubahan struktur penduduk, sekaligus menambah jumlah penduduk lansia.</p><p><img src=\"https://www.warta-main.darm/storage/cms/berita/desc/WftlxqBvqT8MrvG4u3ukcXBxgZAXY6zrWISeW3Ej.jpg\"> Status kesehatan lansia tidak boleh terlupakan karena berpengaruh dalam penilaian kebutuhan akan zat gizi. Ada lansia yang tergolong sehat dan ada yang tergolong kronis. Disamping itu, sebagian lansia masih mampu mengurus diri sendiri, sementara sebagian lain tidak. Banyak masalah gizi yang dialami lansia sehingga membutuhkan bantuan dalam penanggulangannya. Untuk menanggulangi masalah gizi yang dialami lansia dapat dilakukan dengan menjalankan beberapa program penanggulangan masalah gizi pada lansia. <img src=\"http://semerak-margoyoso.desa.id/assets/files/data/website-desa-semerak-3318162022/uploads/sites/5338/2019/08/WhatsApp-Image-2019-08-24-at-09.34.06-300x150.jpeg\" alt=\"\"> Rasanya sudah umum diketahui bahwa penyebab masalah gizi adalah multifaktor, yang utamanya melibatkan faktor pendidikan, ekonomi, keamanan, pengendalian pertumbuhan penduduk, perbaikan sanitasi, keadilan sosial bagi perempuan dan anak-anak, kebijakan dan praktik yang benar terhadap lingkungan dan produktivitas pertanian.&nbsp;</p><p>&nbsp;</p><p>Sehubungan dengan itu, untuk dapat menuntaskan masalah gizi tentunya dibutuhkan satu program terintegrasi yang terkait dengan semua faktor tersebut. Masalah gizi sering merupakan kelanjutan dari masalah kelaparan. Kelaparan sering membuat orang menjadi memikirkan dirinya sendiri terkait kebutuhan akan makanan untuk melangsungkan kehidupan, sehingga sering menyebabkan perilaku yang tidak etis seperti mencuri dan melukai orang lain hanya untuk mendapatkan makanan. Di Indonesia, masalah kelaparan memang tidak separah di Somalia, Sudan, ataupun Bangladesh, namun masih ditemukan masalah kurang kalori-protein (KKP) terutama pada anak balita, kurang zat besi terutama pada perempuan dewasa, kurang yodium dan kurang vitamin A serta kekurangan zat gizi lainnya seperti zink.&nbsp;</p><p>&nbsp;</p><p>Akibat terkait dari masalah tersebut adalah anak-anak di Indonesia berisiko untuk sering terkena penyakit infeksi yang berut, mengalami gangguan pertumbuhan atau gagal tumbuh dan mengalami kebutaan. Kelaparan dan masalah gizi, utamanya masalah kurang kalori-protein sebetulnya tidak perlu terjadi di Negara manapun. Sistem pertanian yang baik harusnya memiliki kapasitas untuk menghasilkan makanan yang cukup untuk setiap individu. Orang akan kelaparan dan kurang gizi karena miskin. Kemiskinan itu dibuat oleh manusia sendiri, antara lain praktik diskriminasi terhadap perempuan terutama dalam kesempatan untuk pendidikan dan peluang kerja wabah HIV/AIDS, mempermasalahkan perbedaan rasial, pemerintah yang korupsi. Fktor-faktor lainnya adalah sumber air yang tidak aman, tingkat pendidikan yang rendah, distribusi bahan pangan yang tidak merata, tidak adanya kesempatan untuk bekerja dan produktivitas pertanian yang rendah sehingga pada akhirnya akan berkontribusi terhadap masalah kurang gizi. <img src=\"http://semerak-margoyoso.desa.id/assets/files/data/website-desa-semerak-3318162022/uploads/sites/5338/2019/08/WhatsApp-Image-2019-08-24-at-09.34.06-300x150.jpeg\" alt=\"\"> Semoga dengan adanya Posyandu / MPT lansia ini dapat memberi manfaat bagi masyarakat yang sudah lanjut usia. &nbsp; Aby Sulthan.... 2019</p>', 'Pelaksaan program POSYANDU / PMT Lansia dilaksanakan oleh Pemerintah Desa Semerak dalam rangka melaksanakan Program Pemerintah.  Angka keberhasilan pembangunan, terutama dibidang kesehatan, secara tid...', 2, 'TOP NEWS', 0, NULL, '2023-05-01 15:03:23', '2023-05-01 15:03:23'),
(6, 'KHATAMAN ALQURAN DAN KHAJATAN SEDEKAH BUMI DESA SEMERAK MARGOYOSO PATI', 'KHATAMAN ALQURAN DAN KHAJATAN SEDEKAH BUMI DESA SE...', 'khataman-alquran-dan-khajatan-sedekah-bumi-desa-semerak-margoyoso-pati', 'cms/berita/thumbnail/6vbudjLxfUaVkVicSJQJH288kfnVrgzamHeClFRF.png', '<p>Assalamu`alaikumwarohmatullohiwabarokatuh Hamdan lillah wassholatuwassalamualarosulillah waala alihi washohbihi wamauwalah ammaba`dah...................... puji syukur kehadirat allah SWT pada akhir dan awal Tahun Hijriyah 1940 H ini, Pemerintah desa semerak dapat melaksanakan acara sedekah berupa Khataman alqur`an dan Khajatan pada tanggal 10 September 2018 Khataman Al-qur`an yang dilaksanakan pada siang hari jam 13.00 WIB yang diikuti oleh pemerintah desa, jajaran takmir dan tamu undanagn luar desa yaitu Desa Margotuhu kidul dan Ngemplak Lor.<br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.warta-main.darm/storage/cms/berita/desc/wc9uEulMpFyVgbHyvTaDqn2cH3R6AIxmUtxkPBii.jpg\"></figure><p><br>Alhamdulliah Khataman Al-Quran dapat dilaksanakan dengan baik, semoga membawa berkah bagi warga desa semerak dan khadirin yang hadir pada khususnya. karena diawal tahun ini diawali dengan Khataman Al-quran dengan harapan supaya mendapatkan berkah melalui khataman Al-qur`an tersebut. Malam harinya khajatan juga lakasnakan yang sudah menjadi agenda kegiatan rutin tahunan.<br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.warta-main.darm/storage/cms/berita/desc/RpyMriWNMtq0WOsTSfbbObe11WzFnSsSVkUnWMAt.jpg\"></figure><p><br>Khajatan sudah menjadi tradisi di desa kami, sedah berjalan sejak lama. acara tersebut dilaksanakan dan di dukung langsung oleh seluruh elemen masyarakat desa semerak. karena bisa dikatan merupakan Shodaqoh Bumi..... dengan harapan apa yang telah dianugrahkan oleh Alah kepada kita menjadi berkah yaitu bumi yang kita tempati didunia ini, wujud syukur itulah yang semestinya dilakukan hambanya atas segala nikmat yang diberikan oleh Allah SWT. acara dimulai dengan susunan :</p><ol><li>Pembukaan</li><li>Sambutan Kepala Desa Bpk. Suroso</li><li>Tahlil Bpk. Muwafir</li><li>Do`a bpk. Maskun</li></ol><p>Dalam Pembukaan oleh Bpk. Haji Hartono menyampaikan bahwa kegiatan khajatan sudah merupakan tradisi dan dilaksanakan oleh semua lapisan masyarakat dengan rasa gembira dan ikhlas tentunya.<br>&nbsp;</p><figure class=\"image\"><img src=\"https://www.warta-main.darm/storage/cms/berita/desc/A5VJM05sNcTfS8EGVYBdVKJB4W5XbVtfpqDZyp5T.jpg\"></figure><p>dengan rasa syukur itulan, Insyaallah allah akan menambah nikmat yang telah diberikannya. Sambutan oleh Bpk. Suroso selaku Kepala Desa Semerak Margoyoso Pati <img src=\"http://semerak-margoyoso.desa.id/assets/files/data/website-desa-semerak-3318162022/uploads/sites/5338/2018/09/WhatsApp-Image-2018-09-10-at-18.32.13-300x169.jpeg\" alt=\"\"> bbeliau menyampaikan ucapan terima kasih kepada seluruh elemen masyarakat yang telah mendukung dan berpartisipasi baik materiil maupaun moril yang telah diberikan untuk semua Rangkaian acara sedekah bumi baik mulai awal yaitu Turnamen Voly, Karnaval, Jalan Sehat, Khataman Al-Qur`an, Khajatan dan Pagelaran Wayang nanti yang akan dilaknsakan pada tanggal 10 September 2018.&nbsp;</p><figure class=\"image\"><img src=\"https://www.warta-main.darm/storage/cms/berita/desc/i6Ym0G1tuFXr8hn8RJg9wdMXk5Q7uAMiyfxlE2LV.jpg\"></figure><p>Beliau juga mengapresiasi setinggi-tingginya kepada seluruh Panitia Pelaksana dan anggotanya yang diketuai oleh Bpk. Kaseri dan penanngungjawab acara, Bpk. Muntoha, Bpk. Misbahuddin, S.Pd.I, Ibu Noris adha beserta ibu-ibu PKK, Bpk. Nurul Huda dan jajarannya di BPD, Bpk. Drs. Syakroni, Bpk. Maskun dan Bpk. Muwafir serta Bpk. Haji Hartono, Bpk. Sunhaji dan Ibu Haryati. dan semuanya yang tidak bisa disebut satu persatu yang turut mensukseskan acara ini.<br><br>o`a bersama yang dipimpin oleh Bpk. Maskun memohon semoga Desa semerak diberi ketentraman... gemahripah lohjinawi, rukun, ayem, toto titi raharjo, berkah nopokemawon. Tambah kesahenanipun. amin amin yarobbah alamin.... kafahunaqouli wafu minkum Wassalamualaikum Warohmatullohi Wabarokatuh. &nbsp; Aby Al-Fatih</p>', 'Assalamu`alaikumwarohmatullohiwabarokatuh Hamdan lillah wassholatuwassalamualarosulillah waala alihi washohbihi wamauwalah ammaba`dah...................... puji syukur kehadirat allah SWT pada akhir d...', 1, 'default', 0, NULL, '2023-05-01 18:16:48', '2023-05-02 14:34:24'),
(7, 'PAGELARAN WAYANG KULIT', 'PAGELARAN WAYANG KULIT', 'pagelaran-wayang-kulit', 'cms/berita/thumbnail/d3ZsC9lvFJq0VIm9Zp7ClAehoRxOVQAdl590hTTN.png', '<p>SEDEKAH BUMI Sudah menjadi adat istiadat Desa Semerak setiap tanggal 1 SURO diadakan Pagelaran wayang kulit. Pada hari Selasa, tanggal 10 Agustus 2021 M bertepatan 1 Suro 1443 H. dimulai Jam 12.00 WIB di Pendopo Balaidesa Semerak.&nbsp;</p><p>Untuk nguri-nguri kabudayan dan melestarikannya. tetap diadakan Pagelaran wayang kulit, meski dalam pagelaran ini tidak seperti pagelaran-pagelaran di tahun tahun sebelumnya. karena masih Masa-masa Pandemi Covid-19 maka Pagelaran wayang kulit hanya dilakukan di siang hari dan dengan waktu yang terbatas paling lama 3 jam. meski begitu kegiatan tersebut tetap dilakukan dengan meriah dan tetap mematuhi protokol kesehatan.&nbsp;</p><p>Harapan dari Pemerintah desa melaksanakan pagelaran wayang kulit tersebut... agar tetap lestari kebudayaan yang ada di daerah kita. dan tentunya hal yang sudah berjalan dengan baik dan lestari dari tahun ketahun ini tetap berjalan. semoga dengan adanya pagelaran wayang kulit ini, apa yang menjadi hajad dari Sedekah Bumi ini dapat mendapatkan keberkahan, karena tidak hanya Pagelaran wayang kulit saja. sebelumnya dilakukan Pembacaan Manaqib... dan masyarakat secara mandiri baik di tingkat RT mereka melakukan selametan ala kadarnya (barian). semoga ditahun-tahun yang akan datang akan lebih berkah, gemah ripah lohjinawe.... amin.... Aby Sulthan....</p>', 'SEDEKAH BUMI Sudah menjadi adat istiadat Desa Semerak setiap tanggal 1 SURO diadakan Pagelaran wayang kulit. Pada hari Selasa, tanggal 10 Agustus 2021 M bertepatan 1 Suro 1443 H. dimulai Jam 12.00 WIB...', 1, 'TOP NEWS', 0, NULL, '2023-05-01 18:21:06', '2023-05-01 18:21:06'),
(8, 'KARNAVAL DALAM RANGKA SEDEKAH BUMI (BERSIH DESA) SEMERAK MARGOYOSO PATI', 'KARNAVAL DALAM RANGKA SEDEKAH BUMI (BERSIH DESA) S...', 'karnaval-dalam-rangka-sedekah-bumi-bersih-desa-semerak-margoyoso-pati', 'cms/berita/thumbnail/pURObDt63Ch5WA6Mbmn8T1DR7xGOn4TD7sNLe7dM.png', '<p>KARNAVAL yang sudah getol dikalangan masyarakat Jawa Tengah dan sudah menjadi tradisi tahunan baik acara Khoul, Sedekah Bumi, dan rutinitas tahunan bagi sebagian daerah merupakan tradisi untuk mengembangkan atau mempertahankan potensi kebudayaan daerah yang ada di daerah setempat dan bahkan ada yang menghadirkan dari kebudayaan yang ada diluar daerah baik kebudayaan tongtek, angklung, dumband ada juga reog dan kebudayaan-kebudayaan lainnya. Di Desa Semerak dalam rangka Sedekah Bumi (Bersih Desa)&nbsp; atas kerjasama semua lembaga baik BPD, LPMD, Karangtaruna, KPMD Lembaga Semoklah baik PAUD, TK, SDN, MTs, TPQ dan seluruh lembaga RT dan warga setempat yang antusias dalam pelaksanaan acara tersebut.... semoga dengan tradisi tersebut menambah semua elemen dapat seguyub dalam berbagai bidang.</p><p>&nbsp;</p><p><img src=\"https://www.warta-main.darm/storage/cms/berita/desc/yK7m6mJfqM68K2WoWgINanycdyRgiX6PxX9Ri5wg.jpg\"></p><p><img src=\"https://www.warta-main.darm/storage/cms/berita/desc/fV5Ge3lyPpmHQWCPJCHn2yGbu4gqyTOLC8QvYivb.jpg\"></p><p><img src=\"https://www.warta-main.darm/storage/cms/berita/desc/wgv63UOaVoe4GCfrtr36WDCmKlUDT6MowjTNoarj.jpg\"></p>', 'KARNAVAL yang sudah getol dikalangan masyarakat Jawa Tengah dan sudah menjadi tradisi tahunan baik acara Khoul, Sedekah Bumi, dan rutinitas tahunan bagi sebagian daerah merupakan tradisi untuk mengemb...', 1, 'TOP NEWS', 0, NULL, '2023-05-01 18:29:34', '2023-05-01 18:29:34'),
(9, 'JALAN SEHAT DALAM RANGKA SEDEKAH SEDEKAH BUMI DESA SEMERAK 2018 (09 SEPTEMBER 2018)', 'JALAN SEHAT DALAM RANGKA SEDEKAH SEDEKAH BUMI DESA...', 'jalan-sehat-dalam-rangka-sedekah-sedekah-bumi-desa-semerak-2018-09-september-2018', 'cms/berita/thumbnail/jkHfHflTMwQ6IrLqJGvTwJcLdRA8RZmZZlxZd5UN.jpg', '<p>Untuk menjaga yang namanya waras akale seharusnya harus juga waras awak e........ begitu mungkin yang ada dibenak ibu-ibu PKK sehingga dalam BERSIH DESA mengadakan Jalan sehat yang bertujuan untuk supaya warga yang ada terutama warga semerak pada khususnya selalun menjaga kesehatan jasmani untuk mencapai kesehatan rohani..... terbukti dengan adanya jalan sehat sebelum acara dimulai para warga yang turut hadir diajak untuk senam pagi dahulu .<br><br>Stast dimulai dari Derpan balaidesa keselatan dan dalam tiga pos para peserta mendapatkan setamp.... dipos terakhir para peserta mendapatkan kupon undian yang berupa nomor.... dan di bascam... nomor yang sudah disediakan semuanya dimasukkan dalam kotak undian.... memang terkesan baru dan ternyata darisetulah ketegangan dan rasa keadilan justru tercapai. Para Panitia Pemdes dan BPD tidak diperbolehkan oleh Panitia untuk mengikuti undian, jadi murni yang mendapatkan undian adalah peserta.... Jalan Sehat ini diikuti semua elemen masyarakat baik dari Pemdes dan warganya.... Bapak Suroso sebagai Kades Semerak Margoyoso Pati bersama Ibu Lurah dan kru PKK juga mengikuti senam tersebut. dan yang paling antusias adalah meraka yang menunggu dorprize yang telah dinanti-nantikan. apalagi hadiah utamanya adalah Sepeda gunung yang dimenangkan oleh saudara Yaqin dari RT. 02 RW. 02 Desa Semerak <img src=\"http://semerak-margoyoso.desa.id/assets/files/data/website-desa-semerak-3318162022/uploads/sites/5338/2018/09/WhatsApp-Image-2018-09-09-at-13.22.10-1-300x169.jpeg\" alt=\"\"> <img src=\"http://semerak-margoyoso.desa.id/assets/files/data/website-desa-semerak-3318162022/uploads/sites/5338/2018/09/WhatsApp-Image-2018-09-09-at-13.22.11-1-300x169.jpeg\" alt=\"\"> <img src=\"http://semerak-margoyoso.desa.id/assets/files/data/website-desa-semerak-3318162022/uploads/sites/5338/2018/09/WhatsApp-Image-2018-09-09-at-13.22.11-300x169.jpeg\" alt=\"\">&nbsp;</p><figure class=\"image\"><img src=\"https://www.warta-main.darm/storage/cms/berita/desc/ISHzSuTY4tRgfaPIt58iyItAtegNFMypPhWuvIlN.jpg\"></figure><p>Selamat bagi Pemenang doorprize semoga bermanfaat dan dengan adanya acara Sodaqoh Bumi semoga semua menjadi berkah.... amin................................................... terima kasih Para Pemdes, Lembaga BPD, Ketua RT, Ibu-Ibu PKK dan seluruh Rakyat Desa semerak yang turut berpartisipasi dan mensukseskan acara jalan Sehat tersebut. Segenap Panitia terutama Ibu-Ibu PKK dan Panitia Sedekah Bumi tidak bisa membalas apa-apa semoga ditahun-tahun mendatang lebih baik dan tambah rizqinya. Amin. Aby Al-Fatih</p>', 'Untuk menjaga yang namanya waras akale seharusnya harus juga waras awak e........ begitu mungkin yang ada dibenak ibu-ibu PKK sehingga dalam BERSIH DESA mengadakan Jalan sehat yang bertujuan untuk sup...', 1, 'default', 0, NULL, '2023-05-01 18:35:46', '2023-05-01 18:35:46'),
(10, 'KENDALA BUDI DAYA PADI DI MUSIM KEMARAU', 'KENDALA BUDI DAYA PADI DI MUSIM KEMARAU', 'kendala-budi-daya-padi-di-musim-kemarau', 'cms/berita/thumbnail/9Uk7ArXiY6yVR2gbKRqD92aWbyF4JuMHUWF4Pqw5.jpg', '<p>Masyarakat desa Semerak, potensi desanya adalah budidaya tanaman pangan berupa padi, dan budi daya ikan air payau yaitu tambak, dengan sistim tradisonal. Musim tanam didaerah ini bisa disebut musim tanam ke dua, varitasnya terbanyak adalah 32 unggul, Sidenuk dan membramo. Jenis 32 sangat sulit perawatan awalnya tetapi setelah umur 60 hari, baru bisa hidup dengan baik, dan selanjutnya akan semakin baik. Karena termasuk tanaman yang kebal terhadap hama penggangu wereng, dan hama blas. Kendala terberat adalah kurangnya air, sehingga mengharuskan petani memakai air bawah tanah dengan jalan penyedotan, dengan konsekwensi harus mengelurkan biaya banyak.&nbsp;</p><p>&nbsp;</p><p>Bagi masyarakat pedagang, buruh pabrik, apalagi pegawai negeri melihat polahnya tani, menggeleng-gelengkan kepala, dalam hatinya bertanya-tanya kok masih ada orang yang mau ya kerja siang malam, dengan opah dan resiko tidak terbayar. Karena kalau buruh selesai kerja langsung mendapat bayaran, pedagang&nbsp; bisa dihitung mau mengeruk untung berapa, kalau pegawai negeri tinggal ngitung hari dan bulan akan mendapat bayaran. Memang petani kalau panen kelihatan per ha. terus dapat 30 juta, wah besar ya pendapatanannya, eeeh, orang kebanyakan melihat nilai akhir yang besar sekali sepertinya. Lalu pernah ngitung tidak biaya atau resiko puso atau gagal. Weleh2 .</p>', 'Masyarakat desa Semerak, potensi desanya adalah budidaya tanaman pangan berupa padi, dan budi daya ikan air payau yaitu tambak, dengan sistim tradisonal. Musim tanam didaerah ini bisa disebut musim ta...', 1, 'default', 0, NULL, '2023-05-01 18:37:34', '2023-05-01 18:37:34'),
(11, 'adsasd', 'adsasd', 'adsasd', 'cms/berita/thumbnail/4asdgBZwHdmZYAwMfGBh9r3ilnE5iq8ZMBmZ9Mbo.jpg', '<p>asd</p>', 'asd', 1, 'default', 0, '2023-05-02 09:57:49', '2023-05-02 09:50:12', '2023-05-02 09:57:49'),
(12, 'Cara membuat model di laravel 10', 'Cara membuat model di laravel 10', 'cara-membuat-model-di-laravel-10', 'cms/berita/thumbnail/arF1V3ouTVSfJtY6TAclM4p5sarjmKxFbRnzZs8B.jpg', '<p>hgh</p>', 'hgh', 1, 'default', 0, '2023-05-02 09:59:27', '2023-05-02 09:59:24', '2023-05-02 09:59:27'),
(13, 'judul ini', 'judul ini', 'judul-ini', 'cms/berita/thumbnail/JatxO7M2B8MaURi8VMVfhKrtZooDiMrTpTfxAsam.png', '<ol><li>adas</li><li>asdad</li><li>asdsad</li></ol><p>&nbsp;</p><figure class=\"table\"><table><thead><tr><th>Nama</th><th>Jabatan</th><th>Pendidikan</th></tr></thead><tbody><tr><td>sad</td><td>asdasd</td><td>asdas</td></tr><tr><td>asd</td><td>as</td><td>sad</td></tr></tbody></table></figure>', 'adasasdadasdsad&nbsp;NamaJabatanPendidikansadasdasdasdasasdassad', 1, 'default', 0, '2023-05-13 14:10:30', '2023-05-13 13:51:22', '2023-05-13 14:10:30'),
(15, 'judul inisd', 'judul inisd', 'judul-inisd', 'cms/berita/thumbnail/5OhMaLaCE14zs91E7SEjwl59cCb55YLFdKDnMb5m.png', '<figure class=\"table\"><table><thead><tr><th>we</th><th>we</th><th>we</th></tr></thead><tbody><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>', 'wewewe&nbsp;&nbsp;&nbsp;', 1, 'default', 0, NULL, '2023-05-14 04:25:44', '2023-05-14 04:25:44'),
(16, 'sdsda', 'sdsda', 'sdsda', 'cms/berita/thumbnail/PwDfqWwlVlIMVKlbRZznopr6GBX8r6v3VSbPqTel.png', '<figure class=\"table\"><table><thead><tr><th>Nama</th><th>Jabatan</th><th>Pendidikan</th></tr></thead><tbody><tr><td>Sujatman</td><td>Ketua Desa</td><td>SLTA</td></tr></tbody></table></figure>', 'NamaJabatanPendidikanSujatmanKetua DesaSLTA', 1, 'default', 0, NULL, '2023-05-14 04:47:09', '2023-05-14 07:22:10'),
(18, 'judul ini 2', 'judul ini 2', 'judul-ini-2', NULL, '<p>asd</p>', 'asd', 1, 'default', 0, '2023-05-21 03:54:43', '2023-05-21 03:37:23', '2023-05-21 03:54:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeris`
--

INSERT INTO `galeris` (`id`, `judul`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Acara pengajian', 'storage/public/galeri/FsSYZil0Dm5qlMhtac7lLLXH9mTr3UhuGZ9OssF4.png', '2023-05-28 03:38:37', '2023-05-29 13:10:09'),
(2, 'Karnaval', 'storage/public/galeri/Dxj4tWhEOZsEh2Amjc4eRvRIlooapLyb28mRmFrN.jpg', '2023-05-28 03:59:25', '2023-05-28 03:59:25'),
(3, 'Wayangan', 'storage/public/galeri/rZj13u9Ij0yeGeSltlupeU1LQOpFYhgIIE5eGke2.jpg', '2023-05-28 03:59:43', '2023-05-28 03:59:43'),
(4, 'Senam', 'storage/public/galeri/9sT6JkaYIVFAITqhk6UEmeTLgRnp12LVEZ5NZW6u.jpg', '2023-05-28 03:59:59', '2023-05-28 03:59:59'),
(5, 'Acara Desa', 'storage/public/galeri/NmIZJ5a83aNZ6ilVKQT7ao6TnmqLCteoiVU54nvp.jpg', '2023-05-28 04:00:22', '2023-05-28 04:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan_pegawais`
--

CREATE TABLE `jabatan_pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan_pegawais`
--

INSERT INTO `jabatan_pegawais` (`id`, `nama`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ketua Desa', NULL, '2023-05-06 07:32:50', '2023-05-06 13:30:08'),
(2, 'sd', '2023-05-06 08:06:57', '2023-05-06 08:06:16', '2023-05-06 08:06:57'),
(3, 'Bendahara Desa', '2023-05-13 05:41:40', '2023-05-08 14:14:40', '2023-05-13 05:41:40'),
(4, 'Sekretaris Desa', '2023-05-13 05:41:39', '2023-05-13 05:41:00', '2023-05-13 05:41:39'),
(5, 'Badan Permusyawaratan Desa', NULL, '2023-05-13 05:41:28', '2023-05-13 05:41:28'),
(6, 'Sekretaris Desa', NULL, '2023-05-13 05:41:50', '2023-05-13 05:41:50'),
(7, 'Kasi Pemerintahan', NULL, '2023-05-13 05:42:07', '2023-05-13 05:42:07'),
(8, 'Kasi Pembangunan', NULL, '2023-05-13 05:42:21', '2023-05-13 05:42:21'),
(9, 'Kaur Pemberdayaan Masyarakat', NULL, '2023-05-13 05:42:41', '2023-05-13 05:42:41'),
(10, 'Kaur Kesejahteraan Rakyat', NULL, '2023-05-13 05:42:49', '2023-05-13 05:42:49'),
(11, 'Kaur Umum', NULL, '2023-05-13 05:42:58', '2023-05-13 05:42:58'),
(12, 'Kaur Keuangan', NULL, '2023-05-13 05:43:04', '2023-05-13 05:43:04'),
(13, 'Perangkat Desa Lainnya', NULL, '2023-05-13 05:43:22', '2023-05-13 05:43:22'),
(14, 'tambah', NULL, '2023-05-13 12:55:23', '2023-05-13 12:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `lembaga_desas`
--

CREATE TABLE `lembaga_desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lembaga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_kantor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dasar_hukum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profil` text COLLATE utf8mb4_unicode_ci,
  `visi_misi` text COLLATE utf8mb4_unicode_ci,
  `tugas_fungsi` text COLLATE utf8mb4_unicode_ci,
  `kepengurusan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lembaga_desas`
--

INSERT INTO `lembaga_desas` (`id`, `nama_lembaga`, `singkatan`, `logo`, `alamat_kantor`, `dasar_hukum`, `profil`, `visi_misi`, `tugas_fungsi`, `kepengurusan`, `created_at`, `updated_at`) VALUES
(2, 'Perserikatan Bangsa Bangsa', 'PBB', 'storage/public/lembaga/w8KPnUG8cWiN1ux4DbjJRH3VCBAR6fsonytgT6a1.png', 'KANTOR DESA SEMERAK', 'NOMOR        :    141.2/11721/2019', '<p><strong>asdasd</strong></p><figure class=\"image\"><img src=\"https://warta-main.dev/storage/cms/berita/desc/RwrD0ajGuGDZiKzZro5FtE91sMcY0rBjnFjB6lkL.jpg\"></figure><p>adasdaskdmljksfL</p><p>ASDASDASD</p>', '<p>ASDASD</p>', '<figure class=\"table\"><table><thead><tr><th>ASD</th><th>ASD</th><th>ASD</th><th>ASD</th><th>ASD</th><th>ASDASD</th><th>ASD</th><th>ASD</th></tr></thead><tbody><tr><th>ASD</th><td>SD</td><td>ASDA</td><td>ASD</td><td>AS</td><td>ASD</td><td>ASD</td><td>ASD</td></tr><tr><th>AS</th><td>DSAASD</td><td>ASD</td><td>ASDSAD</td><td>ASD</td><td>AD</td><td>ASD</td><td>ASD</td></tr></tbody></table></figure>', '<p>ASDADASDASDASDASD</p>', '2023-05-20 13:12:06', '2023-05-20 13:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_16_225046_create_pengaduan_table', 1),
(6, '2022_08_16_225113_create_tanggapan_table', 1),
(7, '2023_03_31_051339_create_pengajuan_surats_table', 1),
(8, '2023_04_29_120244_create_beritas_table', 2),
(9, '2023_04_29_120245_create_beritas_table', 3),
(10, '2023_04_29_120720_create_pegawais_table', 4),
(11, '2023_05_06_040426_create_jabatan_pegawais_table', 4),
(12, '2023_04_29_120721_create_pegawais_table', 5),
(13, '2023_04_29_120723_create_pegawais_table', 6),
(14, '2023_04_29_120733_create_pegawais_table', 7),
(15, '2023_04_29_120743_create_pegawais_table', 8),
(16, '2023_04_29_121743_create_pegawais_table', 9),
(17, '2023_04_29_121744_create_pegawais_table', 10),
(18, '2023_04_29_120801_create_lembaga_desas_table', 11),
(19, '2023_05_21_102738_create_pengumumen_table', 12),
(20, '2023_04_29_121230_create_galeris_table', 13),
(21, '2023_04_29_121313_create_apb_desas_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `jabatan_pegawai_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_kepala_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `nama`, `nip`, `jabatan_pegawai_id`, `is_kepala_jabatan`, `keterangan`, `foto`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Najah', '1111', 1, '1', NULL, 'public/pegawai/bnwULXimCXKa2Wq2aOxWh0i6ehCoHSFzj6wgMZUo.png', NULL, '2023-05-13 05:49:13', '2023-05-13 09:56:14'),
(2, 'Lukita Pangestu S.Ked', '123123', 5, '1', NULL, NULL, NULL, '2023-05-13 05:49:25', '2023-05-13 05:50:00'),
(3, 'Ana Rahayu Sri', '32434', NULL, '0', NULL, NULL, NULL, '2023-05-13 12:16:30', '2023-05-13 12:16:30'),
(4, 'Arta Nugroho', '644534', 8, '1', 'Pegawai Baru', 'public/pegawai/1A0uEYFZ0jekEF5iAVdNBYLj3fVhCZv9j2KmIBTb.png', NULL, '2023-05-13 12:47:42', '2023-05-13 12:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `masyarakat_id` bigint(20) UNSIGNED NOT NULL,
  `isi_laporan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lampiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','proses','selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_surats`
--

CREATE TABLE `pengajuan_surats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `masyarakat_id` bigint(20) UNSIGNED NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci,
  `jenis_surat` enum('Surat Keterangan','Surat Pindah Penduduk','Surat Undangan','Surat Kematian','Surat Kelahiran','Surat Tugas','Surat Perjalanan Dinas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `surat` json NOT NULL,
  `status` enum('Pending','Menunggu Persetujuan','Diproses','Selesai','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_surats`
--

INSERT INTO `pengajuan_surats` (`id`, `masyarakat_id`, `pesan`, `jenis_surat`, `surat`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Tolong admin/ petugas segera dibuatkan', 'Surat Keterangan', '{\"nik\": \"1212121212\", \"ttl\": \"Pati, 22 April 2000\", \"nama\": \"Rizki Darmawan\", \"no_kk\": \"2323232323\", \"alamat\": \"Pati Indonesia\", \"_method\": \"PUT\", \"keperluan\": \"Untuk memperpanjang KTP\", \"kode_desa\": \"12.22.33\", \"pekerjaan\": \"Ibu Rumah Tangga / Wiraswasta\", \"nomor_surat\": \"474.6 / 011 / V / 2023\", \"negara_agama\": \"WNI & Islam\", \"berlaku_mulai\": \"2023-04-18\", \"keterangan_surat\": \"-\"}', 'Selesai', '2023-04-17 16:34:35', '2023-04-17 16:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `pengumumen`
--

CREATE TABLE `pengumumen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_singkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_singkat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengumumen`
--

INSERT INTO `pengumumen` (`id`, `judul`, `judul_singkat`, `slug`, `gambar`, `deskripsi`, `deskripsi_singkat`, `author_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cara membuat model di laravel 10', 'Cara membuat model di laravel 10', 'cara-membuat-model-di-laravel-10', 'storage/cms/pengumuman/thumbnail/10BVjS2iGiytksl1bQiSReiEkLiih0PhqHwFkN8k.jpg', '<p>sdfasfawds</p>', 'sdfasfawds', 1, '2023-05-21 11:26:02', '2023-05-21 09:41:43', '2023-05-21 11:26:02'),
(2, 'coba', 'coba', 'coba', NULL, '<p>asdad<strong>asd</strong></p><p><strong>sadasd</strong></p><p><strong>asdsad</strong></p>', 'asdadasdsadasdasdsad', 1, '2023-05-21 11:17:41', '2023-05-21 11:17:38', '2023-05-21 11:17:41'),
(3, 'Anggaran pemasukan bulanan', 'Anggaran pemasukan bulanan', 'anggaran-pemasukan-bulanan', 'storage/public/pengumuman/thumbnail/KJguttjDXFWXmJfrXQKr4wQKEuqjBBlFpvmpDEXE.png', '<p>Anggaran bulan juni<br><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi nam voluptas unde obcaecati est, facilis voluptatibus hic impedit saepe delectus distinctio, numquam corrupti dignissimos quae reiciendis! Illum ipsum quia laboriosam tempore soluta cum deserunt, adipisci tenetur officia dolores, similique labore sed? Libero, assumenda. Eos, velit eius ut nihil non similique harum voluptates obcaecati placeat quam pariatur exercitationem magnam perferendis perspiciatis recusandae unde quos doloribus ipsa commodi vel? Illo, magnam beatae nemo reiciendis quas, sint accusamus ullam in consequuntur asperiores, voluptatum laborum blanditiis optio suscipit maiores. Facilis hic ab veritatis officiis id magni odio cupiditate natus nulla ex, minima recusandae accusamus. Deserunt molestiae tempore dolore et quasi excepturi nam? Ab porro nulla eius nisi molestias, reprehenderit sit, asperiores incidunt tempora, quia vel delectus repellendus adipisci dicta harum? Molestiae eos praesentium error earum dolore exercitationem nemo. Perferendis fugiat nihil, autem quos odio sequi harum optio? Suscipit hic asperiores veniam explicabo, at a, officia quasi laboriosam est consectetur ipsa in rerum ad esse, recusandae ab itaque officiis. Dolorum quam incidunt quas cupiditate a laudantium, tempore laboriosam ducimus veniam ab praesentium suscipit, nam iure nesciunt, ex consectetur facere eos? Ipsum obcaecati blanditiis reprehenderit hic rerum provident nihil accusantium dignissimos, deserunt amet quas quisquam vero.</p>', 'Anggaran bulan juniLorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi nam voluptas unde obcaecati est, facilis voluptatibus hic impedit saepe delectus distinctio, numquam corrupti digniss...', 1, NULL, '2023-05-26 23:25:25', '2023-05-27 10:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengaduan_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggapan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petugas_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','petugas','masyarakat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`, `telepon`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', '$2y$10$.fLluPyN3.8.GDkFuYsNUODVQ0Ecv.runEjEZYDsAFHNeHq5kZt36', 'Admin', '0411 9234 658', 'admin', '0J1OhhIPhsQuamsW23uN3edIVlOT5RaDRzRLyNA4nv1hi1jbvNW9LBRPe0Lw', '2023-04-17 16:11:40', '2023-04-17 16:11:40'),
(2, 'petugas', '$2y$10$DROaIwYJcWGXD.uUMp1I5OoztnxlxRMnut/QiAasNbRCkpU8akh5y', 'Viktor Ikhsan Samosir', '(+62) 866 2118 538', 'petugas', 'APGopWc8SRH2fPvWDyC41p4AbrzOM71dyYrumS9drqQK6ke37khnllv10lum', '2023-04-17 16:11:40', '2023-04-17 16:11:40'),
(3, 'masyarakat', '$2y$10$421sDKXHOxXl9vXPFeLEM..584fzZ2YwXNMu4R4De5EaxA8Vmsfj2', 'Ana Rahayu Sri', '(+62) 278 0734 968', 'masyarakat', 'iWra2uEwX0Rf0CLiZKLsVHx9PoWJrUBay6sK4rGcDWzCkXta90k0cSZVJKSt', '2023-04-17 16:11:40', '2023-04-17 16:18:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apb_desas`
--
ALTER TABLE `apb_desas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_slug_unique` (`slug`),
  ADD KEY `beritas_author_id_foreign` (`author_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan_pegawais`
--
ALTER TABLE `jabatan_pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lembaga_desas`
--
ALTER TABLE `lembaga_desas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawais_jabatan_pegawai_id_foreign` (`jabatan_pegawai_id`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengaduan_masyarakat_id_foreign` (`masyarakat_id`);

--
-- Indexes for table `pengajuan_surats`
--
ALTER TABLE `pengajuan_surats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajuan_surats_masyarakat_id_foreign` (`masyarakat_id`);

--
-- Indexes for table `pengumumen`
--
ALTER TABLE `pengumumen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pengumumen_slug_unique` (`slug`),
  ADD KEY `pengumumen_author_id_foreign` (`author_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tanggapan_pengaduan_id_foreign` (`pengaduan_id`),
  ADD KEY `tanggapan_petugas_id_foreign` (`petugas_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apb_desas`
--
ALTER TABLE `apb_desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jabatan_pegawais`
--
ALTER TABLE `jabatan_pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lembaga_desas`
--
ALTER TABLE `lembaga_desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_surats`
--
ALTER TABLE `pengajuan_surats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengumumen`
--
ALTER TABLE `pengumumen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beritas`
--
ALTER TABLE `beritas`
  ADD CONSTRAINT `beritas_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD CONSTRAINT `pegawais_jabatan_pegawai_id_foreign` FOREIGN KEY (`jabatan_pegawai_id`) REFERENCES `jabatan_pegawais` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_masyarakat_id_foreign` FOREIGN KEY (`masyarakat_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_surats`
--
ALTER TABLE `pengajuan_surats`
  ADD CONSTRAINT `pengajuan_surats_masyarakat_id_foreign` FOREIGN KEY (`masyarakat_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengumumen`
--
ALTER TABLE `pengumumen`
  ADD CONSTRAINT `pengumumen_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_pengaduan_id_foreign` FOREIGN KEY (`pengaduan_id`) REFERENCES `pengaduan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tanggapan_petugas_id_foreign` FOREIGN KEY (`petugas_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
wweb_desa_semerakweb_desa_semerakeb_desa_semerakweb_desa_semerakusers