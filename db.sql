-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: djangoqkby2
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `djangoqkby2`
--

/*!40000 DROP DATABASE IF EXISTS `djangoqkby2`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `djangoqkby2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `djangoqkby2`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haocaichuku`
--

DROP TABLE IF EXISTS `haocaichuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `haocaichuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `haocaibianhao` varchar(200) DEFAULT NULL COMMENT '耗材编号',
  `pinming` varchar(200) DEFAULT NULL COMMENT '品名',
  `haocaifenlei` varchar(200) DEFAULT NULL COMMENT '耗材分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chukuquxiang` varchar(200) NOT NULL COMMENT '出库去向',
  `zongshuliang` varchar(200) NOT NULL COMMENT '总数量',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647340790340 DEFAULT CHARSET=utf8 COMMENT='耗材出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haocaichuku`
--

LOCK TABLES `haocaichuku` WRITE;
/*!40000 ALTER TABLE `haocaichuku` DISABLE KEYS */;
INSERT INTO `haocaichuku` VALUES (61,'2022-03-15 10:34:38','1111111111','耗材编号1','品名1','耗材分类1','upload/haocaichuku_tupian1.jpg','出库去向1','总数量1','2022-03-15 18:34:38'),(62,'2022-03-15 10:34:38','2222222222','耗材编号2','品名2','耗材分类2','upload/haocaichuku_tupian2.jpg','出库去向2','总数量2','2022-03-15 18:34:38'),(63,'2022-03-15 10:34:38','3333333333','耗材编号3','品名3','耗材分类3','upload/haocaichuku_tupian3.jpg','出库去向3','总数量3','2022-03-15 18:34:38'),(64,'2022-03-15 10:34:38','4444444444','耗材编号4','品名4','耗材分类4','upload/haocaichuku_tupian4.jpg','出库去向4','总数量4','2022-03-15 18:34:38'),(65,'2022-03-15 10:34:38','5555555555','耗材编号5','品名5','耗材分类5','upload/haocaichuku_tupian5.jpg','出库去向5','总数量5','2022-03-15 18:34:38'),(66,'2022-03-15 10:34:38','6666666666','耗材编号6','品名6','耗材分类6','upload/haocaichuku_tupian6.jpg','出库去向6','总数量6','2022-03-15 18:34:38'),(1647340790339,'2022-03-15 10:39:50','1647340783475','a0001','耗材ABC','耗材A','upload/haocaixinxi_tupian1.jpg','使用','2','2022-03-15 18:39:43');
/*!40000 ALTER TABLE `haocaichuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haocaifenlei`
--

DROP TABLE IF EXISTS `haocaifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `haocaifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `haocaifenlei` varchar(200) DEFAULT NULL COMMENT '耗材分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='耗材分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haocaifenlei`
--

LOCK TABLES `haocaifenlei` WRITE;
/*!40000 ALTER TABLE `haocaifenlei` DISABLE KEYS */;
INSERT INTO `haocaifenlei` VALUES (31,'2022-03-15 10:34:38','耗材A'),(32,'2022-03-15 10:34:38','耗材B'),(33,'2022-03-15 10:34:38','耗材分类3'),(34,'2022-03-15 10:34:38','耗材分类4'),(35,'2022-03-15 10:34:38','耗材分类5'),(36,'2022-03-15 10:34:38','耗材分类6');
/*!40000 ALTER TABLE `haocaifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haocairuku`
--

DROP TABLE IF EXISTS `haocairuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `haocairuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `haocaibianhao` varchar(200) DEFAULT NULL COMMENT '耗材编号',
  `pinming` varchar(200) DEFAULT NULL COMMENT '品名',
  `haocaifenlei` varchar(200) DEFAULT NULL COMMENT '耗材分类',
  `guigexinghao` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `rukulaiyuan` varchar(200) NOT NULL COMMENT '入库来源',
  `jinjia` float NOT NULL COMMENT '进价',
  `zongshuliang` int(11) NOT NULL COMMENT '总数量',
  `zongjia` float DEFAULT NULL COMMENT '总价',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647340779439 DEFAULT CHARSET=utf8 COMMENT='耗材入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haocairuku`
--

LOCK TABLES `haocairuku` WRITE;
/*!40000 ALTER TABLE `haocairuku` DISABLE KEYS */;
INSERT INTO `haocairuku` VALUES (51,'2022-03-15 10:34:38','1111111111','耗材编号1','品名1','耗材分类1','规格型号1','单位1','生产厂家1','入库来源1',1,1,1,'2022-03-15 18:34:38'),(52,'2022-03-15 10:34:38','2222222222','耗材编号2','品名2','耗材分类2','规格型号2','单位2','生产厂家2','入库来源2',2,2,2,'2022-03-15 18:34:38'),(53,'2022-03-15 10:34:38','3333333333','耗材编号3','品名3','耗材分类3','规格型号3','单位3','生产厂家3','入库来源3',3,3,3,'2022-03-15 18:34:38'),(54,'2022-03-15 10:34:38','4444444444','耗材编号4','品名4','耗材分类4','规格型号4','单位4','生产厂家4','入库来源4',4,4,4,'2022-03-15 18:34:38'),(55,'2022-03-15 10:34:38','5555555555','耗材编号5','品名5','耗材分类5','规格型号5','单位5','生产厂家5','入库来源5',5,5,5,'2022-03-15 18:34:38'),(56,'2022-03-15 10:34:38','6666666666','耗材编号6','品名6','耗材分类6','规格型号6','单位6','生产厂家6','入库来源6',6,6,6,'2022-03-15 18:34:38'),(1647340779438,'2022-03-15 10:39:39','1647340755760','a0001','耗材ABC','耗材A','大','台','大厂家','购入',15000,10,150000,'2022-03-15 18:39:15');
/*!40000 ALTER TABLE `haocairuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haocaixinxi`
--

DROP TABLE IF EXISTS `haocaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `haocaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `haocaibianhao` varchar(200) DEFAULT NULL COMMENT '耗材编号',
  `pinming` varchar(200) DEFAULT NULL COMMENT '品名',
  `haocaifenlei` varchar(200) DEFAULT NULL COMMENT '耗材分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guigexinghao` varchar(200) DEFAULT NULL COMMENT '规格型号',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `zongshuliang` int(11) DEFAULT NULL COMMENT '总数量',
  `haocaishuoming` longtext COMMENT '耗材说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='耗材信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haocaixinxi`
--

LOCK TABLES `haocaixinxi` WRITE;
/*!40000 ALTER TABLE `haocaixinxi` DISABLE KEYS */;
INSERT INTO `haocaixinxi` VALUES (41,'2022-03-15 10:34:38','a0001','耗材ABC','耗材A','upload/haocaixinxi_tupian1.jpg','大','台',13,'<p>耗材说明1。。。</p><p>这里填写说明</p>'),(42,'2022-03-15 10:34:38','耗材编号2','品名2','耗材分类2','upload/haocaixinxi_tupian2.jpg','规格型号2','单位2',2,'耗材说明2'),(43,'2022-03-15 10:34:38','耗材编号3','品名3','耗材分类3','upload/haocaixinxi_tupian3.jpg','规格型号3','单位3',3,'耗材说明3'),(44,'2022-03-15 10:34:38','耗材编号4','品名4','耗材分类4','upload/haocaixinxi_tupian4.jpg','规格型号4','单位4',4,'耗材说明4'),(45,'2022-03-15 10:34:38','耗材编号5','品名5','耗材分类5','upload/haocaixinxi_tupian5.jpg','规格型号5','单位5',5,'耗材说明5'),(46,'2022-03-15 10:34:38','耗材编号6','品名6','耗材分类6','upload/haocaixinxi_tupian6.jpg','规格型号6','单位6',6,'耗材说明6');
/*!40000 ALTER TABLE `haocaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-15 10:34:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinchuku`
--

DROP TABLE IF EXISTS `yaopinchuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinfenlei` varchar(200) DEFAULT NULL COMMENT '药品分类',
  `jixing` varchar(200) DEFAULT NULL COMMENT '剂型',
  `chukuquxiang` varchar(200) NOT NULL COMMENT '出库去向',
  `zongshuliang` varchar(200) DEFAULT NULL COMMENT '总数量',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647340848396 DEFAULT CHARSET=utf8 COMMENT='药品出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinchuku`
--

LOCK TABLES `yaopinchuku` WRITE;
/*!40000 ALTER TABLE `yaopinchuku` DISABLE KEYS */;
INSERT INTO `yaopinchuku` VALUES (91,'2022-03-15 10:34:39','1111111111','药品编号1','药品名称1','药品分类1','剂型1','出库去向1','总数量1','2022-03-15 18:34:39'),(92,'2022-03-15 10:34:39','2222222222','药品编号2','药品名称2','药品分类2','剂型2','出库去向2','总数量2','2022-03-15 18:34:39'),(93,'2022-03-15 10:34:39','3333333333','药品编号3','药品名称3','药品分类3','剂型3','出库去向3','总数量3','2022-03-15 18:34:39'),(94,'2022-03-15 10:34:39','4444444444','药品编号4','药品名称4','药品分类4','剂型4','出库去向4','总数量4','2022-03-15 18:34:39'),(95,'2022-03-15 10:34:39','5555555555','药品编号5','药品名称5','药品分类5','剂型5','出库去向5','总数量5','2022-03-15 18:34:39'),(96,'2022-03-15 10:34:39','6666666666','药品编号6','药品名称6','药品分类6','剂型6','出库去向6','总数量6','2022-03-15 18:34:39'),(1647340848395,'2022-03-15 10:40:48','1647340841991','A0210','感冒灵','感冒药','颗粒','吃','20','2022-03-15 18:40:41');
/*!40000 ALTER TABLE `yaopinchuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinfenlei`
--

DROP TABLE IF EXISTS `yaopinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinfenlei` varchar(200) DEFAULT NULL COMMENT '药品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='药品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinfenlei`
--

LOCK TABLES `yaopinfenlei` WRITE;
/*!40000 ALTER TABLE `yaopinfenlei` DISABLE KEYS */;
INSERT INTO `yaopinfenlei` VALUES (21,'2022-03-15 10:34:38','感冒药'),(22,'2022-03-15 10:34:38','药品分类2'),(23,'2022-03-15 10:34:38','药品分类3'),(24,'2022-03-15 10:34:38','药品分类4'),(25,'2022-03-15 10:34:38','药品分类5'),(26,'2022-03-15 10:34:38','药品分类6');
/*!40000 ALTER TABLE `yaopinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinruku`
--

DROP TABLE IF EXISTS `yaopinruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) DEFAULT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinfenlei` varchar(200) DEFAULT NULL COMMENT '药品分类',
  `jixing` varchar(200) DEFAULT NULL COMMENT '剂型',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `picihao` varchar(200) NOT NULL COMMENT '批次号',
  `shengchanriqi` date NOT NULL COMMENT '生产日期',
  `jinjia` float NOT NULL COMMENT '进价',
  `zongshuliang` int(11) NOT NULL COMMENT '总数量',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647340836860 DEFAULT CHARSET=utf8 COMMENT='药品入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinruku`
--

LOCK TABLES `yaopinruku` WRITE;
/*!40000 ALTER TABLE `yaopinruku` DISABLE KEYS */;
INSERT INTO `yaopinruku` VALUES (81,'2022-03-15 10:34:38','1111111111','药品名称1','药品分类1','剂型1','生产厂家1','批次号1','2022-03-15',1,1,'总价1','2022-03-15 18:34:38'),(82,'2022-03-15 10:34:38','2222222222','药品名称2','药品分类2','剂型2','生产厂家2','批次号2','2022-03-15',2,2,'总价2','2022-03-15 18:34:38'),(83,'2022-03-15 10:34:38','3333333333','药品名称3','药品分类3','剂型3','生产厂家3','批次号3','2022-03-15',3,3,'总价3','2022-03-15 18:34:38'),(84,'2022-03-15 10:34:39','4444444444','药品名称4','药品分类4','剂型4','生产厂家4','批次号4','2022-03-15',4,4,'总价4','2022-03-15 18:34:39'),(85,'2022-03-15 10:34:39','5555555555','药品名称5','药品分类5','剂型5','生产厂家5','批次号5','2022-03-15',5,5,'总价5','2022-03-15 18:34:39'),(86,'2022-03-15 10:34:39','6666666666','药品名称6','药品分类6','剂型6','生产厂家6','批次号6','2022-03-15',6,6,'总价6','2022-03-15 18:34:39'),(1647340836859,'2022-03-15 10:40:36','A0210','感冒灵','感冒药','颗粒','A','2022.03','2022-03-01',5,30,'150','2022-03-15 18:40:23');
/*!40000 ALTER TABLE `yaopinruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopinfenlei` varchar(200) DEFAULT NULL COMMENT '药品分类',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `jixing` varchar(200) DEFAULT NULL COMMENT '剂型',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `zongshuliang` int(11) DEFAULT NULL COMMENT '总数量',
  `yaopinshuoming` longtext COMMENT '药品说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (71,'2022-03-15 10:34:38','A0210','感冒灵','感冒药','upload/yaopinxinxi_yaopintupian1.jpg','颗粒','12个月',30,'<p>药品说明11</p>'),(72,'2022-03-15 10:34:38','药品编号2','药品名称2','药品分类2','upload/yaopinxinxi_yaopintupian2.jpg','颗粒','保质期2',2,'药品说明2'),(73,'2022-03-15 10:34:38','药品编号3','药品名称3','药品分类3','upload/yaopinxinxi_yaopintupian3.jpg','颗粒','保质期3',3,'药品说明3'),(74,'2022-03-15 10:34:38','药品编号4','药品名称4','药品分类4','upload/yaopinxinxi_yaopintupian4.jpg','颗粒','保质期4',4,'药品说明4'),(75,'2022-03-15 10:34:38','药品编号5','药品名称5','药品分类5','upload/yaopinxinxi_yaopintupian5.jpg','颗粒','保质期5',5,'药品说明5'),(76,'2022-03-15 10:34:38','药品编号6','药品名称6','药品分类6','upload/yaopinxinxi_yaopintupian6.jpg','颗粒','保质期6',6,'药品说明6');
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `yuangongdianhua` varchar(200) DEFAULT NULL COMMENT '员工电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647340944740 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2022-03-15 10:34:38','工号1','123456','男','upload/yuangong_zhaopian1.jpg','员工姓名1','13823888881'),(12,'2022-03-15 10:34:38','工号2','123456','男','upload/yuangong_zhaopian2.jpg','员工姓名2','13823888882'),(13,'2022-03-15 10:34:38','工号3','123456','男','upload/yuangong_zhaopian3.jpg','员工姓名3','13823888883'),(14,'2022-03-15 10:34:38','工号4','123456','男','upload/yuangong_zhaopian4.jpg','员工姓名4','13823888884'),(15,'2022-03-15 10:34:38','工号5','123456','男','upload/yuangong_zhaopian5.jpg','员工姓名5','13823888885'),(16,'2022-03-15 10:34:38','工号6','123456','男','upload/yuangong_zhaopian6.jpg','员工姓名6','13823888886'),(1647340944739,'2022-03-15 10:42:24','123','123','男','upload/1647340967190.jpg','张三','13877774444');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-19 13:20:55
