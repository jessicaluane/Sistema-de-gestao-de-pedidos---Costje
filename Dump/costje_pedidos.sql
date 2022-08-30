CREATE DATABASE  IF NOT EXISTS `costje` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `costje`;
-- MySQL dump 10.13  Distrib 5.7.38, for Win64 (x86_64)
--
-- Host: localhost    Database: costje
-- ------------------------------------------------------
-- Server version	5.7.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `idpedidos` int(11) NOT NULL AUTO_INCREMENT,
  `data_pedido` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` varchar(20) NOT NULL,
  `situacao` varchar(20) CHARACTER SET latin1 NOT NULL,
  `data_entrega` date NOT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `metragem_recebida` decimal(3,2) DEFAULT NULL,
  `valor` decimal(5,2) NOT NULL,
  `busto` decimal(4,1) DEFAULT NULL,
  `cintura` decimal(3,1) DEFAULT NULL,
  `quadril` decimal(4,1) DEFAULT NULL,
  `corpo_frente` decimal(3,1) DEFAULT NULL,
  `corpo_costas` decimal(3,1) DEFAULT NULL,
  `comprimento` decimal(4,1) DEFAULT NULL,
  `idcli` int(11) NOT NULL,
  PRIMARY KEY (`idpedidos`),
  KEY `idcli` (`idcli`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`idcli`) REFERENCES `clientes` (`idcli`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (4,'2022-06-14 17:05:16','Pedido','Na bancada','2020-10-09','Vestido cintura alta, s/manga, faixa na cintura e saia com pregas',2.50,80.00,90.0,78.5,95.5,46.0,43.0,110.0,3),(5,'2022-06-14 17:18:37','Pedido','Pronto para entrega','2023-09-12','Saia cintura alta com pregas',1.00,50.00,0.0,70.0,110.0,0.0,0.0,70.0,5),(6,'2022-06-14 17:20:52','Conserto','Ponto de prova 2','2023-01-01','Vestido cintura alta, c/manga, e saia godê',2.50,100.00,90.0,45.0,115.0,43.0,43.0,115.0,3),(7,'2022-06-14 17:25:09','Orçamento','Orçamento Reprovado','2022-07-14','Vestido cintura alta e saia com pregas',2.50,90.00,99.0,68.0,96.0,39.0,39.0,100.0,7),(9,'2022-06-15 15:48:52','Conserto','Pronto para entrega','2024-09-05','Vestido lngo com elástico na cintura',1.20,45.00,95.0,80.0,89.0,41.0,40.0,115.0,4),(10,'2022-06-24 23:18:09','Pedido','Ponto de prova 1','2022-07-09','Saia com elástico',1.00,45.00,0.0,0.0,0.0,0.0,0.0,0.0,4),(11,'2022-06-24 23:26:45','Orçamento','Pronto para entrega','2022-06-29','Blusa solta verão',0.70,35.00,0.0,0.0,0.0,0.0,0.0,0.0,11),(12,'2022-06-26 18:00:32','Conserto','Entrega OK','2022-06-29','Adicionar pedrarias',0.00,4.00,0.0,0.0,0.0,0.0,0.0,0.0,3),(13,'2022-06-26 18:09:08','Conserto','Entrega OK','2022-06-09','dgdgdgfg',0.00,4.00,0.0,0.0,0.0,0.0,0.0,0.0,9),(14,'2022-06-27 16:46:07','Conserto','Ponto de prova 1','2022-06-09','x\\x\\x2',0.00,20.00,0.0,0.0,0.0,0.0,0.0,0.0,10),(16,'2022-06-27 17:25:57','Conserto','Pronto para entrega','2022-06-30','Abaixar decote',0.00,15.00,0.0,0.0,0.0,0.0,0.0,0.0,5),(17,'2022-06-27 17:31:18','Conserto','Ponto de prova 1','2022-07-05','Saída de praia simples',1.00,34.00,90.0,80.0,100.0,40.0,40.0,1.1,3),(18,'2022-06-28 21:50:52','Conserto','Entrega OK','2022-07-20','Adicionar bolso no vestido',0.50,20.00,0.0,0.0,0.0,0.0,0.0,0.0,7),(19,'2022-06-28 21:51:12','Conserto','Orçamento Reprovado','2022-07-20','fjfjfjfjmfjjf',0.00,50.00,0.0,0.0,0.0,0.0,0.0,0.0,7),(20,'2022-06-28 22:49:37','Conserto','Entrega OK','2022-08-09','Saia envelope',0.00,50.00,75.0,20.0,25.0,20.5,24.0,1.7,3),(21,'2022-06-29 13:53:16','Conserto','Ponto de prova 2','2023-01-01','Vestido cintura alta, c/manga, e saia godê',2.50,100.00,90.0,45.0,115.0,43.0,43.0,115.0,3),(22,'2022-06-29 14:36:22','Confecção','Ponto de prova 1','2022-08-08','Vestido tubinho',2.50,80.00,93.0,54.7,124.5,45.7,56.0,1.5,7),(23,'2022-06-29 15:06:52','Confecção','Ponto de prova 2','2022-08-07','Blazer curto ',2.50,80.00,23.5,23.5,23.5,23.5,23.5,23.5,7),(24,'2022-06-29 15:33:57','Conserto','Falta aviamentos','2022-06-01','Adicionar babados na blusa',0.00,20.00,0.0,0.0,0.0,0.0,0.0,0.0,7),(25,'2022-06-29 16:25:46','Confecção','Pronto para entrega','2022-06-17','Saia secretária',0.80,60.00,90.0,70.0,100.0,40.0,40.0,50.0,7),(26,'2022-06-29 16:31:53','Conserto','Pronto para entrega','2022-09-05','sgsgsgs',8.00,80.00,80.0,80.0,80.0,80.0,80.0,8.0,7),(27,'2022-06-29 18:52:32','Conserto','Pronto para entrega','2022-10-04','egeg',8.00,80.00,80.0,80.0,80.0,80.0,80.0,80.0,7),(28,'2022-06-29 23:41:34','Conserto','Pronto para entrega','2022-06-30','Adicionar manga comprida',0.70,20.00,0.0,0.0,0.0,0.0,0.0,0.0,5),(29,'2022-06-29 23:49:05','Conserto','Entrega OK','2022-06-27','Diminuir tamanho na calça',0.00,15.00,0.0,0.0,0.0,0.0,0.0,0.0,5),(30,'2022-06-29 23:49:50','Conserto','Ponto de prova 1','2022-06-15','Costurar o rasgo da calça',0.00,15.00,0.0,0.0,0.0,0.0,0.0,0.0,3),(31,'2022-06-29 23:50:46','Confecção','Ponto de prova 2','2022-09-12','efafa',0.00,0.00,0.0,0.0,0.0,0.0,0.0,0.0,9),(32,'2022-07-01 15:35:51','Confecção','Ponto de prova 1','2022-07-07','Bermuda social com bolsos',1.50,60.00,90.0,75.0,116.0,45.0,45.0,105.0,1),(33,'2022-07-01 16:43:33','Conserto','Pronto para entrega','2022-06-30','Calça comprida sem bolsos e detalhe naa cintura.',1.20,75.00,90.0,80.0,115.0,40.0,40.0,1.0,5),(34,'2022-07-01 17:32:47','Confecão','Ponto de prova 1','2021-10-28','Vestido cintura alta, c/manga, e saia godê',2.50,80.00,NULL,NULL,NULL,NULL,NULL,NULL,5),(35,'2022-07-01 19:29:39','Conserto','Ponto de prova 1','2022-07-15','Apertar cava 2cm',0.00,10.00,0.0,0.0,0.0,0.0,0.0,0.0,3),(36,'2022-08-29 22:36:27','Conserto','Pronto para entrega','2022-08-30','Vestido de festa com tule bordado',2.50,120.00,90.0,70.0,105.0,40.0,41.0,1.2,9),(37,'2022-08-29 22:39:17','Conserto','Pronto para entrega','2023-09-12','Saia cintura alta com pregas',1.00,50.00,0.0,70.0,110.0,0.0,0.0,70.0,5),(38,'2022-08-29 22:41:29','Confecção','Pronto para entrega','2022-08-31','Saída de praia',1.00,20.00,99.0,65.0,94.0,38.0,40.0,1.0,10),(39,'2022-08-29 22:47:39','Conserto','Falta aviamentos','2022-09-12','Blusa cacharrel',0.60,40.00,105.0,80.0,0.0,40.0,42.0,60.0,10);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-30 13:11:11
