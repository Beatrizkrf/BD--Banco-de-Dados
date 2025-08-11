-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Ago-2025 às 13:24
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
-- Banco de dados: `lava_rapido1`
--
CREATE DATABASE IF NOT EXISTS `lava_rapido1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lava_rapido1`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `id_atendimento` int(11) NOT NULL,
  `data_atendimento` date NOT NULL,
  `id_carro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`id_atendimento`, `data_atendimento`, `id_carro`) VALUES
(1, '2025-08-01', 1),
(2, '2025-08-02', 2),
(3, '2025-08-03', 3),
(4, '2025-08-04', 4),
(5, '2025-08-05', 5),
(6, '2025-08-06', 6),
(7, '2025-08-07', 7),
(8, '2025-08-08', 8),
(9, '2025-08-09', 9),
(10, '2025-08-10', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento_servico`
--

CREATE TABLE `atendimento_servico` (
  `id_atendimento` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`id_atendimento`, `id_servico`) VALUES
(1, 1),
(1, 4),
(2, 2),
(3, 3),
(4, 1),
(5, 6),
(6, 5),
(7, 7),
(8, 2),
(9, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

CREATE TABLE `carro` (
  `id_carro` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `ano` year(4) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`id_carro`, `placa`, `cor`, `ano`, `id_modelo`, `id_cliente`) VALUES
(1, 'ABC1A23', 'Prata', '2015', 1, 1),
(2, 'BCD2B34', 'Preto', '2018', 2, 2),
(3, 'CDE3C45', 'Branco', '2012', 3, 3),
(4, 'DEF4D56', 'Cinza', '2020', 4, 4),
(5, 'EFG5E67', 'Azul', '2017', 5, 5),
(6, 'FGH6F78', 'Vermelho', '2014', 6, 6),
(7, 'GHI7G89', 'Verde', '2019', 7, 7),
(8, 'HIJ8H90', 'Amarelo', '2013', 8, 8),
(9, 'IJK9I01', 'Preto', '2021', 9, 9),
(10, 'JKL0J12', 'Branco', '2016', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id_endereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `telefone`, `email`, `id_endereco`) VALUES
(1, 'Carlos Silva', '11999990001', 'carlos@email.com', 1),
(2, 'Maria Oliveira', '11999990002', 'maria@email.com', 2),
(3, 'João Pereira', '11999990003', 'joao@email.com', 3),
(4, 'Ana Costa', '11999990004', 'ana@email.com', 4),
(5, 'Pedro Almeida', '11999990005', 'pedro@email.com', 5),
(6, 'Fernanda Lima', '11999990006', 'fernanda@email.com', 6),
(7, 'Ricardo Souza', '11999990007', 'ricardo@email.com', 7),
(8, 'Juliana Santos', '11999990008', 'juliana@email.com', 8),
(9, 'Lucas Fernandes', '11999990009', 'lucas@email.com', 9),
(10, 'Patrícia Gomes', '11999990010', 'patricia@email.com', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `cep` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua das Flores', '101', 'Centro', 'Ribeirão Pires', 'SP', '09400-000'),
(2, 'Av. Brasil', '200', 'Jardim Bela Vista', 'Santo André', 'SP', '09000-000'),
(3, 'Rua das Palmeiras', '55', 'Vila Aurora', 'Mauá', 'SP', '09300-000'),
(4, 'Rua XV de Novembro', '321', 'Centro', 'São Bernardo', 'SP', '09700-000'),
(5, 'Rua São João', '12', 'Vila Luzita', 'Santo André', 'SP', '09200-000'),
(6, 'Rua do Sol', '99', 'Jardim', 'Diadema', 'SP', '09900-000'),
(7, 'Av. Paulista', '1500', 'Bela Vista', 'São Paulo', 'SP', '01310-000'),
(8, 'Rua Paraná', '42', 'Centro', 'Campinas', 'SP', '13000-000'),
(9, 'Rua das Margaridas', '77', 'Jardim Primavera', 'Ribeirão Pires', 'SP', '09410-000'),
(10, 'Rua Rio Branco', '500', 'Centro', 'Santo André', 'SP', '09010-000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`id_marca`, `nome`) VALUES
(1, 'Volkswagen'),
(2, 'Chevrolet'),
(3, 'Fiat'),
(4, 'Toyota'),
(5, 'Honda'),
(6, 'Ford'),
(7, 'Renault'),
(8, 'Hyundai'),
(9, 'Peugeot'),
(10, 'Nissan');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `id_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `nome`, `id_marca`) VALUES
(1, 'Gol', 1),
(2, 'Onix', 2),
(3, 'Uno', 3),
(4, 'Corolla', 4),
(5, 'Civic', 5),
(6, 'Ka', 6),
(7, 'Sandero', 7),
(8, 'HB20', 8),
(9, '208', 9),
(10, 'Versa', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`id_servico`, `descricao`, `valor`) VALUES
(1, 'Lavagem simples', 30.00),
(2, 'Lavagem completa', 50.00),
(3, 'Polimento', 80.00),
(4, 'Higienização interna', 70.00),
(5, 'Cristalização de pintura', 120.00),
(6, 'Lavagem de motor', 60.00),
(7, 'Enceramento', 90.00),
(8, 'Vitrificação', 200.00),
(9, 'Aspiração', 25.00),
(10, 'Lavagem premium', 150.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`id_atendimento`),
  ADD KEY `id_carro` (`id_carro`);

--
-- Índices para tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD PRIMARY KEY (`id_atendimento`,`id_servico`),
  ADD KEY `id_servico` (`id_servico`);

--
-- Índices para tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id_carro`),
  ADD UNIQUE KEY `placa` (`placa`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_endereco` (`id_endereco`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`);

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_modelo`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id_servico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `id_atendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `id_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id_carro`);

--
-- Limitadores para a tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD CONSTRAINT `atendimento_servico_ibfk_1` FOREIGN KEY (`id_atendimento`) REFERENCES `atendimento` (`id_atendimento`),
  ADD CONSTRAINT `atendimento_servico_ibfk_2` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`);

--
-- Limitadores para a tabela `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id_modelo`),
  ADD CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`);

--
-- Limitadores para a tabela `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
