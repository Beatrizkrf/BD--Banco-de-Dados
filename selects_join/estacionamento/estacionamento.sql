-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Set-2025 às 14:07
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `anadr` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `anadr`) VALUES
(1, 50, 'Subsolo 1'),
(2, 40, 'Subsolo 2'),
(3, 30, 'Térreo'),
(4, 25, '1º Andar'),
(5, 20, 'Térreo'),
(6, 15, '1º Andar'),
(7, 10, 'Térreo'),
(8, 35, 'Subsolo 1'),
(9, 45, 'Subsolo 2'),
(10, 60, 'Térreo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `datanasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `cpf`, `datanasc`, `nome`) VALUES
(2, '987.654.321-11', '1985-09-23 00:00:00', 'Carlos Pereira'),
(3, '456.789.123-22', '2000-12-01 00:00:00', 'Ana Souza'),
(4, '321.654.987-33', '1995-07-18 00:00:00', 'João Lima'),
(5, '654.321.987-44', '1978-03-09 00:00:00', 'Fernanda Gomes'),
(6, '111.222.333-55', '2002-11-25 00:00:00', 'Paulo Henrique'),
(7, '222.333.444-66', '1999-01-30 00:00:00', 'Beatriz Kruger'),
(8, '333.444.555-77', '1992-04-12 00:00:00', 'Ricardo Santos'),
(9, '444.555.666-88', '1988-08-08 00:00:00', 'Camila Torres'),
(10, '555.666.777-99', '1975-06-20 00:00:00', 'Roberto Dias');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codestaciona` int(11) NOT NULL,
  `horaentrada` datetime DEFAULT NULL,
  `horasaida` datetime DEFAULT NULL,
  `dtentrada` datetime DEFAULT NULL,
  `dtsaida` datetime DEFAULT NULL,
  `codveiculo` int(11) DEFAULT NULL,
  `codlugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`codestaciona`, `horaentrada`, `horasaida`, `dtentrada`, `dtsaida`, `codveiculo`, `codlugar`) VALUES
(2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-01 00:00:00', '2025-08-01 00:00:00', 2, 1),
(3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-02 00:00:00', '2025-08-02 00:00:00', 3, 2),
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-02 00:00:00', '2025-08-02 00:00:00', 4, 4),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-03 00:00:00', '2025-08-03 00:00:00', 5, 5),
(6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-03 00:00:00', '2025-08-03 00:00:00', 6, 6),
(7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-04 00:00:00', '2025-08-04 00:00:00', 7, 7),
(8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-04 00:00:00', '2025-08-04 00:00:00', 8, 8),
(9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-05 00:00:00', '2025-08-05 00:00:00', 9, 9),
(10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2025-08-05 00:00:00', '2025-08-05 00:00:00', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Fiat Uno'),
(2, 'Chevrolet Onix'),
(3, 'Honda Civic'),
(4, 'Toyota Corolla'),
(5, 'FIAT SIENA'),
(6, 'Ford Ka'),
(7, 'Renault Sandero'),
(8, 'Jeep Compass'),
(9, 'Hyundai HB20'),
(10, 'Nissan Kicks');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `codveiculo` int(11) NOT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`codveiculo`, `placa`, `cor`, `codcliente`, `codmodelo`) VALUES
(2, 'XYZ9K87', 'Preto', 2, 1),
(3, 'MNO5T43', 'Branco', 3, 5),
(4, 'QWE8R65', 'Vermelho', 4, 2),
(5, 'JKL7H21', 'Azul', 5, 4),
(6, 'POI4L98', 'Cinza', 6, 6),
(7, 'UYT2R11', 'Verde', 7, 7),
(8, 'GHJ6Y77', 'Amarelo', 8, 8),
(9, 'BNM3Q54', 'Rosa', 9, 9),
(10, 'TRE1P09', 'lilas', 10, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codestaciona`),
  ADD KEY `codveiculo` (`codveiculo`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`codveiculo`),
  ADD KEY `codcliente` (`codcliente`),
  ADD KEY `codmodelo` (`codmodelo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codlugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `codestaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `codveiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`codveiculo`) REFERENCES `veiculo` (`codveiculo`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
