-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 04/12/2024 às 19:27
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
-- Banco de dados: `BD-Comercial`
--
CREATE DATABASE IF NOT EXISTS `BD-Comercial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `BD-Comercial`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comclien`
--

CREATE TABLE `comclien` (
  `n_numeclien` int(11) NOT NULL,
  `c_codiclien` varchar(10) DEFAULT NULL,
  `c_nomeclien` varchar(100) DEFAULT NULL,
  `c_razaclien` varchar(100) DEFAULT NULL,
  `d_dataclien` date DEFAULT NULL,
  `c_cnpjclien` varchar(20) DEFAULT NULL,
  `c_foneclien` varchar(20) DEFAULT NULL,
  `c_cidaclien` varchar(50) DEFAULT NULL,
  `c_estaclien` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comclien`
--

INSERT INTO `comclien` (`n_numeclien`, `c_codiclien`, `c_nomeclien`, `c_razaclien`, `d_dataclien`, `c_cnpjclien`, `c_foneclien`, `c_cidaclien`, `c_estaclien`) VALUES
(1, '0001', 'AARONSON FURNITURE', 'AARONSON FURNITURE LTDA', '2024-10-16', '17.807.928/0001-85', '(88) 98167-6584', 'CRATO', 'CE'),
(2, '0002', 'LITTLER ', 'LITTLER  LTDA', '2024-10-17', '55.643.605/0001-92', '(27) 7990-9502', 'SERRA', 'ES'),
(3, '0003', 'KELSEY  NEIGHBOURHOOD', 'KELSEY  NEIGHBOURHOOD', '2024-10-17', '05.202.361/0001-34', '(11) 4206-9703', 'BRAGANÇA PAULISTA', 'SP'),
(4, '0004', 'GREAT AMERICAN MUSIC', 'GREAT AMERICAN MUSIC', '2024-10-17', '11.880.735/0001-73', '(75) 7815-7801', 'SANTO ANTÔNIO DE JESUS', 'BA'),
(5, '0005', 'LIFE PLAN COUNSELLING', 'LIFE PLAN COUNSELLING', '2024-10-17', '75.185.467/0001-52', '(17) 4038-9355', 'BEBEDOURO', 'SP'),
(6, '0006', 'PRACTI-PLAN', 'PRACTI-PLAN LTDA', '2024-10-17', '32.518.106/0001-78', '(28) 2267-6159', 'CACHOEIRO DE ITAPEMIRI', 'ES'),
(7, '0007', 'SPORTSWEST', 'SPORTSWEST LTDA', '2024-10-17', '83.175.645/0001-92', '(61) 4094-7184', 'TAGUATINGA', 'DF'),
(8, '0008', 'HUGHES MARKETS', 'HUGHES MARKETS LTDA', '2024-10-17', '04.728.160/0001-02', '(21) 7984-9809', 'RIO DE JANEIRO', 'RJ'),
(9, '0009', 'AUTO WORKS', 'AUTO WORKS LTDA', '2024-10-17', '08.271.985/0001-00', '(21) 8548-5555', 'RIO DE JANEIRO', 'RJ'),
(10, '00010', 'DAHLKEMPER ', 'DAHLKEMPER  LTDA', '2024-10-17', '49.815.047/0001-00', '(11) 4519-7670', 'SÃO PAULO', 'SP');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comforne`
--

CREATE TABLE `comforne` (
  `n_numeforne` int(11) NOT NULL,
  `c_condiforne` varchar(10) DEFAULT NULL,
  `c_nomeforne` varchar(100) DEFAULT NULL,
  `c_razaforne` varchar(100) DEFAULT NULL,
  `c_foneforne` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comforne`
--

INSERT INTO `comforne` (`n_numeforne`, `c_condiforne`, `c_nomeforne`, `c_razaforne`, `c_foneforne`) VALUES
(1, '0001', 'DUN RITE LAWN MAINTENANCE', 'DUN RITE LAWN MAINTENANCE LTDA', '(85) 7886-8837'),
(2, '0002', 'SEWFRO FABRICS', 'SEWFRO FABRICS LTDA', '(91) 5171-8483');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comivenda`
--

CREATE TABLE `comivenda` (
  `n_numeivenda` int(11) NOT NULL,
  `n_numvenda` int(11) NOT NULL,
  `n_numeprodu` int(11) NOT NULL,
  `n_valorivenda` float DEFAULT NULL,
  `n_qtdeivenda` int(11) DEFAULT NULL,
  `n_descivenda` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comivenda`
--

INSERT INTO `comivenda` (`n_numeivenda`, `n_numvenda`, `n_numeprodu`, `n_valorivenda`, `n_qtdeivenda`, `n_descivenda`) VALUES
(1, 1, 1, 1251.29, 1, 0),
(2, 1, 2, 1242.21, 2, 0),
(3, 1, 3, 1241.21, 3, 0),
(4, 1, 4, 1513.77, 4, 0),
(5, 1, 5, 2325.32, 5, 0),
(6, 2, 1, 1251.29, 6, 0),
(7, 3, 3, 1241.21, 7, 0),
(8, 4, 1, 1251.29, 1, 0),
(9, 5, 3, 1241.21, 2, 0),
(10, 6, 1, 1251.29, 3, 0),
(11, 7, 2, 1242.21, 4, 0),
(12, 8, 5, 2325.32, 5, 0),
(13, 9, 2, 1242.21, 6, 0),
(14, 10, 3, 1241.21, 7, 0),
(15, 11, 1, 1251.29, 1, 0),
(16, 12, 1, 1251.29, 2, 0),
(17, 13, 2, 1242.21, 3, 0),
(18, 14, 2, 1242.21, 4, 0),
(19, 15, 3, 1241.21, 5, 0),
(20, 16, 3, 1241.21, 6, 0),
(21, 17, 4, 1513.77, 7, 0),
(22, 18, 4, 1513.77, 1, 0),
(23, 19, 5, 2325.32, 2, 0),
(24, 20, 5, 2325.32, 3, 0),
(25, 2, 2, 1242.21, 4, 0),
(26, 3, 4, 1513.77, 5, 0),
(27, 4, 2, 1242.21, 6, 0),
(28, 5, 4, 1513.77, 7, 0),
(29, 6, 5, 2325.32, 1, 0),
(30, 7, 3, 1241.21, 2, 0),
(31, 8, 1, 1251.29, 3, 0),
(32, 9, 4, 1513.77, 4, 0),
(33, 10, 5, 2325.32, 5, 0),
(34, 11, 2, 1242.21, 6, 0),
(35, 12, 2, 1242.21, 7, 0),
(36, 13, 3, 1241.21, 1, 0),
(37, 14, 3, 1241.21, 2, 0),
(38, 15, 4, 1513.77, 3, 0),
(39, 16, 4, 1513.77, 4, 0),
(40, 17, 5, 2325.32, 5, 0),
(41, 18, 5, 2325.32, 6, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `comprodu`
--

CREATE TABLE `comprodu` (
  `n_numeprodu` int(11) NOT NULL,
  `c_codiprodu` varchar(20) DEFAULT NULL,
  `c_descprodu` varchar(100) DEFAULT NULL,
  `n_valorprodu` float DEFAULT NULL,
  `c_situprodu` varchar(1) DEFAULT NULL,
  `n_numeforne` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comprodu`
--

INSERT INTO `comprodu` (`n_numeprodu`, `c_codiprodu`, `c_descprodu`, `n_valorprodu`, `c_situprodu`, `n_numeforne`) VALUES
(1, '123131', 'NOTEBOOK', 1251.29, 'A', 1),
(2, '123223', 'SMARTPHONE', 1242.21, 'A', 2),
(3, '1231', 'DESKTOP', 1241.21, 'A', 1),
(4, '142123', 'TELEVISÃO', 2564.92, 'A', 2),
(5, '7684', 'DRONE', 2325.32, 'A', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `comvenda`
--

CREATE TABLE `comvenda` (
  `n_numevenda` int(11) NOT NULL,
  `c_codivenda` varchar(10) DEFAULT NULL,
  `n_numeclien` int(11) NOT NULL,
  `n_numeforne` int(11) NOT NULL,
  `n_numevende` int(11) NOT NULL,
  `n_valovenda` float DEFAULT NULL,
  `n_descvenda` float DEFAULT NULL,
  `n_totavenda` float DEFAULT NULL,
  `d_datavenda` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comvenda`
--

INSERT INTO `comvenda` (`n_numevenda`, `c_codivenda`, `n_numeclien`, `n_numeforne`, `n_numevende`, `n_valovenda`, `n_descvenda`, `n_totavenda`, `d_datavenda`) VALUES
(1, '1', 1, 1, 1, 25141, 0, 25141, '2015-01-01'),
(2, '2', 2, 2, 2, 12476.6, 0, 12476.6, '2015-01-02'),
(3, '3', 3, 1, 1, 16257.3, 0, 16257.3, '2015-01-03'),
(4, '4', 4, 2, 2, 8704.55, 0, 8704.55, '2015-01-04'),
(5, '5', 5, 1, 1, 13078.8, 0, 13078.8, '2015-01-01'),
(6, '6', 6, 2, 2, 6079.19, 0, 6079.19, '2015-01-02'),
(7, '7', 7, 1, 1, 7451.26, 0, 7451.26, '2015-01-03'),
(8, '8', 8, 2, 2, 15380.5, 0, 15380.5, '2015-01-04'),
(9, '9', 9, 1, 1, 13508.3, 0, 13508.3, '2015-01-01'),
(10, '10', 1, 2, 2, 20315.1, 0, 20315.1, '2015-01-02'),
(11, '11', 1, 1, 1, 8704.55, 0, 8704.55, '2015-01-01'),
(12, '12', 2, 2, 2, 11198, 0, 11198, '2015-01-02'),
(13, '13', 3, 1, 1, 4967.84, 0, 4967.84, '2015-01-03'),
(14, '14', 3, 2, 2, 7451.26, 0, 7451.26, '2015-01-04'),
(15, '15', 5, 1, 1, 10747.4, 0, 10747.4, '2015-01-01'),
(16, '16', 6, 2, 2, 13502.3, 0, 13502.3, '2015-01-02'),
(17, '17', 7, 1, 1, 22223, 0, 22223, '2015-01-03'),
(18, '18', 8, 2, 2, 15465.7, 0, 15465.7, '2015-01-04'),
(19, '19', 9, 1, 1, 4650.64, 0, 4650.64, '2015-01-01'),
(20, '20', 9, 2, 2, 6975.96, 0, 6975.96, '2015-01-02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comvende`
--

CREATE TABLE `comvende` (
  `n_numevende` int(11) NOT NULL,
  `c_condivende` varchar(10) DEFAULT NULL,
  `c_nomevende` varchar(100) DEFAULT NULL,
  `c_razavende` varchar(100) DEFAULT NULL,
  `c_fonevende` varchar(20) DEFAULT NULL,
  `n_procvende` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comvende`
--

INSERT INTO `comvende` (`n_numevende`, `c_condivende`, `c_nomevende`, `c_razavende`, `c_fonevende`, `n_procvende`) VALUES
(1, '0001', 'CARLOS FERNANDES', 'CARLOS FERNANDES LTDA', '(47) 7535-8144', 12),
(2, '0002', 'JÚLIA	GOMES', 'JÚLIA GOMES LTDA', '(12) 8037-6661', 25);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `comclien`
--
ALTER TABLE `comclien`
  ADD PRIMARY KEY (`n_numeclien`);

--
-- Índices de tabela `comforne`
--
ALTER TABLE `comforne`
  ADD PRIMARY KEY (`n_numeforne`);

--
-- Índices de tabela `comivenda`
--
ALTER TABLE `comivenda`
  ADD PRIMARY KEY (`n_numeivenda`),
  ADD KEY `fk_comivenda_comprodu` (`n_numeprodu`),
  ADD KEY `fk_comivenda_comvenda` (`n_numvenda`);

--
-- Índices de tabela `comprodu`
--
ALTER TABLE `comprodu`
  ADD PRIMARY KEY (`n_numeprodu`);

--
-- Índices de tabela `comvenda`
--
ALTER TABLE `comvenda`
  ADD PRIMARY KEY (`n_numevenda`),
  ADD KEY `fk_comprodu_comforne` (`n_numeforne`),
  ADD KEY `fk_comprodu_comvende` (`n_numevende`),
  ADD KEY `fk_comvenda_comclien` (`n_numeclien`);

--
-- Índices de tabela `comvende`
--
ALTER TABLE `comvende`
  ADD PRIMARY KEY (`n_numevende`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comclien`
--
ALTER TABLE `comclien`
  MODIFY `n_numeclien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `comforne`
--
ALTER TABLE `comforne`
  MODIFY `n_numeforne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `comivenda`
--
ALTER TABLE `comivenda`
  MODIFY `n_numeivenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `comprodu`
--
ALTER TABLE `comprodu`
  MODIFY `n_numeprodu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `comvenda`
--
ALTER TABLE `comvenda`
  MODIFY `n_numevenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `comvende`
--
ALTER TABLE `comvende`
  MODIFY `n_numevende` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `comivenda`
--
ALTER TABLE `comivenda`
  ADD CONSTRAINT `fk_comivenda_comprodu` FOREIGN KEY (`n_numeprodu`) REFERENCES `comprodu` (`n_numeprodu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comivenda_comvenda` FOREIGN KEY (`n_numvenda`) REFERENCES `comvenda` (`n_numevenda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `comvenda`
--
ALTER TABLE `comvenda`
  ADD CONSTRAINT `fk_comprodu_comforne` FOREIGN KEY (`n_numeforne`) REFERENCES `comforne` (`n_numeforne`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comprodu_comvende` FOREIGN KEY (`n_numevende`) REFERENCES `comvende` (`n_numevende`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comvenda_comclien` FOREIGN KEY (`n_numeclien`) REFERENCES `comclien` (`n_numeclien`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Banco de dados: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL DEFAULT 0,
  `nome` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) UNSIGNED DEFAULT NULL,
  `totaulas` int(10) UNSIGNED DEFAULT NULL,
  `ano` year(4) DEFAULT 2016
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, '2014'),
(2, 'Algoritmos', 'Lógica de Programação', 20, 15, '2014'),
(3, 'Photoshop5', 'Dicas de Photoshop CC', 10, 8, '2014'),
(4, 'PHP', 'Curso de PHP para iniciantes', 40, 20, '2015'),
(5, 'Java', 'Introdução à Linguagem Java', 40, 29, '2015'),
(6, 'MySQL', 'Bancos de Dados MySQL', 30, 15, '2016'),
(7, 'Word', 'Curso completo de Word', 40, 30, '2016'),
(8, 'Python', 'Curso de Python', 40, 18, '2017'),
(9, 'POO', 'Curso de Programação Orientada a Objetos', 60, 35, '2016'),
(10, 'Excel', 'Curso completo de Excel', 40, 30, '2017'),
(11, 'Responsividade', 'Curso de Responsividade', 30, 15, '2018'),
(12, 'C++', 'Curso de C++ com Orientação a Objetos', 40, 25, '2017'),
(13, 'C#', 'Curso de C#', 30, 12, '2017'),
(14, 'Android', 'Curso de Desenvolvimento de Aplicativos para Android', 60, 30, '2018'),
(15, 'JavaScript', 'Curso de JavaScript', 35, 18, '2017'),
(16, 'PowerPoint', 'Curso completo de PowerPoint', 30, 12, '2018'),
(17, 'Swift', 'Curso de Desenvolvimento de Aplicativos para iOS', 60, 30, '2019'),
(18, 'Hardware', 'Curso de Montagem e Manutenção de PCs', 30, 12, '2017'),
(19, 'Redes', 'Curso de Redes para Iniciantes', 40, 15, '2016'),
(20, 'Segurança', 'Curso de Segurança', 15, 8, '2018'),
(21, 'SEO', 'Curso de Otimização de Sites', 30, 12, '2017'),
(22, 'Premiere', 'Curso de Edição de Vídeos com Premiere', 20, 10, '2017'),
(23, 'After Effects', 'Curso de Efeitos em Vídeos com After Effects', 20, 10, '2018'),
(24, 'WordPress', 'Curso de Criação de Sites com WordPress', 60, 30, '2019'),
(25, 'Joomla', 'Curso de Criação de Sites com Joomla', 60, 30, '2019'),
(26, 'Magento', 'Curso de Criação de Lojas Virtuais com Magento', 50, 25, '2019'),
(27, 'Modelagem de Dados', 'Curso de Modelagem de Dados', 30, 12, '2020'),
(28, 'HTML4', 'Curso Básico de HTML, versão 4.0', 20, 9, '2010'),
(29, 'PHP7', 'Curso de PHP, versão 7.0', 40, 20, '2020'),
(30, 'PHP4', 'Curso de PHP, versão 4.0', 30, 11, '2010');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gafanhotos`
--

CREATE TABLE `gafanhotos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`id`, `nome`, `profissao`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(1, 'Daniel Morais', 'Auxiliar Administrat', '1984-01-02', 'M', 78.50, 1.83, 'Brasil'),
(2, 'Talita Nascimento', 'Farmacêutico', '1999-12-30', 'F', 55.20, 1.65, 'Portugal'),
(3, 'Emerson Gabriel', 'Programador', '1920-12-30', 'M', 50.20, 1.65, 'Moçambique'),
(4, 'Lucas Damasceno', 'Auxiliar Administrat', '1930-11-02', 'M', 63.20, 1.75, 'Irlanda'),
(5, 'Leila Martins', 'Farmacêutico', '1975-04-22', 'F', 99.00, 2.15, 'Brasil'),
(6, 'Letícia Neves', 'Programador', '1999-12-03', 'F', 87.00, 2.00, 'Brasil'),
(7, 'Janaína Couto', 'Auxiliar Administrat', '1987-11-12', 'F', 75.40, 1.66, 'EUA'),
(8, 'Carlisson Rosa', 'Professor', '2010-08-01', 'M', 78.22, 1.98, 'Brasil'),
(9, 'Jackson Telles', 'Programador', '1999-01-23', 'M', 55.75, 1.33, 'Portugal'),
(10, 'Danilo Araujo', 'Dentista', '1975-12-10', 'M', 99.21, 1.87, 'EUA'),
(11, 'Andreia Delfino', 'Auxiliar Administrat', '1975-07-01', 'F', 48.64, 1.54, 'Irlanda'),
(12, 'Valter Vilmerson', 'Ator', '1985-10-12', 'M', 88.55, 2.03, 'Brasil'),
(13, 'Allan Silva', 'Programador', '1993-11-11', 'M', 76.99, 1.55, 'Brasil'),
(14, 'Rosana Kunz', 'Professor', '1935-01-16', 'F', 55.24, 1.87, 'Brasil'),
(15, 'Josiane Dutra', 'Empreendedor', '1950-01-20', 'F', 98.70, 1.04, 'Portugal'),
(16, 'Elvis Schwarz', 'Dentista', '2011-05-07', 'M', 66.69, 1.76, 'EUA'),
(17, 'Paulo Narley', 'Auxiliar Administrat', '1997-03-17', 'M', 120.10, 2.22, 'Brasil'),
(18, 'Joade Assis', 'Médico', '1930-12-01', 'M', 65.88, 1.78, 'França'),
(19, 'Nara Matos', 'Programador', '1978-03-17', 'F', 65.90, 1.33, 'Brasil'),
(20, 'Marcos Dissotti', 'Empreendedor', '2010-01-01', 'M', 53.79, 1.54, 'Portugal'),
(21, 'Ana Carolina Mendes', 'Ator', '2000-12-15', 'F', 88.30, 1.54, 'Brasil'),
(22, 'Guilherme de Sousa', 'Dentista', '2001-05-18', 'M', 132.70, 1.97, 'Moçambique'),
(23, 'Bruno Torres', 'Auxiliar Administrat', '2000-01-30', 'M', 44.65, 1.65, 'Brasil'),
(24, 'Yuji Homa', 'Empreendedor', '1996-12-25', 'M', 33.90, 1.22, 'Japão'),
(25, 'Raian Porto', 'Programador', '1989-05-05', 'M', 54.89, 1.54, 'Brasil'),
(26, 'Paulo Batista', 'Ator', '1999-03-15', 'M', 110.12, 1.87, 'Portugal'),
(27, 'Monique Precivalli', 'Auxiliar Administrat', '2013-12-30', 'F', 48.20, 1.22, 'Brasil'),
(28, 'Herisson Silva', 'Auxiliar Administrat', '1965-10-10', 'M', 74.65, 1.56, 'EUA'),
(29, 'Tiago Ulisses', 'Dentista', '1993-04-22', 'M', 150.30, 2.35, 'Brasil'),
(30, 'Anderson Rafael', 'Programador', '1989-12-01', 'M', 64.22, 1.44, 'Irlanda'),
(31, 'Karine Ribeiro', 'Empreendedor', '1988-10-01', 'F', 42.10, 1.65, 'Brasil'),
(32, 'Roberto Luiz Debarba', 'Ator', '2007-01-09', 'M', 77.44, 1.56, 'Brasil'),
(33, 'Jarismar Andrade', 'Dentista', '2000-06-23', 'F', 63.70, 1.33, 'Brasil'),
(34, 'Janaina Oliveira', 'Professor', '1955-03-12', 'F', 52.90, 1.76, 'Canadá'),
(35, 'Márcio Mello', 'Programador', '2011-11-20', 'M', 54.11, 1.55, 'EUA'),
(36, 'Robson Rodolpho', 'Auxiliar Administrat', '2000-08-08', 'M', 110.10, 1.76, 'Brasil'),
(37, 'Daniele Moledo', 'Empreendedor', '2006-08-11', 'F', 101.30, 1.99, 'Brasil'),
(38, 'Neto Sophiate', 'Ator', '1996-05-17', 'M', 59.28, 1.65, 'Portugal'),
(39, 'Neriton Dias', 'Auxiliar Administrat', '2009-10-30', 'M', 48.99, 1.29, 'Brasil'),
(40, 'André Schmidt', 'Programador', '1993-07-26', 'M', 55.37, 1.22, 'Angola'),
(41, 'Isaias Buscarino', 'Dentista', '2001-01-07', 'M', 99.90, 1.55, 'Moçambique'),
(42, 'Rafael Guimma', 'Empreendedor', '1968-04-11', 'M', 88.88, 1.54, 'Brasil'),
(43, 'Ana Carolina Hernandes', 'Ator', '1970-10-11', 'F', 65.40, 2.08, 'EUA'),
(44, 'Luiz Paulo', 'Professor', '1984-11-01', 'M', 75.12, 1.38, 'Portugal'),
(45, 'Bruna Teles', 'Programador', '1980-11-07', 'F', 55.10, 1.86, 'Brasil'),
(46, 'Diogo Padilha', 'Auxiliar Administrat', '2000-03-03', 'M', 54.34, 1.88, 'Angola'),
(47, 'Bruno Miltersteiner', 'Dentista', '1986-02-19', 'M', 77.45, 1.65, 'Alemanha'),
(48, 'Elaine Nunes', 'Programador', '1998-08-15', 'F', 35.90, 2.00, 'Canadá'),
(49, 'Silvio Ricardo', 'Programador', '2012-03-12', 'M', 65.99, 1.23, 'EUA'),
(50, 'Denilson Barbosa da Silva', 'Empreendedor', '2000-01-08', 'M', 97.30, 2.00, 'Brasil'),
(51, 'Jucinei Teixeira', 'Professor', '1977-11-22', 'F', 44.80, 1.76, 'Portugal'),
(52, 'Bruna Santos', 'Auxiliar Administrat', '1991-12-01', 'F', 76.30, 1.45, 'Canadá'),
(53, 'André Vitebo', 'Médico', '1970-07-01', 'M', 44.11, 1.55, 'Brasil'),
(54, 'Andre Santini', 'Programador', '1991-08-15', 'M', 66.00, 1.76, 'Itália'),
(55, 'Ruan Valente', 'Programador', '1998-03-19', 'M', 101.90, 1.76, 'Canadá'),
(56, 'Nailton Mauricio', 'Médico', '1992-04-25', 'M', 86.01, 1.43, 'EUA'),
(57, 'Rita Pontes', 'Professor', '1999-09-02', 'F', 54.10, 1.35, 'Angola'),
(58, 'Carlos Camargo', 'Programador', '2005-02-22', 'M', 124.65, 1.33, 'Brasil'),
(59, 'Philppe Oliveira', 'Auxiliar Administrat', '2000-05-23', 'M', 105.10, 2.19, 'Brasil'),
(60, 'Dayana Dias', 'Professor', '1993-05-30', 'F', 88.30, 1.66, 'Angola'),
(61, 'Silvana Albuquerque', 'Programador', '1999-05-22', 'F', 56.00, 1.50, 'Brasil');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `profissao`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(3, 'Alan Gabriel Silva Oliveira', NULL, '2003-07-22', 'M', 62.00, 1.71, 'Brasil'),
(4, 'Ana Gabriela Silva Oliveira', NULL, '1998-12-29', 'F', 48.00, 1.60, 'Brasil');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
(57, 'A10022', 6),
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
--
-- Banco de dados: `empresa`
--
CREATE DATABASE IF NOT EXISTS `empresa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `empresa`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `codigoDepartamento` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `codigoGerente` char(11) DEFAULT NULL,
  `data_inicio_gerente` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamentos`
--

INSERT INTO `departamentos` (`codigoDepartamento`, `nome`, `codigoGerente`, `data_inicio_gerente`) VALUES
(1, 'Matriz', '88866555576', '1981-06-19'),
(4, 'Administração', '98765432168', '1995-01-01'),
(5, 'Pesquisa', '33344555587', '1988-05-02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dependentes`
--

CREATE TABLE `dependentes` (
  `codigoFuncionario` char(11) NOT NULL,
  `nomeDependente` varchar(100) NOT NULL,
  `sexo` char(1) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `parentesco` varchar(30) DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `dependentes`
--

INSERT INTO `dependentes` (`codigoFuncionario`, `nomeDependente`, `sexo`, `dataNascimento`, `parentesco`) VALUES
('12345678966', 'Aline', 'F', '1988-12-30', 'Filha'),
('12345678966', 'Elizabeth', 'F', '1967-05-05', 'Esposa'),
('12345678966', 'Michael', 'M', '1988-01-04', 'Filho'),
('33344555587', 'Alicia', 'F', '1986-04-05', 'Filha'),
('33344555587', 'Janaína', 'F', '1958-05-03', 'Esposa'),
('33344555587', 'Tiago', 'M', '1983-10-25', 'Filho'),
('98765432168', 'Antonio', 'M', '1942-02-28', 'Marido');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `codigoFuncionario` char(11) NOT NULL,
  `primeiroNome` varchar(30) NOT NULL,
  `ultimoNome` varchar(30) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `codigoFuncionarioGerente` char(11) DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`codigoFuncionario`, `primeiroNome`, `ultimoNome`, `dataNascimento`, `endereco`, `sexo`, `salario`, `codigoFuncionarioGerente`) VALUES
('12345678966', 'João', 'Silva', '1965-09-01', 'Rua das Flores, 751, São Paulo, SP', 'M', 30000.00, '33344555587'),
('33344555587', 'Fernando', 'Young', '1955-12-08', 'Rua da Lapa, 34, São Paulo, SP', 'M', 40000.00, '88866555576'),
('45345345376', 'Joice', 'Leite', '1965-09-01', 'Rua das Flores, 751, São Paulo, SP', 'M', 30000.00, '33344555587'),
('66688444476', 'Ronaldo', 'Lima', '1962-09-15', 'Rua Rebouças, 65, Piracicaba, SP', 'M', 38000.00, '33344555587'),
('88866555576', 'Jorge', 'Brito', '1937-11-10', 'Rua do Horto, 35, São Paulo, SP', 'M', 55000.00, NULL),
('98765432168', 'Jennifer', 'Souza', '1941-06-20', 'Av. Artur de Lima, 54, Santo André, SP', 'F', 43000.00, '88866555576'),
('98798798733', 'André', 'Pereira', '1969-03-29', 'Rua Timbira, 35, São Paulo, SP', 'M', 25000.00, '98765432168'),
('99988777767', 'Alice', 'Zalaya', '1968-01-19', 'Rua Souza Lima, 35, Curitiba, PR', 'F', 25000.00, '98765432168');

-- --------------------------------------------------------

--
-- Estrutura para tabela `localizacao_dep`
--

CREATE TABLE `localizacao_dep` (
  `codigoDepartamento` int(11) NOT NULL,
  `depLocal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `projetos`
--

CREATE TABLE `projetos` (
  `codigoProjeto` int(11) NOT NULL,
  `projNome` varchar(30) NOT NULL,
  `projLocal` varchar(30) DEFAULT NULL,
  `codigoDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `projetos`
--

INSERT INTO `projetos` (`codigoProjeto`, `projNome`, `projLocal`, `codigoDepartamento`) VALUES
(1, 'Produto X', 'Santo André', 5),
(2, 'Produto Y', 'Itú', 5),
(3, 'Produto Z', 'São Paulo', 5),
(10, 'Informatização', 'Mauá', 4),
(20, 'Reorganização', 'São Paulo', 1),
(30, 'Novos Benefícios', 'Mauá', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalha_em`
--

CREATE TABLE `trabalha_em` (
  `codigoFuncionario` char(11) NOT NULL,
  `codigoProjeto` int(11) NOT NULL,
  `horas` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `trabalha_em`
--

INSERT INTO `trabalha_em` (`codigoFuncionario`, `codigoProjeto`, `horas`) VALUES
('12345678966', 1, 32.50),
('12345678966', 2, 7.50),
('33344555587', 2, 10.00),
('33344555587', 3, 10.00),
('33344555587', 10, 10.00),
('33344555587', 20, 10.00),
('45345345376', 1, 20.00),
('45345345376', 2, 20.00),
('66688444476', 3, 40.00),
('99988777767', 30, 30.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`codigoDepartamento`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD KEY `codigoGerente` (`codigoGerente`);

--
-- Índices de tabela `dependentes`
--
ALTER TABLE `dependentes`
  ADD PRIMARY KEY (`codigoFuncionario`,`nomeDependente`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`codigoFuncionario`),
  ADD KEY `codigoFuncionarioGerente` (`codigoFuncionarioGerente`);

--
-- Índices de tabela `localizacao_dep`
--
ALTER TABLE `localizacao_dep`
  ADD PRIMARY KEY (`codigoDepartamento`,`depLocal`);

--
-- Índices de tabela `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`codigoProjeto`),
  ADD UNIQUE KEY `projNome` (`projNome`),
  ADD KEY `codigoDepartamento` (`codigoDepartamento`);

--
-- Índices de tabela `trabalha_em`
--
ALTER TABLE `trabalha_em`
  ADD PRIMARY KEY (`codigoFuncionario`,`codigoProjeto`),
  ADD KEY `codigoProjeto` (`codigoProjeto`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_ibfk_1` FOREIGN KEY (`codigoGerente`) REFERENCES `funcionarios` (`codigoFuncionario`);

--
-- Restrições para tabelas `dependentes`
--
ALTER TABLE `dependentes`
  ADD CONSTRAINT `dependentes_ibfk_1` FOREIGN KEY (`codigoFuncionario`) REFERENCES `funcionarios` (`codigoFuncionario`);

--
-- Restrições para tabelas `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`codigoFuncionarioGerente`) REFERENCES `funcionarios` (`codigoFuncionario`);

--
-- Restrições para tabelas `localizacao_dep`
--
ALTER TABLE `localizacao_dep`
  ADD CONSTRAINT `localizacao_dep_ibfk_1` FOREIGN KEY (`codigoDepartamento`) REFERENCES `departamentos` (`codigoDepartamento`);

--
-- Restrições para tabelas `projetos`
--
ALTER TABLE `projetos`
  ADD CONSTRAINT `projetos_ibfk_1` FOREIGN KEY (`codigoDepartamento`) REFERENCES `departamentos` (`codigoDepartamento`);

--
-- Restrições para tabelas `trabalha_em`
--
ALTER TABLE `trabalha_em`
  ADD CONSTRAINT `trabalha_em_ibfk_1` FOREIGN KEY (`codigoFuncionario`) REFERENCES `funcionarios` (`codigoFuncionario`),
  ADD CONSTRAINT `trabalha_em_ibfk_2` FOREIGN KEY (`codigoProjeto`) REFERENCES `projetos` (`codigoProjeto`);
--
-- Banco de dados: `Fidelizacao`
--
CREATE DATABASE IF NOT EXISTS `Fidelizacao` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Fidelizacao`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Clientes`
--

CREATE TABLE `Clientes` (
  `idCliente` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `profissao` varchar(20) NOT NULL,
  `saldoPontos` int(11) NOT NULL DEFAULT 0
) ;

--
-- Despejando dados para a tabela `Clientes`
--

INSERT INTO `Clientes` (`idCliente`, `nome`, `CPF`, `profissao`, `saldoPontos`) VALUES
(1, 'André Carneiro', '32525412345', 'Carteiro', 0),
(2, 'Márcio Rodrigues', '48120723456', 'Engenheiro', 0),
(3, 'Cristina Santana', '69712387654', 'Contadora', 0),
(4, 'Michele Medeiros', '90681311223', 'Professora', 0),
(5, 'Daniel Maia', '02581365432', 'Bancário', 0),
(6, 'Larissa Gomes', '32541709876', 'Professora', 0),
(7, 'Rafaela Costa', '98011704567', 'Arquiteta', 0),
(8, 'César Fernandes', '74281098765', 'Dentista', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Compras`
--

CREATE TABLE `Compras` (
  `idCompra` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `valor` decimal(9,2) NOT NULL,
  `pontosGanhos` int(11) NOT NULL
) ;

--
-- Despejando dados para a tabela `Compras`
--

INSERT INTO `Compras` (`idCompra`, `idCliente`, `data`, `valor`, `pontosGanhos`) VALUES
(1, 1, '2019-09-02 00:00:00', 22.78, 7),
(2, 2, '2019-10-12 00:00:00', 50.32, 14),
(3, 4, '2019-11-30 00:00:00', 123.14, 25),
(4, 3, '2018-01-08 00:00:00', 108.22, 19),
(5, 2, '2010-01-12 00:00:00', 349.06, 92),
(6, 5, '2018-02-22 00:00:00', 225.56, 45),
(7, 6, '2018-03-22 00:00:00', 79.00, 34),
(8, 1, '2019-11-02 00:00:00', 63.12, 18),
(9, 6, '2019-07-28 00:00:00', 55.49, 16),
(10, 8, '2019-08-17 00:00:00', 25.29, 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Premios`
--

CREATE TABLE `Premios` (
  `idPremio` int(11) NOT NULL,
  `descricao` varchar(20) NOT NULL,
  `valorPontos` int(11) NOT NULL,
  `quantEstoque` int(11) NOT NULL
) ;

--
-- Despejando dados para a tabela `Premios`
--

INSERT INTO `Premios` (`idPremio`, `descricao`, `valorPontos`, `quantEstoque`) VALUES
(1, 'Bolsa (100% couro)', 300, 5),
(2, 'Bolsa (palha)', 80, 12),
(3, 'Relógio masculino', 160, 3),
(4, 'Boné (100% algodão)', 40, 10),
(5, 'Óculos', 27, 30),
(6, 'Chaveiro', 9, 110),
(7, 'Caneta', 7, 92);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Trocas`
--

CREATE TABLE `Trocas` (
  `idTroca` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idPremio` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `data` datetime NOT NULL
) ;

--
-- Despejando dados para a tabela `Trocas`
--

INSERT INTO `Trocas` (`idTroca`, `idCliente`, `idPremio`, `quantidade`, `data`) VALUES
(1, 1, 7, 2, '2019-10-15 00:00:00'),
(2, 2, 6, 1, '2019-11-29 00:00:00'),
(3, 3, 7, 1, '2019-11-12 00:00:00'),
(4, 6, 4, 1, '2018-01-15 00:00:00'),
(5, 5, 5, 1, '2018-01-24 00:00:00'),
(6, 2, 2, 1, '2018-02-06 00:00:00'),
(7, 4, 6, 2, '2018-04-12 00:00:00'),
(8, 5, 6, 1, '2019-12-15 00:00:00'),
(9, 6, 7, 1, '2018-03-17 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Índices de tabela `Compras`
--
ALTER TABLE `Compras`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Índices de tabela `Premios`
--
ALTER TABLE `Premios`
  ADD PRIMARY KEY (`idPremio`);

--
-- Índices de tabela `Trocas`
--
ALTER TABLE `Trocas`
  ADD PRIMARY KEY (`idTroca`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idPremio` (`idPremio`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Compras`
--
ALTER TABLE `Compras`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Premios`
--
ALTER TABLE `Premios`
  MODIFY `idPremio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Trocas`
--
ALTER TABLE `Trocas`
  MODIFY `idTroca` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Compras`
--
ALTER TABLE `Compras`
  ADD CONSTRAINT `Compras_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `Clientes` (`idCliente`);

--
-- Restrições para tabelas `Trocas`
--
ALTER TABLE `Trocas`
  ADD CONSTRAINT `Trocas_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `Clientes` (`idCliente`),
  ADD CONSTRAINT `Trocas_ibfk_2` FOREIGN KEY (`idPremio`) REFERENCES `Premios` (`idPremio`);
--
-- Banco de dados: `lojamix`
--
CREATE DATABASE IF NOT EXISTS `lojamix` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lojamix`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `n_CodProduto` int(11) NOT NULL,
  `c_Descricao` varchar(200) NOT NULL,
  `c_Marca` varchar(50) DEFAULT NULL,
  `n_Preco` decimal(10,0) NOT NULL,
  `c_Tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`n_CodProduto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `n_CodProduto` int(11) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"\",\"table\":\"alunos\"},{\"db\":\"\",\"table\":\"instrutores\"},{\"db\":\"\",\"table\":\"cursos\"},{\"db\":\"\",\"table\":\"cursoAlunos\"},{\"db\":\"\",\"table\":\"cursoModulos\"},{\"db\":\"\",\"table\":\"modulos\"},{\"db\":\"\",\"table\":\"infoAlunos\"},{\"db\":\"EduPlus\",\"table\":\"infoAlunos\"},{\"db\":\"EduPlus\",\"table\":\"cursos\"},{\"db\":\"EduPlus\",\"table\":\"modulos\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Despejando dados para a tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', '', 'cursos', '{\"sorted_col\":\"`cursos`.`nome` ASC\"}', '2024-12-04 00:53:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-12-04 18:27:39', '{\"lang\":\"pt_BR\",\"Console\\/Mode\":\"collapse\",\"Export\\/file_template_server\":\"EduPlus\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
