-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-10-16 09:53:29
-- 服务器版本： 5.5.53-log
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larstudy`
--

-- --------------------------------------------------------

--
-- 表的结构 `js_admin`
--

CREATE TABLE `js_admin` (
  `id` int(8) NOT NULL COMMENT '主键',
  `username` varchar(18) NOT NULL COMMENT '用户名',
  `password` varchar(80) NOT NULL COMMENT '密码',
  `salt` varchar(8) NOT NULL,
  `times` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '2' COMMENT ' 1：超级管理员；2：运营人员；3集团管理员',
  `acl_id` int(5) DEFAULT NULL COMMENT '区域ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `js_admin`
--

INSERT INTO `js_admin` (`id`, `username`, `password`, `salt`, `times`, `level`, `acl_id`) VALUES
(4, 'admin', '$2y$10$iDYsj5fov.0b0XuQiZPwG.W3NZc2SaXbSQHS2TdeDxRSwg1U.tkie', '0LqAr', 0, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `js_attachments`
--

CREATE TABLE `js_attachments` (
  `id` int(8) NOT NULL,
  `pid` int(8) DEFAULT NULL COMMENT '关联的主题ID',
  `img` varchar(100) NOT NULL COMMENT '图片地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `js_attachments`
--

INSERT INTO `js_attachments` (`id`, `pid`, `img`) VALUES
(2069, 14, 'temp/data/month_1801/201801300914435996.jpg'),
(2070, 14, 'temp/data/month_1801/201801300915091285.jpg'),
(2071, 14, 'temp/data/month_1801/201801300915158306.jpg'),
(2072, 14, 'temp/data/month_1801/201801300915376630.jpg'),
(2073, 14, 'temp/data/month_1801/201801300915442985.jpg'),
(2074, 15, 'temp/data/month_1801/201801300919182678.jpg'),
(2075, 15, 'temp/data/month_1801/201801300919403490.jpg'),
(2076, 15, 'temp/data/month_1801/201801300919582400.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `js_category`
--

CREATE TABLE `js_category` (
  `category_id` int(3) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `js_category`
--

INSERT INTO `js_category` (`category_id`, `name`) VALUES
(3, '公司新闻'),
(5, '业界动态');

-- --------------------------------------------------------

--
-- 表的结构 `js_goods`
--

CREATE TABLE `js_goods` (
  `goods_id` int(5) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `column` int(1) NOT NULL COMMENT '1：新闻',
  `times` int(11) NOT NULL COMMENT '时间',
  `log` varchar(60) DEFAULT '0',
  `category_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻表';

--
-- 转存表中的数据 `js_goods`
--

INSERT INTO `js_goods` (`goods_id`, `title`, `content`, `column`, `times`, `log`, `category_id`) VALUES
(14, '将军团参观访问至高军民融合装备技术研究院', '<p style="text-align: center;"><img src="temp/data/month_1801/201801300914435996.jpg" alt="" /></p><p>11月14日下午，深圳市至高军民融合装备技术研究院迎来了一批尊贵的客人。海军装备部原政委金克少将、总参四部原副部长刘平少将、总装科订部原部长姬建民少将、国防部化武办原主任孔利少将、武警北京总队原副司令员耿建国少将、武警北京总队政治部原主任拓成祥少将、武警总部原运输油料部副部长张滨大校等首长来到研究院，参观了解研究院的建设情况，并做了重要指示。<br /></p><p style="text-align: center;"><img src="temp/data/month_1801/201801300915091285.jpg" alt="" /><br /></p><p style="text-align: center;"><img src="temp/data/month_1801/201801300915158306.jpg" alt="" /><br /></p><p style="text-align: center;">至高研究院向各位首长介绍了研发中的仿真软件、海事产品等项目。<br /></p><p style="text-align: center;"><img src="temp/data/month_1801/201801300915376630.jpg" alt="" /><br /></p><p style="text-align: center;"><img src="temp/data/month_1801/201801300915442985.jpg" alt="" /><br /></p><p style="text-align: center;">首长们听取了至高研究院的汇报，纷纷献计献策，并勉励至高在军民融合领域取得更大的成就。<br /></p>', 1, 1510816350, 'temp/data/month_1801/s_201801300914435996.jpg', 3),
(15, '深圳市至高军民融合装备技术研究院正式揭牌成立！', '<p style="text-align: center;"><img src="temp/data/month_1801/201801300919182678.jpg" alt="" /></p><p>2017年11月3日上午，由至高信息发起的深圳市至高军民融合装备技术研究院在深圳市南山区正式揭牌成立！<br /><br /><br />&nbsp;深圳市国防科工办军工处处长马新宇、南山区科技创新局局长刘石明、国防科工局协作配套中心国科军友咨询部部长李英、国防科技大学原科研部副部长唐乾刚等领导和专家出席了开幕仪式并为研究院揭幕剪彩。<br /></p><p style="text-align: center;"><img src="temp/data/month_1801/201801300919403490.jpg" alt="" /><br /></p><p>深圳市至高军民融合装备技术研究院是深圳市至高信息技术有限公司发起创办的民营非盈利机构。研究院将主要围绕深圳市政府发展军民融合产业、创建全国军民融合创新示范基地提供协同支撑，完成实施国家军民融合重点领域国防前沿及引领性技术研究、国防科技重大成果项目孵化，以及建设国防科技装备测试公共服务平台等核心任务。<br /><br /><br />至高信息总经理章乃云出任研究院院长。在开幕仪式上，她对深圳市国防科工办、南山区科技创新局、国防科工局协作配套中心、国防科技大学等政府单位及高校的领导和专家对研究院成立给予的关心和帮助表示感谢，并阐述了对研究院建设的规划。<br /></p><p style="text-align: center;"><img src="temp/data/month_1801/201801300919582400.jpg" alt="" /><br /></p><p>马新宇处长、刘石明局长、李英部长以及唐乾刚部长等领导和专家作为嘉宾代表纷纷致辞。他们对研究院的创建均表示了期盼和祝福，并勉励至高在军民融合领域继续取得更大的成就。<br /></p>', 1, 1510291954, 'temp/data/month_1801/s_201801300919182678.jpg', 3);

-- --------------------------------------------------------

--
-- 表的结构 `js_img`
--

CREATE TABLE `js_img` (
  `id` int(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `js_img`
--

INSERT INTO `js_img` (`id`, `name`, `sort`) VALUES
(3, 'data/month_1809/2018090414000481516.jpg', 1),
(4, 'data/month_1809/2018090414000897278.jpg', 3),
(5, 'data/month_1809/2018090414001154583.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `js_admin`
--
ALTER TABLE `js_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `js_attachments`
--
ALTER TABLE `js_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `js_category`
--
ALTER TABLE `js_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `js_goods`
--
ALTER TABLE `js_goods`
  ADD PRIMARY KEY (`goods_id`);

--
-- Indexes for table `js_img`
--
ALTER TABLE `js_img`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `js_admin`
--
ALTER TABLE `js_admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `js_attachments`
--
ALTER TABLE `js_attachments`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2083;
--
-- AUTO_INCREMENT for table `js_category`
--
ALTER TABLE `js_category`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `js_goods`
--
ALTER TABLE `js_goods`
  MODIFY `goods_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `js_img`
--
ALTER TABLE `js_img`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
