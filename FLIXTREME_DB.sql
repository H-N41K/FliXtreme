-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2020 at 09:32 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deflix`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_sessions`
--

CREATE TABLE `active_sessions` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `ipAddress` varchar(50) NOT NULL,
  `device` varchar(500) NOT NULL,
  `loginTime` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_sessions`
--

INSERT INTO `active_sessions` (`id`, `username`, `ipAddress`, `device`, `loginTime`) VALUES
(150, 'H3M3N', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 1585941824);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fromAccount` varchar(42) NOT NULL,
  `toAccount` varchar(42) NOT NULL,
  `txnHash` varchar(66) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billTimestamp`, `fromAccount`, `toAccount`, `txnHash`, `duration`) VALUES
('2020-03-07 11:47:46', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x35083b83fc9410a0c1263bea1a077997811359fce2df3ae637a31b03831f0bdb', 1),
('2020-03-07 10:59:23', '0x1ded052DdCBAEb2B95d166B47B0caAaadAd03A16', '0xcb2698186dD2fAcF6Ba99B5235fCDa606a192C80', '0x37c8bf937a877dee836484f168bfc136c8c2c3d3df8e41dcf01c94f427fd1946', 1),
('2020-03-07 15:40:56', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x3edf103166f52a75d696ad013c9cccdceac3980eea53ed934a0c5c3891a70b30', 1),
('2020-03-07 16:18:03', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x3ff4b26859b751d08f4c06635c6cb212eae82988a497b82947573e8f871f5807', 12),
('2020-03-07 11:08:37', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x47071709e414a17537610404073a61ac9bcb63675b595b1cdff1e2fd8a99b682', 1),
('2020-03-07 12:19:53', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x5461291d2bcfc37ba80f3fd46ecaf54f1f8c9c8b82db398e42d98747afc4ed56', 3),
('2020-03-07 11:29:01', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x67476f8fea49a2f05c2c42c824d2c5ee680e9204529170863ca9ee25434858ff', 1),
('2020-03-09 12:02:56', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x70ea98c13c3ba23426867372922eeb28e6e80ddd6142b24d1ef19b1f8dee13f5', 1),
('2020-03-07 11:24:27', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x80c7e1f62d071233c14fa205da1b99c3241117e8f7b2e42dc28618bf1a70e252', 1),
('2020-03-07 12:18:51', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x91f5b4f65eb72479dbbe2a4e8569cbc32e98f65cdd2c8cd66dcba9b69bb66458', 1),
('2020-03-09 19:34:33', '0x4c99d357c374cf41dec67f6f08bd1ba9c96ed251', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0x991f987bb80f0484ea9626f28a06f7d3a2593ccafbcb6f1663d5df829ed6f58f', 6),
('2020-03-07 11:33:20', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xa2e2bb7059ebacd6301aabde5bbc77783daeb51c078779f91a4a51f14ac0fb25', 1),
('2020-03-07 12:13:46', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xb79d951400008044e57fb6e6cec256b98adcb146ec2f291d8d766b243a2ac54a', 6),
('2020-03-07 12:07:38', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xbd110afe34d0711303501a4b4dc87db45908a7f87f27697c21ff3ec7c4ad16eb', 1),
('2020-03-07 11:15:52', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xd235779e5e40c191a6c2fb13010aeb8cf2f9916960d79971ec216635101500bc', 1),
('2020-03-07 12:12:35', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xd37a4e45adec679fd0e8988cba647e9cf56e64cbdac2dbea126aad092762f28a', 12),
('2020-03-07 12:20:58', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xd73961c89af587e0f5d473050380999bb52e322a9e44ca081d56c7f4a281343b', 6),
('2020-03-07 11:43:45', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xe76161bfa0fe9db8c5b2ec996d4f20d77ab7724b38e8de888ab8430cc5885891', 1),
('2020-03-07 16:12:21', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xeb0058ac3fe8365cfba311cf706fa7537efee6dbfadd2436a8d41162fc05b413', 1),
('2020-03-07 12:17:09', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xf9a433ea08121cb889912fb8694652c54575e274735fac915d7fa63f5c71762f', 3),
('2020-03-07 12:21:46', '0x1ded052ddcbaeb2b95d166b47b0caaaadad03a16', '0xcb2698186dd2facf6ba99b5235fcda606a192c80', '0xf9b222a78fb3758a3533bf71cf892b03b04be7afb201c06d7aa28eeeb67ae622', 12);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Action & Adventure'),
(2, 'Classic'),
(3, 'Comedies'),
(4, 'Dramas'),
(5, 'Horror'),
(6, 'Romantic'),
(7, 'Sci - Fi & Fantasy'),
(8, 'Sports'),
(9, 'Thrillers'),
(10, 'Documentaries'),
(12, 'Teen'),
(13, 'Children & Family'),
(14, 'Anime'),
(15, 'Independent'),
(16, 'Foreign'),
(17, 'Music'),
(18, 'Christmas'),
(19, 'Others'),
(20, 'Cartoon');

-- --------------------------------------------------------

--
-- Table structure for table `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `preview` varchar(250) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entities`
--

INSERT INTO `entities` (`id`, `name`, `thumbnail`, `preview`, `categoryId`) VALUES
(1, 'Friends', 'owncloud/data/admin/files/entities/thumbnails/friends.jpg', 'owncloud/data/admin/files/entities/previews/friends.mp4', 3),
(4, 'Toy Story', 'owncloud/data/admin/files/entities/thumbnails/toystory.jpg', 'owncloud/data/admin/files/entities/previews/toystory.mp4', 13),
(45, 'Inbetweeners', 'owncloud/data/admin/files/entities/thumbnails/inbetw.jpg', 'owncloud/data/admin/files/entities/previews/inb.mp4', 3),
(46, 'Suits', 'owncloud/data/admin/files/entities/thumbnails/Suits.jpg', 'owncloud/data/admin/files/entities/previews/suits.mp4', 4),
(47, 'Captain Underpants', 'owncloud/data/admin/files/entities/thumbnails/cu.jpg', 'owncloud/data/admin/files/entities/previews/cu.mp4', 13),
(48, 'Brooklyn Nine-Nine', 'owncloud/data/admin/files/entities/thumbnails/bnn.jpg', 'owncloud/data/admin/files/entities/previews/b99.mp4', 3),
(49, 'The Big Bang Theory', 'owncloud/data/admin/files/entities/thumbnails/tbbt.jpg', 'owncloud/data/admin/files/entities/previews/tbbt.mp4', 3),
(57, 'Jurassic Park', 'owncloud/data/admin/files/entities/thumbnails/jp.jpg', 'owncloud/data/admin/files/entities/previews/jp.mp4', 9),
(58, 'We Are Your Friends', 'owncloud/data/admin/files/entities/thumbnails/wayf.jpg', 'owncloud/data/admin/files/entities/previews/wayf.mp4', 17),
(59, 'Paddington Bear', 'owncloud/data/admin/files/entities/thumbnails/pb.jpg', 'owncloud/data/admin/files/entities/previews/pad.mp4', 13),
(61, 'Monster Family', 'owncloud/data/admin/files/entities/thumbnails/monsterfamily.jpg', 'owncloud/data/admin/files/entities/previews/monster.mp4', 13),
(62, 'Fast and Furious presents: Hobbs & Shaw', 'owncloud/data/admin/files/entities/thumbnails/has.jpg', 'owncloud/data/admin/files/entities/previews/has.mp4', 1),
(68, 'Jaws', 'owncloud/data/admin/files/entities/thumbnails/jaws.jpg', 'owncloud/data/admin/files/entities/previews/jaws.mp4', 9),
(69, 'Live Die Repeat', 'owncloud/data/admin/files/entities/thumbnails/ldr.jpg', 'owncloud/data/admin/files/entities/previews/ldr.mp4', 9),
(70, 'Into the Storm', 'owncloud/data/admin/files/entities/thumbnails/its.jpg', 'owncloud/data/admin/files/entities/previews/storm.mp4', 9),
(81, 'Mission Impossible', 'owncloud/data/admin/files/entities/thumbnails/mi.jpg', 'owncloud/data/admin/files/entities/previews/mi.mp4', 1),
(82, 'Never Back Down', 'owncloud/data/admin/files/entities/thumbnails/nbd.jpg', 'owncloud/data/admin/files/entities/previews/nbd.mp4', 1),
(83, 'Mechanic Resurrection', 'owncloud/data/admin/files/entities/thumbnails/mec.jpg', 'owncloud/data/admin/files/entities/previews/mech.mp4', 1),
(84, 'Need for Speed', 'owncloud/data/admin/files/entities/thumbnails/nfs.jpg', 'owncloud/data/admin/files/entities/previews/nfs.mp4', 1),
(85, 'Gravity', 'owncloud/data/admin/files/entities/thumbnails/gra.jpg', 'owncloud/data/admin/files/entities/previews/gravity.mp4', 7),
(86, 'Two And A Half Men', 'owncloud/data/admin/files/entities/thumbnails/tahm.jpg', 'owncloud/data/admin/files/entities/previews/tahm.mp4', 3),
(87, 'Game of Thrones', 'owncloud/data/admin/files/entities/thumbnails/got.jpg', 'owncloud/data/admin/files/entities/previews/got.mp4', 4),
(88, 'Dark Money', 'owncloud/data/admin/files/entities/thumbnails/dm.jpg', 'owncloud/data/admin/files/entities/previews/darkmoney.mp4', 4),
(89, 'Yellowstone', 'owncloud/data/admin/files/entities/thumbnails/yel.jpg', 'owncloud/data/admin/files/entities/previews/yellow.mp4', 4),
(90, 'Manifest', 'owncloud/data/admin/files/entities/thumbnails/man.jpg', 'owncloud/data/admin/files/entities/previews/manifest.mp4', 4),
(91, 'The Sound of Music', 'owncloud/data/admin/files/entities/thumbnails/som.jpg', 'owncloud/data/admin/files/entities/previews/somusic.mp4', 17),
(92, 'Hairspray', 'owncloud/data/admin/files/entities/thumbnails/hs.jpg', 'owncloud/data/admin/files/entities/previews/hairspray.mp4', 17),
(93, 'What We Started..', 'owncloud/data/admin/files/entities/thumbnails/wws.jpg', 'owncloud/data/admin/files/entities/previews/whatwestarted.mp4', 17),
(94, 'Step Up Revolution', 'owncloud/data/admin/files/entities/thumbnails/stepuprevolution.jpg', 'owncloud/data/admin/files/entities/previews/stepuprev.mp4', 17),
(95, 'Men in Black : International', 'owncloud/data/admin/files/entities/thumbnails/mib.jpg', 'owncloud/data/admin/files/entities/previews/mib.mp4', 7),
(96, 'Interstellar', 'owncloud/data/admin/files/entities/thumbnails/int.jpg', 'owncloud/data/admin/files/entities/previews/interstellar.mp4', 7),
(97, 'Transformers : Revenge of the fallen', 'owncloud/data/admin/files/entities/thumbnails/tra.jpg', 'owncloud/data/admin/files/entities/previews/transformers.mp4', 7),
(98, 'Cloudy with a Chance of Meatballs', 'owncloud/data/admin/files/entities/thumbnails/cwc.jpg', 'owncloud/data/admin/files/entities/previews/cloudy.mp4', 13),
(99, 'District 9', 'owncloud/data/admin/files/entities/thumbnails/d9.jpg', 'owncloud/data/admin/files/entities/previews/d9.mp4', 9),
(101, 'Inception', 'owncloud/data/admin/files/entities/thumbnails/inception.jpg', 'owncloud/data/admin/files/entities/previews/inception.mp4', 7);

-- --------------------------------------------------------

--
-- Table structure for table `resetpasswords`
--

CREATE TABLE `resetpasswords` (
  `id` int(11) NOT NULL,
  `code` varchar(13) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resetpasswords`
--

INSERT INTO `resetpasswords` (`id`, `code`, `email`) VALUES
(1, '5e878c4791a2d', 'hemendranaik@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subtitles`
--

CREATE TABLE `subtitles` (
  `id` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `label` varchar(70) NOT NULL,
  `filePath` varchar(512) NOT NULL,
  `default1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subtitles`
--

INSERT INTO `subtitles` (`id`, `videoId`, `label`, `filePath`, `default1`) VALUES
(1, 6, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(2, 6, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(3, 7, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(4, 7, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(5, 8, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(6, 8, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(7, 9, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(8, 9, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(9, 10, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(10, 10, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(11, 11, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(12, 11, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(13, 12, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(14, 12, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(15, 13, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(16, 13, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(17, 14, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(18, 14, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(19, 15, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(20, 15, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(21, 16, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(22, 16, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(23, 17, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(24, 17, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(25, 18, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(26, 18, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(27, 19, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(28, 19, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(29, 20, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(30, 20, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(31, 21, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(32, 21, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(33, 22, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(34, 22, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(35, 23, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(36, 23, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(37, 24, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(38, 24, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(39, 25, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(40, 25, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(41, 26, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(42, 26, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(43, 27, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(44, 27, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(45, 28, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(46, 28, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(47, 29, 'English subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/eng.vtt', 1),
(48, 29, 'Hindi subtitles', 'owncloud/data/admin/files/media/tahm/1/subs/hin.vtt', 0),
(49, 30, 'English subtitles', 'owncloud/data/admin/files/media/inception/subs/eng.vtt', 1),
(50, 30, 'French subtitles', 'owncloud/data/admin/files/media/inception/subs/fr.vtt', 0),
(51, 30, 'Arabic subtitles', 'owncloud/data/admin/files/media/inception/subs/arb.vtt', 0),
(52, 184, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/1/subs/eng.vtt', 1),
(53, 185, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/2/subs/eng.vtt', 1),
(54, 186, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/3/subs/eng.vtt', 1),
(55, 187, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/4/subs/eng.vtt', 1),
(56, 188, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/5/subs/eng.vtt', 1),
(57, 189, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/6/subs/eng.vtt', 1),
(58, 190, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/7/subs/eng.vtt', 1),
(59, 191, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/8/subs/eng.vtt', 1),
(60, 192, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/9/subs/eng.vtt', 1),
(61, 193, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/10/subs/eng.vtt', 1),
(62, 194, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/11/subs/eng.vtt', 1),
(63, 195, 'English Subtitles', 'owncloud/data/admin/files/media/suits/1/12/subs/eng.vtt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `validityTimestamp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `validityTimestamp`) VALUES
(7, 'Hemendra', 'Naik', 'H3M3N', 'hemendranaik@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2019-12-30 21:38:07', 1762413432),
(8, 'Beta', 'Tester', 'qwert', 'h@q.l', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2019-12-30 21:38:07', 0),
(11, 'Shubham', 'Vaity', 'shubham', 'sv@gmail.com', '57ec75b979c73eb0eb8dcfbaf767c6d0783a68a279faa3f7b7f299b0b42717652fb635dc0be5086789553ed04c0972ac2b5c83187f7e5f70ffd25326a4c836a8', '2020-03-10 01:01:44', 1599334473);

-- --------------------------------------------------------

--
-- Table structure for table `videoprogress`
--

CREATE TABLE `videoprogress` (
  `username` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `progress` int(11) NOT NULL,
  `finished` int(11) NOT NULL,
  `dateModified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `isMovie` tinyint(1) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `releaseDate` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `duration` varchar(10) NOT NULL,
  `season` int(11) DEFAULT '0',
  `episode` int(11) DEFAULT '0',
  `entityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(1, 'The Sound Of Music', 'Set in Austria on the eve of the Anschluss in 1938, the musical tells the story of Maria, who takes a job as governess to a large family while she decides whether to become a nun. She falls in love with the children, and eventually their widowed father, Captain von Trapp.', 'owncloud/data/admin/files/media/som/master.m3u8', 1, '2020-03-13 14:37:05', '1965-03-02', 0, '02:55:34', 0, 0, 91),
(2, 'Martin Garrix', 'Martijn discusses the history and state of electronic dance music.', 'owncloud/data/admin/files/media/wws/1/1/master.m3u8', 0, '2020-03-13 14:37:05', '2017-03-17', 10, '00:14:45', 1, 1, 93),
(3, 'Hairspray', 'Tracy emerges from being an overweight teenager to a television superstar. However, her journey is interrupted when she becomes a victim of racial discrimination and decides to fight back.', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2007-07-13', 3, '02:04:34', 0, 0, 92),
(4, 'Step Up Revolution', 'Two young aspiring dancers find love in each other while fighting to save their neighbourhood in Miami from a developer.', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2012-05-10', 5, '01:46:32', 0, 0, 94),
(5, 'We Are Your Friends', 'Young Cole Carter  dreams of hitting the big time as a Hollywood disc jockey, spending his days and nights hanging with buddies and working on the one track that will set the world on fire.', 'owncloud/data/admin/files/media/wayf/master.m3u8', 1, '2020-03-13 14:37:05', '2015-03-12', 6, '01:40:08', 0, 0, 58),
(6, 'Most Chicks Won\'t Eat Veal', 'Carefree bachelor Charlie Harper\'s life is turned upside down when his brother Alan and ten-year-old nephew Jake move in with him when Alan\'s wife Judith kicks him out after 12 years of marriage.', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-06', 29, '00:21:17', 1, 1, 86),
(7, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 6, '00:20:13', 1, 2, 86),
(8, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 3, '00:22:13', 1, 3, 86),
(9, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 2, '00:22:13', 1, 4, 86),
(10, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 86),
(11, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 6, 86),
(12, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 7, 86),
(13, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-02-13', 5, '00:22:13', 1, 8, 86),
(14, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 5, '00:20:13', 2, 1, 86),
(15, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 86),
(16, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 86),
(17, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 4, 86),
(18, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 2, 5, 86),
(19, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 6, 86),
(20, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 7, 86),
(21, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-02-13', 0, '00:22:13', 2, 8, 86),
(22, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 3, '00:20:13', 3, 1, 86),
(23, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 86),
(24, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 86),
(25, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 4, 86),
(26, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 3, '00:22:13', 3, 5, 86),
(27, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 6, 86),
(28, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 7, 86),
(29, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/tahm/1/master.m3u8', 0, '2020-03-13 14:37:05', '2003-02-13', 5, '00:22:13', 3, 8, 86),
(30, 'Inception', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'owncloud/data/admin/files/media/inception/master.m3u8', 1, '2020-03-13 14:37:05', '2010-03-12', 3, '02:28:15', 0, 0, 101),
(31, 'Gravity', 'Dr Ryan Stone, an engineer, and Matt Kowalski, an astronaut, are on a space mission together. However, when they are hit by high-speed space debris, they must find a way to return to Earth.', 'owncloud/data/admin/files/media/gravity/master.m3u8', 1, '2020-03-13 14:37:05', '2013-03-11', 8, '01:31:23', 0, 0, 85),
(32, 'Transformers : Revenge of the fallen', 'Sam leaves the Autobots to lead a normal life. However, the Decepticons target him and drag him back into the Transformers\' war.', 'owncloud/data/admin/files/media/transformers/master.m3u8', 1, '2020-03-13 14:37:05', '2009-03-28', 1, '02:30:45', 0, 0, 97),
(33, 'Interstellar', 'In Earth\'s future, a global crop blight and second Dust Bowl are slowly rendering the planet uninhabitable. Professor Brand (Michael Caine), a brilliant NASA physicist, is working on plans to save mankind by transporting Earth\'s population to a new home via a wormhole.', 'owncloud/data/admin/files/media/interstellar/master.m3u8', 1, '2020-03-13 14:37:05', '2014-03-19', 3, '02:49:12', 0, 0, 96),
(34, 'Men In Black : International', 'When aliens that have the ability to shape-shift into humans arrive on Earth, Agent H joins forces with Agent M, a new recruit, to save the planet.', 'owncloud/data/admin/files/media/mib/master.m3u8', 1, '2020-03-13 14:37:05', '2019-03-03', 8, '01:55:23', 0, 0, 95),
(35, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 1, '00:20:13', 1, 1, 61),
(36, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 2, 61),
(37, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 3, '00:22:13', 1, 3, 61),
(38, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 4, 61),
(39, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 61),
(40, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 1, 61),
(41, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 61),
(42, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 61),
(43, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 4, 61),
(44, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 4, '00:22:13', 2, 5, 61),
(45, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 1, 61),
(46, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 61),
(47, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 61),
(48, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 4, 61),
(49, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 3, 5, 61),
(50, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 1, '00:20:13', 1, 1, 47),
(51, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 2, 47),
(52, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 3, 47),
(53, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 4, 47),
(54, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 47),
(55, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 1, 47),
(56, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 47),
(57, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 47),
(58, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 4, 47),
(59, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 2, 5, 47),
(60, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 1, 47),
(61, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 47),
(62, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 47),
(63, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 4, 47),
(64, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 3, 5, 47),
(65, 'Cloudy With A Chance of Meatballs', 'Flint Lockwood is an inventor who develops insignificant things. However, when his local sardine cannery shuts down and an economic crisis looms ahead, he decides to put his latest invention to work.', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2009-03-12', 3, '01:30:45', 0, 0, 98),
(66, 'Toy Story', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2010-03-12', 0, '01:42:45', 0, 0, 4),
(67, 'Paddington Bear', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2014-03-19', 1, '01:38:23', 0, 0, 59),
(68, 'Into the Storm', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2009-03-28', 1, '01:25:23', 0, 0, 70),
(69, 'Jaws', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '1975-03-12', 6, '02:19:12', 0, 0, 68),
(70, 'Live Die Repeat', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna purus, congue et urna nec, venenatis scelerisque enim.', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2015-03-28', 1, '02:28:35', 0, 0, 69),
(71, 'Jurassic Park', 'Donec in pharetra nunc. Suspendisse pretium diam mi, sed vehicula urna scelerisque vel. Fusce lobortis malesuada vehicula.', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '1980-03-19', 0, '02:45:23', 0, 0, 57),
(72, 'District 9', 'urabitur metus lacus, accumsan quis mi ut, elementum lacinia metus. Nam imperdiet, augue eu sagittis porta, nisi ligula vehicula urna, nec sodales sem ante vel diam.', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2010-03-12', 2, '01:59:23', 0, 0, 99),
(73, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 1, 89),
(74, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 2, 89),
(75, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 3, 89),
(76, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 4, 89),
(77, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 89),
(78, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 1, 89),
(79, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 89),
(80, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 89),
(81, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 4, 89),
(82, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 2, 5, 89),
(83, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 1, 89),
(84, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 89),
(85, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 89),
(86, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 2, '00:22:13', 3, 4, 89),
(87, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 3, 5, 89),
(88, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 2, '00:20:13', 1, 1, 90),
(89, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 2, 90),
(90, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 3, 90),
(91, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 4, 90),
(92, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 90),
(93, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 1, 90),
(94, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 90),
(95, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 90),
(96, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 4, 90),
(97, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 2, 5, 90),
(98, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 1, 90),
(99, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 90),
(100, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 90),
(101, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 4, 90),
(102, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 3, 5, 90),
(103, 'Dark Money', 'Donec at finibus libero, nec suscipit nunc. Cras ac blandit augue, quis efficitur est. Pellentesque orci odio, accumsan at lobortis congue, luctus pretium augue', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2014-03-19', 2, '02:13:34', 0, 0, 88),
(104, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 1, 87),
(105, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 2, 87),
(106, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 3, 87),
(107, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 4, 87),
(108, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 87),
(109, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 1, 87),
(110, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 87),
(111, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 87),
(112, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 4, 87),
(113, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 2, 5, 87),
(114, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 1, 87),
(115, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 87),
(116, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 87),
(117, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 4, 87),
(118, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 3, '00:22:13', 3, 5, 87),
(119, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 1, '00:20:13', 1, 1, 1),
(120, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 2, 1),
(121, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 3, 1),
(122, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 4, 1),
(123, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 1),
(124, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 1, 1),
(125, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 1),
(126, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 1),
(127, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 4, 1),
(128, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 2, 5, 1),
(129, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 1, 1),
(130, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 1),
(131, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 1),
(132, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 4, 1),
(133, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 3, 5, 1),
(134, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 1, 48),
(135, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 2, 48),
(136, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 3, 48),
(137, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 4, 48),
(138, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 48),
(139, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 1, 48),
(140, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 48),
(141, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 48),
(142, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 3, '00:22:13', 2, 4, 48),
(143, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 2, 5, 48),
(144, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 1, 48),
(145, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 48),
(146, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 48),
(147, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 4, 48),
(148, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 3, 5, 48),
(149, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 1, 45),
(150, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 2, 45),
(151, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 3, 45),
(152, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 4, 45),
(153, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 45),
(154, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 1, 45),
(155, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 45),
(156, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 45),
(157, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 4, 45),
(158, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 2, 5, 45),
(159, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 1, 45),
(160, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 45),
(161, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 45),
(162, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 4, 45),
(163, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 3, 5, 45),
(164, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 1, '00:20:13', 1, 1, 49),
(165, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 1, 2, 49),
(166, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 2, '00:22:13', 1, 3, 49),
(167, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 1, 4, 49),
(168, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 1, 5, 49);
INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(169, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 1, 49),
(170, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 2, 2, 49),
(171, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 3, 49),
(172, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 2, 4, 49),
(173, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 2, 5, 49),
(174, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 1, 49),
(175, 'Light in the Mage', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-09', 0, '00:20:13', 3, 2, 49),
(176, 'Sliver in the Weeping', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 3, 49),
(177, 'Burning Something', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-19', 0, '00:22:13', 3, 4, 49),
(178, 'Voyager in the Lord', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'owncloud/data/admin/files/media/demo/master.m3u8', 0, '2020-03-13 14:37:05', '2003-01-29', 0, '00:22:13', 3, 5, 49),
(179, 'Fast and Furious presents: Hobbs & Shaw', 'Donec in pharetra nunc. Suspendisse pretium diam mi, sed vehicula urna scelerisque vel. Fusce lobortis malesuada vehicula. Integer massa lorem', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2019-03-19', 4, '02:34:56', 0, 0, 62),
(180, 'Mechanic Resurrection', 'Vivamus vehicula condimentum orci vel sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2016-03-19', 4, '02:27:45', 0, 0, 83),
(181, 'Mission Impossible', 'Vivamus vehicula condimentum orci vel sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2018-03-19', 1, '02:29:15', 0, 0, 81),
(182, 'Never Back Down', 'Aenean dignissim tincidunt massa, at elementum justo viverra sed. Pellentesque ac quam ante. Curabitur metus lacus, accumsan quis mi ut', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2008-03-19', 1, '01:38:23', 0, 0, 82),
(183, 'Need For Speed', 'Aenean dignissim tincidunt massa, at elementum justo viverra sed. Pellentesque ac quam ante. Curabitur metus lacus, accumsan quis mi ut', 'owncloud/data/admin/files/media/demo/master.m3u8', 1, '2020-03-13 14:37:05', '2014-03-12', 0, '02:28:24', 0, 0, 84),
(184, 'Pilot', 'After Harvey Specter, New York City\'s best closer, finally achieves his goal of becoming a senior partner at Pearson Hardman.', 'owncloud/data/admin/files/media/suits/1/1/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 7, '01:12:33', 1, 1, 46),
(185, 'Errors and Omissions', 'A judge (Currie Graham) insists that Harvey had an affair with his wife (Nazanin Boniadi) and refuses to fairly judge Harveys case.', 'owncloud/data/admin/files/media/suits/1/2/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 14, '00:42:55', 1, 2, 46),
(186, 'Inside Track', 'When the new CEO of a motor company wants to move production overseas, Harvey and Mike try to find a loophole to oust him.', 'owncloud/data/admin/files/media/suits/1/3/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 3, '00:42:18', 1, 3, 46),
(187, 'Dirty Little Secrets', 'Harvey defends Jessica and her ex-husband from allegations that his ALS medication is causing serious side effects.', 'owncloud/data/admin/files/media/suits/1/4/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 5, '00:43:02', 1, 4, 46),
(188, 'Bail Out', 'Harvey must choose between closing a lucrative deal and helping his trusted driver defend against a lawsuit.', 'owncloud/data/admin/files/media/suits/1/5/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 4, '00:42:03', 1, 5, 46),
(189, 'Tricks of the Trade', 'Mike and Harvey work together to defend a woman, who they believe has been falsely accused of insider trading.', 'owncloud/data/admin/files/media/suits/1/6/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 3, '00:42:34', 1, 6, 46),
(190, 'Play the Man', 'Mike is pitted against one of Louis\'s proteges in a mock trial. Harvey takes on an old rival and romantic interest.', 'owncloud/data/admin/files/media/suits/1/7/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 3, '00:42:51', 1, 7, 46),
(191, 'Identity Crisis', 'The daughter  of a businessman threatens to reveal Mike\'s secret unless he and the firm drop the case.', 'owncloud/data/admin/files/media/suits/1/8/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 2, '00:43:01', 1, 8, 46),
(192, 'Undefeated', 'Harvey must decide if he can break his ethical code in order to defeat shady lawyer Travis. Meanwhile, Rachel is accused of leaking information.', 'owncloud/data/admin/files/media/suits/1/9/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 4, '00:42:54', 1, 9, 46),
(193, 'Shelf Life', 'Mike and Harvey have to fire a man who has been working for nine years with a fake diploma. Mike identifies with this man and defends him.', 'owncloud/data/admin/files/media/suits/1/10/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 4, '00:42:36', 1, 10, 46),
(194, 'Rules of the Game', 'The district attorney and Harveys former mentor turns to his protege when his office is being investigated for burying evidence.', 'owncloud/data/admin/files/media/suits/1/11/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 2, '00:42:29', 1, 11, 46),
(195, 'Dog Fight', 'Harvey tries to correct a past mistake by freeing an innocent man. However, the new district attorney seems more focused on preserving the system than seeking justice.', 'owncloud/data/admin/files/media/suits/1/12/master.m3u8', 0, '2020-03-13 14:37:05', '2014-03-19', 4, '00:42:25', 1, 12, 46);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_sessions`
--
ALTER TABLE `active_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`txnHash`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `resetpasswords`
--
ALTER TABLE `resetpasswords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subtitles`
--
ALTER TABLE `subtitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityId` (`entityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_sessions`
--
ALTER TABLE `active_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `resetpasswords`
--
ALTER TABLE `resetpasswords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subtitles`
--
ALTER TABLE `subtitles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`entityId`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
