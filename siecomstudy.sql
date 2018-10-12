-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: siecomstudy
-- ------------------------------------------------------
-- Server version	5.5.53-log

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
-- Current Database: `siecomstudy`
--



--
-- Table structure for table `js_admin`
--

DROP TABLE IF EXISTS `js_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `js_admin` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(18) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `salt` varchar(8) NOT NULL,
  `times` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '2' COMMENT ' 1：超级管理员；2：运营人员；3集团管理员',
  `acl_id` int(5) DEFAULT NULL COMMENT '区域ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `js_admin`
--

LOCK TABLES `js_admin` WRITE;
/*!40000 ALTER TABLE `js_admin` DISABLE KEYS */;
INSERT INTO `js_admin` VALUES (4,'admin','2e707193e32b0ac700abdfc9eedfff04','0LqAr',0,1,NULL);
/*!40000 ALTER TABLE `js_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `js_attachments`
--

DROP TABLE IF EXISTS `js_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `js_attachments` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `pid` int(8) DEFAULT NULL COMMENT '关联的主题ID',
  `img` varchar(100) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2083 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `js_attachments`
--

LOCK TABLES `js_attachments` WRITE;
/*!40000 ALTER TABLE `js_attachments` DISABLE KEYS */;
INSERT INTO `js_attachments` VALUES (2069,14,'temp/data/month_1801/201801300914435996.jpg'),(2070,14,'temp/data/month_1801/201801300915091285.jpg'),(2071,14,'temp/data/month_1801/201801300915158306.jpg'),(2072,14,'temp/data/month_1801/201801300915376630.jpg'),(2073,14,'temp/data/month_1801/201801300915442985.jpg'),(2074,15,'temp/data/month_1801/201801300919182678.jpg'),(2075,15,'temp/data/month_1801/201801300919403490.jpg'),(2076,15,'temp/data/month_1801/201801300919582400.jpg');
/*!40000 ALTER TABLE `js_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `js_category`
--

DROP TABLE IF EXISTS `js_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `js_category` (
  `category_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `js_category`
--

LOCK TABLES `js_category` WRITE;
/*!40000 ALTER TABLE `js_category` DISABLE KEYS */;
INSERT INTO `js_category` VALUES (3,'公司新闻'),(5,'业界动态');
/*!40000 ALTER TABLE `js_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `js_goods`
--

DROP TABLE IF EXISTS `js_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `js_goods` (
  `goods_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `column` int(1) NOT NULL COMMENT '1：新闻',
  `times` int(11) NOT NULL COMMENT '时间',
  `log` varchar(60) DEFAULT '0',
  `category_id` int(3) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='新闻表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `js_goods`
--

LOCK TABLES `js_goods` WRITE;
/*!40000 ALTER TABLE `js_goods` DISABLE KEYS */;
INSERT INTO `js_goods` VALUES (14,'将军团参观访问至高军民融合装备技术研究院','<p style=\"text-align: center;\"><img src=\"temp/data/month_1801/201801300914435996.jpg\" alt=\"\" /></p><p>11月14日下午，深圳市至高军民融合装备技术研究院迎来了一批尊贵的客人。海军装备部原政委金克少将、总参四部原副部长刘平少将、总装科订部原部长姬建民少将、国防部化武办原主任孔利少将、武警北京总队原副司令员耿建国少将、武警北京总队政治部原主任拓成祥少将、武警总部原运输油料部副部长张滨大校等首长来到研究院，参观了解研究院的建设情况，并做了重要指示。<br /></p><p style=\"text-align: center;\"><img src=\"temp/data/month_1801/201801300915091285.jpg\" alt=\"\" /><br /></p><p style=\"text-align: center;\"><img src=\"temp/data/month_1801/201801300915158306.jpg\" alt=\"\" /><br /></p><p style=\"text-align: center;\">至高研究院向各位首长介绍了研发中的仿真软件、海事产品等项目。<br /></p><p style=\"text-align: center;\"><img src=\"temp/data/month_1801/201801300915376630.jpg\" alt=\"\" /><br /></p><p style=\"text-align: center;\"><img src=\"temp/data/month_1801/201801300915442985.jpg\" alt=\"\" /><br /></p><p style=\"text-align: center;\">首长们听取了至高研究院的汇报，纷纷献计献策，并勉励至高在军民融合领域取得更大的成就。<br /></p>',1,1510816350,'temp/data/month_1801/s_201801300914435996.jpg',3),(15,'深圳市至高军民融合装备技术研究院正式揭牌成立！','<p style=\"text-align: center;\"><img src=\"temp/data/month_1801/201801300919182678.jpg\" alt=\"\" /></p><p>2017年11月3日上午，由至高信息发起的深圳市至高军民融合装备技术研究院在深圳市南山区正式揭牌成立！<br /><br /><br />&nbsp;深圳市国防科工办军工处处长马新宇、南山区科技创新局局长刘石明、国防科工局协作配套中心国科军友咨询部部长李英、国防科技大学原科研部副部长唐乾刚等领导和专家出席了开幕仪式并为研究院揭幕剪彩。<br /></p><p style=\"text-align: center;\"><img src=\"temp/data/month_1801/201801300919403490.jpg\" alt=\"\" /><br /></p><p>深圳市至高军民融合装备技术研究院是深圳市至高信息技术有限公司发起创办的民营非盈利机构。研究院将主要围绕深圳市政府发展军民融合产业、创建全国军民融合创新示范基地提供协同支撑，完成实施国家军民融合重点领域国防前沿及引领性技术研究、国防科技重大成果项目孵化，以及建设国防科技装备测试公共服务平台等核心任务。<br /><br /><br />至高信息总经理章乃云出任研究院院长。在开幕仪式上，她对深圳市国防科工办、南山区科技创新局、国防科工局协作配套中心、国防科技大学等政府单位及高校的领导和专家对研究院成立给予的关心和帮助表示感谢，并阐述了对研究院建设的规划。<br /></p><p style=\"text-align: center;\"><img src=\"temp/data/month_1801/201801300919582400.jpg\" alt=\"\" /><br /></p><p>马新宇处长、刘石明局长、李英部长以及唐乾刚部长等领导和专家作为嘉宾代表纷纷致辞。他们对研究院的创建均表示了期盼和祝福，并勉励至高在军民融合领域继续取得更大的成就。<br /></p>',1,1510291954,'temp/data/month_1801/s_201801300919182678.jpg',3);
/*!40000 ALTER TABLE `js_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `js_img`
--

DROP TABLE IF EXISTS `js_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `js_img` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `js_img`
--

LOCK TABLES `js_img` WRITE;
/*!40000 ALTER TABLE `js_img` DISABLE KEYS */;
INSERT INTO `js_img` VALUES (3,'data/month_1809/2018090414000481516.jpg',1),(4,'data/month_1809/2018090414000897278.jpg',3),(5,'data/month_1809/2018090414001154583.jpg',2);
/*!40000 ALTER TABLE `js_img` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-09 17:13:52
