-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2024 at 07:08 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plantanist`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `id` int NOT NULL,
  `user_id` varchar(35) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `plant` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `accuracy` float NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` text COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnoses`
--

INSERT INTO `diagnoses` (`id`, `user_id`, `name`, `plant`, `accuracy`, `description`, `image`, `create_at`) VALUES
(1, 'DWc7HkN6tkNPhZjTQFCiDKQXOTF2', 'late blight', 'Potato', 0.86, 'Coba dulu', 'upload.jpg', '2024-12-04 17:55:27'),
(2, 'DWc7HkN6tkNPhZjTQFCiDKQXOTF2', 'Late Blight', 'Potato', 0.86, 'Late blight, disebabkan oleh jamur *Phytophthora infestans*, merupakan penyakit yang sangat merusak tanaman kentang ( *Solanum tuberosum*).  Penyakit ini menyerang semua bagian tanaman di atas tanah, termasuk daun, batang, bunga, dan umbi,  namun kerusakan paling signifikan terjadi pada daun dan umbi.  \n\n**Gejala pada daun:**  Awalnya, bercak-bercak hijau gelap, berukuran kecil dan tidak beraturan muncul pada daun.  Bercak ini kemudian membesar, menjadi cokelat kehitaman dan lembek, seringkali dengan tepi yang tidak beraturan dan warna keunguan di sekitarnya.  Pada kondisi lembap, lapisan putih keabu-abuan (spora jamur) terlihat pada permukaan bawah daun, terutama di pagi hari.  Infestasi yang parah menyebabkan daun menjadi layu dan mati dalam waktu singkat,  menghasilkan efek \"pembusukan daun\" yang khas.\n\n**Gejala pada umbi:** Infeksi umbi umumnya terjadi melalui tanah yang terkontaminasi spora.  Umbi yang terinfeksi menunjukkan bercak cokelat gelap, tenggelam, dan agak keras di permukaan.  Jaringan di bawah bercak menjadi lunak, cokelat kehitaman, dan berbau busuk.  Infeksi ini dapat terjadi baik sebelum panen maupun setelah panen selama penyimpanan.  \n\n**Penyebaran:**  *Phytophthora infestans* menyebar melalui spora yang terbawa angin, air, dan peralatan pertanian.  Penyebarannya sangat efektif dalam kondisi lembap dan suhu dingin (optimal sekitar 10-20°C),  dengan kelembaban tinggi (>90%) yang sangat mendukung perkembangan penyakit.  \n\n**Pengendalian:**  Pengendalian late blight membutuhkan pendekatan terpadu yang meliputi:\n\n* **Penggunaan varietas tahan:**  Menanam varietas kentang yang tahan atau resisten terhadap *Phytophthora infestans* merupakan strategi yang efektif.\n* **Sanitasi:**  Membersihkan sisa-sisa tanaman setelah panen untuk mengurangi inokulum penyakit.\n* **Rotasi tanaman:**  Mengganti tanaman kentang dengan tanaman lain yang tidak rentan untuk memutus siklus penyakit.\n* **Penggunaan fungisida:**  Aplikasi fungisida yang tepat waktu dan efektif, seperti metalaksil dan mankozeb, dapat membantu mengendalikan penyakit.  Penting untuk mengikuti petunjuk penggunaan dan menerapkan strategi pengendalian hama terpadu (IPM) untuk meminimalkan resistensi fungisida.\n* **Praktek budidaya yang baik:**  Menjaga jarak tanam yang tepat,  drainase yang baik,  dan menghindari penyiraman overhead untuk mengurangi kelembaban daun.\n\nKegagalan dalam mengendalikan penyakit late blight dapat mengakibatkan kerugian hasil panen yang signifikan, bahkan hingga kegagalan panen total, yang mengakibatkan dampak ekonomi yang besar bagi petani kentang.  Deteksi dini dan pengendalian yang cepat sangat penting untuk meminimalkan kerusakan.\n', 'https://lh3.googleusercontent.com/a/ACg8ocJgtWOc9ZZjnYcKrM-XGPmIacOX9XHlX6nsZRFCjiShosGoS-U8=s96-c', '2024-12-05 01:59:52'),
(3, 'DWc7HkN6tkNPhZjTQFCiDKQXOTF2', 'Late Blight', 'Potato', 0.86, 'Late blight, disebabkan oleh jamur *Phytophthora infestans*, merupakan penyakit yang sangat merusak tanaman kentang (Solanum tuberosum) dan tanaman *Solanaceae* lainnya.  Penyakit ini dapat menyebabkan kerugian panen yang signifikan dan bahkan kelaparan, seperti yang terjadi selama Kelaparan Kentang Irlandia di abad ke-19.\n\n**Gejala:**\n\nLate blight muncul sebagai bercak-bercak coklat gelap, berair, dan tidak beraturan pada daun. Bercak ini dapat membesar dengan cepat, menyebabkan daun menjadi layu dan mati dalam beberapa hari. Pada kondisi lembap, lapisan putih keabu-abuan (spora jamur) dapat terlihat di bagian bawah daun.  Gejala pada umbi kentang meliputi bercak-bercak coklat gelap, tenggelam, dan bertekstur keras di bawah kulit.  Jaringan umbi yang terinfeksi biasanya keras dan busuk.  Gejala awal pada umbi seringkali tidak terlihat dari luar.\n\n**Siklus Penyakit:**\n\n* **Inokulum:** Jamur *P. infestans* dapat bertahan hidup dalam sisa-sisa tanaman yang terinfeksi di tanah atau pada umbi kentang yang terinfeksi.  Oospora (struktur reproduksi seksual) mungkin berperan dalam pertahanan hidup jamur pada beberapa kondisi, meskipun perannya dalam penyebaran penyakit masih diperdebatkan.  Lebih umum, jamur bertahan hidup sebagai miselium dalam umbi kentang terinfeksi.\n* **Infeksi:**  Spora (sporangia) jamur dilepaskan ke udara dalam kondisi lembap dan tersebar melalui angin dan air percikan.  Sporangia ini berkecambah dan menginfeksi tanaman melalui stomata daun atau luka.  Infeksi terjadi optimal pada suhu 10-20°C dan kelembapan tinggi (di atas 90% selama beberapa jam).\n* **Penyebaran:**  Setelah menginfeksi, jamur berkembang biak dengan cepat, menghasilkan spora baru yang menyebarkan penyakit ke bagian tanaman lainnya dan tanaman sekitarnya.\n\n**Pengendalian:**\n\nPengendalian late blight membutuhkan pendekatan terpadu yang mencakup:\n\n* **Penggunaan varietas tahan:** Menanam varietas kentang yang tahan atau resisten terhadap *P. infestans* merupakan strategi pengendalian yang paling efektif.  Namun, patogen ini terus berevolusi, sehingga resistensi varietas perlu terus dipantau.\n* **Praktik budidaya yang baik:**  Rotasi tanaman, sanitasi lahan (membersihkan sisa-sisa tanaman terinfeksi), penjarangan tanaman untuk meningkatkan sirkulasi udara, dan irigasi yang tepat dapat mengurangi kelembapan dan resiko infeksi.\n* **Penggunaan fungisida:** Fungisida dapat digunakan untuk mengendalikan penyakit, tetapi penggunaan yang berlebihan dapat menyebabkan resistensi jamur.  Penggunaan fungisida harus dilakukan sesuai rekomendasi dan dengan pertimbangan lingkungan.\n* **Pemantauan:** Pemantauan secara teratur terhadap tanaman untuk mendeteksi gejala awal sangat penting untuk intervensi dini dan pencegahan penyebaran penyakit.\n\nPerlu diingat bahwa tingkat akurasi 0.86 menunjukkan bahwa deskripsi ini mungkin tidak mencakup semua aspek penyakit late blight dan beberapa detail mungkin memerlukan klarifikasi lebih lanjut berdasarkan konteks spesifik.  Informasi lebih detail dapat diperoleh dari sumber literatur ilmiah yang terpercaya.\n', 'https://lh3.googleusercontent.com/a/ACg8ocJgtWOc9ZZjnYcKrM-XGPmIacOX9XHlX6nsZRFCjiShosGoS-U8=s96-c', '2024-12-05 02:01:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnoses`
--
ALTER TABLE `diagnoses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
