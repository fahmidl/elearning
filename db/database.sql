-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: learning
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `euser`
--

DROP TABLE IF EXISTS `euser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `euser` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int NOT NULL,
  `is_active` int NOT NULL,
  `date_created` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `euser`
--

LOCK TABLES `euser` WRITE;
/*!40000 ALTER TABLE `euser` DISABLE KEYS */;
INSERT INTO `euser` VALUES (10,'Fulqi Yosica','logiysc@gmail.com','fulqi.png','$2y$10$BErMAZcMqlRgPV2c.v1GVuHAUIYPBwCSCEk62VppghQ2udJtdb6ai',1,1,'2023-03-18 19:56:46','2023-03-17 19:34:11'),(25,'Dosen','mangujang@gmail.com','default.png','$2y$10$eSzrboGGFdgTDYl2D1QqLePvwvm0ArDNUVX8QOieW3qKB/oRggpyq',3,1,'2023-03-18 19:20:33','2023-03-18 12:20:33'),(38,'Bhismar Muhammad D Y','bhismar.mdy@gmail.com','default.png','$2y$10$e1U0wH1/WUJp3EmTPhUSyuayylvU9kGG5l3C2N2ydTZq0F/BVZnwS',2,0,'2023-03-18 23:41:04','2023-03-18 16:41:04'),(40,'Ikhza','ikhzabeatles11@gmail.com','me_ikhza.jpg','$2y$10$I6/FerovoCUIpdwLrdg3u.7cibdVFbU5T9FFRtRvIY/Cb3q3LgYSi',2,1,'2023-03-18 07:16:28','2023-03-18 00:16:28');
/*!40000 ALTER TABLE `euser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kelas` (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `slug_kelas` varchar(200) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `urutan` int DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'cloud-computing-if18s','Cloud Computing IF18S',1,'2023-03-03 12:31:59'),(2,'pmo-2-if18s','PMO 2 IF18S',2,'2023-03-10 07:40:02'),(4,'teori-graf-if18s','Teori Graf IF18S ',3,'2023-03-10 03:28:16'),(5,'pcd-if18s','PCD IF18S',4,'2023-03-01 07:39:52'),(6,'mppl-if18s','MPPL IF18S',5,'2023-03-05 03:29:26'),(7,'kij-if18s','KIJ IF18S',6,'2023-03-04 03:34:47'),(8,'bahasa-indonesia-if18s','Bahasa Indonesia IF18S',7,'2023-03-08 12:33:11'),(9,'basis-data-if18s','Basis Data IF18S',8,'2023-03-09 08:54:33'),(10,'mang-ujang','Mang Ujang',9,'2023-03-01 08:56:00');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komen`
--

DROP TABLE IF EXISTS `komen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `komen` (
  `id_komen` int NOT NULL AUTO_INCREMENT,
  `slug_materi` varchar(100) NOT NULL,
  `id_user` int NOT NULL,
  `id_materi` int NOT NULL,
  `id_kelas` int NOT NULL,
  `isi_komen` text NOT NULL,
  `file_baru` varchar(240) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  PRIMARY KEY (`id_komen`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komen`
--

LOCK TABLES `komen` WRITE;
/*!40000 ALTER TABLE `komen` DISABLE KEYS */;
INSERT INTO `komen` VALUES (86,'pertemuan-ke-5-pmo-2-maps-if18s',10,7,2,'mantap','','2021-08-21 10:37:17'),(87,'pertemuan-ke-5-pmo-2-maps-if18s',40,7,2,'okee','','2021-08-21 10:37:51'),(90,'mantapppp',40,17,1,'hello world','','2023-03-18 23:54:00');
/*!40000 ALTER TABLE `komen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materi`
--

DROP TABLE IF EXISTS `materi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materi` (
  `id_materi` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_kelas` int NOT NULL,
  `slug_materi` varchar(200) NOT NULL,
  `judul_materi` varchar(200) NOT NULL,
  `isi_materi` text NOT NULL,
  `file_materi` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materi`
--

LOCK TABLES `materi` WRITE;
/*!40000 ALTER TABLE `materi` DISABLE KEYS */;
INSERT INTO `materi` VALUES (3,10,7,'pertemuan-ke-3-keamanan-informasi-dan-jaringan','Pertemuan ke 3 Keamanan Informasi dan Jaringan','<p>Jelaskan&nbsp;pengertian dari sistem operasi open source dan close source?</p>\r\n','','2023-03-03 10:33:29','2023-03-19 00:03:13'),(5,10,6,'pertemuan-ke-2-sdlc','Pertemuan ke 2 SDLC','<p>Silahkan dipelajari materi tentang SDLC&nbsp;</p>\r\n\r\n<p>Absen : Nama - NIM</p>\r\n','1607506186-Pertemuan_1_(System_Development_Life_Cycle)_(1).pptx','2023-03-03 10:38:44','2023-03-19 00:08:27'),(6,10,5,'pcd-literature-review','PCD Literature Review','<p>Pengertian Literature Review :</p>\r\n\r\n<p>Merupakan analisa berupa kritik (membangun maupun menjatuhkan) dari penelitian yang sedang dilakukan terhadap topik khusus atau pertanyaan terhadap suatu bagian dari keilmuan.</p>\r\n\r\n<p>Bagaimana Melakukan Teknik Review Literature?</p>\r\n\r\n<p>1. Cari kesamaannya (compare)<br />\r\n2. Cari ketidaksamaannya (contrast)<br />\r\n3. Berikan pandangan (criticize)<br />\r\n4. Bandingkan (synthesize)<br />\r\n5. Ringkasan (summarize)</p>\r\n\r\n<p>Silakan temen&quot; coba lakukan Literature Review dengan sub topik :&nbsp;</p>\r\n\r\n<p>&bull; Image Enhacement&nbsp;<br />\r\n&bull; Image Restoration&nbsp;<br />\r\n&bull; Image Compression&nbsp;<br />\r\n&bull; Image Segementation&nbsp;<br />\r\n&bull; Image Analysis&nbsp;<br />\r\n&bull; Image Recontruction</p>\r\n\r\n<p>Silakan pilih satu topik, dan cari minimal 5 jurnal dengan topik itu ,dikerjakan secara kelompok (sesuai daftar nama kelompok yang kemarin)</p>\r\n','','2023-03-03 10:41:10','2023-03-19 00:03:30'),(7,10,2,'pertemuan-ke-5-pmo-2-maps-if18s','Pertemuan ke 5 PMO 2 MAPS IF18S ','<p>Assalamualaikum, pertemuan 5 kita pakai metode penugasan<br />\r\nCarilah materi yang berhubungan dengan Maps, GPS, Location based Services yang meliputi :<br />\r\n-&nbsp;&nbsp; &nbsp;Pemahaman Maps, GPS dan based location<br />\r\n-&nbsp;&nbsp; &nbsp;Dasar pembuatan Maps dan based location<br />\r\n-&nbsp;&nbsp; &nbsp;Menentukan sebuah lokasi yang tersedia<br />\r\n-&nbsp;&nbsp; &nbsp;Menemukan lokasi yang ditentukan<br />\r\n-&nbsp;&nbsp; &nbsp;Membuat rute<br />\r\n-&nbsp;&nbsp; &nbsp;Mencari rute tercepat<br />\r\n-&nbsp;&nbsp; &nbsp;Menemukan lokasi dengan kriteria tertentu<br />\r\n-&nbsp;&nbsp; &nbsp;Mengetahui lokasi saat ini<br />\r\n-&nbsp;&nbsp; &nbsp;Memperharui lokasi terbaru</p>\r\n\r\n<p>Kirim hasilnya ke&nbsp;<a href=\"http://email nandang007@gmail.com \"> email nandang007@gmail.com&nbsp;</a><br />\r\ndengan subject : Tugas PMO2 Pertemuan 5 Kelas Nama NIM<br />\r\nwaktu pengiriman maksimal 7 hari dari sekarang</p>\r\n\r\n<p>Catatan : jika subject tidak sesuai dengan yang ditentukan dianggap tidak mengerjakan</p>\r\n\r\n<p>Presensi Teori Pertemuan 5&nbsp;<br />\r\nNIM - Nama</p>\r\n','','2023-03-03 14:32:18','2023-03-19 00:03:34'),(9,10,4,'uts-teori-graf','UTS Teori Graf','<p>Selamat Pagi semuanya. Berikut saya sampaikan soal UTS Untuk dikerjakan. Batas Akhir Pengumpulan pada hari Kamis, 19 November Jam 16.00 WIB. Jawaban di Upload dengan Format: UTS_TG_Kelas_NIM_Nama Mahasiswa. Silahkan lakukan upload pada akun student dan pada link pengumpulan UTS yang ada pada deskripsi group</p>\r\n','1607499016-SOAL_UTS_TEORI_GRAF_IF_18_S_(1).pdf','2023-03-03 15:46:19','2023-03-19 00:03:50'),(12,10,8,'pertemuan-7-menulis-paragraf','Pertemuan 7 Menulis Paragraf','<p>MENULIS PARAGRAF Simak video materi perkuliahan ini dengan baik. Materi akan kita diskusikan saat pertemuan dan tugas menulis esai dan cerita untuk di utas silahkan dikoreksi berdasarkan pada penjelasan materi paragraf ini.</p>\r\n\r\n<p><a href=\"https://youtu.be/rgwTffA7Fdc\">https://youtu.be/rgwTffA7Fdc</a></p>\r\n','','2023-03-03 20:31:09','2023-03-19 00:04:00'),(17,10,1,'implementasi-aws','Implementasi AWS','<p>AWS (Amazon Web Services) is a comprehensive, evolving <a href=\"https://www.techtarget.com/searchcloudcomputing/definition/cloud-computing\">cloud computing</a> platform provided by Amazon that includes a mixture of infrastructure-as-a-service (<a href=\"https://www.techtarget.com/searchcloudcomputing/definition/Infrastructure-as-a-Service-IaaS\">IaaS</a>), platform-as-a-service (<a href=\"https://www.techtarget.com/searchcloudcomputing/definition/Platform-as-a-Service-PaaS\">PaaS</a>) and packaged-software-as-a-service (<a href=\"https://www.techtarget.com/searchcloudcomputing/definition/Software-as-a-Service\">SaaS</a>) offerings. AWS services can offer an organization tools such as compute power, database storage and content delivery services.</p>\r\n','','2023-03-03 08:09:36','2023-03-19 00:08:03');
/*!40000 ALTER TABLE `materi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Administrator'),(2,'Mahasiswa'),(3,'Dosen');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_token`
--

DROP TABLE IF EXISTS `user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_token`
--

LOCK TABLES `user_token` WRITE;
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
INSERT INTO `user_token` VALUES (9,'bhismar.mdy@gmail.com','Km/Teg7OOFpUP7abRCt0KZWja4f5+Kp91JY8q9Jv5Mg=',1607359264);
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02  7:15:21
