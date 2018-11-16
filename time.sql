-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-11-16 09:37:02
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car`
--
CREATE DATABASE IF NOT EXISTS `car` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `car`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(200) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `userID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(1, '22.193916', '113.555387\r\n', 'available', '1'),
(2, '22.192633\r\n', '113.554262\r\n', 'available\r\n', '1'),
(3, '22.196627\r\n', '113.543288\r\n', 'available\r\n', '1'),
(4, '22.197754\r\n', '113.540864\r\n', 'available\r\n', '1'),
(5, '22.199684\r\n', '113.542524\r\n', 'available\r\n', '1'),
(6, '22.186362\r\n', '113.556819\r\n', 'available\r\n', '1'),
(7, '22.193257\r\n', '113.544135\r\n', 'available\r\n', '1'),
(8, '22.157772\r\n', '113.577061\r\n', 'available\r\n', '1'),
(9, '22.147607\r\n', '113.558979\r\n', 'available\r\n', '1'),
(10, '22.159127\r\n', '113.554967\r\n', 'available', '1'),
(11, 'nnn', '35345', '32546', '1');

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `deposit` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `token`, `role`, `deposit`) VALUES
(1, 'yw', '123456', '0e2124e8c659542fe830c3131799765c', 'user', '300'),
(2, 'admin', 'adminpass', '21232f297a57a5a743894a0e4a801fc3', 'admin', '200');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `rideID` int(200) NOT NULL,
  `userID` int(200) NOT NULL,
  `bikeID` int(200) NOT NULL,
  `startdate` varchar(255) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `enddate` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `fare` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`rideID`, `userID`, `bikeID`, `startdate`, `starttime`, `enddate`, `endtime`, `duration`, `fare`) VALUES
(0, 1, 1, '25/09/2018', '19:11:11', '25/9/2018', '19:11:20', '1', '3'),
(1, 1, 1, '2018/09/26', '17:39:16', '2018/9/26', '17:39:32', '16', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`rideID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE `class` (
  `classID` int(8) NOT NULL,
  `classname` varchar(20) DEFAULT NULL,
  `department` enum('信息与软件工程系','计算机科学与工程系','商务管理系','数字艺术系','信息管理系','应用外语系') DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  `tname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`classID`, `classname`, `department`, `number`, `tname`) VALUES
(1, '软件工程1班', '信息与软件工程系', 29, '随便'),
(2, '商务管理1班', '商务管理系', 30, '随便'),
(3, '数艺3班', '数字艺术系', 25, '随便');

-- --------------------------------------------------------

--
-- 表的结构 `course`
--

CREATE TABLE `course` (
  `courseID` int(8) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `major` varchar(20) DEFAULT NULL,
  `nature` enum('选修课','必修课') DEFAULT NULL,
  `credit` int(4) DEFAULT NULL,
  `department` enum('信息与软件工程系','计算机科学与工程系','商务管理系','数字艺术系','信息管理系','应用外语系') DEFAULT NULL,
  `unitnum` int(8) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `course`
--

INSERT INTO `course` (`courseID`, `cname`, `major`, `nature`, `credit`, `department`, `unitnum`, `type`) VALUES
(1, '英语', '软件工程', '必修课', 4, '信息与软件工程系', 4, '写作 听力 选词填空 长篇阅读 仔细阅读 翻译\n'),
(2, '高数一', '软件工程', '必修课', 4, '信息与软件工程系', 8, '选择题 填空题 应用题'),
(3, '日语', '商务英语', '必修课', 4, '商务管理系', 4, '语言知识 阅读 听力');

-- --------------------------------------------------------

--
-- 表的结构 `paper`
--

CREATE TABLE `paper` (
  `pid` int(15) NOT NULL,
  `num` varchar(100) DEFAULT NULL,
  `pdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userID` int(15) DEFAULT NULL,
  `classID` int(8) DEFAULT NULL,
  `courseID` int(8) DEFAULT NULL,
  `time` int(4) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `pnature` varchar(50) DEFAULT NULL,
  `place` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `paper`
--

INSERT INTO `paper` (`pid`, `num`, `pdate`, `userID`, `classID`, `courseID`, `time`, `semester`, `pnature`, `place`) VALUES
(62, '25,,,', '2018-11-13 16:00:00', 1, 1, 1, 30, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\aDM86.doc'),
(63, '25,,,', '2018-11-13 16:00:00', 1, 1, 1, 30, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\5rl8O.doc'),
(64, '25,,,', '2018-11-13 16:00:00', 1, 1, 1, 30, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\vajqG.doc'),
(65, '25,,,', '2018-11-13 16:00:00', 1, 1, 1, 30, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\4fmZ1.doc'),
(66, '25,,,', '2018-11-13 16:00:00', 1, 1, 1, 30, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\p8yzY.doc'),
(67, '25,,,', '2018-11-13 16:00:00', 1, 1, 1, 30, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\Dfflt.doc'),
(68, '25', '2018-11-13 16:00:00', 1, 1, 1, 30, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\1kxdq.doc'),
(69, '25', '2018-11-13 16:00:00', 1, 1, 1, 30, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\yk3GZ.doc'),
(70, '25', '2018-11-13 16:00:00', 1, 1, 1, 30, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\2EYdB.doc'),
(71, '25,24', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\dvbPY.doc'),
(72, '25,26,24', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\rQu8U.doc'),
(73, '25,26,24', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\2ESRN.doc'),
(74, '25,26,24', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\F01id.doc'),
(75, '24', '2018-11-13 16:00:00', 0, 0, 1, 120, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\kFuLI.doc'),
(76, '24', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\lMJon.doc'),
(77, '', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\TmKN3.doc'),
(78, '', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\sgBTI.doc'),
(79, '26,24', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\k2S5O.doc'),
(80, '25,26,24', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\rkWdW.doc'),
(81, '25,26,24', '2018-11-13 16:00:00', 0, 0, 1, 111, '1', '主考', 'D:\\HTML\\xampp\\htdocs\\exam\\examination\\front\\upload\\noC7d.doc');

-- --------------------------------------------------------

--
-- 表的结构 `relationship`
--

CREATE TABLE `relationship` (
  `id` int(15) NOT NULL,
  `userID` int(15) DEFAULT NULL,
  `courseID` int(8) DEFAULT NULL,
  `classID` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `relationship`
--

INSERT INTO `relationship` (`id`, `userID`, `courseID`, `classID`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(4, 1, 3, 3),
(5, 1, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `subject`
--

CREATE TABLE `subject` (
  `sid` int(15) NOT NULL,
  `question` text,
  `userID` int(15) DEFAULT NULL,
  `score` int(4) DEFAULT NULL,
  `type` enum('阅读','语言知识','长篇阅读','仔细阅读','写作','选词填空','选择题','填空题','判断题','应用题','作文','翻译','段落匹配') DEFAULT NULL,
  `answer` text,
  `sdate` timestamp NULL DEFAULT NULL,
  `unit` int(4) DEFAULT NULL,
  `courseID` int(8) DEFAULT NULL,
  `difficulty` enum('难','中','易') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `subject`
--

INSERT INTO `subject` (`sid`, `question`, `userID`, `score`, `type`, `answer`, `sdate`, `unit`, `courseID`, `difficulty`) VALUES
(23, 'Stop making so much noise ____ the neighbor will start complaining. \\n A、or else。 B、but still。 C、and then 。D、so that', 1, 10, '选择题', 'B', '2018-02-17 16:00:00', 1, 1, '易'),
(24, '近年来，中国有越来越多的城市开始建设地铁。发展地铁有助于减少城市的交通拥堵和空气污染。地铁具有安全、快捷和舒适的优点。越来越多的人选择地铁作为每天上班或上学的主要交通工具。如今，在中国乘坐地铁正变得越来越方便。在有些城市里，乘客只需用卡或手机就可以乘坐地铁。许多当地老年市民还可以免费乘坐地铁', 2, 10, '翻译', 'In recent years, more and more cities in China have begun to build subways. The development of subways can help reduce traffic congestion and air pollution in cities. The subway has the advantages of safety, speed and comfort. More and more people choose the subway as the main means of transportation to work or school every day. Nowadays, it is becoming more and more convenient to take the subway in China. In some cities, passengers can use a card or a mobile phone to take the subway. Many local elderly citizens can also take the subway for free.', '2017-05-11 16:00:00', 1, 1, '易'),
(25, '　Directions: For this part, you are allowed 30 minutes to write a short essay onhow to best handle the relationshop between teachers and students.\r\n\r\n　　You should write at least 120 words but no more than 180 words.', 1, 100, '写作', 'It is a truth universally acknowledged that the relationship between a parent and a child is the most significant ones in a person’s life. Positive parent-child bond is beneficial to family harmony and the growth of children. Therefore, people should learn to balance the relationship between parents and children.\r\n\r\n　　There are some conductive suggestions given to both parents and children. First and foremost, it is very important for parents to emphasize the significance of family time spent with their children, like eating meals together on weekends, going to sporting events, movies and the like. Besides, it would be beneficial if parents could pay attention to their children''s academic performance, friendship and extracurricular activities. Additionally, it is necessary that child should boost their awareness of communicating with their parents, with relaxed and side-by-side conversations.\r\n\r\n　　As has been noted, parents and children should make joint efforts to create good relationship between parents and children.', '2018-09-03 16:00:00', 1, 1, '易'),
(26, 'Since the 1940s, southern California has had a reputation for smog. Things are not as bad as they once were but, according to the American Lung Association, Los Angeles is still the worst city in the United States for levels of   26  . Gazing down on the city from the Getty Center, an art museum in the Santa Monica Mountains, one would find the view of the Pacific Ocean blurred by the haze (霾). Nor is the state’s had air   27  to its south. Fresno, in the central valley, comes top of the list in America for year-round pollution. Residents’ hearts and lungs are affected as a   28  .\r\n\r\nAll of which, combined with California’s reputation as the home of technological   29  , makes the place ideal for developing and testing systems designed to monitor pollution in   30  . And that is just what Aclima, a new firm in San Francisco, has been doing over the past few months. It has been trying out monitoring that are   31  to yield minute-to-minute maps of   32  air pollution. Such stations will also be able to keep an eye on what is happening inside buildings, including offices.\r\n\r\nTo this end, Aclima has been   33  with Google’s Street View system. Davida Herzl, Aclima’s boss, says they have revealed pollution highs on days when San Francisco’s transit workers went on strike and the city’s   34  were forced to use their cars. Conversely, “cycle to work” days have done their job by   35  pollution lows.\\n\r\n\r\nA:assisted。\r\nB:collaborating。\r\nC:consequence。\r\nD:consumers。\r\nE:creating。\r\nF:detail。\r\nG:domestic。\r\nH:frequently。\r\nI:inhabitants。\r\nJ:innovation。\r\nK:intended。\r\nL:outdoor。\r\nM:pollutants。\r\nN:restricted。\r\nH:Sum。', 1, 65, '仔细阅读', '26M pollutants 。\r\n27N restricted 。\r\n28C consequence 。\r\n29J innovation 。\r\n 30F detail 。\r\n31 K intended 。\r\n32 outdoor 。\r\n33 B collaborating 。\r\n\r\n34 I inhabitants 。\r\n\r\n35 E creating。', '2018-09-03 16:00:00', 1, 1, '易'),
(27, 'Stop making so much noise ____ the neighbor will start complaining. \\n A、or else。 B、but still。 C、and then 。D、so that', 1, 10, '选择题', 'B', '2018-02-17 16:00:00', 1, 1, '易'),
(28, 'Stop making so much noise ____ the neighbor will start complaining. \\n A、or else。 B、but still。 C、and then 。D、so that', 1, 10, '选择题', 'B', '2018-02-17 16:00:00', 1, 1, '易');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `userID` int(15) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `department` enum('信息与软件工程系','计算机科学与工程系','商务管理系','数字艺术系','信息管理系','应用外语系') DEFAULT NULL,
  `role` enum('admin','user') DEFAULT NULL,
  `superior` int(15) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`userID`, `name`, `password`, `department`, `role`, `superior`, `token`) VALUES
(1, 'user', '123456', NULL, 'user', NULL, ''),
(2, 'roy', '123456', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `relationship`
--
ALTER TABLE `relationship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `paper`
--
ALTER TABLE `paper`
  MODIFY `pid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- 使用表AUTO_INCREMENT `relationship`
--
ALTER TABLE `relationship`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `subject`
--
ALTER TABLE `subject`
  MODIFY `sid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;--
-- Database: `hk`
--
CREATE DATABASE IF NOT EXISTS `hk` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hk`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(11) NOT NULL,
  `latitude` float(8,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(0, 22.193916, 113.555389, 'Available', 0),
(1, 22.192633, 113.554260, 'Available', 2),
(2, 22.196627, 113.543289, 'Available', 2),
(3, 22.197754, 113.540863, 'Available', 2),
(4, 22.197754, 113.540863, 'Available', 2),
(5, 22.199684, 113.542526, 'Available', 2),
(6, 22.186361, 113.556816, 'Available', 2),
(7, 22.193256, 113.544136, 'Available', 2),
(8, 22.157772, 113.577065, 'Available', 2),
(9, 22.147608, 113.558975, 'Available', 2),
(10, 22.159126, 113.554970, 'Available', 2),
(14, 0.000000, 111.000000, 'Unavailable', 1);

-- --------------------------------------------------------

--
-- 表的结构 `history`
--

CREATE TABLE `history` (
  `userID` int(11) NOT NULL,
  `rideID` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `starttime` time NOT NULL,
  `enddate` date NOT NULL,
  `endtime` time NOT NULL,
  `duration` int(255) NOT NULL,
  `fare` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `history`
--

INSERT INTO `history` (`userID`, `rideID`, `startdate`, `starttime`, `enddate`, `endtime`, `duration`, `fare`) VALUES
(1, 14, '2018-09-30', '09:35:20', '2018-09-30', '10:40:00', 65, 15);

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `deposit` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `token`, `role`, `deposit`) VALUES
(1, 'admin', 'adminpass', '21232f297a57a5a743894a0e4a801fc3', 'admin', 200),
(2, 'user1', 'user1pass', '24c9e15e52afc47c225b757e7bee1f9d', 'user', 300),
(3, 'user2', 'user2pass', '7e58d63b60197ceb55a1c487989a3720', 'user', 100);

-- --------------------------------------------------------

--
-- 表的结构 `ride`
--

CREATE TABLE `ride` (
  `rideID` int(11) NOT NULL,
  `bikeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `starttime` time NOT NULL,
  `enddate` date NOT NULL,
  `endtime` time NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ride`
--
ALTER TABLE `ride`
  ADD PRIMARY KEY (`rideID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `ride`
--
ALTER TABLE `ride`
  MODIFY `rideID` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `hk1`
--
CREATE DATABASE IF NOT EXISTS `hk1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hk1`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(11) NOT NULL,
  `latitude` float(9,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(1, 22.193916, 113.255219, 'Available', 0),
(2, 22.193916, 100.000000, 'Available', 0),
(3, 22.193916, 100.000000, 'Available', 0),
(4, 22.193916, 100.000000, 'Available', 0),
(5, 22.193916, 100.000000, 'Available', 0),
(6, 22.193916, 100.000000, 'Available', 0),
(7, 22.193916, 100.000000, 'Available', 0),
(8, 22.193916, 100.000000, 'Available', 0),
(9, 22.193916, 100.000000, 'Available', 0),
(10, 22.193916, 100.000000, 'Available', 0),
(11, 2.000000, 2.000000, 'Available', 0),
(12, 2.000000, 2.000000, 'Available', 0),
(13, 2.000000, 2.000000, 'Available', 2);

-- --------------------------------------------------------

--
-- 表的结构 `history`
--

CREATE TABLE `history` (
  `rideID` int(11) NOT NULL,
  `bikeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startdata` date NOT NULL,
  `starttime` time NOT NULL,
  `enddata` date NOT NULL,
  `endtime` time NOT NULL,
  `duration` int(11) NOT NULL,
  `fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `history`
--

INSERT INTO `history` (`rideID`, `bikeID`, `userID`, `startdata`, `starttime`, `enddata`, `endtime`, `duration`, `fare`) VALUES
(7, 12, 1, '2018-10-05', '11:13:27', '2018-10-05', '11:25:10', 12, 3);

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `deposit` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `token`, `role`, `deposit`) VALUES
(1, 'admin', 'adminpass', '21232f297a57a5a743894a0e4a801fc3', 'admin', 200),
(2, 'user1', 'user1pass', '24c9e15e52afc47c225b757e7bee1f9d', 'user', 300),
(3, 'user2', 'user2pass', '7e58d63b60197ceb55a1c487989a3720', 'user', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`rideID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `history`
--
ALTER TABLE `history`
  MODIFY `rideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `hk2`
--
CREATE DATABASE IF NOT EXISTS `hk2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hk2`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(11) NOT NULL,
  `latitude` float(9,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(1, 22.193916, 113.555389, 'Available', 0),
(2, 22.193916, 113.555389, 'Available', 0),
(3, 22.193916, 113.555389, 'Available', 0),
(4, 22.193916, 113.555389, 'Available', 0),
(5, 22.193916, 113.555389, 'Available', 0),
(6, 22.193916, 113.555389, 'Available', 0),
(7, 22.193916, 113.555389, 'Available', 0),
(8, 22.193916, 113.555389, 'Available', 0),
(9, 22.193916, 113.555389, 'Available', 0),
(10, 22.193916, 113.555389, 'Available', 0),
(11, 1.000000, 1.000000, 'Unavailable', 1),
(14, 0.000000, 0.000000, 'Available', 0),
(15, 0.000000, 0.000000, 'Unavailable', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ride`
--

CREATE TABLE `ride` (
  `rideID` int(11) NOT NULL,
  `bikeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `starttime` time NOT NULL,
  `enddate` date NOT NULL,
  `endtime` time NOT NULL,
  `duration` varchar(255) NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ride`
--

INSERT INTO `ride` (`rideID`, `bikeID`, `userID`, `startdate`, `starttime`, `enddate`, `endtime`, `duration`, `fare`) VALUES
(1, 14, 1, '2018-10-05', '16:59:55', '0000-00-00', '00:00:00', '', 0),
(2, 15, 1, '2018-10-06', '09:31:01', '2018-10-06', '10:00:00', '29', 6),
(3, 15, 1, '2018-10-06', '09:49:36', '2018-10-06', '10:00:00', '29', 6),
(4, 15, 1, '2018-10-06', '09:51:26', '2018-10-06', '10:00:00', '29', 6),
(5, 11, 1, '2018-10-09', '16:18:35', '0000-00-00', '00:00:00', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `token`, `role`, `deposit`) VALUES
(1, 'admin', 'adminpass', ' 21232f297a57a5a743894a0e4a801fc3', 'admin', 300),
(2, 'user1', 'user1pass', '24c9e15e52afc47c225b757e7bee1f9d', 'user', 100),
(3, 'user2', 'user2pass', '7e58d63b60197ceb55a1c487989a3720', 'user', 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- Indexes for table `ride`
--
ALTER TABLE `ride`
  ADD PRIMARY KEY (`rideID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `ride`
--
ALTER TABLE `ride`
  MODIFY `rideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `hk4`
--
CREATE DATABASE IF NOT EXISTS `hk4` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hk4`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(11) NOT NULL,
  `latitude` float(9,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(1, 22.193916, 113.555389, 'Available', 0),
(2, 22.192633, 113.554260, 'Available', 0),
(3, 22.193916, 113.555389, 'Available', 0),
(4, 22.192633, 113.554260, 'Available', 0),
(5, 22.197754, 113.540863, 'Available', 0),
(6, 22.147608, 113.558975, 'Available', 0),
(7, 22.193916, 113.555389, 'Available', 0),
(8, 22.192633, 113.554260, 'Available', 0),
(9, 22.193916, 113.555389, 'Available', 0),
(10, 22.192633, 113.554260, 'Available', 0),
(11, 22.197754, 113.540863, 'Available', 0),
(12, 22.147608, 113.558975, 'Available', 0),
(14, 1.000000, 1.000000, 'Available', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ride`
--

CREATE TABLE `ride` (
  `rideID` int(11) NOT NULL,
  `bikeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `starttime` time NOT NULL,
  `enddate` date NOT NULL,
  `endtime` time NOT NULL,
  `duration` float NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ride`
--

INSERT INTO `ride` (`rideID`, `bikeID`, `userID`, `startdate`, `starttime`, `enddate`, `endtime`, `duration`, `fare`) VALUES
(4, 14, 1, '2018-10-08', '10:50:55', '2018-10-08', '12:00:00', 70, 15);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `token`, `role`, `deposit`) VALUES
(1, 'admin', 'adminpass', '21232f297a57a5a743894a0e4a801fc3', 'admin', 300),
(2, 'user1', 'user1pass', '24c9e15e52afc47c225b757e7bee1f9d', 'user', 100),
(3, 'user2', 'user2pass', '7e58d63b60197ceb55a1c487989a3720', 'user', 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- Indexes for table `ride`
--
ALTER TABLE `ride`
  ADD PRIMARY KEY (`rideID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `ride`
--
ALTER TABLE `ride`
  MODIFY `rideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `hk5`
--
CREATE DATABASE IF NOT EXISTS `hk5` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hk5`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(11) NOT NULL,
  `latitude` float(9,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(1, 22.193916, 113.555389, 'Available', 0),
(2, 22.192633, 113.554260, 'Available', 0),
(3, 22.196627, 113.543289, 'Available', 0),
(4, 22.197754, 113.540863, 'Available', 0),
(5, 22.199684, 113.542526, 'Available', 0),
(6, 22.186361, 113.556816, 'Available', 0),
(7, 22.193256, 113.544136, 'Available', 0),
(8, 22.157772, 113.577065, 'Available', 0),
(9, 22.147608, 113.558975, 'Available', 0),
(10, 22.159126, 113.554970, 'Available', 0),
(13, 0.000000, 0.000000, 'Unavailable', 1),
(14, 1.000000, 1.000000, 'Available', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ride`
--

CREATE TABLE `ride` (
  `rideID` int(11) NOT NULL,
  `bikeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `starttime` time NOT NULL,
  `enddate` date NOT NULL,
  `endtime` time NOT NULL,
  `duration` int(30) NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ride`
--

INSERT INTO `ride` (`rideID`, `bikeID`, `userID`, `startdate`, `starttime`, `enddate`, `endtime`, `duration`, `fare`) VALUES
(1, 14, 1, '2018-10-11', '15:54:44', '2018-10-11', '17:00:00', 66, 13.2);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `token`, `role`, `deposit`) VALUES
(1, 'admin', 'adminpass', '21232f297a57a5a743894a0e4a801fc3', 'admin', 200),
(2, 'user1', 'user1pass', '24c9e15e52afc47c225b757e7bee1f9d', 'user', 223),
(3, 'user2', 'user2pass', '7e58d63b60197ceb55a1c487989a3720', 'user', 333);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- Indexes for table `ride`
--
ALTER TABLE `ride`
  ADD PRIMARY KEY (`rideID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `ride`
--
ALTER TABLE `ride`
  MODIFY `rideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `hk6`
--
CREATE DATABASE IF NOT EXISTS `hk6` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `hk6`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(11) NOT NULL,
  `latitude` float(9,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `status` enum('Unavailable','Available') NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(1, 0.000000, 0.000000, '', 0),
(2, 0.000000, 0.000000, '', 0),
(3, 0.000000, 0.000000, '', 0),
(4, 0.000000, 0.000000, '', 0),
(5, 0.000000, 0.000000, '', 0),
(6, 0.000000, 0.000000, '', 0),
(7, 0.000000, 0.000000, '', 0),
(8, 0.000000, 0.000000, '', 0),
(9, 0.000000, 0.000000, '', 0),
(10, 0.000000, 0.000000, '', 0),
(11, 0.000000, 0.000000, '', 0),
(12, 0.000000, 0.000000, '', 0),
(13, 0.000000, 0.000000, '', 0),
(15, 0.000000, 0.000000, '', 0),
(16, 1000.000000, 1000.000000, 'Available', 2),
(17, 0.000000, 0.000000, '', 0),
(18, 0.000000, 0.000000, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ride`
--

CREATE TABLE `ride` (
  `rideID` int(11) NOT NULL,
  `bikeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `starttime` time NOT NULL,
  `enddate` date NOT NULL,
  `endtime` time NOT NULL,
  `duration` int(255) NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- 转存表中的数据 `ride`
--

INSERT INTO `ride` (`rideID`, `bikeID`, `userID`, `startdate`, `starttime`, `enddate`, `endtime`, `duration`, `fare`) VALUES
(1, 16, 1, '2018-10-19', '16:38:13', '2018-10-19', '17:00:00', 22, 6);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL,
  `deposit` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `token`, `role`, `deposit`) VALUES
(1, 'admin', 'adminpass', '21232f297a57a5a743894a0e4a801fc3', 'admin', 200),
(2, 'user1', 'user1pass', '24c9e15e52afc47c225b757e7bee1f9d', 'user', 300),
(3, 'user2', 'user2pass', '7e58d63b60197ceb55a1c487989a3720', 'user', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- Indexes for table `ride`
--
ALTER TABLE `ride`
  ADD PRIMARY KEY (`rideID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `ride`
--
ALTER TABLE `ride`
  MODIFY `rideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `hk7`
--
CREATE DATABASE IF NOT EXISTS `hk7` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hk7`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(11) NOT NULL,
  `latitude` float(9,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(1, 22.193916, 113.555389, 'Available', 0),
(2, 22.192633, 113.554260, 'Available', 0),
(3, 22.196627, 113.543289, 'Available', 0),
(4, 22.197754, 113.540863, 'Available', 0),
(5, 22.199684, 113.542526, 'Available', 0),
(6, 22.186361, 113.556816, 'Available', 0),
(7, 22.193256, 113.544136, 'Available', 0),
(8, 22.157772, 113.577065, 'Available', 0),
(9, 22.147608, 113.558975, 'Available', 0),
(10, 22.159126, 113.554970, 'Available', 0),
(11, 22.159126, 113.554970, 'Available', 0),
(12, 22.157772, 113.577065, 'Available', 0),
(13, 22.147608, 113.558975, 'Available', 0),
(14, 22.159126, 113.554970, 'Available', 0),
(15, 10.000000, 10.000000, 'Available', 0),
(17, 0.000000, 0.000000, 'Unavailable', 2);

-- --------------------------------------------------------

--
-- 表的结构 `ride`
--

CREATE TABLE `ride` (
  `rideID` int(11) NOT NULL,
  `bikeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `starttime` time NOT NULL,
  `enddate` date NOT NULL,
  `endtime` time NOT NULL,
  `duration` float NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ride`
--

INSERT INTO `ride` (`rideID`, `bikeID`, `userID`, `startdate`, `starttime`, `enddate`, `endtime`, `duration`, `fare`) VALUES
(2, 15, 1, '2018-10-24', '10:39:13', '2018-10-24', '12:00:00', 81, 18);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `token`, `role`, `deposit`) VALUES
(1, 'admin', 'adminpass', '21232f297a57a5a743894a0e4a801fc3', 'admin', 200),
(2, 'user1', 'user1pass', '24c9e15e52afc47c225b757e7bee1f9d', 'user', 100),
(3, 'user2', 'user2pass', ' ', 'user', 355);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- Indexes for table `ride`
--
ALTER TABLE `ride`
  ADD PRIMARY KEY (`rideID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `ride`
--
ALTER TABLE `ride`
  MODIFY `rideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `hk8`
--
CREATE DATABASE IF NOT EXISTS `hk8` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hk8`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(11) NOT NULL,
  `latitude` float(9,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(1, 22.193916, 113.555389, 'Available', 0),
(2, 22.192633, 113.554260, 'Available', 0),
(3, 22.196627, 113.543289, 'Available', 0),
(4, 22.197754, 113.540863, 'Available', 0),
(5, 22.199684, 113.542526, 'Available', 0),
(6, 22.186361, 113.556816, 'Available', 0),
(7, 22.193256, 113.544136, 'Available', 0),
(8, 22.157772, 113.577065, 'Available', 0),
(9, 22.147608, 113.558975, 'Available', 0),
(10, 22.159126, 113.554970, 'Available', 0),
(11, 22.186361, 113.556816, 'Available', 0),
(12, 22.193256, 113.544136, 'Available', 0),
(13, 1.000000, 1.000000, 'Available', 0),
(14, 2.000000, 2.000000, 'Unavailable', 2);

-- --------------------------------------------------------

--
-- 表的结构 `ride`
--

CREATE TABLE `ride` (
  `rideID` int(11) NOT NULL,
  `bikeID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `starttime` time NOT NULL,
  `enddate` date NOT NULL,
  `endtime` time NOT NULL,
  `duration` float NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ride`
--

INSERT INTO `ride` (`rideID`, `bikeID`, `userID`, `startdate`, `starttime`, `enddate`, `endtime`, `duration`, `fare`) VALUES
(1, 13, 1, '2018-10-27', '11:06:12', '2018-10-27', '11:20:00', 14, 3);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `token`, `role`, `deposit`) VALUES
(1, 'admin', 'adminpass', '21232f297a57a5a743894a0e4a801fc3', 'admin', 122),
(2, 'user1', 'user1pass', '', 'user', 222),
(3, 'user2', 'user2pass', '', 'user', 444);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- Indexes for table `ride`
--
ALTER TABLE `ride`
  ADD PRIMARY KEY (`rideID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `ride`
--
ALTER TABLE `ride`
  MODIFY `rideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 限制导出的表
--

--
-- 限制表 `ride`
--
ALTER TABLE `ride`
  ADD CONSTRAINT `ride_ibfk_1` FOREIGN KEY (`rideID`) REFERENCES `bike` (`bikeID`);
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;

-- --------------------------------------------------------

--
-- 表的结构 `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `addressName` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `address`
--

INSERT INTO `address` (`id`, `addressName`) VALUES
(3, '四川省绵阳市游仙区新人桥22号'),
(4, '成都市都江堰市青城山镇成都东软学院');

-- --------------------------------------------------------

--
-- 表的结构 `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `foodName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `foodPrice` double(10,2) NOT NULL,
  `foodNum` int(30) NOT NULL,
  `foodTotalPrice` int(11) NOT NULL,
  `foodRequire` int(11) NOT NULL,
  `foodImg` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `book`
--

INSERT INTO `book` (`id`, `foodName`, `foodPrice`, `foodNum`, `foodTotalPrice`, `foodRequire`, `foodImg`) VALUES
(45, 'Strawberry Cake', 39.00, 1, 0, 0, 'img/dangao.jpg'),
(46, 'Fresh Mushrooms', 20.00, 1, 0, 0, 'img/img_1.jpg'),
(47, 'green pepper', 19.00, 2, 0, 0, 'img/qingjiao.jpg'),
(48, 'Cheese and Garlic Toast', 21.00, 1, 0, 0, 'img/img_2.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `foodName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `foodPrice` varchar(255) NOT NULL,
  `foodImg` varchar(255) CHARACTER SET utf8 NOT NULL,
  `foodType` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `food`
--

INSERT INTO `food` (`id`, `foodName`, `foodPrice`, `foodImg`, `foodType`) VALUES
(1, '馒头', '6', 'img/mantou.jpg', '主食'),
(2, '面条', '10', 'img/miantiao.jpg', '主食'),
(3, '米饭', '2', 'img/rice.jpg', '主食'),
(4, '肉夹馍', '12', 'img/roujiamo.jpg', '主食'),
(5, '凉拌三丝', '11', 'img/liangban.jpg', '菜品'),
(6, '干锅鸡', '35', 'img/ganguoji.jpg', '菜品'),
(7, '青椒肉丝', '18', 'img/qjrs.jpg', '菜品'),
(8, '油焖虾', '28', 'img/xia.jpg', '菜品'),
(9, '饺子', '12', 'img/jiaozi.jpg', '主食'),
(10, '汤圆', '15', 'img/tangyuan.jpg', '主食');

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `password` varchar(30) NOT NULL,
  `confirmPassword` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `confirmPassword`) VALUES
(59, '杨文', '970524', '970524'),
(60, 'yw', '123123', '123123'),
(61, 'useradmin', '123123', '123123'),
(62, 'root', '123123', '123123'),
(63, 'qwe', '123123', '123123'),
(65, 'hdl', '123123', '123123'),
(66, 'lamb', '970524', '970524');

-- --------------------------------------------------------

--
-- 表的结构 `newfood`
--

CREATE TABLE `newfood` (
  `id` int(255) NOT NULL,
  `foodName` text CHARACTER SET utf8 NOT NULL,
  `foodPrice` double(10,2) NOT NULL,
  `foodImg` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `newfood`
--

INSERT INTO `newfood` (`id`, `foodName`, `foodPrice`, `foodImg`) VALUES
(2, '                                      水煮肉片', 38.80, './images/20180829100731dog1.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE `shop` (
  `id` int(255) NOT NULL,
  `shoppingName` text CHARACTER SET utf8 NOT NULL,
  `shoppingPrice` double(10,2) NOT NULL,
  `shoppingNum` int(255) NOT NULL,
  `shoppingGift` varchar(255) CHARACTER SET utf8 NOT NULL,
  `shoppingImg` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`id`, `shoppingName`, `shoppingPrice`, `shoppingNum`, `shoppingGift`, `shoppingImg`) VALUES
(6, 'Pineapple Juice', 16.00, 1, '', 'img/res_img_5.jpg'),
(7, 'Green Juice', 13.00, 1, '', 'img/res_img_6.jpg'),
(8, 'Soft Drinks', 12.00, 1, '', 'img/res_img_7.jpg'),
(9, 'Carlo Rosee Drinks', 10.00, 1, '', 'img/drink.jpg'),
(10, 'Beef Steak', 32.00, 1, '', 'img/res_img_8.jpg'),
(11, 'Tomato with Chicken', 24.00, 1, '', 'img/slide_2.jpg'),
(12, 'Sausages from Italy', 20.00, 1, '', 'img/res_img_2.jpg'),
(13, 'Beef Grilled', 35.00, 1, '', 'img/slide_1.jpg'),
(14, 'fish', 25.00, 1, '', 'img/fish.jpg'),
(15, 'green pepper', 19.00, 1, '', 'img/qingjiao.jpg'),
(16, 'Yu-Shiang Shredded Pork', 23.00, 1, '', 'img/yuxiangroushi.jpg'),
(17, 'Fried shrimps', 49.00, 1, '', 'img/xia.jpg'),
(18, 'Three Kinds of Cold Mixed Vegetables', 12.00, 1, '', 'img/liangban.jpg'),
(19, 'Chicken feet', 30.00, 1, '', 'img/jijiao.jpg'),
(20, 'Potato silk', 15.00, 1, '', 'img/tomato.jpg'),
(21, 'Scrambled egg with tomato', 25.00, 1, '', '"img/egg.jpg'),
(22, 'Chocolate curls', 16.00, 1, '', 'img/qiaokl.jpg'),
(23, 'Ice cream', 13.00, 1, '', 'img/ice.jpg'),
(24, 'Strawberry Cake', 39.00, 1, '', 'img/dangao.jpg'),
(25, 'Purple sweet potato coils', 21.00, 1, '', 'img/zishujuan.jpg'),
(26, 'Fried meat with corn', 19.00, 1, '', 'img/yumi.jpg'),
(27, 'Twice-cooked pork', 25.00, 1, '', 'img/huiguorou.jpg'),
(28, 'Pig''s trotters', 39.00, 1, '', 'img/zhuti.jpg'),
(29, 'Deep-Fried Tofu', 18.00, 1, '', 'img/cuipidoufu.jpg'),
(30, 'Fresh Mushrooms', 20.00, 1, '', 'img/img_1.jpg'),
(31, 'Cheese and Garlic Toast', 21.00, 1, '', 'img/img_2.jpg'),
(32, 'Grilled Chiken Salad', 9.00, 1, '', 'img/img_3.jpg'),
(33, 'Organic Egg', 13.00, 1, '', 'img/img_4.jpg'),
(34, '>Tomato Soup with Chicken', 25.00, 1, '', 'img/img_5.jpg'),
(35, 'Salad with Crispy Chicken', 32.00, 1, '', 'img/img_6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newfood`
--
ALTER TABLE `newfood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- 使用表AUTO_INCREMENT `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- 使用表AUTO_INCREMENT `newfood`
--
ALTER TABLE `newfood`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 表的结构 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 表的结构 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- 转存表中的数据 `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('hk1', 'rideID', 'int', '11', '', 0, ',', '');

-- --------------------------------------------------------

--
-- 表的结构 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- 转存表中的数据 `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"angular_direct":"angular","snap_to_grid":"off","relation_lines":"true"}');

-- --------------------------------------------------------

--
-- 表的结构 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- 表的结构 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 表的结构 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 表的结构 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 转存表中的数据 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"time","table":"history"},{"db":"exam","table":"paper"},{"db":"exam","table":"user"},{"db":"exam","table":"subject"},{"db":"think","table":"think_user"},{"db":"think","table":"think_data"},{"db":"exam","table":"course"},{"db":"exam","table":"relationship"},{"db":"exam","table":"class"},{"db":"login","table":"login"}]');

-- --------------------------------------------------------

--
-- 表的结构 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 表的结构 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- 转存表中的数据 `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'car', 'bike', '{"sorted_col":"`bikeID` ASC"}', '2018-09-25 06:09:21'),
('root', 'hk', 'bike', '{"sorted_col":"`bike`.`bikeID` ASC"}', '2018-09-29 11:20:32'),
('root', 'hk1', 'bike', '{"sorted_col":"`bike`.`bikeID` ASC"}', '2018-10-05 01:19:29'),
('root', 'hk5', 'user', '{"sorted_col":"`user`.`id` ASC"}', '2018-10-11 06:35:02'),
('root', 'login', 'book', '[]', '2018-08-27 09:10:11'),
('root', 'login', 'login', '{"sorted_col":"`login`.`confirmPassword`  DESC"}', '2018-08-29 08:29:23');

-- --------------------------------------------------------

--
-- 表的结构 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 转存表中的数据 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-05-21 12:26:54', '{"lang":"zh_CN","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- 表的结构 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 表的结构 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- 表的结构 `bike`
--

CREATE TABLE `bike` (
  `bikeID` int(11) NOT NULL,
  `latitude` float(8,6) NOT NULL,
  `longitude` float(9,6) NOT NULL,
  `status` enum('Available','Unavailable') NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bike`
--

INSERT INTO `bike` (`bikeID`, `latitude`, `longitude`, `status`, `userID`) VALUES
(0, 22.193916, 113.555389, 'Available', 0),
(1, 22.192633, 113.554260, 'Available', 2),
(2, 22.196627, 113.543289, 'Available', 2),
(3, 22.197754, 113.540863, 'Available', 2),
(4, 22.197754, 113.540863, 'Available', 2),
(5, 22.199684, 113.542526, 'Available', 2),
(6, 22.186361, 113.556816, 'Available', 2),
(7, 22.193256, 113.544136, 'Available', 2),
(8, 22.157772, 113.577065, 'Available', 2),
(9, 22.147608, 113.558975, 'Available', 2),
(10, 22.159126, 113.554970, 'Available', 2),
(14, 0.000000, 111.000000, 'Unavailable', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bikeID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bike`
--
ALTER TABLE `bike`
  MODIFY `bikeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;--
-- Database: `think`
--
CREATE DATABASE IF NOT EXISTS `think` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `think`;

-- --------------------------------------------------------

--
-- 表的结构 `think_data`
--

CREATE TABLE `think_data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_data`
--

INSERT INTO `think_data` (`id`, `name`, `status`) VALUES
(11, '小明', 111111),
(12, '小明', 111111),
(15, '杨文', 8),
(16, '小明', 111111),
(17, 'yw', 0),
(18, 'thinkphp', 1),
(19, 'lzl', 1),
(20, 'lzy', 2);

-- --------------------------------------------------------

--
-- 表的结构 `think_user`
--

CREATE TABLE `think_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthday` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_user`
--

INSERT INTO `think_user` (`id`, `name`, `email`, `birthday`) VALUES
(1, '222', 'ooo', 864403200),
(2, '流云', '1111@qq.com', 864403200),
(3, '流云', '1111@qq.com', 864403200),
(4, '流云', '1111@qq.com', 864403200),
(5, '流云', '1111@qq.com', 864403200),
(6, '流云', '1111@qq.com', 864403200),
(7, '流云', '1111@qq.com', 864403200),
(8, '流云', '1111@qq.com', 864403200),
(9, '看云', '1111@qq.com', 575136000),
(10, 'jij', '1222@qq.com', 1998),
(11, 'mmm', 'mmm@qq.com', 1999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `think_data`
--
ALTER TABLE `think_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `think_user`
--
ALTER TABLE `think_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `think_data`
--
ALTER TABLE `think_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- 使用表AUTO_INCREMENT `think_user`
--
ALTER TABLE `think_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;--
-- Database: `time`
--
CREATE DATABASE IF NOT EXISTS `time` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `time`;

-- --------------------------------------------------------

--
-- 表的结构 `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `history`
--

INSERT INTO `history` (`id`, `date`, `time`, `word`) VALUES
(4, '2018-11-16', '16:10:42', '哎呀'),
(5, '2018-11-16', '16:12:01', 'ok'),
(6, '2018-11-16', '16:12:55', '我爱你'),
(7, '2018-11-16', '16:13:20', '你想hi的温暖几万块'),
(8, '2018-11-16', '16:15:36', '你好'),
(9, '2018-11-16', '16:30:24', '87979');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
