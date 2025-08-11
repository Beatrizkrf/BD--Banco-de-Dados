-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Ago-2025 às 13:51
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
-- Banco de dados: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `arearestaurante`
--

CREATE TABLE `arearestaurante` (
  `id_area` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `arearestaurante`
--

INSERT INTO `arearestaurante` (`id_area`, `descricao`) VALUES
(1, 'Área Interna'),
(2, 'Área Externa'),
(3, 'Área VIP'),
(4, 'Área Privativa'),
(5, 'Área Lounge'),
(6, 'Área Gourmet'),
(7, 'Área Kids'),
(8, 'Área Fumante'),
(9, 'Área Pet Friendly'),
(10, 'Área Corporativa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atende`
--

CREATE TABLE `atende` (
  `id_atendimento` int(11) NOT NULL,
  `horarioentrada` time NOT NULL,
  `horariosaida` time DEFAULT NULL,
  `qtdpessoas` int(11) DEFAULT NULL,
  `id_garcom` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atende`
--

INSERT INTO `atende` (`id_atendimento`, `horarioentrada`, `horariosaida`, `qtdpessoas`, `id_garcom`, `id_mesa`) VALUES
(1, '19:00:00', '21:00:00', 2, 1, 1),
(2, '20:00:00', '22:00:00', 4, 2, 2),
(3, '21:00:00', '23:00:00', 3, 3, 3),
(4, '18:00:00', '20:00:00', 5, 4, 4),
(5, '19:30:00', '21:30:00', 2, 5, 5),
(6, '20:00:00', '22:00:00', 4, 6, 6),
(7, '18:30:00', '20:30:00', 3, 7, 7),
(8, '19:00:00', '21:00:00', 6, 8, 8),
(9, '20:30:00', '22:30:00', 4, 9, 9),
(10, '21:00:00', '23:00:00', 2, 10, 10),
(11, '18:30:00', '20:00:00', 3, 1, 1),
(12, '19:00:00', '21:30:00', 4, 2, 2),
(13, '20:15:00', '22:00:00', 2, 3, 3),
(14, '18:45:00', '21:00:00', 5, 4, 4),
(15, '19:30:00', '22:15:00', 6, 5, 5),
(16, '20:00:00', '23:00:00', 3, 6, 6),
(17, '18:00:00', '19:30:00', 2, 7, 7),
(18, '19:45:00', '22:30:00', 4, 8, 8),
(19, '20:30:00', '23:15:00', 1, 9, 9),
(20, '18:15:00', '20:45:00', 3, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `id_conta` int(11) NOT NULL,
  `data` date NOT NULL,
  `valortotal` decimal(10,2) DEFAULT NULL,
  `valorporpessoa` decimal(10,2) DEFAULT NULL,
  `id_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`id_conta`, `data`, `valortotal`, `valorporpessoa`, `id_mesa`) VALUES
(1, '2025-08-01', 150.00, 75.00, 1),
(2, '2025-08-02', 200.00, 100.00, 2),
(3, '2025-08-03', 180.00, 90.00, 3),
(4, '2025-08-04', 120.00, 60.00, 4),
(5, '2025-08-05', 220.00, 110.00, 5),
(6, '2025-08-06', 160.00, 80.00, 6),
(7, '2025-08-07', 130.00, 65.00, 7),
(8, '2025-08-08', 210.00, 105.00, 8),
(9, '2025-08-09', 190.00, 95.00, 9),
(10, '2025-08-10', 140.00, 70.00, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `garcom`
--

CREATE TABLE `garcom` (
  `id_garcom` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `garcom`
--

INSERT INTO `garcom` (`id_garcom`, `nome`) VALUES
(1, 'João Silva'),
(2, 'Maria Oliveira'),
(3, 'Carlos Souza'),
(4, 'Ana Costa'),
(5, 'Lucas Pereira'),
(6, 'Fernanda Alves'),
(7, 'Ricardo Lima'),
(8, 'Patrícia Gomes'),
(9, 'Rafael Rocha'),
(10, 'Juliana Fernandes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`id_item`, `nome`, `preco`) VALUES
(1, 'Hambúrguer', 20.50),
(2, 'Pizza', 35.00),
(3, 'Sushi', 45.00),
(4, 'Salada', 15.00),
(5, 'Refrigerante', 7.00),
(6, 'Cerveja', 10.00),
(7, 'Suco Natural', 5.00),
(8, 'Água Mineral', 3.00),
(9, 'Sobremesa', 12.00),
(10, 'Café', 6.00),
(11, 'Churrasco', 50.00),
(12, 'Frango Frito', 25.00),
(13, 'Espaguete', 18.00),
(14, 'Lasanha', 22.00),
(15, 'Feijoada', 30.00),
(16, 'Bife à Parmegiana', 28.00),
(17, 'Mousse de Chocolate', 10.00),
(18, 'Bolo de Rolo', 8.00),
(19, 'Torta de Limão', 14.00),
(20, 'Creme Brulée', 16.00),
(21, 'Carne de Sol', 35.00),
(22, 'Acarajé', 20.00),
(23, 'Pão de Queijo', 5.00),
(24, 'Batata Frita', 8.00),
(25, 'Tapioca', 12.00),
(26, 'Sorvete', 9.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itensconta`
--

CREATE TABLE `itensconta` (
  `id_itensconta` int(11) NOT NULL,
  `qtde` int(11) NOT NULL,
  `totalitem` decimal(10,2) DEFAULT NULL,
  `id_conta` int(11) NOT NULL,
  `id_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `itensconta`
--

INSERT INTO `itensconta` (`id_itensconta`, `qtde`, `totalitem`, `id_conta`, `id_item`) VALUES
(1, 2, 41.00, 1, 1),
(2, 3, 105.00, 2, 2),
(3, 1, 45.00, 3, 3),
(4, 5, 75.00, 4, 4),
(5, 2, 14.00, 5, 5),
(6, 3, 30.00, 6, 6),
(7, 4, 20.00, 7, 7),
(8, 6, 18.00, 8, 8),
(9, 2, 24.00, 9, 9),
(10, 1, 6.00, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(11) NOT NULL,
  `comporta` int(11) NOT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `comporta`, `id_area`) VALUES
(1, 4, 1),
(2, 2, 2),
(3, 6, 3),
(4, 8, 4),
(5, 4, 5),
(6, 2, 6),
(7, 4, 7),
(8, 6, 8),
(9, 8, 9),
(10, 2, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  ADD PRIMARY KEY (`id_area`);

--
-- Índices para tabela `atende`
--
ALTER TABLE `atende`
  ADD PRIMARY KEY (`id_atendimento`),
  ADD KEY `id_garcom` (`id_garcom`),
  ADD KEY `id_mesa` (`id_mesa`);

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`id_conta`),
  ADD KEY `id_mesa` (`id_mesa`);

--
-- Índices para tabela `garcom`
--
ALTER TABLE `garcom`
  ADD PRIMARY KEY (`id_garcom`);

--
-- Índices para tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices para tabela `itensconta`
--
ALTER TABLE `itensconta`
  ADD PRIMARY KEY (`id_itensconta`),
  ADD KEY `id_conta` (`id_conta`),
  ADD KEY `id_item` (`id_item`);

--
-- Índices para tabela `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`),
  ADD KEY `id_area` (`id_area`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arearestaurante`
--
ALTER TABLE `arearestaurante`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atende`
--
ALTER TABLE `atende`
  MODIFY `id_atendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `id_conta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `garcom`
--
ALTER TABLE `garcom`
  MODIFY `id_garcom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `itensconta`
--
ALTER TABLE `itensconta`
  MODIFY `id_itensconta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atende`
--
ALTER TABLE `atende`
  ADD CONSTRAINT `atende_ibfk_1` FOREIGN KEY (`id_garcom`) REFERENCES `garcom` (`id_garcom`),
  ADD CONSTRAINT `atende_ibfk_2` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`);

--
-- Limitadores para a tabela `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `conta_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id_mesa`);

--
-- Limitadores para a tabela `itensconta`
--
ALTER TABLE `itensconta`
  ADD CONSTRAINT `itensconta_ibfk_1` FOREIGN KEY (`id_conta`) REFERENCES `conta` (`id_conta`),
  ADD CONSTRAINT `itensconta_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);

--
-- Limitadores para a tabela `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `arearestaurante` (`id_area`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
