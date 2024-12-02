-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 02/12/2024 às 18:14
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
('A10021', 'Joesley Joestar', 'jojobr@yahoo.com', 'M', '1985-01-01');

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
(1, 'A10001', 1),
(2, 'A10002', 1),
(3, 'A10003', 1),
(4, 'A10004', 1),
(5, 'A10005', 1),
(6, 'A10005', 2),
(7, 'A10019', 2),
(8, 'A10021', 2),
(9, 'A10007', 2),
(10, 'A10021', 3);

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
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 3),
(18, 18, 3),
(19, 19, 3),
(20, 20, 3),
(21, 21, 3),
(22, 22, 4),
(23, 23, 4),
(24, 24, 4),
(25, 25, 4);

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
  `ativo` tinyint(1) DEFAULT NULL,
  `instrutorResponsavel` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idCurso`, `nome`, `descricao`, `cargaHoraria`, `qtdModulos`, `dataLancamento`, `ativo`, `instrutorResponsavel`) VALUES
(1, 'Programação em Linguagem C', 'Curso completo sobre os fundamentos da linguagem C, incluindo controle de fluxo, funções e manipulação de memória.', 60, 11, '2023-05-10', 1, 'A12345'),
(2, 'League of Legends', 'Como jogar lol sem ferir os direitos humanos', 40, 5, '2024-11-30', 1, 'C11223'),
(3, 'Python Descomplicado: Do Básico ao Avançado', 'Nesse curso você vai aprender desde os conceitos mais simples até os mais avançados de Python.', 50, 5, '2021-08-05', 0, 'D44556'),
(4, 'Curso básico de MySQL', 'Com este curso, vamos aprender a utilizar um dos principais banco de dados do mercado: o mysql.', 32, 4, '2022-02-28', 1, 'F23456');

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
  `frequencia` float(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `infoAlunos`
--

INSERT INTO `infoAlunos` (`id`, `matricula`, `idModulo`, `nota1`, `nota2`, `nota3`, `frequencia`) VALUES
(1, 'A10001', 1, 10.00, 9.00, 6.00, 100.00),
(2, 'A10001', 2, 9.80, 9.00, 8.00, 90.00),
(3, 'A10001', 3, 8.00, 7.00, 6.00, 80.00),
(4, 'A10001', 4, 10.00, 9.00, 6.00, 75.00),
(5, 'A10001', 5, 7.80, 9.00, 7.00, 81.00),
(6, 'A10001', 6, 7.00, 7.00, 7.00, 97.00),
(7, 'A10001', 7, 10.00, 9.00, 6.00, 76.00),
(8, 'A10001', 8, 5.00, 9.00, 10.00, 99.00),
(9, 'A10001', 9, 10.00, 10.00, 9.50, 100.00),
(10, 'A10001', 10, 7.00, 9.00, 6.00, 90.00),
(11, 'A10002', 1, 8.00, 7.50, 6.50, 85.00),
(12, 'A10002', 2, 9.00, 8.00, 7.00, 92.00),
(13, 'A10002', 3, 7.50, 6.50, 8.00, 78.00),
(14, 'A10002', 4, 9.20, 8.00, 8.50, 88.00),
(15, 'A10002', 5, 7.80, 7.00, 7.50, 80.00),
(16, 'A10002', 6, 8.00, 8.50, 9.00, 94.00),
(17, 'A10002', 7, 9.00, 7.00, 6.50, 85.00),
(18, 'A10002', 8, 9.50, 9.00, 8.00, 97.00),
(19, 'A10002', 9, 8.50, 9.00, 8.50, 91.00),
(20, 'A10002', 10, 7.00, 7.00, 6.00, 80.00),
(21, 'A10003', 1, 6.50, 8.00, 7.00, 77.00),
(22, 'A10003', 2, 8.50, 8.00, 7.00, 89.00),
(23, 'A10003', 3, 9.00, 7.50, 8.00, 85.00),
(24, 'A10003', 4, 8.00, 7.00, 6.00, 80.00),
(25, 'A10003', 5, 7.00, 6.50, 7.50, 78.00),
(26, 'A10003', 6, 8.50, 9.00, 9.00, 91.00),
(27, 'A10003', 7, 7.50, 8.00, 7.00, 80.00),
(28, 'A10003', 8, 8.00, 9.00, 8.00, 90.00),
(29, 'A10003', 9, 9.00, 8.00, 9.00, 95.00),
(30, 'A10003', 10, 8.00, 9.00, 7.50, 88.00),
(31, 'A10004', 1, 8.50, 9.00, 9.00, 93.00),
(32, 'A10004', 2, 9.00, 8.50, 8.00, 88.00),
(33, 'A10004', 3, 7.50, 8.00, 8.00, 85.00),
(34, 'A10004', 4, 9.00, 7.50, 6.00, 80.00),
(35, 'A10004', 5, 8.00, 7.00, 7.00, 75.00),
(36, 'A10004', 6, 8.50, 7.00, 7.50, 82.00),
(37, 'A10004', 7, 9.50, 9.00, 9.00, 95.00),
(38, 'A10004', 8, 8.00, 8.50, 8.00, 90.00),
(39, 'A10004', 9, 8.80, 9.00, 8.00, 92.00),
(40, 'A10004', 10, 7.50, 8.00, 8.00, 85.00),
(41, 'A10005', 1, 7.00, 6.50, 6.00, 78.00),
(42, 'A10005', 2, 8.00, 8.00, 7.00, 85.00),
(43, 'A10005', 3, 9.00, 7.50, 8.00, 90.00),
(44, 'A10005', 4, 8.50, 7.00, 7.50, 80.00),
(45, 'A10005', 5, 7.00, 7.50, 6.50, 77.00),
(46, 'A10005', 6, 8.50, 9.00, 9.00, 92.00),
(47, 'A10005', 7, 9.00, 8.50, 7.00, 88.00),
(48, 'A10005', 8, 9.00, 8.00, 8.00, 91.00),
(49, 'A10005', 9, 9.20, 8.80, 9.00, 93.00),
(50, 'A10005', 10, 7.00, 7.00, 7.00, 84.00),
(51, 'A10005', 12, 9.00, 8.70, 7.90, 97.00),
(52, 'A10005', 13, 10.00, 8.70, 9.90, 80.00),
(53, 'A10005', 14, 9.00, 8.70, 8.00, 76.00),
(54, 'A10005', 15, 7.00, 7.00, 7.00, 77.00),
(55, 'A10005', 16, 9.00, 9.00, 8.00, 99.00),
(56, 'A10019', 12, 7.80, 8.50, 8.20, 85.00),
(57, 'A10019', 13, 8.30, 9.00, 9.10, 91.00),
(58, 'A10019', 14, 9.00, 8.70, 8.00, 88.00),
(59, 'A10019', 15, 8.80, 9.20, 8.50, 90.00),
(60, 'A10019', 16, 7.50, 8.00, 8.30, 80.00),
(61, 'A10021', 12, 8.00, 7.50, 7.20, 76.00),
(62, 'A10021', 13, 8.50, 8.00, 8.70, 89.00),
(63, 'A10021', 14, 9.00, 8.50, 8.80, 92.00),
(64, 'A10021', 15, 7.80, 7.00, 7.50, 77.00),
(65, 'A10021', 16, 8.20, 7.70, 7.90, 84.00),
(66, 'A10007', 12, 9.30, 9.00, 8.80, 95.00),
(67, 'A10007', 13, 8.70, 8.50, 8.40, 86.00),
(68, 'A10007', 14, 9.00, 8.80, 9.00, 93.00),
(69, 'A10007', 15, 8.00, 7.50, 7.60, 80.00),
(70, 'A10007', 16, 9.50, 9.20, 9.10, 97.00),
(71, 'A10021', 17, 10.00, 9.00, 9.90, 88.00),
(72, 'A10021', 18, 10.00, 10.00, 10.00, 99.00),
(73, 'A10021', 19, 9.00, 9.00, 9.00, 98.00),
(74, 'A10021', 20, 10.00, 7.00, 9.00, 89.00);

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

--
-- Despejando dados para a tabela `instrutor`
--

INSERT INTO `instrutor` (`matricula`, `nome`, `email`, `nascimento`, `ingresso`, `sexo`, `biografia`) VALUES
('A12345', 'João Silva', 'joao.silva@example.com', '1985-06-15', '2020-01-10', 'M', 'Instrutor com mais de 10 anos de experiência em desenvolvimento de software.'),
('B67890', 'Maria Oliveira', 'maria.oliveira@example.com', '1990-03-22', '2018-08-01', 'F', 'Especialista em programação competitiva e autora de artigos acadêmicos na área.'),
('C11223', 'Carlos Santos', 'carlos.santos@example.com', '1987-11-03', '2021-06-15', 'M', 'Engenheiro de software apaixonado por ensinar e aprender novas tecnologias.'),
('D44556', 'Ana Costa', 'ana.costa@example.com', '1995-09-12', '2019-03-20', 'F', 'Instrutora com foco em linguagens de programação modernas e metodologias ágeis.'),
('E78901', 'Roberto Lima', 'roberto.lima@example.com', '1980-01-25', '2022-01-15', 'M', 'Consultor técnico com vasta experiência em soluções corporativas.'),
('F23456', 'Fernanda Souza', 'fernanda.souza@example.com', '1992-05-30', '2020-11-05', 'F', 'Especialista em inteligência artificial e ciência de dados.');

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
-- Despejando dados para a tabela `modulo`
--

INSERT INTO `modulo` (`idModulo`, `nomeModulo`, `descricao`, `idInstrutor`, `ativo`) VALUES
(1, 'Introdução à Programação e à Linguagem C', 'Apresentação da linguagem C, seu histórico e primeiro programa básico.', 'A12345', 0),
(2, 'Fundamentos da Linguagem', 'Introdução a tipos de dados, variáveis, operadores e funções básicas de entrada e saída.', 'A12345', 0),
(3, 'Controle de Fluxo', 'Estruturas condicionais e de repetição para controle do programa.', 'A12345', 0),
(4, 'Funções', 'Declaração, definição, passagem de parâmetros e retorno de funções.', 'A12345', 0),
(5, 'Arrays e Strings', 'Manipulação de arrays unidimensionais e multidimensionais, além de strings.', 'F23456', 0),
(6, 'Ponteiros', 'Conceito de ponteiros, endereços de memória e relação com arrays.', 'F23456', 1),
(7, 'Estruturas de Dados Básicas', 'Introdução a estruturas e união, além de ponteiros para estruturas.', 'F23456', 1),
(8, 'Manipulação de Arquivos', 'Leitura, escrita e manipulação de arquivos com a linguagem C.', 'F23456', 1),
(9, 'Boas Práticas de Programação', 'Organização do código, documentação, depuração e tratamento de erros.', 'F23456', 1),
(10, 'Projetos Práticos', 'Aplicação dos conceitos aprendidos em projetos simples e desafiadores.', 'A12345', 1),
(12, 'Como farmar', 'Aprenda a pegar ouro dos minions', 'C11223', 0),
(13, 'Controle de wave', 'Aprenda a controlar wave', 'C11223', 1),
(14, 'Como wardar', 'Aprenda a não ficar no escuro', 'B67890', 1),
(15, 'Trabalho em equipe', 'Como lidar com animais', 'B67890', 1),
(16, 'Microgame', 'Aprenda a acertar a habilidade', 'C11223', 1),
(17, 'Fundamentos de Python', 'Conceitos básicos de python, como variávies, tipos de dados, operadores e estruturas de controle.', 'A12345', 0),
(18, 'Manipulação de Dados e Funções', 'Aqui, você mergulhará no uso de listas, dicionários, conjuntos e tuplas, aprendendo a organizar e manipular dados. Também explorará funções personalizadas, parâmetros e o poder da recursão.', 'A12345', 0),
(19, 'Trabalhando com Arquivos e Bibliotecas', 'Este módulo ensina como trabalhar com arquivos (ler, escrever e manipular), além de introduzir bibliotecas fundamentais como os e datetime.', 'D44556', 0),
(20, 'Orientação a Objetos em Python', 'Com foco no paradigma de Orientação a Objetos, você aprenderá a criar classes, métodos e objetos.', 'D44556', 0),
(21, 'Automação, Web e Aplicações Reais', 'Você explorará como usar Python para automação de tarefas, como web scraping com BeautifulSoup e automação de planilhas com openpyxl.', 'D44556', 0),
(22, 'Introdução e Fundamentos do SQL', 'Este módulo apresenta os conceitos básicos de bancos de dados relacionais e o papel do SQL.', 'F23456', 0),
(23, 'Consultas Avançadas e Manipulação de Dados', 'Explore funções agregadas como SUM, AVG, COUNT e técnicas para agrupar dados com GROUP BY e HAVING.', 'F23456', 1),
(24, 'Design de Banco de Dados e Otimização', 'Neste módulo, você aprenderá boas práticas de design de banco de dados, incluindo normalização e criação de índices para melhorar o desempenho.', 'F23456', 1),
(25, 'Administração de Banco de Dados e Segurança', 'Descubra como gerenciar usuários, configurar permissões e implementar práticas de segurança para proteger seu banco de dados.', 'F23456', 1),
(26, 'Introdução e Fundamentos do SQL', 'Este módulo apresenta os conceitos básicos de bancos de dados relacionais e o papel do SQL.', 'F23456', 0),
(27, 'Consultas Avançadas e Manipulação de Dados', 'Explore funções agregadas como SUM, AVG, COUNT e técnicas para agrupar dados com GROUP BY e HAVING.', 'F23456', 1),
(28, 'Design de Banco de Dados e Otimização', 'Neste módulo, você aprenderá boas práticas de design de banco de dados, incluindo normalização e criação de índices para melhorar o desempenho.', 'F23456', 1),
(29, 'Administração de Banco de Dados e Segurança', 'Descubra como gerenciar usuários, configurar permissões e implementar práticas de segurança para proteger seu banco de dados.', 'F23456', 1),
(30, 'Introdução e Fundamentos do SQL', 'Este módulo apresenta os conceitos básicos de bancos de dados relacionais e o papel do SQL.', 'F23456', 0),
(31, 'Consultas Avançadas e Manipulação de Dados', 'Explore funções agregadas como SUM, AVG, COUNT e técnicas para agrupar dados com GROUP BY e HAVING.', 'F23456', 1),
(32, 'Design de Banco de Dados e Otimização', 'Neste módulo, você aprenderá boas práticas de design de banco de dados, incluindo normalização e criação de índices para melhorar o desempenho.', 'F23456', 1),
(33, 'Administração de Banco de Dados', 'Descubra como gerenciar usuários, configurar permissões e implementar práticas de segurança para proteger seu banco de dados.', 'F23456', 1);

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
-- AUTO_INCREMENT de tabela `cursoAlunos`
--
ALTER TABLE `cursoAlunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cursoModulos`
--
ALTER TABLE `cursoModulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `infoAlunos`
--
ALTER TABLE `infoAlunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de tabela `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idModulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
-- Restrições para tabelas `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`instrutorResponsavel`) REFERENCES `instrutor` (`matricula`);

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
