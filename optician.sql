-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 10:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `optician`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id_address` int(11) NOT NULL,
  `street_name` varchar(100) NOT NULL,
  `street_number` int(11) NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `door` varchar(10) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id_address`, `street_name`, `street_number`, `floor`, `door`, `city`, `postal_code`, `country`) VALUES
(1, 'Ctra. Hornos ', 97, 1, '1', 'La Rioja', 26223, 'Spain'),
(2, ' Plazuela do Porto ', 99, 0, '1', 'Santa Cruz de Tenerife', 38400, 'Spain'),
(3, ' Ctra. de Fuentenueva  ', 41, 6, '25', 'Torrelodones', 28250, 'Spain'),
(4, '  Ctra. Beas-Cortijos Nuevos   ', 96, 2, '5', 'La Rioja', 26375, 'Spain'),
(5, 'Rúa do Paseo', 85, 19, '1', 'Castilleja De La Cuesta', 41950, 'Spain'),
(6, 'Calle Proc. San Sebastián ', 20, 5, '20', ' Almenara', 12590, 'Spain'),
(7, 'Quevedo  ', 63, 1, '2b', ' Lousame', 15214, 'Spain'),
(8, 'Av. Zumalakarregi   ', 47, 4, '7', ' Daya Nueva', 3159, 'Spain'),
(9, ' C/ Cañada del Rosal    ', 52, 9, '48', ' Valverde Del Camino', 21600, 'Spain'),
(10, 'Cercas Bajas  ', 84, 3, '1a', ' Palau De Plegamans', 8184, 'Spain');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL,
  `nif_supplier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_brand`, `nif_supplier`) VALUES
(6, '19051395N'),
(23, '19051395N'),
(33, '19051395N '),
(9, '25278224M'),
(14, '25278224M'),
(17, '25278224M'),
(28, '25278224M'),
(1, '27043849N'),
(2, '27043849N'),
(20, '27043849N'),
(25, '27043849N'),
(35, '27043849N '),
(4, '29626009P'),
(12, '29626009P'),
(30, '29626009P'),
(27, '30243552R'),
(34, '30243552R '),
(3, '33226379G'),
(8, '33226379G'),
(21, '33226379G'),
(32, '35698644E '),
(26, '39622368S'),
(29, '39622368S'),
(5, '56139535P'),
(7, '56139535P'),
(10, '56139535P'),
(15, '56139535P'),
(16, '56139535P'),
(11, '99508879T'),
(13, '99508879T'),
(18, '99508879T'),
(19, '99508879T'),
(22, '99508879T'),
(24, '99508879T'),
(31, '99508879T');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `recommended_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `name`, `address`, `phone`, `email`, `date`, `recommended_by`) VALUES
(1, 'Maria-Ines Costa', 'Rúa do Paseo 8, Salteras, Seville, 41909', '657839401', 'maria.costa@gmail.com', '2020-03-11', NULL),
(2, 'Magno M Merino', 'Avendaño 85, Sorbas, Almería, 04270', '798939761', 'magnokf@classesmail.com', '2020-05-14', NULL),
(3, 'Victorio P Negrete', 'Cañadilla 22, Palos de la Frontera, Huelva, 21810', '686595814', 'victorioneg@yahoo.com', '2020-05-06', NULL),
(4, 'Dennis M Smith', 'C/ Benito Guinea 15, Granollers, Barcelona, 08400', '644177171', 'smithd@gmail.com', '2020-05-08', 1),
(5, 'Omaro N Aguilar', 'Pl. Virgen Blanca 21, Castellbisbal, Barcelona, 08755', '792482486', 'omaroa@yahoo.com', '2020-05-14', NULL),
(6, 'Collipal R Valdez', 'Cercas Bajas 96, Viladecavalls, Barcelona, 08232', '748767307', 'rvaldez@yahoo.com', '2020-02-04', NULL),
(7, 'Fiamma L Molina', 'Pl. Virgen Blanca 90, Sant Vicenç dels Horts, Barcelona, 08571', '669348117', 'amma@gmail.com', '2020-03-20', 6),
(8, 'Kristine D Otero', 'Pl. Virgen Blanca 94, Corbera de Llobregat, Barcelona, 08757', '638032245', 'krisssss@hotmail.com', '2020-04-13', 7),
(9, 'Niceas M Villalobos', 'Comandante Izarduy 60, Badalona, Barcelona, 08910', '689947921', 'niceas@gmail.com', '2020-05-15', 2),
(10, 'Renán H Briseño', 'Cercas Bajas 23, Sant Cugat del Vallès, Barcelona, 08190', '776667788', 'renanh@yahoo.com', '2020-05-15', 1),
(11, 'Ponce G Miranda', 'C/ Benito Guinea 54, Arenys de Munt, Barcelona, 08358', '713671903', 'miranda@gmail.com', '2020-05-15', 8);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id_employee`, `name`) VALUES
(1, 'Lesly Encia Ayo'),
(2, 'Nalé Barbas Herias'),
(3, 'Analeny Cerezo Ceniceros'),
(4, 'Aracely Matuta Casas'),
(5, 'Kiowa Leza Sola');

-- --------------------------------------------------------

--
-- Table structure for table `glasses`
--

CREATE TABLE `glasses` (
  `id_glasses` int(11) NOT NULL,
  `graduation` decimal(4,2) NOT NULL,
  `frame` enum('floating','paste','metal') NOT NULL,
  `color_frame` varchar(20) NOT NULL,
  `color_glass` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `glasses`
--

INSERT INTO `glasses` (`id_glasses`, `graduation`, `frame`, `color_frame`, `color_glass`, `price`, `brand`, `employee`) VALUES
(1, '-0.23', 'floating', 'red', 'green', 250, 6, 1),
(2, '3.60', 'paste', 'blue', 'black', 400, 28, 2),
(3, '-1.50', 'metal', 'black', 'black', 100, 19, 3),
(4, '2.50', 'paste', 'purple', 'black', 400, 17, 4),
(5, '-0.30', 'metal', 'pink', 'black', 269, 35, 4),
(6, '4.50', 'metal', 'black', 'green', 380, 7, 5),
(7, '-0.60', 'metal', 'white', 'maroon', 250, 12, 3),
(8, '3.50', 'metal', 'black', 'red', 500, 4, 5),
(9, '2.50', 'paste', 'black', 'green', 567, 8, 2),
(10, '0.50', 'metal', 'purple', 'pink', 500, 33, 1),
(11, '3.50', 'floating', 'orange', 'green', 400, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `nif` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `address` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`nif`, `name`, `phone`, `fax`, `address`) VALUES
('19051395N', 'Glasses Trust', '678458483', '728896294', 1),
('25278224M', 'Expert Sale', '759432342', '022950166', 2),
('27043849N', 'Spot Glasses', '869748622', '719582055', 3),
('29626009P', 'Glasses Consulting', '632528697', '902853916', 4),
('30243552R', 'Glasses Stuff', '829742104', '790432154', 5),
('33226379G', 'Glasses Focus', '678952289', '860131881', 6),
('35698644E', 'Glasses Masters', '812763840', '686193889', 7),
('39622368S', 'Rock Glasses', '611386875', '736360701', 8),
('56139535P', 'Glasses Agency', '720426630', '535161158', 9),
('99508879T', 'Land Glasses', '820984601', '738906823', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_address`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`),
  ADD KEY `nif_supplier` (`nif_supplier`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `recommended_by` (`recommended_by`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`);

--
-- Indexes for table `glasses`
--
ALTER TABLE `glasses`
  ADD PRIMARY KEY (`id_glasses`),
  ADD KEY `brand` (`brand`),
  ADD KEY `employee` (`employee`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`nif`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `brand_ibfk_1` FOREIGN KEY (`nif_supplier`) REFERENCES `supplier` (`nif`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`recommended_by`) REFERENCES `customer` (`id_customer`);

--
-- Constraints for table `glasses`
--
ALTER TABLE `glasses`
  ADD CONSTRAINT `glasses_ibfk_1` FOREIGN KEY (`brand`) REFERENCES `brand` (`id_brand`),
  ADD CONSTRAINT `glasses_ibfk_2` FOREIGN KEY (`employee`) REFERENCES `employee` (`id_employee`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`address`) REFERENCES `address` (`id_address`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
