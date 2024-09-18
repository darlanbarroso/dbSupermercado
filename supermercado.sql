-- MySQL dump 10.13  Distrib 8.3.0, for macos13.6 (arm64)
--
-- Host: localhost    Database: supermercado
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `Caixa`
--

DROP TABLE IF EXISTS `Caixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Caixa` (
  `idCaixa` int NOT NULL AUTO_INCREMENT,
  `idVenda` int DEFAULT NULL,
  `idProduto` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `quantidadeVendida` int NOT NULL,
  `dataVenda` datetime NOT NULL,
  PRIMARY KEY (`idCaixa`),
  KEY `idCliente` (`idCliente`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `caixa_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`),
  CONSTRAINT `caixa_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `Produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Caixa`
--

LOCK TABLES `Caixa` WRITE;
/*!40000 ALTER TABLE `Caixa` DISABLE KEYS */;
INSERT INTO `Caixa` VALUES (1,NULL,1,1,7,'2024-08-20 20:48:18'),(2,NULL,1,1,5,'2024-09-11 20:48:18'),(3,NULL,1,3,1,'2024-09-10 20:48:18'),(4,NULL,2,2,6,'2024-09-08 20:48:18'),(5,NULL,5,1,9,'2024-08-26 20:48:18'),(6,NULL,5,5,2,'2024-09-13 20:48:18'),(7,NULL,5,7,7,'2024-09-06 20:48:18'),(8,NULL,7,5,6,'2024-09-10 20:48:18'),(9,NULL,7,8,2,'2024-08-18 20:48:18'),(10,NULL,4,2,4,'2024-09-16 20:48:18'),(11,NULL,6,8,2,'2024-09-01 20:51:24'),(12,NULL,1,3,2,'2024-09-09 20:51:24'),(13,NULL,7,2,10,'2024-09-09 20:51:24'),(14,NULL,1,11,10,'2024-08-31 20:51:24'),(15,NULL,6,3,2,'2024-09-09 20:51:24'),(16,NULL,4,16,8,'2024-09-10 20:51:24'),(17,NULL,17,10,2,'2024-09-01 20:51:24'),(18,NULL,13,9,4,'2024-08-24 20:51:24'),(19,NULL,13,15,1,'2024-09-16 20:51:24'),(20,NULL,3,1,6,'2024-09-05 20:51:24'),(21,3320,11,6,1,'2024-09-09 21:08:55'),(22,5444,11,9,8,'2024-09-01 21:08:55'),(23,9948,10,1,3,'2024-09-10 21:08:55'),(24,1873,20,20,2,'2024-08-25 21:08:55'),(25,4474,22,22,1,'2024-09-01 21:08:55'),(26,7650,16,19,9,'2024-08-18 21:08:55'),(27,3306,11,9,5,'2024-09-09 21:08:55'),(28,8173,12,21,9,'2024-08-18 21:08:55'),(29,8216,16,26,3,'2024-09-09 21:08:55'),(30,7316,28,1,9,'2024-08-20 21:08:55'),(31,1351,7,1,6,'2024-09-12 21:09:56'),(32,7533,15,6,7,'2024-08-26 21:09:56'),(33,8177,20,8,6,'2024-09-01 21:09:56'),(34,7996,24,8,6,'2024-08-25 21:09:56'),(35,2244,34,4,6,'2024-08-30 21:09:56'),(36,3419,15,16,7,'2024-08-20 21:09:56'),(37,6416,23,1,8,'2024-09-15 21:09:56'),(38,2442,10,32,7,'2024-08-24 21:09:56'),(39,1438,25,16,7,'2024-08-27 21:09:56'),(40,4623,10,2,6,'2024-08-28 21:09:56'),(41,1,11,5,9,'2024-09-13 21:12:31'),(42,2,8,2,7,'2024-09-11 21:12:31'),(43,3,23,18,4,'2024-08-21 21:12:31'),(44,4,27,5,5,'2024-08-25 21:12:31'),(45,5,27,4,6,'2024-09-11 21:12:31'),(46,6,37,42,4,'2024-08-28 21:12:31'),(47,7,37,36,5,'2024-08-30 21:12:31'),(48,8,33,37,8,'2024-09-02 21:12:31'),(49,9,44,14,1,'2024-09-07 21:12:31'),(50,10,50,20,10,'2024-09-09 21:12:31');
/*!40000 ALTER TABLE `Caixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `contato` varchar(100) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `quantidadeComprada` int NOT NULL,
  `dataCompra` datetime NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'BdaMcpLObN','2005190665','pasYqJNZGeKvSPQlLxhY',7,'2024-09-06 20:48:18'),(2,'cIAvtMXKFz','2736318669','vvFTEZhZdjyQGapSDjlG',9,'2024-08-20 20:48:18'),(3,'BRONGkqvEJ','4592420075','bLNwMjWQUnyPIZRrgDwC',6,'2024-08-22 20:48:18'),(4,'ROnkBhKNMn','4365812627','UiBMrEKctyigDGSIHUUn',1,'2024-09-14 20:48:18'),(5,'HbKojoxoeB','2406602627','pdvWPCjHENpNxHiIEUym',1,'2024-09-16 20:48:18'),(6,'ChigvUGLci','2406907399','icGkiexUcpCZFBFcwWQG',6,'2024-09-02 20:48:18'),(7,'cxMBacIvWU','2416337595','OtPeLjsXdrIePOAqfevg',4,'2024-09-02 20:48:18'),(8,'sMDkBkWkfX','7783111018','qqYQqdUPGvbTmSHeUvZc',3,'2024-09-15 20:48:18'),(9,'RBAfxrHYnu','9506464422','rTEJGirBPvALwjKfkWGt',2,'2024-08-28 20:48:18'),(10,'jQvMDyWCXD','2271465092','hmtnfNwhoTpCVDqThqjP',9,'2024-08-19 20:48:18'),(11,'ESajIKwUzB','7392420012','sfcyOjGOhmBVcnqdUori',4,'2024-08-24 20:51:24'),(12,'WOIytdLeGg','3808334799','WyaNDOKNTXTqyMQVcGCN',3,'2024-08-22 20:51:24'),(13,'rNppBiOYxq','9774505133','tgvmsEtsqbroyABCVMZn',7,'2024-08-25 20:51:24'),(14,'WiUcXsoyHG','3228055608','ivMiDxkbapslmSHNEaxj',3,'2024-09-10 20:51:24'),(15,'HAMiDsLptG','3764799533','DeOqLIBmEXPZzyDXecFO',6,'2024-08-29 20:51:24'),(16,'jaqwrhwQgZ','7778207969','QaPBYLmksyxvsZfybcPS',10,'2024-08-25 20:51:24'),(17,'BlCfnLmuNE','2777015643','tWDDjGLcKsehFAaqZAAO',7,'2024-08-30 20:51:24'),(18,'KKrDXWSSKo','1330191072','tjrrosihdPLHHghzDzif',10,'2024-09-16 20:51:24'),(19,'MPDOuAmiwD','5709571952','DciUrNPFIMvPawdIMCVh',10,'2024-08-24 20:51:24'),(20,'SGSdqRGruu','7041309932','kzTzOaCqACnAYYlaTSIB',2,'2024-09-05 20:51:24'),(21,'YQQClFyqAR','4719644146','xexZFLUFcmORgLPJxslR',7,'2024-08-28 21:08:55'),(22,'QmqJEnilNl','2079178920','mKrsIreOSnLuTpZzwsGK',5,'2024-08-31 21:08:55'),(23,'sfNrckecVx','8096751290','gIgsXjwtcgrCqmEDtwvx',2,'2024-09-01 21:08:55'),(24,'HNyPsriZag','4160515536','vYlLSvJkdlgKLrlwLJyU',9,'2024-09-13 21:08:55'),(25,'iAFMdwKSPK','2961529110','XWsNMsdtBacaTYHtBZjb',9,'2024-08-24 21:08:55'),(26,'GhFktuylgc','9940155894','RJgdnHxFqzCdaxblheWy',3,'2024-09-08 21:08:55'),(27,'rjnHHBwUDj','1815191133','FvgqyMhOjHSujxdZRqnc',1,'2024-08-20 21:08:55'),(28,'BvGrxCekpA','3368426745','xlAkCXrhKLgikrEdfoHh',2,'2024-08-26 21:08:55'),(29,'SaZgjmkKky','2125380090','oACrQbFrbRWoBzixrJxA',3,'2024-09-07 21:08:55'),(30,'GLCdOkizJv','0987500886','hNhJXAXHfcopZAUqlZmA',3,'2024-09-04 21:08:55'),(31,'AGnNXtzlJA','6101157334','mVqYWwXQaPedXpFITWLk',6,'2024-09-03 21:09:56'),(32,'EewLTfVhYA','6952781189','tFdWUPoqUuPTrwlXenOo',9,'2024-08-29 21:09:56'),(33,'BzbQoXXqkZ','4740089150','qfRBiJhDaIDwanEHOlJw',7,'2024-09-09 21:09:56'),(34,'sYrJWkBFrI','3517424126','brUTwMZLSLiiBKnibQqq',4,'2024-09-01 21:09:56'),(35,'BFsyRiBKQh','0647471395','hVuDOmgjmsdxkPJWKDyA',5,'2024-09-03 21:09:56'),(36,'KXcCnXZcBS','2202779258','CfdTsKUzkDVbZOpbfJBG',5,'2024-08-29 21:09:56'),(37,'ighhHUbiHU','3819016976','EKKLDmrONuaBrUqCcKeV',6,'2024-09-01 21:09:56'),(38,'yVGiGHVWzt','7653724845','XgwJQGoOEvCmJCmdRvUl',5,'2024-08-23 21:09:56'),(39,'qLbJAAeRJh','0698399937','HdGkpNgTfGupQEaMvktV',9,'2024-09-14 21:09:56'),(40,'PckQJRGYVN','3258906943','sFRuLVzUatvhUjKGAzEl',7,'2024-08-29 21:09:56'),(41,'aRnoVGvRZh','7789147739','GNJWdgWaxtHxzUOmWmrB',4,'2024-09-15 21:12:31'),(42,'RNDUzyyXpO','6165829834','nEhckrJsmrbboJdNTlKU',4,'2024-08-30 21:12:31'),(43,'YXbNiKoYXB','3347002902','dINoWctdWesDhOFOqadL',2,'2024-09-04 21:12:31'),(44,'lHpqSCrzqH','7685440377','YQnAmovQbRLxyQVSvOit',4,'2024-09-15 21:12:31'),(45,'xpxoGpfdnM','9127450494','ktaSFmdxAQObpDMJBEJm',4,'2024-09-15 21:12:31'),(46,'ogAVsOiPPQ','3852638889','BzrASrmLffHplgCpIBVb',1,'2024-09-11 21:12:31'),(47,'IMNwYvhMUX','7073115805','fzXRURIlEyDzxIxWgfnR',5,'2024-09-12 21:12:31'),(48,'qPqFycQAUy','3088846327','eBwMrTQoNyQMmWklUOAh',7,'2024-09-15 21:12:31'),(49,'qDvEsmnbNu','2386416929','rRSEJgQSWDyERHwHmzQB',3,'2024-09-04 21:12:31'),(50,'SEoyDcinAD','8813542151','uDOaMoXnaoUSfibQmJZt',10,'2024-09-01 21:12:31');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Deposito`
--

DROP TABLE IF EXISTS `Deposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Deposito` (
  `idDeposito` int NOT NULL AUTO_INCREMENT,
  `idProduto` int DEFAULT NULL,
  `quantidadeEmEstoque` int NOT NULL,
  `dataRecebimento` datetime NOT NULL,
  PRIMARY KEY (`idDeposito`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `deposito_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `Produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Deposito`
--

LOCK TABLES `Deposito` WRITE;
/*!40000 ALTER TABLE `Deposito` DISABLE KEYS */;
INSERT INTO `Deposito` VALUES (1,1,75,'2024-07-28 20:48:18'),(2,1,86,'2024-09-10 20:48:18'),(3,3,95,'2024-08-14 20:48:18'),(4,3,72,'2024-08-06 20:48:18'),(5,5,26,'2024-08-17 20:48:18'),(6,4,71,'2024-07-23 20:48:18'),(7,1,63,'2024-09-16 20:48:18'),(8,8,84,'2024-08-13 20:48:18'),(9,7,34,'2024-08-19 20:48:18'),(10,3,91,'2024-08-31 20:48:18'),(11,1,18,'2024-08-28 20:51:24'),(12,6,58,'2024-08-30 20:51:24'),(13,10,60,'2024-07-27 20:51:24'),(14,9,21,'2024-08-29 20:51:24'),(15,5,91,'2024-08-17 20:51:24'),(16,6,66,'2024-08-01 20:51:24'),(17,13,45,'2024-07-29 20:51:24'),(18,6,20,'2024-08-11 20:51:24'),(19,7,98,'2024-07-31 20:51:24'),(20,20,45,'2024-07-26 20:51:24'),(21,20,31,'2024-08-06 21:08:55'),(22,20,38,'2024-09-16 21:08:55'),(23,11,15,'2024-09-15 21:08:55'),(24,16,100,'2024-08-16 21:08:55'),(25,22,31,'2024-09-03 21:08:55'),(26,11,22,'2024-07-28 21:08:55'),(27,11,83,'2024-08-22 21:08:55'),(28,20,22,'2024-08-28 21:08:55'),(29,13,55,'2024-08-18 21:08:55'),(30,10,96,'2024-07-27 21:08:55'),(31,29,70,'2024-08-06 21:09:56'),(32,25,31,'2024-07-28 21:09:56'),(33,24,32,'2024-08-30 21:09:56'),(34,23,82,'2024-08-29 21:09:56'),(35,28,57,'2024-09-11 21:09:56'),(36,19,84,'2024-09-06 21:09:56'),(37,6,20,'2024-09-10 21:09:56'),(38,38,91,'2024-08-12 21:09:56'),(39,8,54,'2024-08-04 21:09:56'),(40,35,39,'2024-09-12 21:09:56'),(41,9,10,'2024-07-21 21:12:31'),(42,23,31,'2024-07-24 21:12:31'),(43,9,74,'2024-09-16 21:12:31'),(44,42,71,'2024-08-12 21:12:31'),(45,25,39,'2024-09-07 21:12:31'),(46,40,12,'2024-08-09 21:12:31'),(47,28,57,'2024-08-18 21:12:31'),(48,40,95,'2024-07-27 21:12:31'),(49,49,24,'2024-09-13 21:12:31'),(50,47,67,'2024-08-27 21:12:31');
/*!40000 ALTER TABLE `Deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fornecedor`
--

DROP TABLE IF EXISTS `Fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fornecedor` (
  `idFornecedor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `contato` varchar(100) NOT NULL,
  PRIMARY KEY (`idFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornecedor`
--

LOCK TABLES `Fornecedor` WRITE;
/*!40000 ALTER TABLE `Fornecedor` DISABLE KEYS */;
INSERT INTO `Fornecedor` VALUES (1,'ocNMEIORZIRQ','NNDobhKAWhNHbcBilKKZPQQPO','7537898887'),(2,'cczgdEexiizu','DJQgwzXeHHjWthNgaXqxLwvEy','8833110093'),(3,'ziKWDFXrQKlY','JBZspfDLFduddAiwsaAGtlpjQ','8199378007'),(4,'YTTsNQFSOmjI','XiJTXCbExLmXjyFmPNglKArZQ','6252039932'),(5,'QdiPEaGKNdDC','vEkcvfrUKCzoLivFSAQYmIxMj','9135859640'),(6,'yWGaBhYEcmHK','fxFxCmCwutSOGwIRyotBZQKVN','3045795052'),(7,'aOAutLtVQqyI','EYayVXNWuhVtcQdloZWHhRCwP','2542562816'),(8,'DBLbznryFZKW','BoKbFgjbjmKvjyhTgWcyjLKsa','8781799459'),(9,'BBQbgszpqIVd','DcepdiLckwLedNdaMCfyeXcwR','0918585219'),(10,'fFAEbxOdyqKI','xtbfszqbuhKgTCPdJOBwRiaOo','1949116438'),(11,'hpkEYvTUxDwf','VlTVyGlGPRjVxVjxfdkCqeAWr','6665278944'),(12,'hnsgcQqNwARV','NPcLbUAktvfkVXFMBBNBCsXMY','8577784903'),(13,'yNJIDDICPEBT','QUosBjgQDomMkeRYSMqXeYsFE','5062518308'),(14,'gJgvqznWAdvz','EbUBavYncQiKqtrlIBViJMFsY','8142444927'),(15,'ouJPqmyHEgcn','DZTzyBWibstMhNjAzsDOePtLu','2276246299'),(16,'MRkvNDCkCqpZ','ApOqunpZnUsxSwMmQovcdlnMD','7550067906'),(17,'tiORQzKwhGmb','fIiPfdYZlZgLzlQueKrWolNbO','3248883960'),(18,'bIYTEkjdavVi','ZRVRauDVJprYUdxJOmegVfWph','8620503998'),(19,'ijvZeYuZzdoo','TMshWfvTlWmomfBykFBPIjjxa','5148501033'),(20,'BJUzEELBbqre','whBZevvKHyujTzxBodCTctJjz','5514873948'),(21,'tAerEeAdTDbr','VYjncmWqvMqCfwRwbqnAqqHFn','8658950591'),(22,'btBcZhRxOhXS','WtXMkkLjjRRInmIeVQFfJAtMd','9217042760'),(23,'tfFGNfJiYYUI','QHyqIVrqqcIIhGNEYLnxijfHV','7015217846'),(24,'KSdNDaJvhUow','GCoTyjdstiCohePRZoXmSPymq','0564718181'),(25,'qtiBoOFcnLJB','BoeClmgltXUkVuHmPvXDDdngq','6464906297'),(26,'sDpasQcajZmK','XpTEdKqQsoPcccNfsXODmmGKX','2319875145'),(27,'ZoWkBfqbShvz','KFzKlvvRJCKVbDMpbeNzFcPnb','9799979390'),(28,'kxqVMFSPcgma','HKUJywnhaSBZvmpPIAKKtoXBP','7100932479'),(29,'vyPBHVqdzGXO','xoGRoECfogmtdyZXExaEzTRWL','7302915678'),(30,'PPVKWGNSnzSm','lYkPUyhAzoqgddXDWCfYzfueQ','7182091437'),(31,'bUtpvRItDFgT','rSqwiqKzIkUSMejMgqafwcsqC','9297952980'),(32,'AjlaKFwCGckz','BhjMIJxgARSwxVaGnjoEuCVNh','0025659112'),(33,'RsXuCvTYLEok','ZEDKWVxlyztHbOrsnRZeiquLI','3211864637'),(34,'rDmiDUHLCpXS','AnrzWbInZrjnGfPGsQvkhHqzp','8373050064'),(35,'xJLcPFPTFLAZ','hORIfAzqYzSeTDlqgiFpFsmqu','9370716244'),(36,'zFwmbjJCCJxv','yBYdCptSAXCDZkOqKhIUkEiiD','8417228663'),(37,'LhQmTvQQwhIM','peLdHPPDhpTCZTQPIEyJjoGFW','9352679761'),(38,'xcqLaaBGjrad','VyNTYDkvzKyoNzFgqjmmcUPop','1250633723'),(39,'KzTBRJBhEXjs','UPQPgmseALNNrotGChqslyjsv','5746919047'),(40,'gQDIQddNzrYM','rOLlblXCZHvOjPYZQCcKmnhdN','7563066992'),(41,'UGZMQhVsoXbg','hoBdKWjslTZvWfDjyafUVrsHi','5625333423'),(42,'tAkePffcFVMf','uduwaQzCdQwRRydByhUAmkRfr','1926278298'),(43,'lrWyRbOigCmu','mvmwsXElYwooDohkfOFYIMrem','9012835266'),(44,'BoVGactqGxjg','wdbXpsHlusfJfDIQVHqophzRd','0636226323'),(45,'StIRUWbFAMFk','xnmfAoqkXnCDmNDTJdXLWFaDJ','2080863346'),(46,'cbDSSkTrOXkU','qhGkfaePkbXuueweqiMjcspoI','8808500622'),(47,'zAbqKmFkHEMm','pqYbsrhhedJoNHzNAgnDvnyqb','3819188389'),(48,'FsVxdTDxrDSt','PRjhSKbfciHnjKTUFGdEXRZPq','2022101872'),(49,'QhHdGICisXPG','vPawFOBaIRMmMtwUefpkUPByQ','1435733718'),(50,'iDZEWgNvGIyE','YUXFDxUEqHpUqrVZtqXRBdAyu','5911056869');
/*!40000 ALTER TABLE `Fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PrateleiraSupermercado`
--

DROP TABLE IF EXISTS `PrateleiraSupermercado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PrateleiraSupermercado` (
  `idPrateleira` int NOT NULL AUTO_INCREMENT,
  `idProduto` int DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `quantidade` int NOT NULL,
  `dataValidade` datetime NOT NULL,
  PRIMARY KEY (`idPrateleira`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `prateleirasupermercado_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `Produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PrateleiraSupermercado`
--

LOCK TABLES `PrateleiraSupermercado` WRITE;
/*!40000 ALTER TABLE `PrateleiraSupermercado` DISABLE KEYS */;
INSERT INTO `PrateleiraSupermercado` VALUES (1,1,97.98,1,'2025-01-18 20:48:18'),(2,1,87.65,19,'2025-08-07 20:48:18'),(3,2,79.66,12,'2025-01-20 20:48:18'),(4,3,16.41,32,'2025-01-24 20:48:18'),(5,3,90.40,16,'2025-01-15 20:48:18'),(6,6,158.94,34,'2025-05-08 20:48:18'),(7,2,81.92,31,'2025-03-08 20:48:18'),(8,6,163.15,29,'2024-11-28 20:48:18'),(9,3,176.07,8,'2025-05-28 20:48:18'),(10,8,194.99,9,'2024-12-01 20:48:18'),(11,9,121.62,39,'2025-01-02 20:51:24'),(12,5,33.25,48,'2025-03-03 20:51:24'),(13,5,116.51,26,'2025-04-30 20:51:24'),(14,12,37.72,25,'2025-06-26 20:51:24'),(15,11,69.98,35,'2025-09-11 20:51:24'),(16,1,122.95,7,'2025-07-11 20:51:24'),(17,13,167.53,6,'2025-06-04 20:51:24'),(18,17,44.70,25,'2025-04-10 20:51:24'),(19,14,73.45,43,'2025-05-10 20:51:24'),(20,7,148.44,10,'2025-03-27 20:51:24'),(21,21,129.67,19,'2024-11-28 21:08:55'),(22,13,18.16,48,'2025-01-22 21:08:55'),(23,20,166.81,14,'2025-04-02 21:08:55'),(24,15,173.69,44,'2025-05-20 21:08:55'),(25,19,23.65,12,'2025-05-22 21:08:55'),(26,26,147.54,50,'2025-09-06 21:08:55'),(27,1,179.66,49,'2025-08-27 21:08:55'),(28,25,116.54,26,'2025-06-17 21:08:55'),(29,25,85.99,44,'2025-05-08 21:08:55'),(30,1,112.30,49,'2025-06-20 21:08:55'),(31,4,188.39,21,'2025-03-18 21:09:56'),(32,28,130.86,1,'2025-07-02 21:09:56'),(33,3,111.17,26,'2025-03-21 21:09:56'),(34,2,134.13,32,'2025-02-08 21:09:56'),(35,23,58.49,30,'2025-05-21 21:09:56'),(36,29,55.50,45,'2025-07-23 21:09:56'),(37,30,163.61,37,'2025-05-25 21:09:56'),(38,28,139.73,35,'2025-08-28 21:09:56'),(39,8,108.60,31,'2025-08-23 21:09:56'),(40,13,98.02,50,'2025-08-16 21:09:56'),(41,20,97.01,28,'2024-11-14 21:12:31'),(42,34,91.93,44,'2024-10-25 21:12:31'),(43,16,138.29,30,'2024-12-06 21:12:31'),(44,34,154.21,22,'2025-05-05 21:12:31'),(45,36,98.52,25,'2024-10-21 21:12:31'),(46,22,179.21,33,'2025-08-19 21:12:31'),(47,1,75.22,24,'2024-12-16 21:12:31'),(48,29,39.86,14,'2024-11-27 21:12:31'),(49,33,41.00,1,'2025-05-27 21:12:31'),(50,26,181.21,31,'2025-05-04 21:12:31');
/*!40000 ALTER TABLE `PrateleiraSupermercado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produto`
--

DROP TABLE IF EXISTS `Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto` (
  `idProduto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `precoCompra` decimal(10,2) NOT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `codigoBarra` int DEFAULT NULL,
  `dataValidade` date NOT NULL,
  `idFornecedor` int DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `idFornecedor` (`idFornecedor`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`idFornecedor`) REFERENCES `Fornecedor` (`idFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto`
--

LOCK TABLES `Produto` WRITE;
/*!40000 ALTER TABLE `Produto` DISABLE KEYS */;
INSERT INTO `Produto` VALUES (1,'sqenaghzsxdOcdV',23.86,35.79,518647538,'2025-06-30',1),(2,'PGXmBWawlStFPeZ',12.84,19.26,921728741,'2025-01-05',2),(3,'YKZmCyHHzwggLLq',42.37,63.55,620123310,'2025-06-03',1),(4,'ZacmiWbMiFdmWZu',48.61,72.91,464449428,'2025-08-08',2),(5,'IOqdZJRMfGRILbK',18.47,27.70,558959402,'2025-02-06',5),(6,'HzrNyGvfMKaChzp',85.57,128.35,763416282,'2025-01-23',2),(7,'hoTKfGRtpYVMapB',81.65,122.48,664337954,'2025-07-29',3),(8,'JsSMtHCppfxZQTj',33.58,50.37,382962637,'2025-07-03',7),(9,'ENxRwPcXLIiLyhG',23.03,34.55,846645398,'2024-11-17',9),(10,'iEjmquArcrQKWDJ',43.52,65.28,432496076,'2024-11-10',3),(11,'gZyYSTJTlvKlGCH',75.68,113.52,984128202,'2025-06-30',10),(12,'sXnZtDjbPFfybWu',62.68,94.02,228940878,'2024-12-18',7),(13,'dKIWCgVKGWrXoNh',78.16,117.24,885276929,'2024-10-22',7),(14,'JqKCPffPdTOkKAl',90.97,136.45,633571421,'2025-05-14',8),(15,'GWjYtTFQBNhCukQ',66.89,100.34,742649936,'2025-08-07',9),(16,'XYjWTLaFqpQuJNR',99.75,149.62,658673523,'2024-11-18',6),(17,'YXVurrGxhBjyUjc',29.92,44.88,848580891,'2025-08-02',8),(18,'FKJHwBjWdbXOEIH',89.90,134.85,894434528,'2024-11-13',13),(19,'pPcvDTauZjnHCdR',74.36,111.54,883986279,'2025-03-08',5),(20,'EZIcRbNEXPhVTGe',53.18,79.77,443580834,'2024-12-19',3),(21,'FOSDsDdMkksRBNu',40.73,61.09,319714013,'2025-04-15',3),(22,'qxeZjoAkmYsJRIE',99.17,148.75,976202818,'2025-08-17',22),(23,'uorlvzexwENwSiW',18.80,28.20,821036085,'2025-04-19',3),(24,'CEWAbSHUJHWteTd',84.77,127.16,732036263,'2025-04-02',13),(25,'UpmwSWETrnhpgfR',86.10,129.15,144974786,'2024-12-17',19),(26,'lDqzFWVoFtXLaIU',88.99,133.48,870489777,'2025-05-09',3),(27,'khLhnxWoLwGFANX',53.20,79.80,892525851,'2025-08-29',22),(28,'ebRQOvXRKuPrDbD',31.54,47.31,844218671,'2024-12-04',3),(29,'GntltpBwUMjmdoi',93.89,140.84,963678438,'2025-06-24',9),(30,'IQuJSLSAqPkKUbY',82.78,124.17,527897659,'2025-03-02',6),(31,'PhGBWHgsqPgPfMG',65.83,98.75,147235048,'2025-02-27',15),(32,'YvkZUlCjlDAepME',20.99,31.48,783113939,'2025-04-20',2),(33,'taolTouPUfLfWsZ',40.85,61.28,534430734,'2024-12-11',3),(34,'nopWjDJIsVJcQOX',17.69,26.54,558030753,'2025-07-31',14),(35,'rAUhLyWetGEdEZw',22.42,33.63,489335277,'2025-05-03',8),(36,'KStFmwRrxIhmuNy',56.30,84.45,972179337,'2025-05-06',14),(37,'FnzXceTGCJZDksr',55.83,83.75,636661518,'2024-10-17',21),(38,'lFBhlqXDFImghqR',53.96,80.94,733531523,'2025-06-02',2),(39,'FuXajsgNNRRTKFQ',84.91,127.36,261541995,'2025-02-11',21),(40,'LWaydpClfeAnnku',33.66,50.49,860133993,'2025-06-17',9),(41,'OyjxKDwQFelpgTG',72.46,108.69,827687462,'2025-08-01',1),(42,'VHDEcYbEwTpHQBi',90.83,136.25,988313518,'2025-02-01',19),(43,'OVJcXcjWHyNPWSJ',39.13,58.70,130869201,'2024-10-25',12),(44,'ZcumuyHtWyuuKXi',32.40,48.60,728803054,'2025-02-04',13),(45,'KHRmRfUtTWKxtNO',60.59,90.89,543224706,'2025-07-13',7),(46,'EJmVhCmnNtBZWdr',18.45,27.67,299226325,'2024-12-05',15),(47,'IDDGDxMvIZGzUei',94.15,141.23,699208057,'2025-03-31',1),(48,'wIrKlgXdgAiDlCz',88.01,132.02,775073035,'2024-12-08',11),(49,'VwDFmlAAatuzxEA',52.57,78.86,724417912,'2025-06-01',40),(50,'PZLNSQtwFtcusbS',25.46,38.19,763389094,'2025-05-13',10);
/*!40000 ALTER TABLE `Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SetorCompras`
--

DROP TABLE IF EXISTS `SetorCompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SetorCompras` (
  `idCompras` int NOT NULL AUTO_INCREMENT,
  `idFornecedor` int DEFAULT NULL,
  `idProduto` int DEFAULT NULL,
  `quantidade` int NOT NULL,
  `precoCompra` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idCompras`),
  KEY `idFornecedor` (`idFornecedor`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `setorcompras_ibfk_1` FOREIGN KEY (`idFornecedor`) REFERENCES `Fornecedor` (`idFornecedor`),
  CONSTRAINT `setorcompras_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `Produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SetorCompras`
--

LOCK TABLES `SetorCompras` WRITE;
/*!40000 ALTER TABLE `SetorCompras` DISABLE KEYS */;
INSERT INTO `SetorCompras` VALUES (1,1,1,17,38.34),(2,2,2,66,68.40),(3,1,1,120,86.27),(4,2,1,43,85.70),(5,1,1,135,78.25),(6,5,4,200,43.51),(7,2,4,176,40.44),(8,6,4,25,65.59),(9,2,6,109,90.07),(10,7,2,15,90.67),(11,3,4,59,71.33),(12,3,6,54,11.63),(13,3,9,194,76.91),(14,4,1,116,94.20),(15,5,4,88,70.82),(16,1,1,156,35.48),(17,7,3,96,48.55),(18,16,16,168,82.64),(19,18,14,30,38.57),(20,7,15,165,30.49),(21,16,13,34,43.30),(22,22,8,97,34.32),(23,10,12,141,77.81),(24,6,7,40,32.18),(25,10,3,132,46.69),(26,21,8,118,88.59),(27,13,5,31,16.16),(28,2,13,123,34.87),(29,20,18,88,85.91),(30,26,19,123,95.86),(31,18,23,45,23.97),(32,32,12,30,87.34),(33,26,33,28,17.55),(34,6,7,102,95.36),(35,32,4,73,42.73),(36,14,19,180,19.52),(37,21,10,39,87.91),(38,17,14,87,93.18),(39,17,29,75,67.97),(40,29,19,130,33.22),(41,8,13,134,90.90),(42,33,13,18,85.73),(43,5,7,185,77.50),(44,22,17,117,24.37),(45,33,43,199,21.35),(46,38,8,44,40.10),(47,15,44,187,51.37),(48,2,10,76,45.84),(49,1,47,141,47.18),(50,44,42,115,15.16);
/*!40000 ALTER TABLE `SetorCompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SetorReposicao`
--

DROP TABLE IF EXISTS `SetorReposicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SetorReposicao` (
  `idReposicao` int NOT NULL AUTO_INCREMENT,
  `idDeposito` int DEFAULT NULL,
  `quantidade` int NOT NULL,
  `idProduto` int DEFAULT NULL,
  `dataValidade` datetime NOT NULL,
  `dataReposicao` datetime NOT NULL,
  PRIMARY KEY (`idReposicao`),
  KEY `idDeposito` (`idDeposito`),
  KEY `idProduto` (`idProduto`),
  CONSTRAINT `setorreposicao_ibfk_1` FOREIGN KEY (`idDeposito`) REFERENCES `Deposito` (`idDeposito`),
  CONSTRAINT `setorreposicao_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `Produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SetorReposicao`
--

LOCK TABLES `SetorReposicao` WRITE;
/*!40000 ALTER TABLE `SetorReposicao` DISABLE KEYS */;
INSERT INTO `SetorReposicao` VALUES (1,1,22,1,'2025-02-23 20:48:18','2024-09-06 20:48:18'),(2,2,23,1,'2025-07-22 20:48:18','2024-08-22 20:48:18'),(3,3,48,3,'2025-05-07 20:48:18','2024-08-24 20:48:18'),(4,3,12,1,'2024-12-15 20:48:18','2024-08-20 20:48:18'),(5,5,21,2,'2025-04-26 20:48:18','2024-09-14 20:48:18'),(6,1,15,4,'2024-11-12 20:48:18','2024-09-05 20:48:18'),(7,7,19,6,'2025-05-07 20:48:18','2024-08-29 20:48:18'),(8,2,18,7,'2025-05-28 20:48:18','2024-08-31 20:48:18'),(9,9,26,1,'2024-11-05 20:48:18','2024-09-15 20:48:18'),(10,10,10,2,'2025-04-25 20:48:18','2024-09-16 20:48:18'),(11,2,26,4,'2025-01-04 20:51:24','2024-09-04 20:51:24'),(12,2,41,1,'2025-03-13 20:51:24','2024-09-04 20:51:24'),(13,8,49,9,'2025-05-25 20:51:24','2024-08-18 20:51:24'),(14,10,33,9,'2025-01-29 20:51:24','2024-09-04 20:51:24'),(15,6,49,14,'2024-10-21 20:51:24','2024-09-02 20:51:24'),(16,6,25,8,'2024-10-21 20:51:24','2024-08-25 20:51:24'),(17,7,13,11,'2025-05-22 20:51:24','2024-08-24 20:51:24'),(18,5,18,11,'2025-04-16 20:51:24','2024-09-07 20:51:24'),(19,11,11,5,'2025-03-19 20:51:24','2024-09-07 20:51:24'),(20,5,49,1,'2024-11-25 20:51:24','2024-08-27 20:51:24'),(21,18,36,18,'2024-12-06 21:08:55','2024-09-14 21:08:55'),(22,21,12,12,'2025-07-01 21:08:55','2024-08-30 21:08:55'),(23,19,26,14,'2025-05-26 21:08:55','2024-08-30 21:08:55'),(24,7,37,2,'2025-06-28 21:08:55','2024-09-09 21:08:55'),(25,14,22,12,'2025-01-14 21:08:55','2024-09-12 21:08:55'),(26,12,35,23,'2025-02-23 21:08:55','2024-09-02 21:08:55'),(27,22,25,9,'2025-01-02 21:08:55','2024-08-18 21:08:55'),(28,20,35,13,'2025-07-24 21:08:55','2024-08-26 21:08:55'),(29,8,8,13,'2024-12-09 21:08:55','2024-09-16 21:08:55'),(30,28,12,24,'2024-10-30 21:08:55','2024-09-08 21:08:55'),(31,18,22,19,'2024-12-10 21:09:56','2024-09-12 21:09:56'),(32,27,15,30,'2024-10-26 21:09:56','2024-08-23 21:09:56'),(33,28,35,15,'2025-07-22 21:09:56','2024-09-05 21:09:56'),(34,20,17,3,'2025-01-06 21:09:56','2024-08-26 21:09:56'),(35,22,15,1,'2025-08-10 21:09:56','2024-08-28 21:09:56'),(36,24,43,34,'2025-04-11 21:09:56','2024-09-14 21:09:56'),(37,15,28,17,'2025-03-21 21:09:56','2024-09-11 21:09:56'),(38,15,43,21,'2025-06-08 21:09:56','2024-08-23 21:09:56'),(39,1,42,1,'2025-08-21 21:09:56','2024-09-01 21:09:56'),(40,9,26,29,'2025-03-27 21:09:56','2024-08-21 21:09:56'),(41,33,27,22,'2025-07-11 21:12:31','2024-09-07 21:12:31'),(42,2,34,24,'2025-07-28 21:12:31','2024-08-23 21:12:31'),(43,35,18,2,'2025-08-13 21:12:31','2024-09-10 21:12:31'),(44,39,48,1,'2025-04-26 21:12:31','2024-09-13 21:12:31'),(45,35,43,26,'2025-05-23 21:12:31','2024-08-26 21:12:31'),(46,33,45,12,'2025-02-10 21:12:31','2024-09-13 21:12:31'),(47,28,46,18,'2024-10-27 21:12:31','2024-08-26 21:12:31'),(48,24,9,44,'2025-07-17 21:12:31','2024-09-09 21:12:31'),(49,36,34,26,'2025-06-30 21:12:31','2024-09-14 21:12:31'),(50,40,34,33,'2025-01-12 21:12:31','2024-08-22 21:12:31');
/*!40000 ALTER TABLE `SetorReposicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `loginUsuario` varchar(50) NOT NULL,
  `senhaUsuario` varchar(256) NOT NULL,
  `setorUsuario` varchar(50) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'YqzHklHu','EfXawPkwbYyW','Vendas'),(2,'EuyzklxS','IsQETfUeTTiW','Administração'),(3,'ffSppFEI','TyLcsNlQFBmX','Administração'),(4,'FsDlmJsi','qLEcIeFjwJQw','Caixa'),(5,'QOnqcsqE','ckoKcxTHRWyb','Repositores'),(6,'ZRkhARTO','bybNSPvScNtz','Administração'),(7,'DGxnaLca','OkEVeKSKJlME','Repositores'),(8,'niApVqAZ','xjTEcVCRJtOx','Administração'),(9,'utajfbxJ','MUUhrKuAqVFn','Administração'),(10,'YQPywVSe','IVQfunrxhTKR','Caixa'),(11,'rMxyFNkk','hgVUkYuQePSx','Vendas'),(12,'OYbvptJz','oZYUNBiHqDpQ','Repositores'),(13,'xSCjQCOa','PgqomlWHwNmk','Caixa'),(14,'cHyDIGHA','puRANfoNAGcY','Caixa'),(15,'CqIsrBdY','KiERGWaHChvV','Vendas'),(16,'nSQpjHti','tdgiFrUnQEBK','Vendas'),(17,'NtWHZmnq','YtpRyCusqvQY','Repositores'),(18,'tuXWtgJh','iLOiKhdtBgcC','Caixa'),(19,'EKliHTMH','SQkXZURSHaxq','Vendas'),(20,'FNWFYHWh','yoCWzESOPwSt','Repositores'),(21,'QTTTvgwT','ydiHrBdoraNh','Vendas'),(22,'YFcffYNH','tTJypPxBnHqx','Repositores'),(23,'unDEwxBz','SMTYdTRjcRvd','Repositores'),(24,'TfHFydzG','uFRvEnelIsYt','Caixa'),(25,'VxoYcUku','bBSVtPoulBGa','Vendas'),(26,'dVopBMeA','pUaRuNWDPJIb','Administração'),(27,'WcgtQPEZ','KUrzHbEwztlx','Administração'),(28,'JlygrDPZ','HdhTslCCAkSn','Vendas'),(29,'OZgJRcVf','LzvJAaLTOfdn','Caixa'),(30,'gYwqrczm','HmXWtTMVtTaU','Repositores'),(31,'DpXZeski','djmXEHUUvzqr','Repositores'),(32,'pYbPbedv','KfOaQHAfmsvm','Caixa'),(33,'MrmINVJe','PkBWfIkMVtMg','Administração'),(34,'fWfhkads','UhhaaGJGRGGt','Repositores'),(35,'nTJdeWZj','DBjWlHIPQGQj','Administração'),(36,'miGpWeTm','QYsqqeuwoSsJ','Repositores'),(37,'vvKlPmhG','NAgsYDCkNrVI','Vendas'),(38,'hvXEMPKa','fXEgnsyQBuad','Caixa'),(39,'gOSmaOax','acOBQXABAFVr','Administração'),(40,'fDpXGeFW','RYUisJmKOjWp','Caixa'),(41,'eIPhdrZc','gthFhqSOBiYa','Administração'),(42,'MofOWvCK','gEQjMsaHiAvl','Vendas'),(43,'YYXmlwMy','UENHxwbAayNS','Caixa'),(44,'feSoAskU','uMKwwtmXIIrM','Caixa'),(45,'TPrimTmY','YwymYwbgNRNJ','Repositores'),(46,'hGCvdlGe','GAqqWxybJybL','Vendas'),(47,'rxJAYIwJ','WIqYWUpNUmoo','Caixa'),(48,'jxcWeoZE','SVMyMHGPxrhd','Administração'),(49,'lCJwXGvJ','mJixiYErYnsM','Caixa'),(50,'BRoUeGHH','WiuvIvHKOdIp','Administração'),(51,'xfJFZWQd','EkWdcsmjvpPb','Administração');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Venda`
--

DROP TABLE IF EXISTS `Venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Venda` (
  `idVenda` int NOT NULL AUTO_INCREMENT,
  `dataVenda` datetime NOT NULL,
  `valorTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idVenda`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venda`
--

LOCK TABLES `Venda` WRITE;
/*!40000 ALTER TABLE `Venda` DISABLE KEYS */;
INSERT INTO `Venda` VALUES (1,'2024-09-13 21:12:31',615.46),(2,'2024-09-11 21:12:31',110.14),(3,'2024-08-21 21:12:31',382.78),(4,'2024-08-25 21:12:31',203.45),(5,'2024-09-11 21:12:31',236.55),(6,'2024-08-28 21:12:31',552.58),(7,'2024-08-30 21:12:31',345.54),(8,'2024-09-02 21:12:31',125.49),(9,'2024-09-07 21:12:31',258.01),(10,'2024-09-09 21:12:31',241.95);
/*!40000 ALTER TABLE `Venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-17 21:26:20
