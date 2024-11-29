-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29/11/2024 às 20:28
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `EduPlus`
--
CREATE DATABASE IF NOT EXISTS `EduPlus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `EduPlus`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `matricula` varchar(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL CHECK (`email` like '%@_%'),
  `sexo` enum('M','F') NOT NULL,
  `nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursoAlunos`
--

CREATE TABLE `cursoAlunos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(10) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursoModulos`
--

CREATE TABLE `cursoModulos` (
  `id` int(11) NOT NULL,
  `idModulo` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `idCurso` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` text DEFAULT NULL,
  `cargaHoraria` int(11) NOT NULL,
  `qtdModulos` int(11) NOT NULL,
  `dataLancamento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `infoAlunos`
--

CREATE TABLE `infoAlunos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(10) NOT NULL,
  `idModulo` int(11) NOT NULL,
  `nota1` float(4,2) DEFAULT NULL,
  `nota2` float(4,2) DEFAULT NULL,
  `nota3` float(4,2) DEFAULT NULL,
  `frequencia` float(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `instrutor`
--

CREATE TABLE `instrutor` (
  `matricula` varchar(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL CHECK (`email` like '%@_%'),
  `nascimento` date NOT NULL,
  `ingresso` date NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `biografia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `modulo`
--

CREATE TABLE `modulo` (
  `idModulo` int(11) NOT NULL,
  `nomeModulo` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `idInstrutor` varchar(10) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices de tabela `cursoAlunos`
--
ALTER TABLE `cursoAlunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matricula` (`matricula`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Índices de tabela `cursoModulos`
--
ALTER TABLE `cursoModulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idModulo` (`idModulo`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idCurso`);

--
-- Índices de tabela `infoAlunos`
--
ALTER TABLE `infoAlunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matricula` (`matricula`),
  ADD KEY `idModulo` (`idModulo`);

--
-- Índices de tabela `instrutor`
--
ALTER TABLE `instrutor`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices de tabela `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idModulo`),
  ADD KEY `idInstrutor` (`idInstrutor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `infoAlunos`
--
ALTER TABLE `infoAlunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idModulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cursoAlunos`
--
ALTER TABLE `cursoAlunos`
  ADD CONSTRAINT `cursoAlunos_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `alunos` (`matricula`),
  ADD CONSTRAINT `cursoAlunos_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`);

--
-- Restrições para tabelas `cursoModulos`
--
ALTER TABLE `cursoModulos`
  ADD CONSTRAINT `cursoModulos_ibfk_1` FOREIGN KEY (`idModulo`) REFERENCES `modulo` (`idModulo`),
  ADD CONSTRAINT `cursoModulos_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`);

--
-- Restrições para tabelas `infoAlunos`
--
ALTER TABLE `infoAlunos`
  ADD CONSTRAINT `infoAlunos_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `alunos` (`matricula`),
  ADD CONSTRAINT `infoAlunos_ibfk_2` FOREIGN KEY (`idModulo`) REFERENCES `modulo` (`idModulo`);

--
-- Restrições para tabelas `modulo`
--
ALTER TABLE `modulo`
  ADD CONSTRAINT `modulo_ibfk_1` FOREIGN KEY (`idInstrutor`) REFERENCES `instrutor` (`matricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
