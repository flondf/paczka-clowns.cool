-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 03:57 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `streat`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `banking`
--

CREATE TABLE `banking` (
  `identifier` varchar(46) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `balance` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bans`
--

CREATE TABLE `bans` (
  `license` varchar(50) NOT NULL,
  `steamhex` varchar(46) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `discord` varchar(30) DEFAULT NULL,
  `hwid` longtext DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `added` datetime DEFAULT current_timestamp(),
  `live` varchar(21) DEFAULT NULL,
  `xbl` varchar(21) DEFAULT NULL,
  `expired` varchar(50) DEFAULT '0',
  `bannedby` varchar(32) DEFAULT NULL,
  `isBanned` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `bans`
--

INSERT INTO `bans` (`license`, `steamhex`, `name`, `discord`, `hwid`, `reason`, `added`, `live`, `xbl`, `expired`, `bannedby`, `isBanned`) VALUES
('424bfbb3ff845c5e57423fc8d06d747ebb1fbdd0', '11000015f173b67', 'why you trippin \'? 1080x1080', '918558029316755457', '[\"3:fe84e947f3fabb6c0bcfd2099a02579d1afa7d29a429fcd6eb3708e599629fb4\",\"2:0e62d076ab257faa98c4e5f2b2b215f67743e51994788d4f466831ff9b21235c\",\"5:c6208626f32ff0b44dc8fc43bdddb60d78396200b77af393a162a86686dc9fce\",\"4:7682aa626f50db3c0ddb1380a5bfb623d21dd68c27cd899c70470c0db049d547\",\"4:7190698b28af445512b8f5aaab6ee2d4333db3250044f51729c26e72d072a9d3\",\"4:671d381d9dda6552060cb0d1fb1801fad8eb2879f2b4d7ab894bffb0c2da3d47\"]', NULL, '2023-10-11 02:43:22', 'Brak', 'Brak', '0', NULL, 0),
('ed2145f07e54316c0454a889003db9b90e210f22', '1100001551d82ed', 'usemkka', '1141599399810707578', '[\"3:5df0cce0177c54389ba7e9d939acc2d121bbc60a723df2f228d3a7ff5a251b7c\",\"4:939b786400e40151e31b4f36ae4dcef9fb0f81c603cc2d9b19a41ed872652ca6\",\"4:8ba30e9d9ff3f9453b3703792e687d3845352460fb27f2d1ae7ce7bab4224479\",\"4:a9036013a6e55ae29f36f4ff2ca18b9315dc6d5fe7790818b1a0c892031d5d9f\"]', NULL, '2023-10-08 09:58:57', '914799007969013', '2535428797322872', '0', NULL, 0),
('4211a04ed3fff0cabb8963b6afd1460aa31b0efa', '1100001435e307b', 'brulinekk', '711168419252404264', '[\"3:ad12e5045782350d1bf5d707f0fd8f0e4ae5df17dddec553459b7194edd6ed8d\",\"2:da4af403802f472ce7ef3c6a06289443088a3430536d23e8febcfd33d4bd9da3\",\"4:3138de3f2d689731a6c98e427cbd70716ddec692536da61a451da6a7fee09583\",\"4:2fbc39f4076ddc386c910b651b013b079d2f2c9832b772570bddb818da5008ac\",\"4:f491bf7e0ac63c5d26791402eb4d142e13b996ef3dace48ddcca268a37a0a0f1\"]', NULL, '2023-10-08 15:32:57', 'Brak', 'Brak', '0', NULL, 0),
('0c94c54e3ae7dfa09237ca47d3be62b3371a8455', '11000014c311eb4', 'Eminem', '955540443393835068', '[\"3:0e94bfc312ea2a940e84015beee75810633e152acdc00c7426cdf0b951d00d97\",\"5:08f19865febef19c8b48136b9e1e0ed0787434ef22ca045e4ba1cb7b98ecd265\",\"2:4b7abe512e41bb9822fdaa36f2478b5c7db35393fd433de1d6279978612bd178\",\"4:0f742b8deba4abb146d23f2ebfae8899fce3bbb12c50c2ae1c68889f11ddb3f6\",\"4:d37e52fd1ba0f10a8cd60c299cd7040a84c2b73ffb824f8b13e2792e886a3d23\",\"4:19dd4c684c55b155e9ca880a1edcd6dda06166d524716b75b64c4fdbab0c9e8f\"]', NULL, '2023-10-08 16:54:57', '985155076355226', '2535445038714515', '0', NULL, 0),
('867bd0afed0855cd038eccaf3a1105e45e4c2bd3', '110000147f5a6c3', 'Skilos', '1139596782788153384', '[\"5:ce5890f40bdcef46b831b3a6c5df6fba435f4d2c8ae3cba991cc9ebc80431cd0\",\"3:a8486d76965d3fea1a6520af78485a5457998d26a00a1000cd35c46d920e5a4c\",\"2:dc99cce4b5da833df8be8f6725385de4504a3315fb2129301a00da0ee91cf5c9\",\"4:011f2e0be200f0f485dcaa14476c1af3c10691f1b62e9c954600f8b422633c1c\",\"4:84048c6c8f6ca08f115f7dcfe811e402acafbc535a5daf82f91d885636985f84\",\"4:675fcf7256aab019e5d8ffffd30914e223159f57cdad0c437b19cf3c0c2b143e\"]', '', '2023-10-10 22:36:01', '985154708735059', '2535434055637146', '2033-05-18 05:33:20', 'why you trippin \'? 1080x1080', 0),
('ce23ef17ecde18096db1b7277f8b18bc7c65d247', '11000014e489eca', 'loczek streat.cool', '920573766990454804', '[\"3:fcf98eeb3ada3a7555844edd265a249b9f9f67ea64742fb08a7ceee2d86d8139\",\"2:ee6ead9055ca5acc7f0e6ef227230edb993ae85f01766e7fbc94571b0bde155a\",\"5:6e719a394a48d562ec1b5d086f634fd642a706d07591468b2e839c0851bd2d92\",\"4:6692a143a49b315f3aa200fd5b9b3efe984c44765e4771d07dd701a846acc54e\",\"4:2aa2001895d069e31e0ac7ad943f3b3f86ae9b49f0638bc1cb8f0f67c6080a4c\",\"4:8a4f02a3fed779607aa528de5486e3e2e3f893499bbf23937cd449b7dce7eab1\"]', NULL, '2023-10-09 19:14:59', 'Brak', 'Brak', '0', NULL, 0),
('867bd0afed0855cd038eccaf3a1105e45e4c2bd3', '110000147f5a6c3', 'Skilos', '1139596782788153384', '[\"5:ce5890f40bdcef46b831b3a6c5df6fba435f4d2c8ae3cba991cc9ebc80431cd0\",\"3:a8486d76965d3fea1a6520af78485a5457998d26a00a1000cd35c46d920e5a4c\",\"2:dc99cce4b5da833df8be8f6725385de4504a3315fb2129301a00da0ee91cf5c9\",\"4:011f2e0be200f0f485dcaa14476c1af3c10691f1b62e9c954600f8b422633c1c\",\"4:84048c6c8f6ca08f115f7dcfe811e402acafbc535a5daf82f91d885636985f84\",\"4:675fcf7256aab019e5d8ffffd30914e223159f57cdad0c437b19cf3c0c2b143e\"]', NULL, '2023-10-10 22:36:01', '985154708735059', '2535434055637146', '0', NULL, 0),
('269f8f24b0ceffda23dc9bded32c4155ffdd16fd', '11000015b88ecd1', 'GLN', '371297005064028161', '[\"5:fcdf4393e6d7a77af0e5f009d6e1a1c2543fe9a3c4317c1688d4333ec43aa784\",\"2:b83af325da5dead3aa4f2bd2b6ee3d50bf21829295d6f1753ae7072595b66682\",\"4:d6171a76121a04058b17ec13aad489cef2408337aa5bdead0cb6a8a041724258\",\"4:89cb79db7c1d5f6dcaf5c70abc3843c68fcafbd198027cd6b292487b9b39f478\",\"4:e13d275d1fb3d34493efd7d7ed8fd24917e90a44f44afeb2d213774088d34065\"]', NULL, '2023-10-10 21:02:30', '1055519488141456', '2535440556174416', '0', NULL, 0),
('867bd0afed0855cd038eccaf3a1105e45e4c2bd3', '110000147f5a6c3', 'Skilos', '1139596782788153384', '[\"5:ce5890f40bdcef46b831b3a6c5df6fba435f4d2c8ae3cba991cc9ebc80431cd0\",\"3:a8486d76965d3fea1a6520af78485a5457998d26a00a1000cd35c46d920e5a4c\",\"2:dc99cce4b5da833df8be8f6725385de4504a3315fb2129301a00da0ee91cf5c9\",\"4:011f2e0be200f0f485dcaa14476c1af3c10691f1b62e9c954600f8b422633c1c\",\"4:84048c6c8f6ca08f115f7dcfe811e402acafbc535a5daf82f91d885636985f84\",\"4:675fcf7256aab019e5d8ffffd30914e223159f57cdad0c437b19cf3c0c2b143e\"]', NULL, '2023-10-10 22:36:01', '985154708735059', '2535434055637146', '0', NULL, 0),
('62f3a1a548dd0eb1d6f01935537a0802b8ebc3a6', '11000015f22db71', 'pika', '1022985012506800178', '[\"5:08cfcf5407c166b5be58cd3c8e883c69483983ad34f8385fa5bacab07f197b6b\",\"2:23134cb84b17b41dd46ea6a10242843b10d1bdb9a66ccd491ba31338a67ec319\",\"3:9ea9fc78a5254bfddab561593b7fe220d3938d71fe6e79e68f9b37fb13962417\",\"4:b7e7a09415aaea9759895758d29f89d9a8e0d80b32a2ca6db56474baf547b5d6\",\"4:3289a49fe250f527e0e804fce0d02e88b32cd9cbcb708e6256ec3eb72f737995\",\"4:4170f21b618626a6aed8693b11468d7435815b43997aa1a81a73474cb78420b7\"]', NULL, '2023-10-10 21:40:59', '844426329396168', '2535452564180280', '0', NULL, 0),
('867bd0afed0855cd038eccaf3a1105e45e4c2bd3', '110000147f5a6c3', 'Skilos', '1139596782788153384', '[\"5:ce5890f40bdcef46b831b3a6c5df6fba435f4d2c8ae3cba991cc9ebc80431cd0\",\"3:a8486d76965d3fea1a6520af78485a5457998d26a00a1000cd35c46d920e5a4c\",\"2:dc99cce4b5da833df8be8f6725385de4504a3315fb2129301a00da0ee91cf5c9\",\"4:011f2e0be200f0f485dcaa14476c1af3c10691f1b62e9c954600f8b422633c1c\",\"4:84048c6c8f6ca08f115f7dcfe811e402acafbc535a5daf82f91d885636985f84\",\"4:675fcf7256aab019e5d8ffffd30914e223159f57cdad0c437b19cf3c0c2b143e\"]', NULL, '2023-10-10 22:36:01', '985154708735059', '2535434055637146', '0', NULL, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cases_coins`
--

CREATE TABLE `cases_coins` (
  `license` varchar(255) NOT NULL,
  `SilverCoins` int(11) NOT NULL DEFAULT 0,
  `GoldCoins` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cases_coins`
--

INSERT INTO `cases_coins` (`license`, `SilverCoins`, `GoldCoins`) VALUES
('char1:0c727a6955699f7f3108fc88cafc2f92d5607fbf', 101, 0),
('char1:10b698e486cb7db7f3ca7b8c2d24d0645bf7d6ab', 103, 0),
('char1:243750a6ed6b7b1417e7ca16801edf7a3dc233ab', 100, 0),
('char1:24f419db94b77c58b76f1e4c378ae8ecfb336013', 154, 0),
('char1:269f8f24b0ceffda23dc9bded32c4155ffdd16fd', 100, 0),
('char1:2e7270e9f24f2f26c42516370d30da77fd39e3d5', 100, 0),
('char1:323a7a2a815c99ec60c55e0e54d61bd4603ad240', 101, 0),
('char1:424bfbb3ff845c5e57423fc8d06d747ebb1fbdd0', 13, 3201),
('char1:4fe36ff59d7b06a0ccbacbacbb7afe7eeb7ecdb4', 100, 0),
('char1:62f3a1a548dd0eb1d6f01935537a0802b8ebc3a6', 11, 0),
('char1:7a29070fd701e56c07e66db98e094ddde61945c1', 111, 0),
('char1:867bd0afed0855cd038eccaf3a1105e45e4c2bd3', 100, 0),
('char1:b51487510ffc4ca46dc38458e1a1fd9d8bb9c5ec', 100, 0),
('char1:d034b9db57ac0d785d8c333fa48520d5ed1683d2', 101, 0),
('char1:ef13d75e46304174e444e727ae3241f732606ef6', 104, 0),
('char1:fca2edaa22a486861d69245594db13138babb5fc', 102, 0),
('char2:24f419db94b77c58b76f1e4c378ae8ecfb336013', 100, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `deposits`
--

CREATE TABLE `deposits` (
  `identifier` varchar(46) NOT NULL,
  `items` longtext DEFAULT NULL,
  `money` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`identifier`, `items`, `money`) VALUES
('char1:0c727a6955699f7f3108fc88cafc2f92d5607fbf', NULL, 0),
('char1:0c94c54e3ae7dfa09237ca47d3be62b3371a8455', NULL, 0),
('char1:10b698e486cb7db7f3ca7b8c2d24d0645bf7d6ab', NULL, 0),
('char1:243750a6ed6b7b1417e7ca16801edf7a3dc233ab', NULL, 0),
('char1:24f419db94b77c58b76f1e4c378ae8ecfb336013', NULL, 0),
('char1:269f8f24b0ceffda23dc9bded32c4155ffdd16fd', NULL, 0),
('char1:2e7270e9f24f2f26c42516370d30da77fd39e3d5', NULL, 0),
('char1:323a7a2a815c99ec60c55e0e54d61bd4603ad240', NULL, 0),
('char1:4211a04ed3fff0cabb8963b6afd1460aa31b0efa', '[{\"label\":\"Sns Pistol_mk2\",\"count\":4,\"item\":\"snspistol_mk2\"}]', 0),
('char1:424bfbb3ff845c5e57423fc8d06d747ebb1fbdd0', '[]', 0),
('char1:4fe36ff59d7b06a0ccbacbacbb7afe7eeb7ecdb4', NULL, 0),
('char1:62f3a1a548dd0eb1d6f01935537a0802b8ebc3a6', NULL, 0),
('char1:7a29070fd701e56c07e66db98e094ddde61945c1', NULL, 0),
('char1:867bd0afed0855cd038eccaf3a1105e45e4c2bd3', NULL, 0),
('char1:b51487510ffc4ca46dc38458e1a1fd9d8bb9c5ec', NULL, 0),
('char1:ce23ef17ecde18096db1b7277f8b18bc7c65d247', NULL, 0),
('char1:d034b9db57ac0d785d8c333fa48520d5ed1683d2', '[{\"count\":1,\"item\":\"radiocrime\",\"label\":\"Krótkofalówka\"},{\"count\":60,\"item\":\"pistol_ammo\",\"label\":\"Pistol Ammo\"},{\"count\":2,\"item\":\"energydrink\",\"label\":\"streat Energy\"}]', 0),
('char1:dc943069ca6e38e0ddeecd55e6b9cda088f0353f', NULL, 0),
('char1:ed2145f07e54316c0454a889003db9b90e210f22', NULL, 0),
('char1:ed61c3f4e7d4225cbdc813f284943f9760b377eb', NULL, 0),
('char1:ef13d75e46304174e444e727ae3241f732606ef6', NULL, 0),
('char1:f4f19ad90303f0fc743ec8bbb2b14a4836d26bb7', NULL, 0),
('char1:fca2edaa22a486861d69245594db13138babb5fc', NULL, 0),
('char1:fed396d9df1e5e32b0f1283529ee0ca4dc10e0b6', NULL, 0),
('char2:24f419db94b77c58b76f1e4c378ae8ecfb336013', NULL, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Misuse of a horn', 30, 0),
(2, 'Illegally Crossing a continuous Line', 40, 0),
(3, 'Driving on the wrong side of the road', 250, 0),
(4, 'Illegal U-Turn', 250, 0),
(5, 'Illegally Driving Off-road', 170, 0),
(6, 'Refusing a Lawful Command', 30, 0),
(7, 'Illegally Stopping a Vehicle', 150, 0),
(8, 'Illegal Parking', 70, 0),
(9, 'Failing to Yield to the right', 70, 0),
(10, 'Failure to comply with Vehicle Information', 90, 0),
(11, 'Failing to stop at a Stop Sign ', 105, 0),
(12, 'Failing to stop at a Red Light', 130, 0),
(13, 'Illegal Passing', 100, 0),
(14, 'Driving an illegal Vehicle', 100, 0),
(15, 'Driving without a License', 1500, 0),
(16, 'Hit and Run', 800, 0),
(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
(21, 'Impeding traffic flow', 110, 1),
(22, 'Public Intoxication', 90, 1),
(23, 'Disorderly conduct', 90, 1),
(24, 'Obstruction of Justice', 130, 1),
(25, 'Insults towards Civilans', 75, 1),
(26, 'Disrespecting of an LEO', 110, 1),
(27, 'Verbal Threat towards a Civilan', 90, 1),
(28, 'Verbal Threat towards an LEO', 150, 1),
(29, 'Providing False Information', 250, 1),
(30, 'Attempt of Corruption', 1500, 1),
(31, 'Brandishing a weapon in city Limits', 120, 2),
(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
(33, 'No Firearms License', 600, 2),
(34, 'Possession of an Illegal Weapon', 700, 2),
(35, 'Possession of Burglary Tools', 300, 2),
(36, 'Grand Theft Auto', 1800, 2),
(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
(38, 'Frabrication of an Illegal Substance', 1500, 2),
(39, 'Possession of an Illegal Substance ', 650, 2),
(40, 'Kidnapping of a Civilan', 1500, 2),
(41, 'Kidnapping of an LEO', 2000, 2),
(42, 'Robbery', 650, 2),
(43, 'Armed Robbery of a Store', 650, 2),
(44, 'Armed Robbery of a Bank', 1500, 2),
(45, 'Assault on a Civilian', 2000, 3),
(46, 'Assault of an LEO', 2500, 3),
(47, 'Attempt of Murder of a Civilian', 3000, 3),
(48, 'Attempt of Murder of an LEO', 5000, 3),
(49, 'Murder of a Civilian', 10000, 3),
(50, 'Murder of an LEO', 30000, 3),
(51, 'Involuntary manslaughter', 1800, 3),
(52, 'Fraud', 2000, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `identifiers`
--

CREATE TABLE `identifiers` (
  `license` varchar(255) NOT NULL,
  `steamhex` varchar(255) NOT NULL,
  `xbl` varchar(255) NOT NULL,
  `live` varchar(255) NOT NULL,
  `discord` varchar(255) NOT NULL,
  `hwid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `edited` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `identifiers`
--

INSERT INTO `identifiers` (`license`, `steamhex`, `xbl`, `live`, `discord`, `hwid`, `name`, `edited`) VALUES
('', '11000011668b420', 'Brak', 'Brak', '', '[\"2:660fa9382f912d2d147435bfbade52cd2027f6054a0dfb1a71cd23d368ed7eba\",\"3:ee0c9605f2ca4504834f9d700df8aa1c7e89fe863dec2729422553f008eb4cbe\",\"5:612767a9d96f5dff8c4d8e228154136441cb7aa44ef12173d117a9b675957809\",\"4:0fac770733de67e1abeab6ea2b860c757501ee1ea8fc', 'zlms.jpg', '2023-08-25 23:24:00'),
('10b698e486cb7db7f3ca7b8c2d24d0645bf7d6ab', '110000110f1fc56', '2535422717669438', '985155080656446', '878017158809018368', '[\"3:76e1623391ea358446a34eddfbd46058054d1bd1279502cc74c310b63b74b9fb\",\"2:2281c9407ea512e33d7ab84a7aecc669bcf6e1d6ad7652acd6f4b51b3389057c\",\"7:f157bbcb77e7d2e3cb7ed7fc5b3fef9cd5c62f00234fa2b105114164f9561634\",\"4:d267fc3284674250061b69e3d7596fac6bf77cb76028', 'Dewelo', '2024-04-13 19:43:07'),
('24f419db94b77c58b76f1e4c378ae8ecfb336013', '11000011b10d92c', 'Brak', 'Brak', '465585705939107843', '[\"5:01f47b9a61ac23e6515c241d8c2ab2e1e02a449ba9747408609b9e09a26e4ccd\",\"3:e3e85a97c6f94f896682e5598838c1498109b0396bfbb96b1968291b440e1770\",\"2:ea94c9b069df5c288ff5e21c2e3bf9c2d100ba9a20c38b81f10a581a3d78c28e\",\"4:b81ca0628b25a1c79290fae4849e472e2ff543756845', 'vowki BangRP.pl', '2024-04-15 12:24:16'),
('38ae763a28b2ae23812a8991d9cc1b1c392e76c5', '110000116d2409a', '2535419052361097', '985154417156185', '662405151776309268', '[\"3:eda5015705cf60b0dd9a306aae5d43a344d8df9b7519e3aa124646c378c9bd50\",\"2:68cab0a319c9183111a317a7f7cd53805239b0cfac88c65c914020d0df6080bc\",\"4:5f0f00eab246f2e02ab8ed9e9ed3a6af120430c3f795a5f9ce244e9ce1408b78\",\"4:6b324d240afa81b4ae8bcaa3221505d6a13029d39489', 'Imperator Comandus', '2023-08-25 17:25:40'),
('54faa8988fd5d6a263a5a57b154e724f1e205cf5', '110000132f95045', '2535442475680826', '914798431124371', '397428739635413003', '[\"3:d45315dd9cf02e26d6ce95df008dde7908f524abc09b91e497c4c1a86df90a4a\",\"2:d2fbe24107116ea3685987482ca713383cd4df393cf9b77a5ee2b34d2d9cc650\",\"4:ac108991fac540081e7c5b3c1249fca8f8e414687492059d7add97ff43c8f64c\",\"4:c493627fa8cc704c95223139fead47f01b59b9cb09ad', 'icebl00d', '2023-08-22 23:03:56'),
('76aff6b05e2089d7f12c1edc90c80cd64fa28452', '110000135cb6eb8', 'Brak', 'Brak', '686253805129433102', '[\"3:5ba62efa94e0f3f753d9912c8c3fea318131f8099a65664a120f3bf9ce815645\",\"2:5de7ee87ad75cb6ab3bc0f4d4151602987cfa095ab081f99197c059841546f78\",\"5:8dfc4e0c9067bc8e4aec8424c73585a40304525b9192d42fa7835ac223c4481a\",\"4:0c1a230063b6c78288fb4294b6d47b287ab6fa72f64d', 'WZL QweZ', '2023-08-25 19:39:04'),
('7a29070fd701e56c07e66db98e094ddde61945c1', '110000165ac415c', 'Brak', 'Brak', '195006131100319746', '[\"3:ddebb906c1144e68fc65351450112841a6cd4d77459df19f3d0e05f7bec98803\",\"2:18b42dc625442885a26b6127bdc176500944ecf0f869b2e2f6b3e816dae254c7\",\"5:3113544b5936c5ce3a0a98e6cfdad11b12a7e00a61f67dfcb3ee91123ea57ec5\",\"4:e3da2d2c98f5218f28a204f01cb61270cac1fadd6046', 'skilleyeee', '2024-04-14 18:26:03'),
('7dd3674ad519cdb831afde45df810a9e0e0d5e59', '11000015c325761', 'Brak', 'Brak', '365599351294132225', '[\"2:b5aa1ed04202ec8f604b87c47179b82dce64682ea62b2a17d408fc13e176fceb\",\"4:88dd7ae3105f663bf47e0b24781b60a9c6e0bea7dd2644dbf5886cb214eb2b7d\",\"4:30a4b3e4a445453483dfe490d42db6c62f8c5fbe15007ccb4cacbb044ae14d98\",\"4:b3211eba233dd92e6434e1cc980b0560d92a0b3fae47', 'Natalie', '2023-08-25 17:28:12'),
('ef13d75e46304174e444e727ae3241f732606ef6', '11000014a3eab27', 'Brak', 'Brak', '680541988625711136', '[\"5:cb4041170a36d252e48376c9bc0d700b5ae6a723bc965ad9393dd4d13b6e002c\",\"2:9520da971bda0b5b03589e012692df84c12282d764932dd324e103199aa35977\",\"4:95bd79bb5f59c3a598f7309483d625d14b373c5e831a8964fbc9a1fea737fdd0\",\"4:5347e0bff8ec87d404b33674d3d3cab252783bbcf673', 'tekken', '2024-04-15 11:17:25'),
('f3c26eea7c183182b58d0e3a5395601d430c1b47', '110000118dc6346', '2535429394214282', '1055519819722847', '985603432457064490', '[\"3:d29237b3b7fe95363f601b05a1c30bc6df49e94bb31b2f2fe8c7ce8fce6b0eb8\",\"5:9a9fcc5f937507f9bf7e26e9e2be8c5e31b49c79d7fcf8cee1d8d4e929f229f6\",\"2:8e9a7898cbf27cd818770d1b59f166b4c851aef9eb8b2dbb121327a9c6f568d8\",\"4:32e8d94f37b5cc2c09c821b266cadb00b223374c0a01', 'zablobosswzl_tag_cpjs', '2023-08-22 22:55:05'),
('fca2edaa22a486861d69245594db13138babb5fc', '1100001450a13a0', 'Brak', 'Brak', '924427493866360905', '[\"2:b4a0f214d84f31268f072011bb78ef257e94bc01f1160a0f8a890cae7cceb92d\",\"5:467315ae74dde76e24f9060132e5825bbc750962d21001e1009886598769e378\",\"3:aba593b7fb74e6f775f4fe8c5910872e863501c2dd93f4ac8280a2b766c2410a\",\"4:66d4f2e1a5363250944d6787052d1770aaf9a5668d50', 'ogfr3kless', '2024-04-15 12:44:01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  `limit` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `limit`) VALUES
('bandage', 'Bandaż', 1, 0, 1, 10),
('ceramicpistol', 'Pistolet Ceramiczny', 10, 0, 1, -1),
('clip', 'Magazynek do pistoletu', 1, 0, 1, -1),
('coke', 'Kokaina', 1, 0, 1, 770),
('coke_pooch', 'Porcja kokainy', 1, 0, 1, 770),
('energydrink', 'streat Energy', 1, 0, 1, 100),
('extendedclip2', 'Powiększony magazynek V2', 1, 0, 1, -1),
('fentanyl', 'Fentanyl', 1, 0, 1, -1),
('fentanyl_pooch', 'Porcja fentanylu', 1, 0, 1, -1),
('gps', 'GPS', 1, 0, 1, -1),
('handcuffs', 'Kajdanki', 2, 0, 1, 5),
('heavypistol', 'Pistolet Heavy', 10, 0, 1, -1),
('heroin', 'Heroina', 1, 0, 1, -1),
('heroin_pooch', 'Porcja heroiny', 1, 0, 1, -1),
('medikit', 'Apteczka', 1, 0, 1, 3),
('meth', 'Metamfetamina', 1, 0, 1, -1),
('meth_pooch', 'Porcja Metamfetaminy', 1, 0, 1, -1),
('microsmg', 'Micro SMG', 1, 0, 1, -1),
('minismg', 'Mini SMG', 1, 0, 1, -1),
('pistol', 'Pistolet', 10, 0, 1, -1),
('pistol_ammo', 'Pistol Ammo', 1, 0, 1, -1),
('pistol_ammo_box', 'Magazynek do pistoletu', 1, 0, 1, -1),
('pistol_mk2', 'Pistolet (MK II)', 10, 0, 1, -1),
('radio', 'Radio', 1, 0, 1, -1),
('radiocrime', 'Krótkofalówka', 1, 0, 1, -1),
('repairkit', 'Zestaw naprawczy', 1, 0, 1, -1),
('rob_laptop', 'Laptop do hackowania', 1, 0, 1, -1),
('rob_lifeinvader', 'Łom do napadu', 1, 0, 1, -1),
('scope', 'Mały celownik', 1, 0, 1, -1),
('scope2', 'Duży celownik', 1, 0, 1, -1),
('smg_ammo', 'Amunicja do SMG', 1, 0, 1, -1),
('smg_mk2', 'SMG (MK II)', 1, 0, 1, -1),
('snspistol', 'Pistolet SNS', 1, 0, 1, 100),
('snspistol_mk2', 'Pistolet SNS (MK II)', 1, 0, 1, 100),
('suppressor2', 'Tłumik V2', 1, 0, 1, -1),
('vest_heavy', 'Kamizelka ciężka', 1, 0, 1, -1),
('vest_light', 'Kamizelka lekka', 1, 0, 1, -1),
('vest_medium', 'Kamizelka średnia', 1, 0, 1, -1),
('vintagepistol', 'Pistolet Vintage', 10, 0, 1, -1),
('vip', 'Ranga VIP', 1, 0, 1, -1),
('weed', 'Liscie marihuany', 1, 0, 1, -1),
('weed_pooch', 'Sativa haze', 1, 0, 1, -1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(46) NOT NULL,
  `jail_time` int(11) NOT NULL,
  `items` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `clothes` varchar(255) DEFAULT NULL,
  `grades` varchar(255) NOT NULL,
  `account` int(11) DEFAULT 0,
  `stash` varchar(255) DEFAULT NULL,
  `suspended` timestamp NULL DEFAULT current_timestamp(),
  `kits` varchar(255) DEFAULT NULL,
  `upgrades` varchar(255) DEFAULT NULL,
  `webhooks` varchar(255) DEFAULT NULL,
  `bitkipoints` int(11) DEFAULT 0,
  `capturedstrefa` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `clothes`, `grades`, `account`, `stash`, `suspended`, `kits`, `upgrades`, `webhooks`, `bitkipoints`, `capturedstrefa`) VALUES
('ambulance', 'EMS', 0, '', '[{\"name\":\"szef\",\"permissions\":{},\"salary\":500}]', 0, '[]', '2023-10-06 22:02:11', '[]', '[]', '[]', 0, NULL),
('mechanic', 'Mechanic', 0, '', '[{\"name\":\"szef\",\"permissions\":{},\"salary\":500}]', 0, '[]', '2023-10-06 22:02:11', '[]', '[]', '[]', 0, NULL),
('org1', 'PedaUU', 0, NULL, '[{\"salary\":0,\"permissions\":{\"all\":true},\"name\":\"Szef\"}]', 0, '[]', NULL, '[{\"items\":[{\"item\":\"snspistol_mk2\",\"count\":1},{\"item\":\"pistol_ammo\",\"count\":90},{\"item\":\"handcuffs\",\"count\":1},{\"item\":\"vintagepistol\",\"count\":1},{\"item\":\"meth_pooch\",\"count\":2}],\"label\":\"Sieka\"}]', '{\"handcuffs\":false,\"repairkit\":false}', NULL, 496835, NULL),
('org10', 'kkllf', 0, NULL, '[{\"permissions\":{\"all\":true},\"salary\":0,\"name\":\"Szef\"}]', 0, NULL, '2023-10-07 00:04:35', NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('org11', 'fffassd', 0, NULL, '[{\"permissions\":{\"all\":true},\"salary\":0,\"name\":\"Szef\"}]', 0, NULL, '2023-10-07 00:07:45', NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('org12', 'Guwno', 0, NULL, '[{\"salary\":0,\"permissions\":{\"all\":true},\"name\":\"Szef\"}]', 932853, NULL, '2023-10-07 20:42:34', NULL, '{\"repairkit\":1697316175,\"handcuffs\":1697316173}', NULL, 0, NULL),
('org13', 'SZONY', 0, NULL, '[{\"salary\":0,\"name\":\"Szef\",\"permissions\":{\"all\":true}}]', 2700000, '[{\"count\":100000,\"name\":\"pistol_ammo\",\"label\":\"Pistol Ammo\"},{\"count\":10000,\"name\":\"vintagepistol\",\"label\":\"Pistolet Vintage\"},{\"count\":10000,\"name\":\"meth_pooch\",\"label\":\"Porcja Metamfetaminy\"}]', '2023-10-08 13:26:39', NULL, '{\"handcuffs\":1697376440,\"repairkit\":1697376442}', NULL, 90000, NULL),
('org14', 'test', 0, NULL, '[{\"permissions\":{\"all\":true},\"salary\":0,\"name\":\"Szef\"}]', 0, NULL, '2024-04-13 19:04:37', NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('org2', 'neiv', 0, NULL, '[{\"salary\":0,\"permissions\":{\"all\":true},\"name\":\"Szef\"}]', 208200, NULL, NULL, NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 110942, '{\"Lotnisko Grapeseed\":1,\"Tartak\":1}'),
('org3', 'hujciwdupe', 0, NULL, '[{\"salary\":0,\"permissions\":{\"all\":true},\"name\":\"Szef\"}]', 0, NULL, NULL, NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('org4', 'asdd', 0, NULL, '[{\"permissions\":{\"all\":true},\"salary\":0,\"name\":\"Szef\"}]', 0, NULL, '2023-10-07 00:03:53', NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('org5', '5ddd', 0, NULL, '[{\"permissions\":{\"all\":true},\"salary\":0,\"name\":\"Szef\"}]', 0, NULL, '2023-10-07 00:04:02', NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('org6', 'ffff', 0, NULL, '[{\"permissions\":{\"all\":true},\"salary\":0,\"name\":\"Szef\"}]', 0, NULL, '2023-10-07 00:04:10', NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('org7', 'gggg', 0, NULL, '[{\"permissions\":{\"all\":true},\"salary\":0,\"name\":\"Szef\"}]', 0, NULL, '2023-10-07 00:04:14', NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('org8', 'cascas', 0, NULL, '[{\"permissions\":{\"all\":true},\"salary\":0,\"name\":\"Szef\"}]', 0, NULL, '2023-10-07 00:04:22', NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('org9', 'dddd', 0, NULL, '[{\"permissions\":{\"all\":true},\"salary\":0,\"name\":\"Szef\"}]', 0, NULL, '2023-10-07 00:04:29', NULL, '{\"handcuffs\":false,\"repairkit\":false}', NULL, 0, NULL),
('police', 'LSPD', 0, '', '[{\"name\":\"szef\",\"permissions\":{},\"salary\":500}]', 0, '[]', '2023-10-06 22:02:11', '[]', '{\"repairkit\":false,\"handcuffs\":false}', '{\"char1:424bfbb3ff845c5e57423fc8d06d747ebb1fbdd0\":30}', 0, NULL),
('unemployed', 'Unemployed', 0, '', '[{\"name\":\"bezrobotny\",\"permissions\":{},\"salary\":500}]', 0, '[]', '2023-10-06 22:02:11', '[]', '{\"handcuffs\":false,\"repairkit\":false}', '[]', 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kits`
--

CREATE TABLE `kits` (
  `identifier` varchar(46) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kits`
--

INSERT INTO `kits` (`identifier`, `data`) VALUES
('10b698e486cb7db7f3ca7b8c2d24d0645bf7d6ab', '{\"sieka\":0,\"vip\":0,\"start\":1713056115}'),
('24f419db94b77c58b76f1e4c378ae8ecfb336013', '{\"vip\":1713113864,\"start\":0,\"sieka\":0}'),
('7a29070fd701e56c07e66db98e094ddde61945c1', '{\"start\":1713140947,\"sieka\":0,\"vip\":1713141548}'),
('fca2edaa22a486861d69245594db13138babb5fc', '{\"vip\":0,\"sieka\":0,\"start\":1713206716}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(46) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mutes`
--

CREATE TABLE `mutes` (
  `identifier` varchar(46) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `plate` varchar(12) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `vehicle` longtext NOT NULL,
  `owner` longtext NOT NULL,
  `state` int(11) DEFAULT 0,
  `owner_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`plate`, `type`, `vehicle`, `owner`, `state`, `owner_type`) VALUES
('ISR 960', 'car', '{\"wheelColor\":156,\"modHorns\":-1,\"modXenon\":false,\"modAerials\":-1,\"xenonColor\":255,\"modHydrolic\":-1,\"modHood\":-1,\"doorsBroken\":{\"0\":false,\"2\":false,\"1\":false,\"4\":false,\"3\":false},\"neonColor\":[0,0,0],\"color1\":7,\"modArmor\":-1,\"modFender\":-1,\"bodyHealth\":1000.0,\"windowsBroken\":{\"6\":false,\"5\":true,\"0\":false,\"7\":false,\"2\":false,\"1\":false,\"4\":true,\"3\":false},\"windowTint\":-1,\"modSpoilers\":-1,\"modDoorSpeaker\":-1,\"wheels\":0,\"modDashboard\":-1,\"modExhaust\":-1,\"engineHealth\":1000.0,\"modBackWheels\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modSuspension\":-1,\"modLivery\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"modTransmission\":-1,\"extras\":{\"10\":false,\"12\":false},\"plateIndex\":0,\"modDoorR\":-1,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"model\":-344943009,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"plate\":\"ISR 960\",\"modTrunk\":-1,\"dirtLevel\":8.0,\"modFrontBumper\":-1,\"modRoof\":-1,\"color2\":0,\"modTrimA\":-1,\"modLightbar\":-1,\"modAPlate\":-1,\"modGrille\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modEngine\":-1,\"fuelLevel\":65.0,\"modDial\":-1,\"modRearBumper\":-1,\"modBrakes\":-1,\"tankHealth\":1000.0,\"modPlateHolder\":-1,\"tyreSmokeColor\":[255,255,255],\"modSmokeEnabled\":false,\"tyreBurst\":{\"1\":false,\"5\":false,\"4\":false,\"0\":false},\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":5,\"modSeats\":-1,\"modArchCover\":-1,\"modAirFilter\":-1,\"modTrimB\":-1,\"modTurbo\":false,\"modSteeringWheel\":-1,\"modStruts\":-1}', 'char1:424bfbb3ff845c5e57423fc8d06d747ebb1fbdd0', 0, NULL),
('NHV 782', 'car', '{\"model\":1323778901,\"plate\":\"NHV 782\"}', 'char1:424bfbb3ff845c5e57423fc8d06d747ebb1fbdd0', 1, NULL),
('PRG 484', 'car', '{\"model\":1483171323,\"plate\":\"PRG 484\"}', 'char1:f4f19ad90303f0fc743ec8bbb2b14a4836d26bb7', 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reportsystem`
--

CREATE TABLE `reportsystem` (
  `license` varchar(255) NOT NULL,
  `count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reportsystem`
--

INSERT INTO `reportsystem` (`license`, `count`) VALUES
('424bfbb3ff845c5e57423fc8d06d747ebb1fbdd0', 2),
('323a7a2a815c99ec60c55e0e54d61bd4603ad240', 0),
('2e7270e9f24f2f26c42516370d30da77fd39e3d5', 0),
('243750a6ed6b7b1417e7ca16801edf7a3dc233ab', 0),
('b51487510ffc4ca46dc38458e1a1fd9d8bb9c5ec', 0),
('fed396d9df1e5e32b0f1283529ee0ca4dc10e0b6', 0),
('4211a04ed3fff0cabb8963b6afd1460aa31b0efa', 0),
('f4f19ad90303f0fc743ec8bbb2b14a4836d26bb7', 0),
('0c94c54e3ae7dfa09237ca47d3be62b3371a8455', 0),
('867bd0afed0855cd038eccaf3a1105e45e4c2bd3', 0),
('24f419db94b77c58b76f1e4c378ae8ecfb336013', 0),
('10b698e486cb7db7f3ca7b8c2d24d0645bf7d6ab', 0),
('fca2edaa22a486861d69245594db13138babb5fc', 0),
('7a29070fd701e56c07e66db98e094ddde61945c1', 0),
('ef13d75e46304174e444e727ae3241f732606ef6', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `streat_duels`
--

CREATE TABLE `streat_duels` (
  `identifier` varchar(46) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `matches` varchar(255) DEFAULT NULL,
  `wins` varchar(255) DEFAULT NULL,
  `loses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `identifier` varchar(46) NOT NULL,
  `name` varchar(255) NOT NULL,
  `license` varchar(255) DEFAULT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `premiumgroup` varchar(50) DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `secondjob` varchar(255) NOT NULL DEFAULT 'unemployed',
  `secondjob_grade` int(11) NOT NULL DEFAULT 0,
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `tattoos` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `phone_number` int(11) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `weaponcd` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `account_number` varchar(10) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `duelaccount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `name`, `license`, `accounts`, `group`, `premiumgroup`, `inventory`, `job`, `secondjob`, `secondjob_grade`, `job_grade`, `loadout`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `tattoos`, `status`, `is_dead`, `id`, `disabled`, `last_property`, `created_at`, `last_seen`, `phone_number`, `pincode`, `weaponcd`, `badge`, `account_number`, `points`, `duelaccount`) VALUES
('char1:24f419db94b77c58b76f1e4c378ae8ecfb336013', 'vowki BangRP.pl', NULL, '{\"bank\":1000000,\"black_money\":0,\"money\":0}', 'user', NULL, '[]', 'unemployed', 'unemployed', 0, 1, '[]', '{\"y\":-2462.7,\"x\":-223.0,\"heading\":0.0,\"z\":6.3}', 'Vowki', 'Vowki', NULL, 'm', NULL, '{\"watches_2\":0,\"pants_2\":3,\"chimp_3\":10,\"chin_4\":0,\"cheeks_3\":6,\"shoes_1\":70,\"beard_3\":0,\"pants_1\":28,\"decals_1\":0,\"jaw_2\":0,\"blush_3\":0,\"blush_2\":0,\"skin_3\":0,\"makeup_2\":0,\"bodyb_1\":-1,\"bodyb_2\":0,\"decals_2\":0,\"torso_1\":23,\"lipstick_3\":0,\"bracelets_1\":-1,\"chest_3\":0,\"helmet_1\":-1,\"arms_2\":0,\"mask_1\":0,\"age_1\":0,\"makeup_4\":0,\"lip_thickness\":-2,\"bags_1\":0,\"cheeks_1\":2,\"lipstick_4\":0,\"blend\":0,\"face\":0,\"eye_squint\":0,\"blend_face\":0,\"glasses_2\":0,\"beard_1\":11,\"mom\":43,\"bodyb_4\":0,\"lipstick_2\":0,\"ears_2\":0,\"sex\":0,\"eye_color\":0,\"moles_2\":0,\"bproof_2\":0,\"hair_1\":76,\"lipstick_1\":0,\"hair_color_1\":61,\"helmet_2\":0,\"nose_5\":10,\"eyebrows_1\":0,\"chin_2\":0,\"chin_13\":0,\"face_3\":0,\"nose_3\":5,\"chest_2\":0,\"lips\":10,\"hair_color_2\":29,\"moles_1\":0,\"nose_1\":-5,\"skin\":0,\"nose_4\":8,\"mask_2\":0,\"hair_2\":0,\"blush_1\":0,\"sun_2\":0,\"cheeks_2\":-10,\"sun_1\":0,\"makeup_3\":0,\"chain_2\":2,\"skin_2\":0,\"hair_3\":0,\"skin_md_weight\":27,\"eyebrows_4\":0,\"bags_2\":0,\"eyebrows_2\":0,\"face_2\":0,\"shoes_2\":2,\"beard_4\":0,\"watches_1\":-1,\"chimp_4\":10,\"blemishes_1\":0,\"torso_2\":2,\"bodyb_3\":-1,\"eyebrows_6\":0,\"nose_2\":6,\"age_2\":0,\"jaw_1\":0,\"makeup_1\":0,\"chimp_1\":10,\"bracelets_2\":0,\"eyebrow_2\":10,\"neck\":10,\"tshirt_1\":4,\"arms\":1,\"eyebrows_5\":0,\"chin_1\":0,\"eyebrows_3\":0,\"eyebrow_1\":10,\"glasses_1\":0,\"dad\":29,\"tshirt_2\":2,\"chain_1\":22,\"face_md_weight\":61,\"chest_1\":0,\"complexion_2\":0,\"nose_6\":0,\"chimp_2\":10,\"beard_2\":10,\"complexion_1\":0,\"blemishes_2\":0,\"ears_1\":-1,\"blend_skin\":0,\"bproof_1\":0,\"neck_thickness\":0}', NULL, '{\"armor\":0,\"health\":0}', 1, 2, 0, NULL, '2024-04-15 12:25:25', '2024-04-15 12:48:49', NULL, NULL, NULL, NULL, NULL, -50, NULL),
('char1:ef13d75e46304174e444e727ae3241f732606ef6', 'tekken', NULL, '{\"bank\":1000000,\"black_money\":0,\"money\":0}', 'owner', NULL, '[]', 'unemployed', 'unemployed', 0, 1, '[]', '{\"y\":-929.1,\"x\":-259.4,\"heading\":0.0,\"z\":31.2}', 'Tek', 'Ken', NULL, 'm', NULL, '{\"bodyb_2\":0,\"jaw_2\":0,\"blemishes_1\":0,\"chain_2\":2,\"blemishes_2\":0,\"bodyb_3\":-1,\"eyebrows_5\":0,\"nose_6\":0,\"hair_1\":76,\"eye_color\":0,\"age_2\":0,\"eyebrows_1\":0,\"skin_3\":0,\"mom\":43,\"jaw_1\":0,\"lipstick_2\":0,\"mask_2\":0,\"decals_2\":0,\"chimp_2\":10,\"eye_squint\":0,\"bproof_2\":0,\"hair_2\":0,\"blush_3\":0,\"sun_2\":0,\"arms_2\":0,\"bags_1\":0,\"lipstick_3\":0,\"ears_2\":0,\"decals_1\":0,\"chest_3\":0,\"tshirt_1\":4,\"cheeks_1\":2,\"face_md_weight\":61,\"face\":0,\"chimp_4\":10,\"glasses_2\":0,\"cheeks_3\":6,\"complexion_1\":0,\"nose_3\":5,\"chest_1\":0,\"chest_2\":0,\"watches_2\":0,\"watches_1\":-1,\"blush_1\":0,\"chin_13\":0,\"helmet_1\":-1,\"blend_face\":0,\"bodyb_4\":0,\"nose_5\":10,\"beard_2\":10,\"helmet_2\":0,\"makeup_4\":0,\"chimp_1\":10,\"eyebrow_1\":10,\"chin_4\":0,\"chin_2\":0,\"mask_1\":0,\"glasses_1\":0,\"eyebrows_6\":0,\"age_1\":0,\"skin_2\":0,\"beard_1\":11,\"bracelets_1\":-1,\"blush_2\":0,\"eyebrows_2\":0,\"chin_1\":0,\"beard_4\":0,\"face_2\":0,\"makeup_3\":0,\"torso_2\":2,\"bracelets_2\":0,\"moles_1\":0,\"eyebrow_2\":10,\"arms\":1,\"nose_4\":8,\"lips\":10,\"blend_skin\":0,\"dad\":29,\"bodyb_1\":-1,\"cheeks_2\":-10,\"neck_thickness\":0,\"hair_3\":0,\"hair_color_2\":29,\"chimp_3\":10,\"chain_1\":22,\"complexion_2\":0,\"torso_1\":23,\"shoes_1\":70,\"sun_1\":0,\"nose_1\":-5,\"hair_color_1\":61,\"pants_1\":28,\"lip_thickness\":-2,\"lipstick_4\":0,\"bproof_1\":0,\"skin_md_weight\":27,\"shoes_2\":2,\"makeup_2\":0,\"moles_2\":0,\"eyebrows_3\":0,\"blend\":0,\"face_3\":0,\"bags_2\":0,\"makeup_1\":0,\"eyebrows_4\":0,\"nose_2\":6,\"ears_1\":-1,\"lipstick_1\":0,\"sex\":0,\"skin\":0,\"neck\":10,\"beard_3\":0,\"pants_2\":3,\"tshirt_2\":2}', NULL, '{\"armor\":0,\"health\":200}', 0, 1, 0, NULL, '2024-04-15 10:16:37', '2024-04-15 11:59:06', NULL, NULL, NULL, NULL, NULL, 0, NULL),
('char1:fca2edaa22a486861d69245594db13138babb5fc', 'ogfr3kless', NULL, '{\"bank\":1000000,\"black_money\":0,\"money\":0}', 'user', NULL, '{\"energydrink\":3,\"radiocrime\":1,\"handcuffs\":1,\"pistol_ammo\":95,\"pistol\":1}', 'unemployed', 'unemployed', 0, 1, '[]', '{\"y\":-2466.3,\"x\":-213.8,\"heading\":0.0,\"z\":6.0}', 'John', 'Wick', NULL, 'm', NULL, '{\"watches_2\":0,\"pants_2\":3,\"chimp_3\":10,\"chin_4\":0,\"cheeks_3\":6,\"shoes_1\":70,\"blend\":0,\"bproof_1\":0,\"decals_1\":0,\"jaw_2\":0,\"blush_3\":0,\"blend_skin\":0,\"skin_3\":0,\"makeup_2\":0,\"skin\":3,\"beard_3\":0,\"complexion_2\":0,\"torso_1\":23,\"lipstick_3\":0,\"hair_2\":0,\"chest_3\":0,\"chin_2\":0,\"torso_2\":2,\"mask_1\":0,\"face_md_weight\":61,\"makeup_4\":0,\"lip_thickness\":-2,\"bags_1\":0,\"complexion_1\":0,\"bodyb_1\":-1,\"moles_2\":0,\"bodyb_2\":0,\"eye_squint\":0,\"blend_face\":0,\"glasses_2\":0,\"face\":0,\"sun_2\":0,\"shoes_2\":2,\"arms\":1,\"ears_2\":0,\"mom\":43,\"lipstick_2\":0,\"skin_2\":0,\"bproof_2\":0,\"hair_1\":76,\"eyebrows_2\":0,\"hair_color_1\":61,\"helmet_2\":0,\"nose_5\":10,\"eyebrows_1\":0,\"nose_4\":8,\"bracelets_1\":-1,\"face_3\":0,\"nose_3\":5,\"eyebrows_4\":0,\"lips\":10,\"hair_color_2\":29,\"moles_1\":0,\"blemishes_1\":0,\"tshirt_1\":4,\"chest_2\":0,\"mask_2\":0,\"decals_2\":0,\"bodyb_4\":0,\"arms_2\":0,\"cheeks_2\":-10,\"sun_1\":0,\"makeup_3\":0,\"blush_2\":0,\"beard_1\":11,\"bags_2\":0,\"skin_md_weight\":27,\"age_1\":0,\"watches_1\":-1,\"lipstick_4\":0,\"lipstick_1\":0,\"nose_1\":-5,\"beard_4\":0,\"eye_color\":0,\"chimp_4\":10,\"chest_1\":0,\"makeup_1\":0,\"blush_1\":0,\"eyebrows_6\":0,\"nose_2\":6,\"age_2\":0,\"jaw_1\":0,\"sex\":0,\"chimp_1\":10,\"bracelets_2\":0,\"eyebrow_2\":10,\"neck\":10,\"cheeks_1\":2,\"chain_2\":2,\"eyebrows_5\":0,\"chin_1\":0,\"eyebrows_3\":0,\"eyebrow_1\":10,\"glasses_1\":0,\"dad\":29,\"tshirt_2\":2,\"chain_1\":22,\"chin_13\":0,\"helmet_1\":-1,\"face_2\":0,\"nose_6\":0,\"chimp_2\":10,\"beard_2\":10,\"pants_1\":28,\"blemishes_2\":0,\"ears_1\":-1,\"bodyb_3\":-1,\"hair_3\":0,\"neck_thickness\":0}', NULL, '{\"armor\":0,\"health\":200}', 0, 3, 0, NULL, '2024-04-15 12:45:08', '2024-04-15 12:49:00', NULL, NULL, NULL, NULL, NULL, 100, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_dressigns`
--

CREATE TABLE `user_dressigns` (
  `identifier` varchar(46) NOT NULL,
  `dressigns` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_dressigns`
--

INSERT INTO `user_dressigns` (`identifier`, `dressigns`) VALUES
('char1:424bfbb3ff845c5e57423fc8d06d747ebb1fbdd0', '[]'),
('char1:7a29070fd701e56c07e66db98e094ddde61945c1', '[{\"label\":\"1123\",\"skin\":{\"nose_6\":0,\"decals_2\":0,\"chin_2\":0,\"eye_squint\":0,\"skin_md_weight\":27,\"eye_color\":0,\"tshirt_2\":1,\"face_md_weight\":61,\"skin_3\":0,\"cheeks_3\":6,\"chimp_3\":10,\"eyebrows_5\":0,\"age_2\":0,\"nose_3\":5,\"eyebrows_6\":0,\"bodyb_3\":-1,\"torso_1\":42,\"chain_2\":2,\"blend_face\":0,\"mask_1\":0,\"tshirt_1\":7,\"ears_1\":-1,\"chain_1\":22,\"chimp_2\":10,\"face_3\":0,\"age_1\":0,\"lip_thickness\":-2,\"cheeks_1\":2,\"blend\":0,\"watches_2\":0,\"cheeks_2\":-10,\"chimp_1\":10,\"skin\":0,\"glasses_2\":0,\"bracelets_2\":0,\"mask_2\":0,\"pants_2\":3,\"eyebrow_2\":10,\"blemishes_2\":0,\"sun_2\":0,\"bodyb_1\":-1,\"eyebrow_1\":10,\"blend_skin\":0,\"bodyb_4\":0,\"nose_2\":6,\"nose_4\":8,\"nose_5\":10,\"torso_2\":0,\"neck\":10,\"moles_1\":0,\"chin_4\":0,\"bags_2\":0,\"bodyb_2\":0,\"chin_1\":0,\"arms_2\":0,\"bproof_2\":0,\"helmet_2\":0,\"bags_1\":0,\"mom\":43,\"sun_1\":0,\"bproof_1\":0,\"complexion_1\":0,\"chimp_4\":10,\"chin_13\":0,\"ears_2\":0,\"shoes_2\":2,\"nose_1\":-5,\"skin_2\":0,\"helmet_1\":-1,\"blemishes_1\":0,\"moles_2\":0,\"dad\":29,\"jaw_2\":0,\"pants_1\":28,\"arms\":1,\"neck_thickness\":0,\"decals_1\":0,\"complexion_2\":0,\"shoes_1\":70,\"watches_1\":-1,\"jaw_1\":0,\"lips\":10,\"bracelets_1\":-1,\"glasses_1\":0,\"sex\":0,\"face_2\":0}}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'CoupĂ©s'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `id` int(11) NOT NULL,
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(46) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `banking`
--
ALTER TABLE `banking`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cases_coins`
--
ALTER TABLE `cases_coins`
  ADD PRIMARY KEY (`license`);

--
-- Indeksy dla tabeli `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `identifiers`
--
ALTER TABLE `identifiers`
  ADD PRIMARY KEY (`license`);

--
-- Indeksy dla tabeli `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `identifier` (`identifier`);

--
-- Indeksy dla tabeli `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `kits`
--
ALTER TABLE `kits`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `multicharacter_slots`
--
ALTER TABLE `multicharacter_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE,
  ADD KEY `slots` (`slots`) USING BTREE;

--
-- Indeksy dla tabeli `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indeksy dla tabeli `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indeksy dla tabeli `streat_duels`
--
ALTER TABLE `streat_duels`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `index_users_phone_number` (`phone_number`);

--
-- Indeksy dla tabeli `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`);

--
-- Indeksy dla tabeli `user_dressigns`
--
ALTER TABLE `user_dressigns`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banking`
--
ALTER TABLE `banking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
