-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: zakat
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_amil`
--

DROP TABLE IF EXISTS `t_amil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_amil` (
  `id_amil` int(11) NOT NULL AUTO_INCREMENT,
  `nama_amil` varchar(30) NOT NULL,
  `no_hp_amil` varchar(14) NOT NULL,
  `alamat_amil` varchar(50) NOT NULL,
  `id_mesjid` int(11) NOT NULL,
  PRIMARY KEY (`id_amil`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_amil`
--

LOCK TABLES `t_amil` WRITE;
/*!40000 ALTER TABLE `t_amil` DISABLE KEYS */;
INSERT INTO `t_amil` VALUES (1,'Hari','081323373885','Jl. Jenderal Ahmad Yani',2),(2,'Irfan','081313204828','Jl. Jenderal Ahmad Yani',3);
/*!40000 ALTER TABLE `t_amil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_donasi`
--

DROP TABLE IF EXISTS `t_donasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_donasi` (
  `id_donasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_donatur` varchar(50) NOT NULL,
  `no_hp_donatur` varchar(14) NOT NULL,
  `alamat_donatur` varchar(100) NOT NULL,
  `tgl_donasi` date NOT NULL,
  `total_donasi` int(11) NOT NULL,
  `bukti_donasi` varchar(250) NOT NULL,
  `tgl_validasi` date NOT NULL,
  `id_amil` int(11) NOT NULL,
  `status_validasi` varchar(1) NOT NULL,
  PRIMARY KEY (`id_donasi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_donasi`
--

LOCK TABLES `t_donasi` WRITE;
/*!40000 ALTER TABLE `t_donasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_donasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_infak`
--

DROP TABLE IF EXISTS `t_infak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_infak` (
  `id_infak` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pembayar` varchar(20) NOT NULL,
  `tgl_infak` date NOT NULL,
  `total_infak` int(11) NOT NULL,
  PRIMARY KEY (`id_infak`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_infak`
--

LOCK TABLES `t_infak` WRITE;
/*!40000 ALTER TABLE `t_infak` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_infak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_kritik_saran`
--

DROP TABLE IF EXISTS `t_kritik_saran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_kritik_saran` (
  `id_saran` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_saran` date NOT NULL,
  `nama_saran` varchar(50) NOT NULL,
  `subjek_saran` varchar(200) NOT NULL,
  `saran` varchar(250) NOT NULL,
  PRIMARY KEY (`id_saran`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_kritik_saran`
--

LOCK TABLES `t_kritik_saran` WRITE;
/*!40000 ALTER TABLE `t_kritik_saran` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_kritik_saran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_mesjid`
--

DROP TABLE IF EXISTS `t_mesjid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mesjid` (
  `id_mesjid` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mesjid` varchar(20) NOT NULL,
  `alamat_mesjid` varchar(50) NOT NULL,
  `RT` varchar(4) NOT NULL,
  `RW` varchar(4) NOT NULL,
  PRIMARY KEY (`id_mesjid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_mesjid`
--

LOCK TABLES `t_mesjid` WRITE;
/*!40000 ALTER TABLE `t_mesjid` DISABLE KEYS */;
INSERT INTO `t_mesjid` VALUES (2,'Masjid Al Mukarromah','Jl. Jenderal Ahmad Yani','003','005'),(3,'Masjid Nurul Huda','Jl. Karya Bakti','001','004');
/*!40000 ALTER TABLE `t_mesjid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pembayar`
--

DROP TABLE IF EXISTS `t_pembayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pembayar` (
  `id_pembayar` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pembayar` varchar(30) NOT NULL,
  `no_hp_pembayar` varchar(14) NOT NULL,
  `alamat_pembayar` varchar(50) NOT NULL,
  `id_mesjid` int(11) NOT NULL,
  PRIMARY KEY (`id_pembayar`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pembayar`
--

LOCK TABLES `t_pembayar` WRITE;
/*!40000 ALTER TABLE `t_pembayar` DISABLE KEYS */;
INSERT INTO `t_pembayar` VALUES (1,'Dudit',' 081398171221','Jl. Karya Bakti ',2),(2,'Vera',' 087760808330','Jl. Karya Bakti ',3),(3,'Helmi','081398562309','Jl. Karya Bakti ',2),(4,'Kidi','082124540504','Jl. Karya Bakti ',3),(5,'Irna','082391595027','Jl. Karya Bakti ',2);
/*!40000 ALTER TABLE `t_pembayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pembayaran`
--

DROP TABLE IF EXISTS `t_pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_zakat` int(11) NOT NULL,
  `id_amil` int(11) NOT NULL,
  `id_pembayar` int(11) NOT NULL,
  `tgl_penyerahan` date NOT NULL,
  `pembayaran_beras` double NOT NULL,
  `pembayaran_uang` int(11) NOT NULL,
  `jumlah_tanggungan` int(2) NOT NULL,
  `total_pembayaran` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pembayaran`
--

LOCK TABLES `t_pembayaran` WRITE;
/*!40000 ALTER TABLE `t_pembayaran` DISABLE KEYS */;
INSERT INTO `t_pembayaran` VALUES (1,5,2,1,'2023-04-18',2.7,0,3,'8.1'),(2,6,2,2,'2023-04-18',0,7000,4,'28000'),(3,5,1,3,'2023-04-18',2.5,0,5,'12.5'),(4,6,2,4,'2023-04-19',0,8333,6,'50000'),(5,5,2,5,'2023-04-19',0,15000,2,'30000');
/*!40000 ALTER TABLE `t_pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_penerima`
--

DROP TABLE IF EXISTS `t_penerima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_penerima` (
  `id_penerima` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penerima` varchar(30) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `alamat_penerima` varchar(30) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id_penerima`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_penerima`
--

LOCK TABLES `t_penerima` WRITE;
/*!40000 ALTER TABLE `t_penerima` DISABLE KEYS */;
INSERT INTO `t_penerima` VALUES (1,'Ita','Miskin','Jl. Jenderal Ahmad Yani','1'),(2,'Imih','Miskin','Jl. Jenderal Ahmad Yani','1'),(3,'Mamat','Miskin','Jl. Karya Bakti','1'),(4,'Dwi','Miskin','Jl. Jenderal Ahmad Yani','1'),(5,'Dedi','Miskin','Jl. Karya Bakti','1');
/*!40000 ALTER TABLE `t_penerima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_penerimaan`
--

DROP TABLE IF EXISTS `t_penerimaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_penerimaan` (
  `id_penerimaan` int(11) NOT NULL AUTO_INCREMENT,
  `id_amil` int(11) NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `tgl_penerimaan` date NOT NULL,
  `jumlah_penerimaan_uang` int(11) NOT NULL,
  `jumlah_penerimaan_beras` double NOT NULL,
  PRIMARY KEY (`id_penerimaan`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_penerimaan`
--

LOCK TABLES `t_penerimaan` WRITE;
/*!40000 ALTER TABLE `t_penerimaan` DISABLE KEYS */;
INSERT INTO `t_penerimaan` VALUES (1,1,1,'2023-04-20',40000,0),(2,1,2,'2023-04-20',40000,0),(3,1,3,'2023-04-20',0,4),(4,1,4,'2023-04-20',40000,0),(5,1,5,'2023-04-20',0,4),(6,1,6,'2023-04-20',0,4),(7,1,1,'2023-04-20',35000,0),(8,1,2,'2023-04-20',0,3),(9,1,3,'2023-04-20',0,3),(10,1,4,'2023-04-20',35000,0),(11,1,6,'2023-04-20',35000,0),(12,2,1,'2023-04-20',21600,4.12),(13,2,2,'2023-04-20',21600,4.12),(14,2,3,'2023-04-20',21600,4.12),(15,2,5,'2023-04-20',21600,4.12),(16,2,6,'2023-04-20',21600,4.12),(17,2,1,'2023-04-20',18000,3.4333333333333),(18,2,2,'2023-04-20',18000,3.4333333333333),(19,2,3,'2023-04-20',18000,3.4333333333333),(20,2,4,'2023-04-20',18000,3.4333333333333),(21,2,5,'2023-04-20',18000,3.4333333333333),(22,2,6,'2023-04-20',18000,3.4333333333333);
/*!40000 ALTER TABLE `t_penerimaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `level` int(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES ('admin','yorissa123','aktif',1),('Hari','Hari123','aktif',2),('Irfan','Irfan123','aktif',2);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_zakat`
--

DROP TABLE IF EXISTS `t_zakat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_zakat` (
  `id_zakat` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_zakat` varchar(30) NOT NULL,
  PRIMARY KEY (`id_zakat`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_zakat`
--

LOCK TABLES `t_zakat` WRITE;
/*!40000 ALTER TABLE `t_zakat` DISABLE KEYS */;
INSERT INTO `t_zakat` VALUES (5,'Zakat Fitrah'),(6,'Zakat Mal'),(11,'Zakat Fidiah');
/*!40000 ALTER TABLE `t_zakat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-26 17:44:58
