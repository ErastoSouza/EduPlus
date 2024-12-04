-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 04/12/2024 às 17:07
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
  `email` varchar(50) NOT NULL CHECK (`email` like '%_@%.com'),
  `sexo` enum('M','F') NOT NULL,
  `nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`matricula`, `nome`, `email`, `sexo`, `nascimento`) VALUES
('A10001', 'Lucas Almeida', 'lucas.almeida@example.com', 'M', '2000-05-15'),
('A10002', 'Beatriz Silva', 'beatriz.silva@example.com', 'F', '1999-03-22'),
('A10003', 'Pedro Santos', 'pedro.santos@example.com', 'M', '2001-10-30'),
('A10004', 'Julia Oliveira', 'julia.oliveira@example.com', 'F', '2002-07-12'),
('A10005', 'Carlos Eduardo', 'carlos.eduardo@example.com', 'M', '1998-11-05'),
('A10006', 'Fernanda Costa', 'fernanda.costa@example.com', 'F', '2000-08-09'),
('A10007', 'Ricardo Souza', 'ricardo.souza@example.com', 'M', '2001-02-14'),
('A10008', 'Mariana Lima', 'mariana.lima@example.com', 'F', '1999-06-25'),
('A10009', 'Gabriel Fonseca', 'gabriel.fonseca@example.com', 'M', '2000-09-13'),
('A10010', 'Isabela Ribeiro', 'isabela.ribeiro@example.com', 'F', '2002-03-05'),
('A10011', 'Thiago Rocha', 'thiago.rocha@example.com', 'M', '1998-12-20'),
('A10012', 'Sofia Fernandes', 'sofia.fernandes@example.com', 'F', '2001-04-28'),
('A10013', 'Vinicius Carvalho', 'vinicius.carvalho@example.com', 'M', '1997-01-18'),
('A10014', 'Larissa Martins', 'larissa.martins@example.com', 'F', '2003-10-03'),
('A10015', 'Rafael Mendes', 'rafael.mendes@example.com', 'M', '2000-11-27'),
('A10016', 'Camila Duarte', 'camila.duarte@example.com', 'F', '2001-07-17'),
('A10017', 'Daniel Moraes', 'daniel.moraes@example.com', 'M', '1999-02-08'),
('A10018', 'Ana Clara Teixeira', 'ana.clara.teixeira@example.com', 'F', '2002-12-21'),
('A10019', 'Felipe Barbosa', 'felipe.barbosa@example.com', 'M', '2001-09-10'),
('A10020', 'Luana Nunes', 'luana.nunes@example.com', 'F', '2000-05-02'),
('A10021', 'Joesley Joestar', 'jojobr@yahoo.com', 'M', '1985-01-01'),
('A10022', 'Yumeko Jabami', 'yumeko.jabami@email.com', 'F', '2002-03-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursoAlunos`
--

CREATE TABLE `cursoAlunos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(10) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursoAlunos`
--

INSERT INTO `cursoAlunos` (`id`, `matricula`, `idCurso`) VALUES
(17, 'A10001', 1),
(18, 'A10002', 1),
(19, 'A10003', 1),
(20, 'A10004', 1),
(21, 'A10005', 1),
(22, 'A10006', 1),
(23, 'A10007', 1),
(24, 'A10021', 1),
(25, 'A10005', 2),
(26, 'A10019', 2),
(27, 'A10021', 2),
(28, 'A10022', 2),
(29, 'A10008', 3),
(30, 'A10009', 3),
(31, 'A10010', 3),
(32, 'A10011', 3),
(33, 'A10012', 3),
(34, 'A10013', 3),
(35, 'A10021', 3),
(36, 'A10022', 3),
(37, 'A10008', 3),
(38, 'A10009', 3),
(39, 'A10010', 3),
(40, 'A10011', 3),
(41, 'A10012', 3),
(42, 'A10013', 3),
(43, 'A10021', 3),
(44, 'A10022', 3),
(45, 'A10014', 4),
(46, 'A10015', 4),
(47, 'A10016', 4),
(48, 'A10021', 4),
(49, 'A10022', 4),
(50, 'A10017', 5),
(51, 'A10018', 5),
(52, 'A10019', 5),
(53, 'A10020', 5),
(54, 'A10021', 5),
(55, 'A10022', 5),
(56, 'A10021', 6),
(57, 'A10021', 6),
(58, 'A10021', 7),
(59, 'A10022', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursoModulos`
--

CREATE TABLE `cursoModulos` (
  `id` int(11) NOT NULL,
  `idModulo` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursoModulos`
--

INSERT INTO `cursoModulos` (`id`, `idModulo`, `idCurso`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(19, 7, 2),
(20, 8, 2),
(21, 9, 2),
(22, 10, 2),
(23, 11, 2),
(24, 12, 3),
(25, 13, 3),
(26, 14, 3),
(27, 15, 3),
(28, 16, 3),
(29, 17, 4),
(30, 18, 4),
(31, 19, 4),
(32, 20, 4),
(33, 21, 5),
(34, 22, 5),
(35, 23, 5),
(36, 24, 5),
(37, 25, 5),
(38, 26, 5),
(39, 27, 6),
(40, 28, 6),
(41, 29, 7),
(42, 30, 7);

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
  `dataLancamento` date NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `instrutorResponsavel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idCurso`, `nome`, `descricao`, `cargaHoraria`, `qtdModulos`, `dataLancamento`, `ativo`, `instrutorResponsavel`) VALUES
(1, 'Programação em Linguagem C', 'Curso completo sobre os fundamentos da linguagem C, incluindo controle de fluxo, funções e manipulação de memória.', 60, 10, '2023-05-10', 1, 'A12345'),
(2, 'League of Legends', 'Como jogar lol sem ferir os direitos humanos', 40, 5, '2024-11-30', 1, 'C11223'),
(3, 'Python Descomplicado: Do Básico ao Avançado', 'Nesse curso você vai aprender desde os conceitos mais simples até os mais avançados de Python.', 50, 5, '2021-08-05', 0, 'D44556'),
(4, 'Curso básico de MySQL', 'Com este curso, vamos aprender a utilizar um dos principais banco de dados do mercado: o mysql.', 32, 4, '2022-02-28', 0, 'F23456'),
(5, 'Curso de C#', 'Aprenda a fazer programa com o C#', 36, 6, '2020-04-15', 0, 'E78901'),
(6, 'Curso básico de git', 'Aprenda o necessário para utilizar o gite tirar proveito dessa incrivel ferramenta.', 12, 2, '2024-10-01', 0, 'A12345'),
(7, 'Algoritmos em pseudolinguagem', 'Aprenda algoritmos em portugol', 20, 2, '2022-07-30', 0, 'F23456');

-- --------------------------------------------------------

--
-- Estrutura para tabela `infoAlunos`
--

CREATE TABLE `infoAlunos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(10) NOT NULL,
  `idModulo` int(11) NOT NULL,
  `nota1` float(4,2) DEFAULT NULL,
  `nota2` float(4,2) DEFAULT NULL CHECK (`nota2` between 0 and 10),
  `nota3` float(4,2) DEFAULT NULL CHECK (`nota3` between 0 and 10),
  `frequencia` float(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `infoAlunos`
--

INSERT INTO `infoAlunos` (`id`, `matricula`, `idModulo`, `nota1`, `nota2`, `nota3`, `frequencia`) VALUES
(1, 'A10001', 1, 9.00, 9.50, 10.00, 95.00),
(2, 'A10001', 2, 8.00, 9.50, 9.00, 98.00),
(3, 'A10001', 3, 9.00, 9.00, 9.00, 89.00),
(4, 'A10001', 4, NULL, NULL, NULL, NULL),
(5, 'A10001', 5, NULL, NULL, NULL, NULL),
(6, 'A10001', 6, NULL, NULL, NULL, NULL),
(7, 'A10002', 1, 8.50, 9.20, 10.00, 93.00),
(8, 'A10002', 2, 9.10, 8.70, 9.30, 94.00),
(9, 'A10002', 3, 8.80, 9.50, 9.00, 90.00),
(10, 'A10002', 4, NULL, NULL, NULL, NULL),
(11, 'A10002', 5, NULL, NULL, NULL, NULL),
(12, 'A10002', 6, NULL, NULL, NULL, NULL),
(13, 'A10003', 1, 7.50, 8.30, 9.20, 88.00),
(14, 'A10003', 2, 8.20, 8.90, 8.70, 92.00),
(15, 'A10003', 3, 8.90, 8.50, 9.00, 90.00),
(16, 'A10003', 4, NULL, NULL, NULL, NULL),
(17, 'A10003', 5, NULL, NULL, NULL, NULL),
(18, 'A10003', 6, NULL, NULL, NULL, NULL),
(19, 'A10004', 1, 9.50, 9.00, 8.70, 96.00),
(20, 'A10004', 2, 8.70, 9.30, 8.50, 97.00),
(21, 'A10004', 3, 8.90, 9.20, 8.80, 95.00),
(22, 'A10004', 4, NULL, NULL, NULL, NULL),
(23, 'A10004', 5, NULL, NULL, NULL, NULL),
(24, 'A10004', 6, NULL, NULL, NULL, NULL),
(25, 'A10005', 1, 8.30, 9.10, 9.70, 89.00),
(26, 'A10005', 2, 9.00, 9.30, 8.80, 93.00),
(27, 'A10005', 3, 9.20, 8.70, 9.10, 91.00),
(28, 'A10005', 4, NULL, NULL, NULL, NULL),
(29, 'A10005', 5, NULL, NULL, NULL, NULL),
(30, 'A10005', 6, NULL, NULL, NULL, NULL),
(31, 'A10006', 1, 8.90, 9.00, 9.50, 96.00),
(32, 'A10006', 2, 9.20, 9.10, 9.30, 94.00),
(33, 'A10006', 3, 9.00, 8.70, 9.40, 97.00),
(34, 'A10006', 4, NULL, NULL, NULL, NULL),
(35, 'A10006', 5, NULL, NULL, NULL, NULL),
(36, 'A10006', 6, NULL, NULL, NULL, NULL),
(37, 'A10007', 1, 7.80, 8.50, 9.30, 90.00),
(38, 'A10007', 2, 8.70, 8.90, 9.10, 88.00),
(39, 'A10007', 3, 8.30, 9.00, 8.70, 89.00),
(40, 'A10007', 4, NULL, NULL, NULL, NULL),
(41, 'A10007', 5, NULL, NULL, NULL, NULL),
(42, 'A10007', 6, NULL, NULL, NULL, NULL),
(43, 'A10021', 1, 8.50, 9.10, 9.00, 85.00),
(44, 'A10021', 2, 9.00, 8.70, 8.90, 88.00),
(45, 'A10021', 3, 8.70, 9.20, 8.50, 86.00),
(46, 'A10021', 4, NULL, NULL, NULL, NULL),
(47, 'A10021', 5, NULL, NULL, NULL, NULL),
(48, 'A10021', 6, NULL, NULL, NULL, NULL),
(49, 'A10005', 7, 8.00, 8.00, 8.00, 79.00),
(50, 'A10005', 8, NULL, NULL, NULL, NULL),
(51, 'A10005', 9, NULL, NULL, NULL, NULL),
(52, 'A10005', 10, NULL, NULL, NULL, NULL),
(53, 'A10005', 11, NULL, NULL, NULL, NULL),
(54, 'A10019', 7, 8.50, 9.00, 9.20, 92.00),
(55, 'A10019', 8, NULL, NULL, NULL, NULL),
(56, 'A10019', 9, NULL, NULL, NULL, NULL),
(57, 'A10019', 10, NULL, NULL, NULL, NULL),
(58, 'A10019', 11, NULL, NULL, NULL, NULL),
(59, 'A10021', 7, 9.00, 9.10, 8.70, 91.00),
(60, 'A10021', 8, NULL, NULL, NULL, NULL),
(61, 'A10021', 9, NULL, NULL, NULL, NULL),
(62, 'A10021', 10, NULL, NULL, NULL, NULL),
(63, 'A10021', 11, NULL, NULL, NULL, NULL),
(64, 'A10022', 7, 8.70, 9.20, 9.00, 90.00),
(65, 'A10022', 8, NULL, NULL, NULL, NULL),
(66, 'A10022', 9, NULL, NULL, NULL, NULL),
(67, 'A10022', 10, NULL, NULL, NULL, NULL),
(68, 'A10022', 11, NULL, NULL, NULL, NULL),
(69, 'A10008', 12, 9.00, 9.00, 9.00, 90.00),
(70, 'A10008', 13, 8.00, 7.00, 9.00, 91.00),
(71, 'A10008', 14, 8.80, 9.90, 10.00, 96.00),
(72, 'A10008', 15, 7.00, 7.00, 7.00, 89.00),
(73, 'A10008', 16, 7.60, 8.00, 8.00, 90.00),
(74, 'A10009', 12, 8.00, 8.50, 9.00, 92.00),
(75, 'A10009', 13, 7.50, 8.00, 7.80, 90.00),
(76, 'A10009', 14, 9.20, 9.50, 8.70, 95.00),
(77, 'A10009', 15, 7.00, 6.80, 7.50, 89.00),
(78, 'A10009', 16, 8.10, 8.40, 8.00, 91.00),
(79, 'A10010', 12, 9.00, 9.00, 9.00, 95.00),
(80, 'A10010', 13, 8.00, 7.00, 9.50, 90.00),
(81, 'A10010', 14, 7.50, 9.00, 10.00, 92.00),
(82, 'A10010', 15, 7.00, 6.90, 7.50, 89.00),
(83, 'A10010', 16, 8.00, 8.00, 8.50, 90.00),
(84, 'A10011', 12, 8.50, 9.00, 9.50, 93.00),
(85, 'A10011', 13, 8.30, 8.70, 9.00, 92.00),
(86, 'A10011', 14, 9.00, 9.50, 10.00, 96.00),
(87, 'A10011', 15, 7.10, 6.80, 7.40, 89.00),
(88, 'A10011', 16, 8.70, 9.00, 8.80, 90.00),
(89, 'A10012', 12, 7.80, 8.20, 9.00, 91.00),
(90, 'A10012', 13, 7.50, 7.90, 8.30, 90.00),
(91, 'A10012', 14, 9.00, 9.10, 10.00, 94.00),
(92, 'A10012', 15, 6.90, 7.00, 7.10, 88.00),
(93, 'A10012', 16, 8.00, 8.50, 8.40, 92.00),
(94, 'A10013', 12, 8.90, 9.30, 9.70, 94.00),
(95, 'A10013', 13, 8.50, 9.00, 9.10, 92.00),
(96, 'A10013', 14, 9.80, 9.90, 10.00, 98.00),
(97, 'A10013', 15, 7.00, 7.20, 7.30, 88.00),
(98, 'A10013', 16, 8.90, 9.00, 8.50, 91.00),
(99, 'A10021', 12, 8.00, 8.40, 8.70, 90.00),
(100, 'A10021', 13, 7.90, 8.10, 8.30, 91.00),
(101, 'A10021', 14, 9.00, 9.50, 9.80, 94.00),
(102, 'A10021', 15, 6.80, 7.10, 7.30, 89.00),
(103, 'A10021', 16, 8.20, 8.50, 8.70, 93.00),
(104, 'A10022', 12, 9.50, 9.70, 9.80, 95.00),
(105, 'A10022', 13, 9.00, 9.20, 9.30, 92.00),
(106, 'A10022', 14, 10.00, 10.00, 10.00, 98.00),
(107, 'A10022', 15, 7.00, 7.30, 7.40, 89.00),
(108, 'A10022', 16, 9.00, 9.30, 9.20, 94.00),
(109, 'A10014', 17, 8.00, 9.00, 9.00, 99.00),
(110, 'A10014', 18, 9.00, 10.00, 10.00, 95.00),
(111, 'A10014', 19, 9.00, 9.00, 9.00, 89.00),
(112, 'A10014', 20, 6.00, 7.00, 6.00, 90.00),
(113, 'A10015', 17, 7.50, 8.00, 8.20, 92.00),
(114, 'A10015', 18, 8.50, 9.10, 9.00, 94.00),
(115, 'A10015', 19, 8.00, 8.20, 8.30, 90.00),
(116, 'A10015', 20, 7.10, 7.50, 7.20, 91.00),
(117, 'A10016', 17, 8.50, 9.00, 9.30, 95.00),
(118, 'A10016', 18, 9.00, 9.50, 10.00, 96.00),
(119, 'A10016', 19, 8.90, 9.20, 9.50, 93.00),
(120, 'A10016', 20, 7.80, 8.20, 8.10, 92.00),
(121, 'A10021', 17, 8.00, 8.50, 8.30, 90.00),
(122, 'A10021', 18, 8.90, 9.00, 9.10, 91.00),
(123, 'A10021', 19, 9.20, 9.30, 9.40, 95.00),
(124, 'A10021', 20, 7.50, 7.70, 7.80, 93.00),
(125, 'A10022', 17, 9.00, 9.50, 9.80, 94.00),
(126, 'A10022', 18, 9.80, 9.90, 10.00, 97.00),
(127, 'A10022', 19, 9.50, 9.30, 9.70, 96.00),
(128, 'A10022', 20, 8.20, 8.50, 8.40, 92.00),
(129, 'A10017', 17, 8.00, 9.00, 9.00, 99.00),
(130, 'A10017', 18, 9.00, 10.00, 10.00, 95.00),
(131, 'A10017', 19, 9.00, 9.00, 9.00, 89.00),
(132, 'A10017', 20, 6.00, 7.00, 6.00, 90.00),
(133, 'A10018', 17, 8.50, 9.10, 8.90, 92.00),
(134, 'A10018', 18, 9.00, 9.50, 9.30, 94.00),
(135, 'A10018', 19, 8.70, 8.90, 8.50, 91.00),
(136, 'A10018', 20, 7.50, 8.00, 7.80, 90.00),
(137, 'A10019', 17, 8.30, 8.70, 8.50, 93.00),
(138, 'A10019', 18, 9.20, 9.50, 9.30, 96.00),
(139, 'A10019', 19, 8.60, 8.80, 8.70, 94.00),
(140, 'A10019', 20, 7.80, 8.00, 7.90, 91.00),
(141, 'A10020', 17, 8.80, 9.00, 9.10, 94.00),
(142, 'A10020', 18, 9.30, 9.40, 9.50, 95.00),
(143, 'A10020', 19, 8.90, 9.00, 9.20, 92.00),
(144, 'A10020', 20, 7.60, 7.80, 7.50, 90.00),
(145, 'A10021', 17, 9.00, 9.50, 9.80, 96.00),
(146, 'A10021', 18, 9.60, 9.70, 9.80, 97.00),
(147, 'A10021', 19, 9.40, 9.50, 9.60, 95.00),
(148, 'A10021', 20, 8.20, 8.40, 8.30, 92.00),
(149, 'A10022', 17, 8.90, 9.10, 9.00, 93.00),
(150, 'A10022', 18, 9.50, 9.60, 9.70, 94.00),
(151, 'A10022', 19, 9.30, 9.40, 9.20, 95.00),
(152, 'A10022', 20, 7.80, 8.00, 7.90, 90.00),
(153, 'A10021', 27, 9.00, 8.00, 10.00, 90.00),
(154, 'A10021', 28, 10.00, 8.00, 10.00, 100.00),
(155, 'A10022', 27, 9.00, 8.00, 7.00, 99.00),
(156, 'A10022', 28, 9.00, 8.00, 10.00, 89.00),
(157, 'A10021', 29, 8.00, 9.00, 8.00, 90.00),
(158, 'A10021', 30, 7.00, 9.00, 8.00, 89.00),
(159, 'A10022', 29, 8.00, 7.00, 7.00, 99.00),
(160, 'A10022', 30, 7.00, 9.00, 8.00, 89.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `instrutores`
--

CREATE TABLE `instrutores` (
  `matricula` varchar(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL CHECK (`email` like '%_@%.com'),
  `nascimento` date NOT NULL,
  `ingresso` date NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `biografia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `instrutores`
--

INSERT INTO `instrutores` (`matricula`, `nome`, `email`, `nascimento`, `ingresso`, `sexo`, `biografia`) VALUES
('A12345', 'João Silva', 'joao.silva@example.com', '1985-06-15', '2020-01-10', 'M', 'Instrutor com mais de 10 anos de experiência em desenvolvimento de software.'),
('B67890', 'Maria Oliveira', 'maria.oliveira@example.com', '1990-03-22', '2018-08-01', 'F', 'Especialista em programação competitiva e autora de artigos acadêmicos na área.'),
('C11223', 'Carlos Santos', 'carlos.santos@example.com', '1987-11-03', '2021-06-15', 'M', 'Engenheiro de software apaixonado por ensinar e aprender novas tecnologias.'),
('D44556', 'Ana Costa', 'ana.costa@example.com', '1995-09-12', '2019-03-20', 'F', 'Instrutora com foco em linguagens de programação modernas e metodologias ágeis.'),
('E78901', 'Roberto Lima', 'roberto.lima@example.com', '1980-01-25', '2022-01-15', 'M', 'Consultor técnico com vasta experiência em soluções corporativas.'),
('F23456', 'Fernanda Souza', 'fernanda.souza@example.com', '1992-05-30', '2020-11-05', 'F', 'Especialista em inteligência artificial e ciência de dados.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modulos`
--

CREATE TABLE `modulos` (
  `idModulo` int(11) NOT NULL,
  `nomeModulo` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `idInstrutor` varchar(10) NOT NULL,
  `ativo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modulos`
--

INSERT INTO `modulos` (`idModulo`, `nomeModulo`, `descricao`, `idInstrutor`, `ativo`) VALUES
(1, 'Fundamentos da Linguagem C', 'Introdução à linguagem C, instalação de ferramentas (compilador e IDE), estrutura básica de um programa em C, e primeiros passos com entrada e saída de dados.', 'A12345', 0),
(2, 'Estruturas de Controle', 'Exploração das estruturas de controle de fluxo, como condicionais (if, else, switch) e loops (for, while, do-while). Exemplos práticos para reforçar conceitos.', 'A12345', 0),
(3, 'Funções e Modularização', 'Entendimento do conceito de funções, escopo de variáveis, passagem de argumentos, retorno de valores e boas práticas de modularização de código.', 'A12345', 0),
(4, 'Manipulação de Dados e Estruturas', 'Introdução aos arrays (unidimensionais e multidimensionais), strings, e ponteiros. Primeiros passos na manipulação de dados em memória.', 'A12345', 1),
(5, 'Estruturas Avançadas e Arquivos', 'Uso de structs para criação de tipos personalizados, manipulação de arquivos para leitura e gravação de dados, e noções básicas de alocação dinâmica de memória.', 'F23456', 1),
(6, 'Projeto Final e Boas Práticas', 'Aplicação dos conhecimentos adquiridos em um projeto prático. Introdução às boas práticas de programação, organização de código e depuração.', 'F23456', 1),
(7, 'Como farmar', 'Aprenda a pegar ouro dos minions', 'C11223', 0),
(8, 'Controle de wave', 'Aprenda a controlar wave', 'C11223', 1),
(9, 'Como wardar', 'Aprenda a não ficar no escuro', 'B67890', 1),
(10, 'Trabalho em equipe', 'Como lidar com animais', 'B67890', 1),
(11, 'Microgame', 'Aprenda a acertar a habilidade', 'C11223', 1),
(12, 'Fundamentos de Python', 'Conceitos básicos de python, como variávies, tipos de dados, operadores e estruturas de controle.', 'A12345', 0),
(13, 'Manipulação de Dados e Funções', 'Aqui, você mergulhará no uso de listas, dicionários, conjuntos e tuplas, aprendendo a organizar e manipular dados. Também explorará funções personalizadas, parâmetros e o poder da recursão.', 'A12345', 0),
(14, 'Trabalhando com Arquivos e Bibliotecas', 'Este módulo ensina como trabalhar com arquivos (ler, escrever e manipular), além de introduzir bibliotecas fundamentais como os e datetime.', 'D44556', 0),
(15, 'Orientação a Objetos em Python', 'Com foco no paradigma de Orientação a Objetos, você aprenderá a criar classes, métodos e objetos.', 'D44556', 0),
(16, 'Automação, Web e Aplicações Reais', 'Você explorará como usar Python para automação de tarefas, como web scraping com BeautifulSoup e automação de planilhas com openpyxl.', 'D44556', 0),
(17, 'Introdução e Fundamentos do SQL', 'Este módulo apresenta os conceitos básicos de bancos de dados relacionais e o papel do SQL.', 'F23456', 0),
(18, 'Consultas Avançadas e Manipulação de Dados', 'Explore funções agregadas como SUM, AVG, COUNT e técnicas para agrupar dados com GROUP BY e HAVING.', 'F23456', 0),
(19, 'Design de Banco de Dados e Otimização', 'Neste módulo, você aprenderá boas práticas de design de banco de dados, incluindo normalização e criação de índices para melhorar o desempenho.', 'F23456', 0),
(20, 'Administração de Banco de Dados e Segurança', 'Descubra como gerenciar usuários, configurar permissões e implementar práticas de segurança para proteger seu banco de dados.', 'F23456', 0),
(21, 'Fundamentos da Linguagem C#', 'Introdução ao C# e à plataforma .NET. Instalação do Visual Studio, estrutura de um programa C#, tipos de dados, variáveis e operações básicas.', 'E78901', 0),
(22, 'Estruturas de Controle e Coleções', 'Uso de condicionais (if, else, switch) e loops (for, while, foreach). Introdução às coleções como arrays, listas e dicionários, com foco em manipulação de dados.', 'E78901', 0),
(23, 'Programação Orientada a Objetos (POO)', 'Fundamentos de POO: classes, objetos, herança, encapsulamento e polimorfismo. Criação de projetos utilizando os pilares da orientação a objetos.', 'A12345', 0),
(24, 'Manipulação de Dados e Exceções', 'Leitura e gravação de arquivos, uso de streams, e tratamento de erros com try, catch, e finally. Boas práticas na manipulação de dados e gerenciamento de exceções.', 'A12345', 0),
(25, 'Interfaces, Delegates e Eventos', 'Compreensão de interfaces, criação e uso de delegates, e implementação de eventos. Aplicações práticas no desenvolvimento de sistemas baseados em eventos.', 'E78901', 0),
(26, 'Projeto Final e Aplicações Práticas', 'Desenvolvimento de um projeto integrador para aplicar os conceitos aprendidos. Introdução a tópicos avançados, como integração com bancos de dados ou construção de aplicações simples usando Windows Forms ou WPF.', 'E78901', 0),
(27, 'Introdução ao Git e Controle de Versão', 'Neste módulo, os alunos aprenderão os conceitos fundamentais do Git e como ele se integra ao fluxo de trabalho de controle de versão.', 'A12345', 0),
(28, 'Git Avançado e Fluxos de Trabalho Colaborativos', 'Este módulo é voltado para usuários que já têm experiência básica com Git e desejam aprimorar suas habilidades.', 'A12345', 0),
(29, 'Introdução ao VisialG', 'Aprendendo uma ótima ferramenta para aprender portugol', 'F23456', 0),
(30, 'Conceitos de algoritmos', 'Apredendendo algoritmos em portugol', 'F23456', 0);

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
  ADD PRIMARY KEY (`idCurso`),
  ADD KEY `instrutorResponsavel` (`instrutorResponsavel`);

--
-- Índices de tabela `infoAlunos`
--
ALTER TABLE `infoAlunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matricula` (`matricula`),
  ADD KEY `idModulo` (`idModulo`);

--
-- Índices de tabela `instrutores`
--
ALTER TABLE `instrutores`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices de tabela `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`idModulo`),
  ADD KEY `idInstrutor` (`idInstrutor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cursoAlunos`
--
ALTER TABLE `cursoAlunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `cursoModulos`
--
ALTER TABLE `cursoModulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `infoAlunos`
--
ALTER TABLE `infoAlunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de tabela `modulos`
--
ALTER TABLE `modulos`
  MODIFY `idModulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  ADD CONSTRAINT `cursoModulos_ibfk_1` FOREIGN KEY (`idModulo`) REFERENCES `modulos` (`idModulo`),
  ADD CONSTRAINT `cursoModulos_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`);

--
-- Restrições para tabelas `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`instrutorResponsavel`) REFERENCES `instrutores` (`matricula`);

--
-- Restrições para tabelas `infoAlunos`
--
ALTER TABLE `infoAlunos`
  ADD CONSTRAINT `infoAlunos_ibfk_1` FOREIGN KEY (`matricula`) REFERENCES `alunos` (`matricula`),
  ADD CONSTRAINT `infoAlunos_ibfk_2` FOREIGN KEY (`idModulo`) REFERENCES `modulos` (`idModulo`);

--
-- Restrições para tabelas `modulos`
--
ALTER TABLE `modulos`
  ADD CONSTRAINT `modulo_ibfk_1` FOREIGN KEY (`idInstrutor`) REFERENCES `instrutores` (`matricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
