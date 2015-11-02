-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2015 at 07:16 PM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `adevinci_secure_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `time`) VALUES
(3, '1420005637'),
(2, '1420123227'),
(2, '1425858987'),
(13, '1425988082'),
(7, '1426762058'),
(3, '1426806447'),
(11, '1432055593'),
(11, '1432407545');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL,
  `role` char(128) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `salt`, `role`) VALUES
(1, 'test_user', 'test@example.com', '00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc', 'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef', 'user'),
(2, 'kidigaray', 'kidigaray@yahoo.com', 'e429f7312f046188b0f5a7a52d4e9f16d363468a0632ae70abb3ca85e850f3364d2b99f0b68bdab939e0abc44936b922798178eef16c394c2284227655ba6907', '01fca90bb6ddf177cfb2106fbcd8a3ac7f332bcbae59fea06e763189205b301c8537f79d8430ae64473eafe484ad92255ff619f2c4c82bfd9eb2653886f81bba', 'user'),
(3, 'adminfhfk', 'admin@fhf.com', '56c56df32efd00ae1008a355d5f07cb851150658ccb70d3b9a72f2816e501762e020c66603c04928da6c829ab5b8d3e40952150d194b16b1f9eb5676e6bb04b7', 'ff4d945fdcf8ecf1c9f4d70c26a98dad1a529798f7141cf3212f1723ffbb2a31e8048c7fc477ade5765a42db55fb46c70a29bd7d9703648133d63d5cc73b7aaf', 'administrator'),
(4, 'rayray', 'kidigaray@gmail.com', '991d1059191e01e93d489a37014bfff48255b49647aff0127fc0965b224aa0e8bb13165ed185f4531386fc03796725d85c48885b01efaf8433c94e79dbedc4ad', '2dc72a803af61a60d789d14bfb23444bb751b0a50652c9e947a58ba3d6b4b281472f0a374530bd7fb8ba62ff2e8ed6c1a97d9b2fe951add16d789da2b3bda4f3', 'user'),
(5, 'Hellen', 'hlutainulwa@hollows.org', '9b55bf1221f86bb77a549debfeafc64f6e68719faf6cb1e70cd75418572ff9ec7c3b3feca9cc0bd71ccac7cb8a2a90e61eef4abc7901749854e2c2eb442b911e', 'ce8c249e52e387f3b8fc9bcead69d0222d0a9a7d5e40f9430921c14c65b382e3ff6faee51b486f825c4cc297f585a7767c175ea380b8aec01384993cf59ca950', 'user'),
(6, 'Sarah', 'solalo@hollows.org', '830208f31f8ee14f41132a72f6669a6d4c32d6188553063034d298220c764065c2dca9603f98aed8c0ddcb9fc188fa1ef3bb3d4f7fc5877f6f6f87bfc5222c01', '24794078be60115e070d607f078a2644f0a83fa6a8f82c8238c776497826ffbf935088219ad94d05f78a533c44bb2725a77c2a0f401362a04bd3d4888561ec63', 'user'),
(7, 'Catherine', 'cjakaiti@hollows.org', 'b3eceb5e76fdbb1829a7b3c9a34eac1df5960a2e180f40f87294e42bc7f9f7e4748f662d9de878435079e1697d544f73698ab89ef3baebe50e3774533e1acf25', 'f659a240d31442c5634f7d088d9c08e4758ecb22a98d0c7134e055704f67d882a1dbee4022c91a19b7c6e133c9471aeaea8abdf976571e61df1973fc3a99d89e', 'user'),
(8, 'Richard', 'rkebenei@hollows.org', 'a3c31f005c540392e3b928fe362886a2424edac5013e5051dd728bfceaff0884cd448a9f150316642f14d495cac93812690733b0f7e03a656d79d09067cf959e', '141183b5a4a2698078bcc73986dd3415568045e0ac27772e43d00f0a1edd2f971f08897c728cb5a9ea81499c46074ea26e5ac605c49ea2476727ab72ad49afec', 'user'),
(9, 'Kai', 'kkafahamu@hollows.org', '959217180869902f3178a1e35d56ebba96b50e4e0ea85ce5ee6f7a661fa8e795235850d3c95bd670321d6102fd8e4cbc60247588f10db87944edd8713ea68898', '69fe3f63a3f153a5c6659eb6bc306ae0247f75c9c76081745bcf4e06c2a83ea704553dc88912b2674e8f18a778fc9b56267a8b1fdd8c198a2ae9a59d4b710a8e', 'user'),
(10, 'Dola', 'hdola@hollows.org', 'c6fc7909efb82056092b4e257fe175b697324e82bb5f3d7e49fe0fc0f0aac82f3da0ed6557f96c92e9556102254d626d4fe15168e8db575c68753d84bda3cd1c', '7dd3e1a76a270bfc828f2236f3e31f8bc48c0b75fe258c6b4964df3e74ad8bba603a6b00172bf08f0efd47ce649ff9ed788d67a107223ff4199e447429e35b8f', 'user'),
(11, 'Nduri', 'cnduri@hollows.org', '3e9ec07c708394bc2ae226456779d45cfc3b4178d0d043733ffc1e85040dcb42456624066693bea7aedad9ded5c06b1e6ff81c32f4a723ca88663c58043eadb3', '76707c512206a77e10ac11626898e778f2240d7a0094b7b7214dc5c5d9a15a66cfc86642447c5a24ba90655f343a0f8c8e43348d74adfe3757b9b92cace02226', 'user'),
(12, 'Jane', 'johuma@hollows.org', '1cf7f88431f23d62269c2e7f236845d69c05fef67fadbd0aef49e114820b13680f0be5f27ebf472ce2eef4737c7b48106289535bf7d03a08b562d759aa345040', 'c2c9910e17de64a0242d702a760d9fa7894c0f1105f9f08654bdca7a5838969666a6b57252416f1e258d8ee4d7d3724bde5802b5df592d45b2411be8c3a6b8dd', 'user'),
(13, 'Lee', 'leeizonm@gmail.com', '9b0e080ebc9e8797d32a9662ed4c0786f15e90c82149ca3b1fbd69eccd78045684db043b6ede612eae877352116c743da3ada5f65dcd945e7f5d5a7e02a98877', '6b7cf8190c07c7c4d8f2f0f99f78f397d38392c82ea855d996bc0cb31ecf2223138db39753a12b21bd7e7219833af36eff7925b816c3c31bde8b872bb40cffd1', 'user'),
(14, 'hack', 'mercy.wambua@yahoo.com', '8262f407aa214b4fb17d183391c2f63663560485d8205077bfb55a398f8f5ae745b50f5771ea0206d6fd61ac96f81d32edd365753e3f8e0dd0dfbeef39e58f14', '915af9bf240ff7f31d11de19f2e2cb450458f8d570d5ed0bc4944a98f6ba7c890616e0ae227bf98368e93582bf14b537ea0cf56107c63fd911dc5d741ab79f58', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
