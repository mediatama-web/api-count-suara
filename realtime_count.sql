-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2024 pada 16.55
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realtime_count`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_caleg`
--

CREATE TABLE `tb_caleg` (
  `id_caleg` int(11) NOT NULL,
  `nama_caleg` varchar(255) NOT NULL,
  `partai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_caleg`
--

INSERT INTO `tb_caleg` (`id_caleg`, `nama_caleg`, `partai`) VALUES
(1, 'IRWANDI, S.Pi.', 'PKB'),
(2, 'H. DONNY ASMADI, S.T., M.T', 'PKB'),
(3, 'FARMI DESRINA', 'PKB'),
(4, 'SYAMSUL AKMAL, S.Ag, M.M', 'PKB'),
(5, 'NURSANTI', 'PKB'),
(6, 'ZULKIFLI ZEN', 'PKB'),
(7, 'ALDRICH ROBUSTA', 'PKB'),
(8, 'JACK OF ALL TRADES, A.Md', 'PKB'),
(9, 'AYU LUSIYANTI, S.E', 'PKB'),
(10, 'NOPI BUSRI, S.PD', 'PKB'),
(11, 'MANUFER PUTRA FIRDAUS, S.I.P', 'Gerindra'),
(12, 'DELMA PUTRA', 'Gerindra'),
(13, 'NURHAIDA, A.Md', 'Gerindra'),
(14, 'MAZHAR PUTRA AZ, S.Pt', 'Gerindra'),
(15, 'MARDI ADRIL', 'Gerindra'),
(16, 'MELBA, S.I.KOM', 'Gerindra'),
(17, 'HAFRIDICO MUDRAL', 'Gerindra'),
(18, 'ALZEFRI, S.Sos', 'Gerindra'),
(19, 'RABYATUL MARDIAH, S.H', 'Gerindra'),
(20, 'ERWAN JALBER', 'Gerindra'),
(21, 'Drs. WISMAR PANJAITAN, M.Pd', 'PDI-P'),
(22, 'PUTRA ALAMSYAH, S.E., M.M', 'PDI-P'),
(23, 'BEBBY BETHARIA', 'PDI-P'),
(24, 'BINSAR HUTAJALU', 'PDI-P'),
(25, 'AZWAR', 'PDI-P'),
(26, 'WARDANENGSIH', 'PDI-P'),
(27, 'YANUARDI TELAUMBANUA', 'PDI-P'),
(28, 'SEFRI EFENDI, S.H', 'PDI-P'),
(29, 'SERLLY FARISA, S.E', 'PDI-P'),
(30, 'JONY HB', 'PDI-P'),
(31, 'JUMADI, S.H', 'Golkar'),
(32, 'MUHAMMAD TOMMY ARBY RUMENGAN, S.E., M.M', 'Golkar'),
(33, 'RIA REZEKI, S.E', 'Golkar'),
(34, 'M. ZIKRI EHSAN, S.S', 'Golkar'),
(35, 'BOBBY SUJARYANTO, S.E', 'Golkar'),
(36, 'DESMERI,B.Sc', 'Golkar'),
(37, 'AIDIL ADHA', 'Golkar'),
(38, 'BAMBANG BURHANIO', 'Golkar'),
(39, 'DESNITA FATMA', 'Golkar'),
(40, 'WENDI JULI PUTRA, S.Pd., M.Pd.T', 'Golkar'),
(41, 'TAUFIK HAFNI', 'Nasdem'),
(42, 'ERIOS RAHMAN, S.H., M.M', 'Nasdem'),
(43, 'NAILIFITMA', 'Nasdem'),
(44, 'AFRIZAL', 'Nasdem'),
(45, 'DEDI MARIYES SAPUTRA', 'Nasdem'),
(46, 'FAHYU YEREITI', 'Nasdem'),
(47, 'M. FAUTIAZ FAUZI', 'Nasdem'),
(48, 'MUTIARA SANI', 'Nasdem'),
(49, 'H.EDWARD, Dt. RAJO NANDO, S.E., M.M', 'Nasdem'),
(50, 'AGUSRIANTO, S.H.I., M.A', 'Nasdem'),
(51, 'H. MUHARLION, S.Pd', 'PKS'),
(52, 'H. MULYADI. M, Lc., M.A', 'PKS'),
(53, 'DESMAWATI, S.Pd', 'PKS'),
(54, 'PUN ARDI, S.Ag', 'PKS'),
(55, 'FADRIZALI, S.K.M', 'PKS'),
(56, 'QATRINNADA ANISTINA ELSAFREDINIYA, S.I.KOM', 'PKS'),
(57, 'ASRIYAL, S.Sos.I', 'PKS'),
(58, 'SYAHBUDAR', 'PKS'),
(59, 'SILVIA RINA, S.Ag', 'PKS'),
(60, 'dr. IRZAN', 'PKS'),
(61, 'RUSTAM EFENDI', 'PAN'),
(62, 'MUHAMAD RAYHAN', 'PAN'),
(63, 'MAGDHALENA, S.E', 'PAN'),
(64, 'NOVRIZAL', 'PAN'),
(65, 'ELVI AMRI, S.E', 'PAN'),
(66, 'MEGAWATI NURZA, S.TP', 'PAN'),
(67, 'SRI FIANTY', 'PAN'),
(68, 'MASRIL, S.H', 'PAN'),
(69, 'PATI HARIYOS', 'PAN'),
(70, 'IRWAN, S.Pd', 'PAN'),
(71, 'MUKHLIS, S.E', 'Demokrat'),
(72, 'RONI CANDRA, S.Pd., M.M', 'Demokrat'),
(73, 'Dra. HJ. NURHAYATI, M.M', 'Demokrat'),
(74, ' ZAHIRWAN', 'Demokrat'),
(75, 'JONI ISMED', 'Demokrat'),
(76, 'DAYU PUTRI BARENO, S.Pd', 'Demokrat'),
(77, 'H. SUTIKNO, S.Sos', 'Demokrat'),
(78, 'MUHAMMAD YANI', 'Demokrat'),
(79, 'PRATIWI AZANI, S.Pd', 'Demokrat'),
(80, 'RIZKI RAHMATULIAH, S.H., M.Kn', 'Demokrat'),
(81, 'YUHILLDA DARWIS, S.E', 'PPP'),
(82, 'Drs. BASRIAL AIDIL', 'PPP'),
(83, 'H. SYAHRIL, S.Sos', 'PPP'),
(84, 'Drs. SUARDI DARMA PUTRA', 'PPP'),
(85, 'ROSMIATI, S.Pd', 'PPP'),
(86, 'Drs. DASRELLI', 'PPP'),
(87, 'ALI BASA', 'PPP'),
(88, 'Drs. ADRIZAL', 'PPP'),
(89, 'LAKSMIDA', 'PPP'),
(90, 'JONEDI', 'PPP'),
(91, 'Drs. H. TASMAN, M.Si', 'Partai Ummat'),
(92, 'SALMAH APEN', 'Partai Ummat'),
(93, 'ZULKIFLI', 'Partai Ummat'),
(94, 'SUNANDAR, S.E', 'Partai Ummat'),
(95, 'FIRDAUS Z, S.Pd., M.M', 'Partai Ummat'),
(96, 'NURLELA, S.Pd', 'Partai Ummat'),
(97, 'FERA VEBRINA', 'Partai Ummat'),
(98, 'MULAWARMAN', 'Partai Ummat'),
(99, 'JULI AMIN PUTRA, M.A', 'Partai Ummat'),
(100, 'ASMADI', 'Partai Ummat'),
(101, 'ZULHENDRI IISMED, S.T', 'PKB'),
(102, 'ALFIAN CHANDRA, S.Ag', 'PKB'),
(103, 'YUSNIMAR, S. H', 'PKB'),
(104, 'ZALMADI, S. Hum', 'PKB'),
(105, 'SAWITRI JULIA ANANDA', 'PKB'),
(106, 'YUSMERI, S.H', 'PKB'),
(107, 'HANIF, S.H., S. Pd', 'PKB'),
(108, 'WAHYU HIDAYAT', 'Gerindra'),
(109, 'EKO MUHARDI', 'Gerindra'),
(110, 'NANI SUSANTI', 'Gerindra'),
(111, 'MUZNI ZEN, S.H', 'Gerindra'),
(112, 'ATIKA MAHWU INDAH, S.H', 'Gerindra'),
(113, 'ZAINATUL KADRI', 'Gerindra'),
(114, 'IR. EVI  YUSRI, M.Si', 'Gerindra'),
(115, 'IRMANSYAH, S.H', 'PDI-P'),
(116, 'DENO RAFION', 'PDI-P'),
(117, 'RISKA YULIANTI', 'PDI-P'),
(118, 'BAYU ICHWAN NUGROHO', 'PDI-P'),
(119, 'LEONARD NAIPOSPOS, S.Si', 'PDI-P'),
(120, 'CECEN TRILIONA', 'PDI-P'),
(121, 'GERY PERNANDO', 'PDI-P'),
(122, 'ZULHARDI Z LATIF, S.H., M.M', 'Golkar'),
(123, 'ERIANTO', 'Golkar'),
(124, 'NURHASNI, S.S., M.A', 'Golkar'),
(125, 'IR. DARYANTO SABIR, M.Si. DATUAK MOJO SINARO', 'Golkar'),
(126, 'SUSI FIRDIANINGSIH', 'Golkar'),
(127, 'ERLINDA', 'Golkar'),
(128, 'ARMADI KAMAL', 'Golkar'),
(129, 'SYAMSU RIZAL, S.E', 'Nasdem'),
(130, 'H. ISKANDAR, M.H.I', 'Nasdem'),
(131, 'ERI NOVRIANTI', 'Nasdem'),
(132, 'RAHMAT SAPUTRA', 'Nasdem'),
(133, 'Drs. ISRUL H', 'Nasdem'),
(134, 'PRITA TUSIA MEGANA, S.H', 'Nasdem'),
(135, 'ELFAUZI, S..Sos', 'Nasdem'),
(136, 'ELVA ZULENI, S.Pt., M.Pd', 'PKS'),
(137, 'JA`FAR, S.H.I', 'PKS'),
(138, 'H. FARIDANSYAH', 'PKS'),
(139, 'NURMALINA, S.Sos.I', 'PKS'),
(140, 'Ir. MAYULI', 'PKS'),
(141, 'DR.ALFROKI MARTHA, S.PD., M.Pd', 'PKS'),
(142, 'BASRAL, S.Pd.I., M.A ', 'PKS'),
(143, 'YANDRI, S.Pd., M.Pd', 'PAN'),
(144, 'RIYASRIL INDRO', 'PAN'),
(145, 'TITI HALINANDINI', 'PAN'),
(146, 'DAFRIL', 'PAN'),
(147, 'JULIA AYU NINGSIH', 'PAN'),
(148, 'PADRI', 'PAN'),
(149, 'USMARDI THAREB', 'PAN'),
(150, 'DASMAN, S.H', 'Demokrat'),
(151, 'SALISMA, S.H', 'Demokrat'),
(152, 'NOVERI, S.H', 'Demokrat'),
(153, 'Drs. ISWANDI', 'Demokrat'),
(154, 'Drs. MURSID', 'Demokrat'),
(155, 'DESMICE, B.AC', 'Demokrat'),
(156, 'PUJA HENGKI ERZA PRIANTAMA, S.T', 'Demokrat'),
(157, 'RIFFANDY PRATAMA, S.E', 'PPP'),
(158, 'Ns. Hj. ERNI HENDRI YAZID, S.Kep., M.Kep', 'PPP'),
(159, 'FRI FATRIA, S.Sos', 'PPP'),
(160, 'MUHAMMAD KHALIDI AL KHAIR', 'PPP'),
(161, 'DESWITA', 'PPP'),
(162, 'MUHAMMAD HUSNUL ULYA', 'PPP'),
(163, 'H. SYAFRI KHAIDIR', 'PPP'),
(164, 'ALHIDAYAT, S.E', 'Partai Ummat'),
(165, 'ADRIYOSA ADNAN, S.Ag', 'Partai Ummat'),
(166, 'ARBAIN, S.H', 'Partai Ummat'),
(167, 'Drs. MULYADI', 'Partai Ummat'),
(168, 'ISMAEL, A.Md', 'Partai Ummat'),
(169, 'SRI PERTISAH', 'Partai Ummat'),
(170, 'ARIZAL', 'Partai Ummat'),
(171, 'YUSTRI LATIF, S.H.I', 'PKB'),
(172, 'ARIFIN HASAN, SE', 'PKB'),
(173, 'ENA ZAHARI, S.S', 'PKB'),
(174, 'FIRDAUS', 'PKB'),
(175, 'MUHARMAN', 'PKB'),
(176, 'RESNIDA', 'PKB'),
(177, 'DONAL ARDI', 'Gerindra'),
(178, 'RENY KURNIAWATI, S.P', 'Gerindra'),
(179, 'RIO HANDEVIS, S.E', 'Gerindra'),
(180, 'REDHO RAMA PUTRA, S.I.P., M.I.P', 'Gerindra'),
(181, 'VIVI RAFLES, S.E', 'Gerindra'),
(182, 'DEKO EFRIYADI', 'Gerindra'),
(183, 'JUFRI', 'PDI-P'),
(184, 'SURACHMAN BACRIS, B.Ac', 'PDI-P'),
(185, 'EVA FELMITA', 'PDI-P'),
(186, 'RIVON, A.Md', 'PDI-P'),
(187, 'DESLIAN ARMAINI, S.E', 'PDI-P'),
(188, 'MUHAMMAD IQBAL', 'PDI-P'),
(189, 'MISWAR JAMBAK, S.H', 'Golkar'),
(190, 'JAMASRI, S.E', 'Golkar'),
(191, 'RIRI ADRIANI', 'Golkar'),
(192, 'NISFAN JUMADIL, S.H', 'Golkar'),
(193, 'SURYADI ISSA, B.Sc', 'Golkar'),
(194, 'ZUL ASMI', 'Golkar'),
(195, 'KHAIRUDDIN, S.H', 'Nasdem'),
(196, 'ALFI BEBEN ONE', 'Nasdem'),
(197, 'MAIRAWATI', 'Nasdem'),
(198, 'BUSRI', 'Nasdem'),
(199, 'YENNIDA', 'Nasdem'),
(200, 'SYULASTRI, S.Sos', 'Nasdem'),
(201, 'RAFDI, S.T', 'PKS'),
(202, 'EDMON, S.E', 'PKS'),
(203, 'YENI FITRA', 'PKS'),
(204, 'Dr.MAIYULNITA, S.H., M.Si', 'PKS'),
(205, 'RUSLIM, A.Md', 'PKS'),
(206, 'MUHAMMAD HIDAYAT, S.E', 'PKS'),
(207, 'ZULKARDI', 'PAN'),
(208, 'SYAMSUL RIZAL', 'PAN'),
(209, 'RATNAWATI', 'PAN'),
(210, 'ALMIRNI, S.Pd.I., M.A', 'PAN'),
(211, 'GUSFALINA', 'PAN'),
(212, 'AFDAL YUSUF', 'PAN'),
(213, 'SURYA JUFRI, S.Sos', 'Demokrat'),
(214, 'NILA KARTIKA, A.Md', 'Demokrat'),
(215, 'FEBRIYADI, S.E', 'Demokrat'),
(216, 'YERI SANDI, S.Pd.I', 'Demokrat'),
(217, 'HENDRIANTO', 'Demokrat'),
(218, 'HELMI YETTI', 'Demokrat'),
(219, 'DASMAN', 'PPP'),
(220, 'CINDY CLAUDIA', 'PPP'),
(221, 'HENDRI', 'PPP'),
(222, 'A.K.B.P (PURN.) INDRA JUNAIDI, S.H', 'PPP'),
(223, 'ERNITA', 'PPP'),
(224, 'ADRIYADI SAPUTRA A', 'PPP'),
(225, 'ADRI', 'Partai Ummat'),
(226, 'TEDY HARRY SURYA', 'Partai Ummat'),
(227, 'LINA MARNI RUSLI, S.Ag', 'Partai Ummat'),
(228, 'SYAFRIZAL, S.H., M.H', 'Partai Ummat'),
(229, 'MISLINDA HAYATI, S.Ag', 'Partai Ummat'),
(230, 'HANAFI JUNAIDI', 'Partai Ummat'),
(231, 'ZISKA RENI', 'PKB'),
(232, 'DESMANTO, S.H', 'PKB'),
(233, 'M. AJENG, S.H., M.H', 'PKB'),
(234, 'MUHAMMAD YUSUF', 'PKB'),
(235, 'DESMARWATI', 'PKB'),
(236, 'MUHAMMAD AMWALADI', 'PKB'),
(237, 'SYAFRI WANDI, S.E', 'PKB'),
(238, 'ELLY THRISYANTI, S.E., Akt', 'Gerindra'),
(239, 'AMRAN TONO, S.E', 'Gerindra'),
(240, 'RAIZUL MAILIS, S.E., DATUK RAJO NANDO', 'Gerindra'),
(241, 'DEWI SUSANTI', 'Gerindra'),
(242, 'DAFRAWATI DE HANSEN', 'Gerindra'),
(243, 'IWAN AHMAD', 'Gerindra'),
(244, 'FEBRIAN', 'Gerindra'),
(245, 'MUFTI ADIL FATWA, S.H.I., M.A', 'PDI-P'),
(246, 'JOHNSON SALEAN', 'PDI-P'),
(247, 'ELDA MISDOF', 'PDI-P'),
(248, 'MADONG SILALAHI, S.E', 'PDI-P'),
(249, 'TEOS NATAL HALAWA', 'PDI-P'),
(250, 'ROZA FITRIAWATI', 'PDI-P'),
(251, 'OTTO ISKANDAR', 'PDI-P'),
(252, 'DEVI FEBRIDA, S.E', 'Golkar'),
(253, 'II APRIYATNA, S.E', 'Golkar'),
(254, 'ISMEDSYAH, S.H', 'Golkar'),
(255, 'DERI SUHERMAN, S.Pd', 'Golkar'),
(256, 'IBENZANI RADA PUTRA, S.T., DATUAK RAJO MALANO', 'Golkar'),
(257, 'YULIANA, S.H', 'Golkar'),
(258, 'YAZIRMAN MURAD, S.Pd., M.Pd', 'Golkar'),
(259, 'MUHAMMAD FADLY, S.KOM., M.M', 'Nasdem'),
(260, 'SUHARDIMAN, S.E', 'Nasdem'),
(261, 'HALIDA', 'Nasdem'),
(262, 'YENDRIL', 'Nasdem'),
(263, 'YONI CANDRA', 'Nasdem'),
(264, 'YIRMADI', 'Nasdem'),
(265, 'AGUSNAIDI, A.Md', 'Nasdem'),
(266, 'Dr. H. HENDRIZAL, S.Sos.I., M.Pd', 'PKS'),
(267, 'MARLIS, S.H.I', 'PKS'),
(268, 'A.K.B.P (Purn.) Hj. NURAIDA, S.H., M.H', 'PKS'),
(269, 'ERMAN B', 'PKS'),
(270, 'JIMMY NOVRIANTO SHARMA, S.E., M.M', 'PKS'),
(271, 'ENI FARIDA, S.H., M.M', 'PKS'),
(272, 'SUARDI', 'PKS'),
(273, 'JUPRI', 'PAN'),
(274, 'Hj. ERAWATI, S.E', 'PAN'),
(275, 'HENDRO DAMUCI, S.H', 'PAN'),
(276, 'MASRUL', 'PAN'),
(277, 'NELWATI AZIZ', 'PAN'),
(278, 'ARMASYAH', 'PAN'),
(279, 'AKMILIYUS', 'PAN'),
(280, 'SAHILAL ALIMIN', 'Demokrat'),
(281, 'H. RUSDI, S.T., M.T', 'Demokrat'),
(282, 'ARLINA PUTRI', 'Demokrat'),
(283, 'USMADRI, S.H', 'Demokrat'),
(284, 'IRMAI HENDRY, S.Sos', 'Demokrat'),
(285, 'SYUKRIAH', 'Demokrat'),
(286, 'JUNAIDI', 'Demokrat'),
(287, 'INDRA GUSWADI', 'PPP'),
(288, 'ANDISMET', 'PPP'),
(289, 'AGUSNI HARTATI', 'PPP'),
(290, 'BUDI CANDRA, S.Kom', 'PPP'),
(291, 'ROSMALINDA', 'PPP'),
(292, 'ASAR, S.Pd', 'PPP'),
(293, 'MUR IKHWAN', 'PPP'),
(294, 'AMRIL JILHA, S.Sos.,M.H', 'Partai Ummat'),
(295, 'RUHIL TAMRIN, A.Ma', 'Partai Ummat'),
(296, 'ULFA ASMI, M.T', 'Partai Ummat'),
(297, 'ERI INDRA', 'Partai Ummat'),
(298, 'AFRIZAL', 'Partai Ummat'),
(299, 'IRIANI INDRAWATI', 'Partai Ummat'),
(300, 'T. HUSAINI', 'Partai Ummat'),
(301, 'RONAL FEBRIANTO, S.H., M.H', 'PKB'),
(302, 'ZULKIFLI', 'PKB'),
(303, 'RISKI STIORINI', 'PKB'),
(304, 'NOVDIL YUTRA, S.E', 'PKB'),
(305, 'RAFFENDI, S.Sos', 'PKB'),
(306, 'HERLENY, S.H', 'PKB'),
(307, 'MUSLICH ISA', 'PKB'),
(308, 'BENNY MULYA,B.Ac', 'Gerindra'),
(309, 'RACHMAD WIJAYA', 'Gerindra'),
(310, 'AFRIDA SUSANTI', 'Gerindra'),
(311, 'BOBY RUSTAM', 'Gerindra'),
(312, 'ADEL HENDRA, S.T', 'Gerindra'),
(313, 'NILAWATI NEN, S.Pd', 'Gerindra'),
(314, 'SYAHRUL RIDHA', 'Gerindra'),
(315, 'CHRISTIAN RUDY KURNIAWAN SUTIONO', 'PDI-P'),
(316, 'YUTIASA FAKHO, S.H., M.H', 'PDI-P'),
(317, 'SELVIANA MEERYELLY', 'PDI-P'),
(318, 'EDISON HULU, S.Pd.K., M.Th', 'PDI-P'),
(319, 'RUDI BANJARNAHOR', 'PDI-P'),
(320, 'SHELVI HESTIA, S.H., M.Kn', 'PDI-P'),
(321, 'RAHMADANI', 'PDI-P'),
(322, 'NURSAL UCE. M, S.H', 'Golkar'),
(323, 'HELMI MOESIM.AY, S.I.P', 'Golkar'),
(324, 'Dra. MUSMAWITA', 'Golkar'),
(325, 'KHAIRUL, S.H', 'Golkar'),
(326, 'HERTOG BAHAR', 'Golkar'),
(327, 'YOKTANIANIS', 'Golkar'),
(328, 'RIZKI HARIADI, A.M.K.G., S.K.M', 'Golkar'),
(329, 'IKHSAN FAUSTA ALINIA', 'Nasdem'),
(330, 'RAFLI BOY', 'Nasdem'),
(331, 'ERNITA', 'Nasdem'),
(332, 'MIYA MAHARANI', 'Nasdem'),
(333, 'TRISKI', 'Nasdem'),
(334, 'MARTIN MAKMUR', 'Nasdem'),
(335, 'FEFRIZAL, S.T', 'Nasdem'),
(336, 'H. GUFRON, S.S', 'PKS'),
(337, 'SRI NOPUTRI, S.Pd', 'PKS'),
(338, 'MUJAHID RAMADHAN', 'PKS'),
(339, 'Dra. FIFELLA ELFINA', 'PKS'),
(340, 'SALAMAT SIMBOLON, S.H.I., M.A', 'PKS'),
(341, 'YURNEIDI', 'PKS'),
(342, 'Dr. AHMAD BASTARI, S.I.Q., M.A', 'PKS'),
(343, 'AMRIL AMIN, S.A.P., M.M', 'PAN'),
(344, 'IRAWATI MEURAKSA, S.P', 'PAN'),
(345, 'PENDISON, S.T', 'PAN'),
(346, 'RIFZA WARSIL PANCA SAKTI, S.T', 'PAN'),
(347, 'RENA MARDIANA', 'PAN'),
(348, 'ISMETSYAH, S.Sos', 'PAN'),
(349, 'ERWANTONI, S.S.T', 'PAN'),
(350, 'ERISON, B.Ac', 'Demokrat'),
(351, 'H. IRAWAN DARWIS', 'Demokrat'),
(352, 'SUSIWATI', 'Demokrat'),
(353, 'HARIYANTO, S.S., S.H', 'Demokrat'),
(354, 'TAMSIL ROTA, S.Pd', 'Demokrat'),
(355, 'TUTY SULASTRI', 'Demokrat'),
(356, 'ASPENDRA', 'Demokrat'),
(357, 'HARI PUJA AKSARA, S.Ds', 'PPP'),
(358, 'WIWI DARWIS', 'PPP'),
(359, 'MARIA SUSANTI', 'PPP'),
(360, 'ANWAR', 'PPP'),
(361, 'NURSAL', 'PPP'),
(362, 'MONALISA', 'PPP'),
(363, 'ADIL AMRII', 'PPP'),
(364, 'ASNIATI, S.E', 'Partai Ummat'),
(365, 'Drs. SYAFRIDAL', 'Partai Ummat'),
(366, 'FAUZI,S.E', 'Partai Ummat'),
(367, 'FITRIADI, S.H., M.H', 'Partai Ummat'),
(368, 'ERISMIARTI', 'Partai Ummat'),
(369, 'ZULBAHRI, S.Sos., M.M', 'Partai Ummat'),
(370, 'FADIL SYAHRULI, S.Th.I', 'Partai Ummat'),
(371, 'NOFRI EFENDI', 'PKB'),
(372, 'KHAIRAS EKA PUTRA, S.H', 'PKB'),
(373, 'ARNI REFLITA', 'PKB'),
(374, 'YAN VERYSON', 'PKB'),
(375, 'RISWANDI, S.E', 'PKB'),
(376, 'FARIDA HANOM SYAM', 'PKB'),
(377, 'Ir.. YOSRIZAL EFFENDI', 'PKB'),
(378, 'HENDRI', 'PKB'),
(379, 'MASTILIZAL AYE, S.H', 'Gerindra'),
(380, 'BUDI S, S.H', 'Gerindra'),
(381, 'SUHELMI', 'Gerindra'),
(382, 'JONI RUSJAN', 'Gerindra'),
(383, 'EDWARD AZWAR', 'Gerindra'),
(384, 'DARMAWATI', 'Gerindra'),
(385, 'SUTAN JIMMY JUMADELL LUTHAN', 'Gerindra'),
(386, 'DEDI VITRA JOHOR, S.E., Ak., C.A', 'Gerindra'),
(387, 'ISWANTO KWARA', 'PDI-P'),
(388, 'IIN SAPUTRA', 'PDI-P'),
(389, 'REVIANTI KHAIDIR', 'PDI-P'),
(390, 'REFIANOS, S.H', 'PDI-P'),
(391, 'LAUT MANURUNG, S.I.P., M.M', 'PDI-P'),
(392, 'SERLY ANG, A.Md', 'PDI-P'),
(393, 'RIDHO SAPUTRA', 'PDI-P'),
(394, 'MAIDESTAL HARI MAHESA, S.Sos', 'PDI-P'),
(395, 'Drs. FIRDAUS ILYAS, M.M', 'Golkar'),
(396, 'ARI SURYA AGUNG, S.E., M.M', 'Golkar'),
(397, 'MEISYITAH DWI NUGRAHA, S.E', 'Golkar'),
(398, 'TAUFIK HIDAYAT, S.T', 'Golkar'),
(399, 'DONI KAREN, A,Md', 'Golkar'),
(400, 'SUSILAWATI, S.E., M.Pd', 'Golkar'),
(401, 'ALRIADI', 'Golkar'),
(402, 'ABEL TASMAN', 'Golkar'),
(403, 'OSMAN AYUB', 'Nasdem'),
(404, 'DADDY FATRIA', 'Nasdem'),
(405, 'Dra. Hj. MEIJANTI OSMAN, M.Pd', 'Nasdem'),
(406, 'ANDRI UTAMA', 'Nasdem'),
(407, 'ARGI PUTRA FINALO', 'Nasdem'),
(408, 'SERLI YASIH', 'Nasdem'),
(409, 'ANDRI', 'Nasdem'),
(410, 'ALIYAS CANDRA', 'Nasdem'),
(411, 'ARNEDI YARMEN, S.Pd', 'PKS'),
(412, 'H. DJUNAIDY HENDRY, S.T', 'PKS'),
(413, 'SOLFINA, S.T', 'PKS'),
(414, 'IDRIAL IDRUS, S.T', 'PKS'),
(415, 'FAJRIL HUDA, S.Ag', 'PKS'),
(416, 'DESSY HAMDANI', 'PKS'),
(417, 'IRHAM MALIK, S.Pd.I', 'PKS'),
(418, 'FAISAL NASIR, S.A.P', 'PAN'),
(419, 'ALAM GUNAWAN TEDY', 'PAN'),
(420, 'PATRA RINA DEWI, S.Si., M.Sc', 'PAN'),
(421, 'WISKARNI MAISA, S.T', 'PAN'),
(422, 'IRMA ADISURYA', 'PAN'),
(423, 'HENDRIZAL, S.H.I', 'PAN'),
(424, 'AHMAD ISLAMI, S.T', 'PAN'),
(425, 'BERLIAN DARDA PUTRA, S.H', 'PAN'),
(426, 'DINUL FAJRI', 'Demokrat'),
(427, 'SONNY AFFANDI, S.T', 'Demokrat'),
(428, 'YULASMI, S.H., M.H', 'Demokrat'),
(429, 'MUHAMMAD FAUZI', 'Demokrat'),
(430, 'YULISMAN, S.H', 'Demokrat'),
(431, 'NOVI ARITA', 'Demokrat'),
(432, 'H. ERISMAN', 'Demokrat'),
(433, 'IRVAN GUSWANDI, S.T', 'Demokrat'),
(434, 'FIRDAUS ARDIANTO, S.I.Q., SPd.I., M.Pd', 'PPP'),
(435, 'H. WAHYU IRAMAN PUTRA, S.E', 'PPP'),
(436, 'YUSNIATI, A.Md', 'PPP'),
(437, 'RENOL FADHLI', 'PPP'),
(438, 'Hj. NENENG KURNIATI', 'PPP'),
(439, 'ARISMAN NUR, S.H', 'PPP'),
(440, 'RIO ANGGARA, S.Pi', 'PPP'),
(441, 'H. SYAHRIL, S.E., S.H', 'PPP'),
(442, 'IRVAN KUDUS, S.E., M.M', 'Partai Ummat'),
(443, 'IRWAN FEBRIANTO, M.M', 'Partai Ummat'),
(444, 'Hj. YULINA RIYANTI, S.Ag', 'Partai Ummat'),
(445, 'ZULFANDRI, S.H', 'Partai Ummat'),
(446, 'YULDI EFENDI', 'Partai Ummat'),
(447, 'ZULFITRIA WATI, S.E', 'Partai Ummat'),
(448, 'DEDI DEFRIADI', 'Partai Ummat'),
(449, 'AHMAD TAUFIK', 'Partai Ummat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kecamatan`
--

CREATE TABLE `tb_kecamatan` (
  `id_kecamatan` bigint(20) UNSIGNED NOT NULL,
  `nama_kecamatan` varchar(255) NOT NULL,
  `jumlah_pemilih` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_kecamatan`
--

INSERT INTO `tb_kecamatan` (`id_kecamatan`, `nama_kecamatan`, `jumlah_pemilih`) VALUES
(1, 'Bungus Teluk Kabung', 19703),
(2, 'Lubuk Kilangan', 40970),
(3, 'Lubuk Begalung', 88068),
(4, 'Padang Selatan', 45152),
(5, 'Padang Timur', 58250),
(6, 'Padang Barat', 32989),
(7, 'Padang Utara', 42252),
(8, 'Nanggalo', 43445),
(9, 'Kuranji', 106276),
(10, 'Pauh', 44871),
(11, 'Koto Tangah', 144202);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelurahan`
--

CREATE TABLE `tb_kelurahan` (
  `id_kelurahan` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `nama_kelurahan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_kelurahan`
--

INSERT INTO `tb_kelurahan` (`id_kelurahan`, `id_kecamatan`, `nama_kelurahan`) VALUES
(2, 1, 'Bungus Barat'),
(3, 1, 'Bungus Selatan'),
(4, 1, 'Bungus Timur'),
(5, 1, 'Teluk Kabung Selatan'),
(6, 1, 'Teluk Kabung Tengah'),
(7, 1, 'Teluk Kabung Utara'),
(8, 2, 'Bandar Buat'),
(9, 2, 'Batu Gadang'),
(10, 2, 'Beringin'),
(11, 2, 'Indarung'),
(12, 2, 'Koto Lalang'),
(13, 2, 'Padang Besi'),
(14, 2, 'Tarantang'),
(15, 3, 'Banuaran Nan XX'),
(16, 3, 'Batung Taba Nan XX'),
(17, 3, 'Cengkeh Nan XX'),
(18, 3, 'Gates Nan XX'),
(19, 3, 'Gurun Laweh Nan XX'),
(20, 3, 'Kampung Baru Nan XX'),
(21, 3, 'Kampung Jua Nan XX'),
(22, 3, 'Koto Baru Nan XX'),
(23, 3, 'Lubuk Begalung Nan XX'),
(24, 3, 'Pagambiran Ampalu Nan XX'),
(25, 3, 'Pampangan Nan XX'),
(26, 3, 'Parak Laweh Pulau Air Nan XX'),
(27, 3, 'Pitameh Tanjung Saba Nan XX'),
(28, 3, 'Tanah Sirah Piai Nan XX'),
(29, 3, 'Tanjung Aur Nan XX'),
(30, 4, 'Air Manis'),
(31, 4, 'Alang Laweh'),
(32, 4, 'Batang Arau'),
(33, 4, 'Belakang Pondok'),
(34, 4, 'Bukit Gado-Gado'),
(35, 4, 'Mato Aie'),
(36, 4, 'Pasa Gadang'),
(37, 4, 'Ranah Parak Rumbio'),
(38, 4, 'Rawang'),
(39, 4, 'Seberang Padang'),
(40, 4, 'Seberang Palinggam'),
(41, 4, 'Teluk Bayur'),
(42, 5, 'Andalas'),
(43, 5, 'Ganting Parak Gadang'),
(44, 5, 'Jati'),
(45, 5, 'Jati Baru'),
(46, 5, 'Kubu Dalam Parak Karakah'),
(47, 5, 'Kubu Marapalam'),
(48, 5, 'Parak Gadang Timur'),
(49, 5, 'Sawahan'),
(50, 5, 'Sawahan Timur'),
(51, 5, 'Simpang Haru'),
(52, 6, 'Belakang Tangsi'),
(53, 6, 'Berok Nipah'),
(54, 6, 'Flamboyan Baru'),
(55, 6, 'Kampung Jao'),
(56, 6, 'Kampung Pondok'),
(57, 6, 'Olo'),
(58, 6, 'Padang Pasir'),
(59, 6, 'Purus'),
(60, 6, 'Rimbo Kaluang'),
(61, 6, 'Ujung Gurun'),
(62, 7, 'Air Tawar Barat'),
(63, 7, 'Air Tawar Timur'),
(64, 7, 'Alai Parak Kopi'),
(65, 7, 'Gunung Pangilun'),
(66, 7, 'Lolong Belanti'),
(67, 7, 'Ulak Karang Selatan'),
(68, 7, 'Ulak Karang Utara'),
(69, 8, 'Gurun Laweh'),
(70, 8, 'Kampung Lapai'),
(71, 8, 'Kampung Olo'),
(72, 8, 'Kurao Pagang'),
(73, 8, 'Surau Gadang'),
(74, 8, 'Tabing Banda Gadang'),
(75, 9, 'Ampang'),
(76, 9, 'Anduring'),
(77, 9, 'Gunung Sarik'),
(78, 9, 'Kalumbuk'),
(79, 9, 'Korong Gadang'),
(80, 9, 'Kuranji'),
(81, 9, 'Lubuk Lintah'),
(82, 9, 'Pasar Ambacang'),
(83, 9, 'Sungai Sapih'),
(84, 10, 'Binuang Kampuang Dalam'),
(85, 10, 'Cupak Tangah'),
(86, 10, 'Kapalo Koto'),
(87, 10, 'Koto Luar'),
(88, 10, 'Lambung Bukit'),
(89, 10, 'Limau Manis'),
(90, 10, 'Limau Manis Selatan'),
(91, 10, 'Piai Tangah'),
(92, 10, 'Pisang'),
(93, 11, 'Air Pacah'),
(94, 11, 'Balai Gadang'),
(95, 11, 'Batang Kabung Ganting'),
(96, 11, 'Batipuh Panjang'),
(97, 11, 'Bungo Pasang'),
(98, 11, 'Dadok Tunggul Hitam'),
(99, 11, 'Koto Panjang Ikua Koto'),
(100, 11, 'Koto Pulai'),
(101, 11, 'Lubuk Buaya'),
(102, 11, 'Lubuk Minturun'),
(103, 11, 'Padang Sarai'),
(104, 11, 'Parupuk Tabing'),
(105, 11, 'Pasir Nan Tigo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_partai`
--

CREATE TABLE `tb_partai` (
  `id_partai` bigint(20) UNSIGNED NOT NULL,
  `nama_partai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_partai`
--

INSERT INTO `tb_partai` (`id_partai`, `nama_partai`) VALUES
(1, 'PKB'),
(2, 'Gerindra'),
(3, 'PDI-P'),
(4, 'Golkar'),
(5, 'Nasdem'),
(6, 'PKS'),
(7, 'PAN'),
(8, 'Demokrat'),
(9, 'PPP'),
(10, 'Partai Ummat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suara`
--

CREATE TABLE `tb_suara` (
  `id_suara` int(11) NOT NULL,
  `id_caleg` int(11) NOT NULL,
  `id_kelurahan` int(11) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `no_tps` int(11) NOT NULL,
  `suara` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_suara`
--

INSERT INTO `tb_suara` (`id_suara`, `id_caleg`, `id_kelurahan`, `id_kecamatan`, `no_tps`, `suara`, `id_user`) VALUES
(1, 1, 94, 11, 1, 12, 1),
(2, 4, 95, 11, 1, 12, 1),
(3, 4, 100, 11, 5, 34, 1),
(4, 12, 104, 11, 6, 400, 1),
(5, 8, 98, 11, 13, 234, 1),
(6, 3, 93, 11, 6, 17, 1),
(7, 2, 95, 11, 5, 19, 1),
(8, 56, 97, 11, 8, 56, 1),
(9, 86, 103, 11, 90, 66, 1),
(10, 102, 102, 11, 4, 14, 1),
(11, 121, 103, 11, 5, 22, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `id_kecamatan` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `nama_user`, `nohp`, `id_kecamatan`, `username`, `password`) VALUES
(1, 'MUHAMMAD HAFIZ ALKHAIRI', '623185168719', 11, 'hafiz', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(2, 'DEA ANANDA', '6282386964826', 11, 'dea', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(3, 'IQBAL DIRMASYAH', '6281276303324', 11, 'iqbal', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(4, 'WANI FITRIYANTI', '62895613240103', 9, 'wani', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(5, 'YUSUF ILHAM', '62895418237568', 9, 'yusuf', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(6, 'ADITYA ANUGRAH PUTRA SIREGAR', '6281363332210', 10, 'aditya', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(7, 'DEWI ALFATIMAH', '6283802844736', 2, 'dewi', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(8, 'RIDHO JUZHUMI', '628127759066', 3, 'ridho', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(9, 'INTAN PRIHARTINI', '6281363143491', 3, 'intan', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(10, 'RANTHI DWI PUTRI', '6282131739933', 1, 'ranthi', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(11, 'LARASSANTI', '6283845982042', 7, 'larassanti', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(12, 'ERIKA AISYAH FADILLAH', '6281267739493', 4, 'erika', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(13, 'WAFIQ ILHAMULLAH JASLAN', '6282268607997', 5, 'wafiq', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(14, 'YONNI KURNIAWAN', '6282268348128', 6, 'yonni', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS'),
(15, 'ALDI KURNIA NOVALDO', '6282386245414', 8, 'aldi', '$2y$10$4jPMBwbmIPcDuU7INZYHp.7ldArjDcYmtK7wGvFww8G3ar9NEPqYS');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_caleg`
--
ALTER TABLE `tb_caleg`
  ADD PRIMARY KEY (`id_caleg`);

--
-- Indeks untuk tabel `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indeks untuk tabel `tb_kelurahan`
--
ALTER TABLE `tb_kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indeks untuk tabel `tb_partai`
--
ALTER TABLE `tb_partai`
  ADD PRIMARY KEY (`id_partai`);

--
-- Indeks untuk tabel `tb_suara`
--
ALTER TABLE `tb_suara`
  ADD PRIMARY KEY (`id_suara`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_caleg`
--
ALTER TABLE `tb_caleg`
  MODIFY `id_caleg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT untuk tabel `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  MODIFY `id_kecamatan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_kelurahan`
--
ALTER TABLE `tb_kelurahan`
  MODIFY `id_kelurahan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `tb_partai`
--
ALTER TABLE `tb_partai`
  MODIFY `id_partai` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_suara`
--
ALTER TABLE `tb_suara`
  MODIFY `id_suara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
