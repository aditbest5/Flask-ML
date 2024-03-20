-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Des 2023 pada 05.10
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nemesys`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_coal_yard`
--

CREATE TABLE `tbl_coal_yard` (
  `id` int(11) NOT NULL,
  `OUTBAR_ID` varchar(14) DEFAULT NULL,
  `ORG_ID_SUPPLIER` varchar(8) DEFAULT NULL,
  `id_sumber_tambang` int(19) DEFAULT NULL,
  `VESSEL_ID` varchar(7) DEFAULT NULL,
  `VESSEL` varchar(23) DEFAULT NULL,
  `CALORIE_ID` int(4) DEFAULT NULL,
  `CALORIE` int(4) DEFAULT NULL,
  `VOLUME` varchar(16) DEFAULT NULL,
  `TA` varchar(16) DEFAULT NULL,
  `CALORIE_LAB` int(4) DEFAULT NULL,
  `ORG_ID` varchar(5) DEFAULT NULL,
  `ORG_CODE` varchar(3) DEFAULT NULL,
  `BRAND_NAME` varchar(13) DEFAULT NULL,
  `STATUS` varchar(8) DEFAULT NULL,
  `VOLUME_LOAD` varchar(16) DEFAULT NULL,
  `AREA_ID` varchar(7) DEFAULT NULL,
  `AREA` varchar(11) DEFAULT NULL,
  `LOC_ID` varchar(7) DEFAULT NULL,
  `LOCATION` varchar(3) DEFAULT NULL,
  `LAYER_ID` varchar(7) DEFAULT NULL,
  `LAYER` varchar(2) DEFAULT NULL,
  `LOAD_DATE` varchar(10) DEFAULT NULL,
  `LAMA_HARI` decimal(4,1) DEFAULT NULL,
  `GRP` varchar(42) DEFAULT NULL,
  `RECLAIM_DATE` varchar(10) DEFAULT NULL,
  `FLOWRATE` varchar(10) DEFAULT NULL,
  `DURATION` varchar(10) DEFAULT NULL,
  `STACKING_ID` varchar(16) DEFAULT NULL,
  `URUT` int(1) DEFAULT NULL,
  `VOLUME_SISA_RECLAIM` varchar(16) DEFAULT NULL,
  `VOLUME_RECLAIM` varchar(16) DEFAULT NULL,
  `RECLAIM_ID` int(1) DEFAULT NULL,
  `OUTBAR_DATE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_coal_yard`
--

INSERT INTO `tbl_coal_yard` (`id`, `OUTBAR_ID`, `ORG_ID_SUPPLIER`, `id_sumber_tambang`, `VESSEL_ID`, `VESSEL`, `CALORIE_ID`, `CALORIE`, `VOLUME`, `TA`, `CALORIE_LAB`, `ORG_ID`, `ORG_CODE`, `BRAND_NAME`, `STATUS`, `VOLUME_LOAD`, `AREA_ID`, `AREA`, `LOC_ID`, `LOCATION`, `LAYER_ID`, `LAYER`, `LOAD_DATE`, `LAMA_HARI`, `GRP`, `RECLAIM_DATE`, `FLOWRATE`, `DURATION`, `STACKING_ID`, `URUT`, `VOLUME_SISA_RECLAIM`, `VOLUME_RECLAIM`, `RECLAIM_ID`, `OUTBAR_DATE`) VALUES
(1, 'OB202308031509', 'XVEN3647', 32, 'VSL0897', 'MV. Adhiguna Tarahan', 4800, 4800, '      10,207.000', '7/16/2023 7:12', 4701, '24SRY', 'SRY', 'PLTU SURALAYA', 'STACKING', '       5,011.000', 'ARA0183', 'Coal Yard A', 'LOC0186', 'A1', 'LYR0231', 'L1', '8/3/2023', '113.4', 'Coal Yard A - A1 - (       5,011.000) Ton', '', '', '', 'STCK202308031510', 1, '', '', 0, '7/17/2023'),
(2, 'OB202308031511', 'XVEN3647', 32, 'VSL0897', 'MV. Adhiguna Tarahan', 4800, 4800, '      10,207.000', '8/3/2023 7:12', 4701, '24SRY', 'SRY', 'PLTU SURALAYA', 'STACKING', '       3,685.000', 'ARA0183', 'Coal Yard A', 'LOC0187', 'A2', 'LYR0233', 'L2', '8/3/2023', '113.4', 'Coal Yard A - A2 - (       3,685.000) Ton', '', '', '', 'STCK202308031515', 2, '', '', 0, '8/3/2023'),
(3, 'OB202311132182', '20BAS', 32, 'VSL1347', 'BG. Cakrawala VI 2022', 4634, 4634, '      10,103.000', '11/9/2023 10:15', 4634, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,542.000', 'ARA0002', 'Coal Yard A', 'LOC0005', 'X5', 'LYR0034', 'L1', '11/12/2023', '12.4', 'Coal Yard A - X5 - (      10,519.000) Ton', '', '', '', 'STCK202310312128', 1, '       4,125.000', '       2,417.000', 0, '11/11/2023'),
(4, 'OB202311202224', '20BAS', 32, 'VSL0162', 'BG. KAPUAS JAYA 331', 5011, 5011, '      10,025.000', '11/17/2023 16:00', 4604, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,032.000', 'ARA0002', 'Coal Yard A', 'LOC0005', 'X5', 'LYR0007', '', '11/18/2023', '6.4', 'Coal Yard A - X5 - (      10,519.000) Ton', '', '', '', 'STCK202311172207', 2, '', '', 0, '11/18/2023'),
(5, 'OB202311222240', '20BAS', 32, 'VSL0611', 'SPB. BRAVO MARINE', 4912, 4912, '      13,047.000', '11/20/2023 14:15', 4775, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       1,462.000', 'ARA0002', 'Coal Yard A', 'LOC0005', 'X5', 'LYR0008', 'L3', '11/21/2023', '3.4', 'Coal Yard A - X5 - (      10,519.000) Ton', '', '', '', 'STCK202311222248', 3, '362,000', '       1,100.000', 0, '11/21/2023'),
(6, 'OB202209060147', '20BAS', 32, 'VSL0160', 'BG. KAPUAS JAYA 3118', 4650, 4650, '      10,612.000', '7/21/2022 0:00', 4650, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,250.000', 'ARA0002', 'Coal Yard A', 'LOC0021', 'X6', 'LYR0036', 'L1', '7/21/2022', '491.4', 'Coal Yard A - X6 - (      11,415.000) Ton', '', '', '', 'STCK202209060148', 1, '       1,500.000', '       4,750.000', 0, '7/21/2022'),
(7, 'OB202311152194', '20ADR', 1, 'VSL1003', 'BG. MAX 9003', 4492, 4492, '       9,308.000', '11/13/2023 12:00', 4702, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       1,792.000', 'ARA0002', 'Coal Yard A', 'LOC0022', 'Y10', 'LYR0041', 'L2', '11/14/2023', '10.4', 'Coal Yard A - Y10 - (       3,809.000) Ton', '', '', '', 'STCK202311062152', 2, '', '', 0, '11/14/2023'),
(8, 'OB202310302112', '20BAS', 32, 'VSL1303', 'BG Nusantara 3009', 4904, 4904, '       7,644.000', '10/29/2023 4:00', 4566, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,250.000', 'ARA0002', 'Coal Yard A', 'LOC0023', 'Y11', 'LYR0044', 'L1', '10/29/2023', '26.4', 'Coal Yard A - Y11 - (      24,426.000) Ton', '', '', '', 'STCK202310232066', 1, '', '', 0, '10/29/2023'),
(9, 'OB202310302119', '20BAS', 32, 'VSL0226', 'SPB. Premium Bahari', 4907, 4907, '      10,049.000', '10/29/2023 13:00', 4771, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,250.000', 'ARA0002', 'Coal Yard A', 'LOC0023', 'Y11', 'LYR0045', 'L2', '', '25.4', 'Coal Yard A - Y11 - (      24,426.000) Ton', '', '', '', 'STCK202310302114', 2, '       4,209.000', '       2,041.000', 0, '10/30/2023'),
(10, 'OB202311222249', '20BAS', 32, 'VSL1346', 'BG. Cakrawala VIII 2022', 4904, 4904, '      10,066.000', '11/20/2023 16:30', 4589, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '      11,492.000', 'ARA0002', 'Coal Yard A', 'LOC0023', 'Y11', 'LYR0047', 'L4', '11/22/2023', '2.4', 'Coal Yard A - Y11 - (      24,426.000) Ton', '', '', '', 'STCK202311062158', 4, '       3,509.000', '       3,775.000', 0, '11/21/2023'),
(11, 'OB202308221647', '20ADR', 1, 'VSL1003', 'BG. MAX 9003', 4196, 4196, '       9,428.000', '8/16/2023 6:00', 4158, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,550.000', 'ARA0002', 'Coal Yard A', 'LOC0024', 'Y12', 'LYR0048', 'L1', '8/21/2023', '95.4', 'Coal Yard A - Y12 - (      10,993.000) Ton', '', '', '', 'STCK202308181617', 1, '       2,476.000', '       4,074.000', 0, '8/21/2023'),
(12, 'OB202310092002', '20BAS', 32, 'VSL0240', 'SPB Titan 70', 4902, 4902, '      10,014.000', '10/7/2023 22:30', 4768, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,650.000', 'ARA0003', 'Coal Yard B', 'LOC0025', 'X2', 'LYR0055', 'L1', '10/9/2023', '46.4', 'Coal Yard B - X2 - (      19,847.000) Ton', '', '', '', 'STCK202309291946', 1, '       1,446.000', '       5,204.000', 0, '10/8/2023'),
(13, 'OB202311152194', '20ADR', 1, 'VSL1003', 'BG. MAX 9003', 4492, 4492, '       9,308.000', '11/13/2023 12:00', 4702, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,059.000', 'ARA0003', 'Coal Yard B', 'LOC0025', 'X2', 'LYR0057', 'L3', '11/15/2023', '9.4', 'Coal Yard B - X2 - (      19,847.000) Ton', '', '', '', 'STCK202311082164', 3, '', '', 0, '11/14/2023'),
(14, 'OB202311222249', '20BAS', 32, 'VSL1346', 'BG. Cakrawala VIII 2022', 4904, 4904, '      10,066.000', '11/20/2023 16:30', 4589, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,092.000', 'ARA0003', 'Coal Yard B', 'LOC0025', 'X2', 'LYR0058', 'L4', '11/22/2023', '2.4', 'Coal Yard B - X2 - (      19,847.000) Ton', '', '', '', 'STCK202311222247', 4, '', '', 0, '11/21/2023'),
(15, 'OB202308221647', '20ADR', 1, 'VSL1003', 'BG. MAX 9003', 4196, 4196, '       9,428.000', '8/16/2023 6:00', 4158, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,058.000', 'ARA0003', 'Coal Yard B', 'LOC0028', 'Y7', 'LYR0059', 'L1', '', '95.4', 'Coal Yard B - Y7 - (       8,733.000) Ton', '', '', '', 'STCK202308081552', 1, '       1,941.000', '       4,117.000', 0, '8/21/2023'),
(16, 'OB202310041976', '20BAS', 32, 'VSL0226', 'SPB. Premium Bahari', 4901, 4901, '      10,012.000', '10/3/2023 13:00', 4767, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,250.000', 'ARA0003', 'Coal Yard B', 'LOC0029', 'Y9', 'LYR0063', 'L1', '', '52.4', 'Coal Yard B - Y9 - (      12,069.000) Ton', '', '', '', 'STCK202309291933', 1, '       4,442.000', '       1,808.000', 0, '10/3/2023'),
(17, 'OB202310252087', '20BAS', 32, 'VSL0161', 'BG. KAPUAS JAYA 333', 4909, 4909, '      11,564.000', '10/25/2023 11:00', 4773, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,409.000', 'ARA0003', 'Coal Yard B', 'LOC0029', 'Y9', 'LYR0064', 'L2', '10/25/2023', '30.4', 'Coal Yard B - Y9 - (      12,069.000) Ton', '', '', '', 'STCK202310242081', 2, '       3,060.000', '       3,349.000', 0, '10/25/2023'),
(18, 'OB202310312126', '20BAS', 32, 'VSL1346', 'BG. Cakrawala VIII 2022', 4902, 4902, '      10,131.000', '10/29/2023 6:00', 4535, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       6,017.000', 'ARA0003', 'Coal Yard B', 'LOC0029', 'Y9', 'LYR0065', 'L3', '10/31/2023', '24.4', 'Coal Yard B - Y9 - (      12,069.000) Ton', '', '', '', 'STCK202310302109', 3, '       3,100.000', '       2,917.000', 0, '10/31/2023'),
(19, 'OB202311172201', '20BAS', 32, 'VSL0341', 'BG. Kapuas Jaya 333', 4908, 4908, '      11,519.000', '11/14/2023 16:00', 4613, '24PRA', 'PRA', 'UJP PRATU', 'STACKING', '       7,425.000', 'ARA0003', 'Coal Yard B', 'LOC0029', 'Y9', 'LYR0066', 'L4', '11/17/2023', '7.4', 'Coal Yard B - Y9 - (      12,069.000) Ton', '', '', '', 'STCK202311072159', 4, '550,000', '       5,958.000', 0, '11/16/2023'),
(20, 'OB202308021499', '20ADR', 1, 'VSL0889', 'MV. Arimbi Baruna', 4800, 4800, '      63,000.000', '7/22/2023 11:00', 4647, '24SRY', 'SRY', 'PLTU SURALAYA', 'STACKING', '      25,703.000', 'ARA0185', 'Coal Yard C', 'LOC0227', 'C2', 'LYR0244', 'L1', '8/3/2023', '113.4', 'Coal Yard C - C2 - (      25,703.000) Ton', '', '', '', 'STCK202308031512', 1, '', '', 0, '7/22/2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sumber_tambang`
--

CREATE TABLE `tbl_sumber_tambang` (
  `id` int(11) NOT NULL,
  `Sumber_Tambang` varchar(31) DEFAULT NULL,
  `id_supplier` int(4) DEFAULT NULL,
  `GCV_ARB` int(18) DEFAULT NULL,
  `Total_Sulphur_ARB` float DEFAULT NULL,
  `Total_Sulphur_DAFB` float DEFAULT NULL,
  `Ash_Content_ARB` float DEFAULT NULL,
  `Ash_Content_ADB` float DEFAULT NULL,
  `TM_ARB` float DEFAULT NULL,
  `IM_ADB` float DEFAULT NULL,
  `IDT (Reducing)` int(18) DEFAULT NULL,
  `SiO2` float DEFAULT NULL,
  `Al2O3` float DEFAULT NULL,
  `Fe2O3` float DEFAULT NULL,
  `Na2O` float DEFAULT NULL,
  `K2O` float DEFAULT NULL,
  `TiO2` float DEFAULT NULL,
  `MnO2` float DEFAULT NULL,
  `P2O5` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_sumber_tambang`
--

INSERT INTO `tbl_sumber_tambang` (`id`, `Sumber_Tambang`, `id_supplier`, `GCV_ARB`, `Total_Sulphur_ARB`, `Total_Sulphur_DAFB`, `Ash_Content_ARB`, `Ash_Content_ADB`, `TM_ARB`, `IM_ADB`, `IDT (Reducing)`, `SiO2`, `Al2O3`, `Fe2O3`, `Na2O`, `K2O`, `TiO2`, `MnO2`, `P2O5`) VALUES
(1, 'PT.ADARO INDONESIA', 1, 4532, 0.119388, 0.181224, 2.22837, 2.67469, 31.3708, 18.2857, 1237, 29.219, 13.7914, 20.5629, 0.51898, 0.533265, 0.710408, 0.247796, 0.430816),
(2, 'PT.ANTANG GUNUNG MERATUS', 18, 4309, 0.14, 0.22, 3.61, 4.56, 33.405, 15.92, 1210, 30.985, 16.835, 19.255, 0.385, 0.5, 1.465, 0.23, 0.55),
(3, 'PT.ANTANG GUNUNG MERATUS', 21, 3755, 0.1, 0.18, 3.77, 5.24, 39.27, 15.55, 1160, 45.37, 20.19, 21.35, 0.22, 0.82, 0.83, 0.195, 0.165),
(4, 'PT.ANUGERAH RAHAYU ADIPERKASA', 3, 4103, 0.203333, 0.333333, 4.22, 5.36333, 35.03, 17.4, 1203, 50.9833, 20.88, 11.7367, 0.536667, 0.52, 0.763333, 0.314, 0.113667),
(5, 'PT.ARUTMIN INDONESIA', 2, 4129, 0.160833, 0.268333, 3.95417, 4.90333, 35.3558, 19.3058, 1175, 37.1467, 12.515, 21.5708, 0.295, 0.978333, 0.57, 1.07325, 0.221833),
(6, 'PT.ARUTMIN INDONESIA', 18, 4199, 0.154, 0.25, 2.787, 3.527, 35.123, 17.878, 1190, 38.499, 11.555, 20.328, 0.504, 0.755, 0.522, 0.38, 0.1216),
(7, 'PT.BAHARI SANDI PRATAMA', 10, 4250, 0.140667, 0.228667, 3.3, 4.23533, 34.8827, 17.9733, 1206, 33.2933, 17.89, 14.1353, 0.436667, 0.399333, 1.01867, 0.914667, 0.589333),
(8, 'PT.BAHARI SANDI PRATAMA', 29, 4593, 0.26, 0.4, 4.67, 5.84, 31.35, 14.08, 1230, 62.2, 19.72, 4.95, 0.4, 0.41, 0.43, 0.165, 0.246),
(9, 'PT.BAHTERA BESTARI SHIPPING', 10, 4135, 0.14875, 0.245, 3.525, 4.7375, 35.8512, 13.6962, 1255, 43.86, 22.3312, 11.4825, 0.26, 0.3425, 0.64625, 0.76975, 0.369375),
(10, 'PT.BANJARSARI PRIBUMI', 6, 4179, 0.234167, 0.3975, 4.73583, 6.17417, 36.3983, 17.0608, 1245, 48.5475, 21.2217, 10.6808, 1.08083, 0.381667, 0.7725, 0.349167, 0.133),
(11, 'PT.BANYAN KOALINDO LESTARI', 18, 4372, 0.1875, 0.29875, 3.0625, 4.0075, 34.2738, 13.955, 1311, 60.6912, 22.0187, 6.005, 0.36, 0.39, 0.635, 0.175, 0.207),
(12, 'PT.BANYAN KOALINDO LESTARI', 20, 4383, 0.226667, 0.35, 4.4, 5.56, 32.3667, 14.5333, 1316, 61.02, 21.7933, 6.82667, 0.19, 0.443333, 0.673333, 0.187667, 0.308333),
(13, 'PT.BARA ANUGERAH SEJAHTERA', 29, 4622, 0.311333, 0.48, 4.054, 4.91333, 30.934, 16.3847, 1296, 43.1313, 26.4433, 7.40733, 0.776, 0.317333, 2.03533, 0.134667, 0.58),
(14, 'PT.BARA SELARAS RESOURCES', 7, 4165, 0.24, 0.41, 4, 5.3, 37.43, 17.12, 1330, 41.9, 25.32, 11.22, 1.09, 0.5, 1.03, 0.36, 0.235),
(15, 'PT.BARATABANG', 18, 4254, 0.1075, 0.17125, 3.26875, 4.20062, 34.7475, 16.175, 1246, 36.395, 12.7806, 13.1538, 0.796875, 0.59875, 0.51125, 0.253688, 0.246438),
(16, 'PT.BARATABANG', 19, 4275, 0.10375, 0.1675, 2.73625, 3.5725, 34.5775, 14.56, 1267, 42.57, 18.8725, 16.2575, 0.72375, 0.42625, 0.46625, 0.240875, 0.11375),
(17, 'PT.BARATABANG', 21, 3968, 0.12, 0.2, 3.06, 4.2, 39.16, 16.49, 1300, 36.05, 21.65, 18.45, 0.56, 0.61, 0.39, 0.562, 0.197),
(18, 'PT.BASKARA SINAR SAKTI', 18, 4202, 1.63086, 0.357143, 5.18886, 6.70143, 34.2991, 15.1857, 1198, 47.8329, 20.568, 9.65943, 0.637143, 0.484571, 0.943714, 0.279971, 0.276457),
(19, 'PT.BELGI ENERGY', 18, 4213, 0.195556, 0.317778, 5.10333, 6.45333, 33.4489, 15.8522, 1213, 58.0456, 17.84, 9.41444, 0.882222, 0.402222, 0.677778, 0.472711, 0.137111),
(20, 'PT.BELGI ENERGY', 19, 4148, 0.216, 0.359333, 4.88867, 6.21333, 34.984, 17.36, 1196, 45.676, 19.7653, 14.7507, 0.506, 0.422667, 0.617333, 0.589733, 0.119467),
(21, 'PT.BERAU COAL', 18, 5257, 0.476667, 0.645, 4.66667, 5.14167, 21.44, 13.335, 1235, 51.8617, 16.235, 8.125, 0.978333, 1.07167, 0.475, 0.0701667, 0.302),
(22, 'PT.BHARINTO EKATAMA', 4, 5807, 1.115, 1.4725, 5.3375, 5.8975, 18.765, 10.215, 1267, 50.95, 27.365, 9.6475, 0.905, 1.955, 1.13, 0.0315, 0.30025),
(23, 'PT.BORNEO INDOBARA', 18, 4185, 0.197391, 0.319565, 3.75478, 4.83913, 34.7487, 15.4035, 1243, 34.2283, 10.3157, 14.573, 0.918696, 0.676957, 0.444783, 0.216261, 0.177391),
(24, 'PT.BUANA LINTAS LAUTAN', 30, 4193, 0.3225, 0.5475, 4.68, 6.215, 36.2725, 15.3975, 1320, 51.2375, 24.115, 8.5125, 1.0675, 0.4175, 0.68, 0.156, 0.2775),
(25, 'PT.BUANA LINTAS LAUTAN', 31, 4470, 0.308, 0.5, 4.412, 5.65, 33.882, 15.314, 1360, 58.906, 22.042, 7.078, 0.642, 0.406, 0.69, 0.0962, 0.2616),
(26, 'PT.BUANA PERKASA SUKSES', 19, 4166, 0.243333, 0.41, 4.69333, 6.03667, 34.8167, 16.2167, 1273, 50.18, 20.5767, 10.0233, 0.463333, 0.483333, 0.773333, 0.281, 0.104333),
(27, 'PT.BUANA PERKASA SUKSES', 20, 4588, 0.24, 0.38, 4.805, 5.885, 32.955, 17.94, 1200, 56.845, 20.445, 8.235, 0.565, 0.34, 0.775, 0.321, 0.178),
(28, 'PT.BUDI GEMA GEMPITA', 5, 4579, 0.297812, 0.460938, 4.40156, 5.45813, 30.8719, 14.2612, 1246, 48.4272, 24.5303, 10.2522, 0.765, 0.384062, 0.8775, 0.257219, 0.2035),
(29, 'PT.BUDI GEMA GEMPITA', 18, 4552, 0.341591, 0.535, 5.00432, 6.30295, 31.4184, 13.5998, 1322, 56.2895, 26.5709, 6.16795, 0.6525, 0.355909, 0.818864, 0.115727, 0.464191),
(30, 'PT.BUDI GEMA GEMPITA', 19, 4202, 0.274615, 0.449423, 4.83154, 6.18558, 34.0721, 15.4604, 1284, 56.6006, 22.3388, 8.03019, 0.675192, 0.324231, 0.759038, 0.193058, 0.210827),
(31, 'PT.BUDI GEMA GEMPITA', 20, 4545, 0.315833, 0.493594, 4.75896, 5.94604, 31.3656, 14.216, 1315, 55.6808, 23.256, 7.96448, 0.802552, 0.355729, 0.800781, 0.169903, 0.26863),
(32, 'PT.BUKIT ASAM', 22, 4751, 0.411983, 0.632245, 5.39199, 6.71464, 29.5858, 12.3712, 1299, 57.4526, 24.1033, 6.11779, 1.1666, 0.589336, 0.772903, 0.0899332, 0.311829),
(33, 'PT.BUKIT PRIMA BAHARI', 10, 4129, 0.115, 0.1925, 3.7225, 4.9775, 35.32, 13.495, 1190, 46.535, 21.475, 10.2425, 0.4775, 0.8075, 0.6725, 0.66825, 0.25125),
(34, 'PT.BUMI CENDANA ABADI', 18, 4413, 0.205, 0.335, 4.065, 5.275, 33.85, 13.895, 1230, 53.865, 17.925, 7.75, 0.665, 0.31, 0.715, 0.1285, 0.33),
(35, 'PT.BUMI CENDANA ABADI', 29, 4524, 0.325, 0.515, 4.38, 5.61, 32.41, 13.445, 1220, 53.41, 24.82, 5.435, 0.98, 0.335, 0.8, 0.08, 0.449),
(36, 'PT.FIRMAN KETAUN', 29, 4739, 0.375328, 0.597623, 7.44295, 9.07549, 29.107, 15.1593, 1315, 44.3525, 26.2647, 5.49844, 0.359918, 0.317295, 1.71402, 0.12418, 0.532049),
(37, 'PT.GEMA MUTIARA MARINA', 10, 4156, 0.15, 0.24, 4.04, 5.43, 34.64, 12.06, 1290, 51.03, 19.93, 10.32, 0.21, 0.33, 0.49, 0.755, 0.18),
(38, 'PT.GEMA MUTIARA MARINA', 20, 4577, 0.59, 0.93, 3.97, 4.95, 32.19, 15.53, 1350, 65.54, 23.88, 3.62, 0.3, 0.24, 0.59, 0.134, 0.203),
(39, 'PT.GEMA MUTIARA MARINA', 29, 4483, 0.346582, 0.56038, 7.15785, 9.06392, 31.5201, 13.1733, 1275, 52.5433, 23.711, 5.22468, 0.445316, 0.306456, 0.71481, 0.13443, 0.171013),
(40, 'PT.GEMA MUTIARA MARINA', 30, 4204, 0.41, 0.69, 4.69167, 6.20667, 35.7833, 15.0383, 1313, 54.4083, 24.4617, 7.095, 0.818333, 0.358333, 0.783333, 0.174833, 0.324167),
(41, 'PT.GEMA MUTIARA MARINA', 31, 4477, 0.4, 0.6225, 4.93625, 6.28, 33.2363, 14.94, 1337, 56.7912, 25.3725, 6.71125, 0.65125, 0.4575, 0.8725, 0.1215, 0.279),
(42, 'PT.GLOBAL ANTAR NUSANTARA LINES', 29, 4604, 0.339706, 0.549706, 7.97912, 9.92794, 30.2453, 13.6371, 1267, 49.1447, 25.4135, 5.55529, 0.557353, 0.276471, 0.914118, 0.0895588, 0.168059),
(43, 'PT.GLOBAL ENERGI LESTARI', 9, 4130, 0.26, 0.44, 5.21, 6.79, 35.395, 15.77, 1190, 50.3, 13.385, 12.82, 0.175, 0.64, 0.42, 0.326, 0.2705),
(44, 'PT.GORBY PUTRA UTAMA', 10, 4107, 0.2775, 0.468125, 4.965, 6.53125, 36.3162, 16.2481, 1223, 45.4975, 19.1644, 12.9563, 0.2275, 0.43375, 0.54125, 0.489312, 0.194312),
(45, 'PT.HANSON ENERGY', 10, 4342, 0.176667, 0.26, 5.68333, 7.17667, 31.71, 13.0867, 1246, 47.85, 23.5267, 10.0033, 0.66, 0.326667, 0.553333, 0.558, 0.142667),
(46, 'PT.INTI GARDA NUSANTARA', 11, 4126, 0.137273, 0.224545, 3.82727, 4.85273, 34.9136, 17.3873, 1195, 48.1564, 20.58, 15.41, 0.455455, 0.574545, 1.28545, 0.243, 0.223364),
(47, 'PT.JOHNLIN GROUP', 21, 3803, 0.0857143, 0.148571, 3.45857, 4.43, 38.9514, 21.8114, 1247, 31.0286, 18.7029, 25.0357, 0.458571, 0.354286, 0.457143, 0.196143, 0.16),
(48, 'PT.KALTIM PRIMA COAL', 18, 4738, 0.362, 0.538, 5.94, 6.89, 27.174, 15.38, 1244, 49.544, 20.51, 9.244, 0.834, 1.644, 0.638, 0.077, 0.388),
(49, 'PT.KALTIM PRIMA COAL', 20, 4616, 0.3, 0.47, 6.26, 7.4, 28.36, 15.38, 1160, 50.54, 18.12, 11.63, 0.42, 1.53, 0.55, 0.114, 0.33),
(50, 'PT.KASIH COAL RESOURCES', 19, 4086, 0.183333, 0.303333, 4.95167, 6.33167, 35.2517, 17.2333, 1223, 45.4933, 19.7383, 13.9267, 0.7, 0.708333, 0.563333, 0.586833, 0.1795),
(51, 'PT.KASIH INDUSTRI INDONESIA', 12, 4067, 0.183457, 0.303004, 5.20082, 6.64144, 34.5368, 16.5084, 1209, 49.8218, 18.1586, 13.2497, 0.481481, 0.578383, 0.708025, 0.369067, 0.138601),
(52, 'PT.KIDECO JAYA AGUNG', 13, 4144, 0.092, 0.15, 2.984, 3.966, 35.774, 14.628, 1276, 32.254, 14.224, 23.69, 0.146, 0.91, 0.486, 0.2926, 0.1866),
(53, 'PT.KREASI ENERGI ALAM', 18, 4525, 0.21, 0.325556, 4.26778, 5.36333, 31.9656, 14.0367, 1214, 45.7556, 17.98, 16.5967, 0.693333, 0.405556, 0.515556, 0.296222, 0.203111),
(54, 'PT.LAUTAN JATA MANGGALA', 29, 4478, 0.466667, 0.753333, 5.16333, 6.64, 32.67, 13.4267, 1230, 51.4967, 21.35, 7.14667, 0.903333, 0.356667, 0.713333, 0.157333, 0.255333),
(55, 'PT.LAUTAN JAYA MANGGALA', 29, 4427, 0.458936, 0.749149, 5.38, 6.92638, 32.9766, 13.7709, 1250, 55.9196, 23.8828, 5.95085, 0.697234, 0.415106, 0.737447, 0.101064, 0.333),
(56, 'PT.LAUTAN JAYA MANGGALA', 30, 4364, 0.46, 0.76, 4.98667, 6.30667, 34.4833, 17.11, 1223, 58.98, 22.0333, 7.27, 1.12333, 0.423333, 0.666667, 0.103333, 0.513),
(57, 'PT.LAUTAN JAYA MANGGALA', 31, 4441, 0.3725, 0.6025, 4.65375, 5.88875, 33.2487, 15.6287, 1251, 57.0125, 23.11, 7.18625, 1.06375, 0.49, 0.73625, 0.101875, 0.3355),
(58, 'PT.MANDIRI INTI PERKASA', 14, 4957, 0.386667, 0.566667, 4.99667, 5.98333, 26.34, 11.8033, 1200, 53.5433, 19.3933, 8.44333, 1.06667, 1.72, 0.62, 0.458333, 0.29),
(59, 'PT.MENAMBANG MUARA ENIM', 16, 4462, 0.402381, 0.647857, 6.07, 7.86667, 32.309, 12.2617, 1246, 57.1721, 20.8657, 7.95524, 1.36595, 0.492381, 0.569048, 0.109095, 0.198619),
(60, 'PT.MUARA ALAM SEJAHTERA', 18, 4875, 0.49, 0.73, 4.65, 5.73, 28.91, 12.33, 1320, 49.8, 29.72, 7.08, 1.22, 0.38, 0.86, 0.084, 0.608),
(61, 'PT.MUSTIKA INDAH PERMAI', 15, 4091, 0.241818, 0.413636, 5.03273, 6.90364, 37.1164, 13.8855, 1280, 53.8409, 21.8318, 8.38909, 0.899091, 0.450909, 0.759091, 0.406909, 0.273636),
(62, 'PT.NUKKUWATU LINTAS NUSANTARA', 17, 4588, 0.49, 0.74, 5.15, 6.28, 28.33, 12.63, 1310, 59.3, 19.71, 7.55, 0.41, 0.24, 0.54, 0.045, 0.15),
(63, 'PT.PLN BATUBARA', 18, 4309, 0.172576, 0.273485, 3.65818, 4.65788, 33.8592, 15.0674, 1198, 42.2379, 15.6991, 12.6605, 0.729242, 0.643333, 0.57303, 0.228833, 0.247303),
(64, 'PT.SAMUDRA SARANA FLORESMA', 29, 4613, 0.363333, 0.59, 8.04333, 10.01, 30.34, 13.26, 1293, 49.2067, 24.06, 5.63, 0.493333, 0.28, 0.723333, 0.111, 0.123),
(65, 'PT.SAROLANGUN PRIMA COAL', 18, 4065, 0.195, 0.32875, 5.4225, 6.99875, 34.9263, 15.9913, 1231, 47.1763, 18.6875, 9.5725, 0.55875, 0.49625, 0.5525, 0.324625, 0.134375),
(66, 'PT.SAROLANGUN PRIMA COAL', 19, 4041, 0.180976, 0.297561, 5.14683, 6.5022, 34.76, 17.5595, 1204, 51.5783, 16.6795, 14.3834, 0.359756, 0.517317, 0.632439, 0.455849, 0.0673659),
(67, 'PT.SAROLANGUN PRIMA COAL', 25, 4027, 0.186341, 0.312439, 5.02544, 6.3439, 35.6844, 18.7915, 1260, 54.9827, 19.6895, 12.2032, 0.409756, 0.534146, 0.777805, 0.266122, 0.093439),
(68, 'PT.SEA ASIH LINE', 10, 4603, 0.21, 0.33, 7.94, 9.8, 29.02, 12.41, 1270, 49.58, 27.44, 5.72, 0.58, 0.38, 0.54, 0.186, 0.197),
(69, 'PT.SEA ASIH LINE', 29, 4611, 0.31, 0.5, 8.08, 10.21, 30.33, 11.92, 1300, 52.6, 25.04, 4.3, 0.26, 0.18, 0.72, 0.091, 0.114),
(70, 'PT.SINARBARU WIJAYA PERKASA', 19, 4344, 0.362, 0.59, 4.417, 5.671, 34.382, 15.728, 1378, 56.762, 26.183, 6.007, 0.675, 0.316, 0.799, 0.1419, 0.3287),
(71, 'PT.SINARBARU WIJAYA PERKASA', 20, 4787, 0.410952, 0.618095, 4.86476, 5.88286, 28.6943, 13.7219, 1306, 49.2048, 24.1986, 8.60476, 1.06143, 0.398571, 0.787143, 0.189086, 0.3),
(72, 'PT.SUKSES WAHANA MARITIM', 30, 4353, 0.37, 0.61, 4.59667, 5.92667, 34.8133, 15.98, 1333, 58.3967, 26.3333, 5.34, 0.79, 0.326667, 0.706667, 0.126, 0.341333),
(73, 'PT.SUKSES WAHANA MARITIM', 31, 4476, 0.423333, 0.676667, 4.37333, 5.56333, 33.61, 15.5, 1266, 59.6833, 22.0033, 6.99333, 0.71, 0.346667, 0.59, 0.111667, 0.387667),
(74, 'PT.SUMBER ENERGI SUKSES MAKMUR', 24, 4163, 0.146, 0.236, 3.716, 4.856, 34.918, 14.888, 1190, 52.274, 15.144, 12.522, 0.422, 0.288, 0.498, 0.4414, 0.2324),
(75, 'PT.SUMBER PANCA ENERGI', 26, 4110, 0.255, 0.43, 5.06, 6.38, 35.38, 18.585, 1240, 50.535, 22.97, 10.195, 0.555, 0.42, 0.92, 0.275, 0.12),
(76, 'PT.SUMBER REZEKI SAMUDRA JAYA', 18, 4209, 0.16, 0.25, 3.76, 4.36, 24.4, 23.79, 1150, 32.64, 13.73, 13.21, 1.04, 0.94, 1.08, 0.25, 0.57),
(77, 'PT.SUNGAI DANAU JAYA', 23, 4189, 0.24, 0.39, 4.39, 5.95, 35.21, 12.12, 1170, 53.95, 14.27, 11.32, 0.78, 0.5, 0.45, 0.106, 0.16),
(78, 'PT.SWADAYA WIRA MARITIM', 18, 4717, 0.4, 0.62, 5.2, 6.48, 29.7, 12.45, 1150, 60.05, 18.79, 6.84, 0.52, 0.44, 0.53, 0.162, 0.293),
(79, 'PT.SWADAYA WIRA MARITIM', 29, 4534, 0.39, 0.62, 4.57, 5.85, 32.34, 13.32, 1230, 48.93, 26.37, 7.69, 0.98, 0.41, 0.76, 0.102, 0.677),
(80, 'PT.TANAH BAMBU RESOURCES', 28, 4191, 0.288571, 0.467143, 2.87143, 3.84143, 35.3929, 13.5, 1310, 31.3086, 19.5843, 18.8443, 0.58, 0.467143, 0.26, 0.0888571, 0.181857),
(81, 'PT.TANJUNG RAYA SENTOSA', 19, 4103, 0.197727, 0.328182, 4.61227, 5.87364, 34.9882, 17.1345, 1217, 54.38, 17.6582, 12.6595, 0.298182, 0.532727, 0.757727, 0.313136, 0.0695),
(82, 'PT.TENDRI DHARMA SAMUDRA', 10, 4136, 0.13875, 0.22875, 3.71, 4.90875, 35.5488, 14.7362, 1230, 42.595, 20.2875, 11.5413, 0.30625, 0.3575, 0.52875, 0.846375, 0.30575),
(83, 'PT.TENDRI DHARMA SAMUDRA', 18, 4359, 0.33, 0.515, 4.835, 6.1, 31.645, 12.93, 1270, 59.115, 8.2, 9.43, 0.55, 0.32, 0.38, 0.132, 0.081),
(84, 'PT.TENDRI DHARMA SAMUDRA', 29, 4566, 0.352778, 0.557037, 4.47074, 5.61519, 32.0704, 14.9113, 1240, 47.8937, 24.91, 7.11556, 1.12315, 0.371481, 1.0787, 0.142741, 0.3845),
(85, 'PT.TENDRI DHARMA SAMUDRA', 30, 4274, 0.35, 0.580625, 4.81812, 6.18125, 35.32, 16.9487, 1293, 57.2844, 22.7025, 7.54187, 1.03, 0.464375, 0.7875, 0.137063, 0.382625),
(86, 'PT.TENDRI DHARMA SAMUDRA', 31, 4492, 0.398, 0.6404, 4.4772, 5.6428, 33.1556, 15.5976, 1296, 58.0588, 22.5248, 7.5712, 0.904, 0.448, 0.7932, 0.10876, 0.3896),
(87, 'PT.TIGA DAYA ENERGI', 18, 4031, 0.2, 0.35, 6.36, 8.47, 35.765, 15.145, 1215, 46.59, 23.465, 12.93, 0.41, 0.86, 0.69, 0.476, 0.1955),
(88, 'PT.TIGA DAYA ENERGI', 19, 4046, 0.21, 0.36, 4.955, 6.41, 36.7975, 18.235, 1170, 51.355, 15.54, 14.34, 0.65, 0.575, 0.465, 0.54325, 0.146),
(89, 'PT.TITAN INFRA ENERGY', 30, 4156, 0.295333, 0.5, 4.782, 6.10933, 36.4213, 18.7487, 1266, 47.0693, 24.1207, 11.5433, 0.583333, 0.395333, 0.968, 0.342667, 0.227333),
(90, 'PT.TITAN INFRA ENERGY', 31, 4536, 0.335, 0.536667, 5.455, 6.89, 32.3567, 14.6017, 1233, 48.245, 25.8617, 10.045, 1.165, 0.505, 0.688333, 0.126, 0.176167),
(91, 'PT.TIWA ABADI', 21, 3906, 0.0890909, 0.158182, 3.08455, 4.10473, 39.5227, 19.4773, 1277, 31.7845, 21.7973, 22.0409, 0.546364, 0.523636, 0.454545, 0.613818, 0.175091),
(92, 'PT.TRITUNGGAL BARA SEJATI', 20, 4529, 0.59, 0.93, 6.72, 8.4, 29.72, 12.18, 1360, 48.26, 28.52, 9.74, 1.39, 0.41, 0.9, 0.063, 0.152),
(93, 'PT.TRITUNGGAL BARA SEJATI', 27, 4106, 0.21, 0.34, 4.35, 5.64, 35.15, 16, 1280, 41.43, 21.88, 15.45, 0.73, 0.65, 2.25, 0.215, 1.888),
(94, 'PT.TRUNGTUM BEBATUAN CEMERLANG', 27, 4108, 0.22931, 0.376552, 4.37966, 5.5631, 34.8703, 17.2634, 1214, 48.78, 19.6745, 13.1459, 0.349655, 0.561035, 0.746897, 0.342931, 0.105069),
(95, 'PT.USAHA MAJU MAKMUR', 18, 4526, 0.273043, 0.424239, 4.59478, 5.75043, 31.4575, 14.4423, 1249, 50.2516, 23.3849, 7.04098, 0.968587, 0.39163, 1.00652, 0.186902, 0.383158),
(96, 'PT.USAHA MAJU MAKMUR', 19, 4183, 0.226481, 0.375, 4.85593, 6.16389, 34.7537, 17.2137, 1238, 46.9346, 20.6256, 13.1361, 0.402778, 0.469815, 0.821852, 0.398556, 0.122389),
(97, 'PT.USAHA MAJU MAKMUR', 20, 4571, 0.211481, 0.332222, 4.59519, 5.63037, 32.2937, 16.95, 1251, 51.9111, 20.8515, 11.1778, 0.574074, 0.421111, 0.817407, 0.311185, 0.165593),
(98, 'PT.WISTARA INTERNASIONAL', 9, 4175, 0.28, 0.47, 4.95, 6.38, 35.35, 16.65, 1210, 33.8, 14.12, 18.6, 0.13, 0.58, 0.74, 0.315, 0.379),
(99, 'PT.WISTARA INTERNASIONAL', 30, 4203, 0.312727, 0.526364, 4.61091, 6.08273, 36.2355, 15.9182, 1314, 52.0045, 24.4182, 7.67091, 0.944545, 0.332727, 0.88, 0.205818, 0.267091),
(100, 'PT.WISTARA INTERNASIONAL', 31, 4326, 0.6, 0.98, 5.55, 7.02, 33.33, 15.64, 1360, 61.46, 22.82, 5.26, 0.6, 0.31, 0.66, 0.098, 0.38);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `id` int(11) NOT NULL,
  `Suppliers` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`id`, `Suppliers`) VALUES
(1, 'ADARO'),
(2, 'AI'),
(3, 'ARA'),
(4, 'BEK'),
(5, 'BGG'),
(6, 'BP'),
(7, 'BSR'),
(8, 'DP '),
(9, 'GEL'),
(10, 'HE'),
(11, 'IGN'),
(12, 'KII'),
(13, 'KJA'),
(14, 'MANDIRI'),
(15, 'MIP'),
(16, 'MME'),
(17, 'NLN'),
(18, 'PLNBB'),
(19, 'PLNBB LRC'),
(20, 'PLNBB MRC'),
(21, 'PLNBB NIAGA'),
(22, 'PTBA'),
(23, 'SDJ'),
(24, 'SESM'),
(25, 'SPC'),
(26, 'SPE'),
(27, 'TBC'),
(28, 'TBR'),
(29, 'TIE'),
(30, 'TIE LRC'),
(31, 'TIE MRC');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_coal_yard`
--
ALTER TABLE `tbl_coal_yard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supplier_sumber_tambang` (`id_sumber_tambang`);

--
-- Indeks untuk tabel `tbl_sumber_tambang`
--
ALTER TABLE `tbl_sumber_tambang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sumber_tambang_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_coal_yard`
--
ALTER TABLE `tbl_coal_yard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_sumber_tambang`
--
ALTER TABLE `tbl_sumber_tambang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_coal_yard`
--
ALTER TABLE `tbl_coal_yard`
  ADD CONSTRAINT `fk_supplier_sumber_tambang` FOREIGN KEY (`id_sumber_tambang`) REFERENCES `tbl_sumber_tambang` (`id`);

--
-- Ketidakleluasaan untuk tabel `tbl_sumber_tambang`
--
ALTER TABLE `tbl_sumber_tambang`
  ADD CONSTRAINT `fk_sumber_tambang_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `tbl_suppliers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;