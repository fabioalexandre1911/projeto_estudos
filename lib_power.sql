-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 18-Ago-2022 às 17:35
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lib_power`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id_aluno` int(5) NOT NULL AUTO_INCREMENT,
  `aluno_nome` varchar(60) NOT NULL,
  `aluno_cpf` varchar(25) NOT NULL,
  `aluno_contato` varchar(50) NOT NULL,
  `aluno_nivel` varchar(20) NOT NULL,
  `aluno_criadoem` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_aluno`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `aluno_nome`, `aluno_cpf`, `aluno_contato`, `aluno_nivel`, `aluno_criadoem`) VALUES
(1, 'Fabio Sousa', '123456789123', 'fabio@email.com', '2', '2022-08-17 18:19:57'),
(2, 'Alexandre Sousa', '123456789123', 'alexandre@email.com', '1', '2022-08-17 18:19:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id_funcionarios` int(3) NOT NULL,
  `funcionario_nome` varchar(60) NOT NULL,
  `funcionario_cpf` varchar(20) NOT NULL,
  `funcionario_criadoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `id_livro` int(11) NOT NULL,
  `livro_nome` varchar(50) NOT NULL,
  `livro_capa` varchar(255) NOT NULL,
  `livro_autor` varchar(50) NOT NULL,
  `livro_criadoem` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_livro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
