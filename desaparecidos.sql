-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 11-Abr-2022 às 01:10
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `desaparecidos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `comentario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagem`
--

CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL,
  `mensagem` text NOT NULL,
  `id_user` varchar(11) NOT NULL,
  `nome_user` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mensagem`
--

INSERT INTO `mensagem` (`id`, `mensagem`, `id_user`, `nome_user`) VALUES
(1, 'ola', '10', 'Alice Jaime'),
(2, 'Alquém on?', '10', 'Alice Jaime'),
(3, 'Então, ninguém?', '10', 'Alice Jaime'),
(4, 'Ideia????', '10', 'Alice Jaime'),
(5, 'Estou on!', '2', 'Ananias Augusto'),
(6, 'Então, estás bem?', '10', 'Alice Jaime'),
(7, 'Sim e tu?', '2', 'Ananias Augusto'),
(8, '??', '2', 'Ananias Augusto'),
(9, 'Também estou on...', '7', 'Cleonice Samukumbi'),
(10, 'Familia somos 10 o número está crescendo!!', '7', 'Cleonice Samukumbi'),
(11, 'E continua crescendo!!', '2', 'Ananias Augusto'),
(12, 'Sup', '7', 'Cleonice Samukumbi'),
(13, 'Pessoal creio eu que avistei  o David.... o menino desaparecido!...', '2', 'Ananias Augusto'),
(14, 'Ohh..Onde?', '7', 'Cleonice Samukumbi'),
(15, 'No bairro azul por tráz da vila de viana..', '2', 'Ananias Augusto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `id` int(11) NOT NULL,
  `nomepost` varchar(255) NOT NULL,
  `idadepost` varchar(255) NOT NULL,
  `localizacao` varchar(255) NOT NULL,
  `contatopost` varchar(255) NOT NULL,
  `descricaopost` varchar(255) NOT NULL,
  `datapost` date NOT NULL DEFAULT current_timestamp(),
  `imagem` text NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `nome_user` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `postagem`
--

INSERT INTO `postagem` (`id`, `nomepost`, `idadepost`, `localizacao`, `contatopost`, `descricaopost`, `datapost`, `imagem`, `user_id`, `nome_user`) VALUES
(1, 'Super Homem', '35', 'Na sua nave em Metrópolis', '+5555544452', 'Tudo em paz na terra, é oque se espra!!', '2022-04-08', '', '', ''),
(2, 'Amadeu Calumbo', '23', 'Casas azuis', '948329497', 'Rapaz magro, sem pelos na cabeça \'Careca\'!!', '2022-04-08', '', '', ''),
(3, 'Ageu Lumengo', '10', 'Perto do Colégio Tilson & Mara', '55447788', 'Rapaz gago!', '2022-04-08', '', '', ''),
(4, 'Cleonice Samukumbi', '22', 'Jacinto Tchipa', '922462983', 'Baixinha, ri atoa, fala \"tas* bem....\"', '2022-04-08', '', '', ''),
(5, 'V!NC!TY VCTy', '1', 'Jacinto Tchipa/Bequessa é a Banda', '944996909', 'Rapaz shy', '2022-04-08', '', '', ''),
(6, 'Marinela Moisés', '19', 'Rua do antigo colégio Cassonzola', '923123231', 'Menina com cabelo crespo, altura mediana, olhos pretos', '2022-04-09', '', '', ''),
(7, 'Jacinto Tchinbanguinha', '55', 'Jacinto Tchipa/Bequessa é a Banda', '951748757', 'Cantor... aquele mesmo o cantor!', '2022-04-09', '', '', ''),
(8, 'Foguinho', '40', 'Av. Brasil', '+55 80807557', 'É o mesmo foguinho da novela, o gajo veio aqui em Angola e curtiu bwé, mas não deu conta e foi assaltado...', '2022-04-10', '7926c46ccb31118b59b91bdafdc357eee.jpg', '', ''),
(9, 'Dawayne Johnson', '50', 'Pensilvânia', '+55 555 555 000', 'É o The Rock o gajo imbatível', '2022-04-10', '5b9d93c5659198ba9b133df3bfbce904.webp', '', ''),
(14, 'David Ricardo', '15', 'Jacinto Tchipa - Luanda', '948329497', 'Rapaz mudo, anda com uma muchila escrito \"Ajude-me por que não posso falar!\"', '2022-04-10', 'b1b2b19cc19f5c55b75fd6b5193619ca.jpeg', '7', 'Cleonice Samukumbi'),
(15, 'José Romauro', '12', 'Vila de Viana, Rua Brasileira.', '+244 951 204 541', 'Está com uma t-shirt verde, cabelos escuros, olhos escuros...\r\n', '2022-04-10', 'a05b9934653f7344f26dc94ee8fe6057.webp', '7', 'Cleonice Samukumbi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `nome`, `telefone`, `pais`, `pass`, `email`) VALUES
(1, 'Dashboard', '900000000', 'Luanda', 'Dashboard', 'dashboard@qvp.com'),
(2, 'Ananias Augusto', '944996909', 'Luanda', 'silason', 'ananiasjaimeaugusto@gmail.com'),
(3, 'Diamantino Rodrigues Baia', '944996909', 'Luanda', 'tininho', 'ananiasjaimeaugusto@gmail.com'),
(4, 'Odilon Menezes', '944996909', 'Bié', 'menezes', 'ananiasjaimeaugusto@gmail.com'),
(5, 'Mario Tchizzy', '944996909', 'Lunda Norte', 'miguel', 'ananiasjaimeaugusto@gmail.com'),
(6, 'Elisa Beatriz André', '944996909', 'Luanda', 'eliza', 'ananiasjaimeaugusto@gmail.com'),
(7, 'Cleonice Samukumbi', '922462983', 'Moxico', 'cleonice', 'cleonice.samukumbi2@gmail.com'),
(8, 'José Augusto', '944996909', 'Moxico', 'joseaugusto', 'ananiasjaimeaugusto@gmail.com'),
(9, 'Richard Castle Writer', '950101010', 'Luanda', 'backet', 'richardcastle@castle.com'),
(10, 'Alice Jaime', '949669715', 'Moxico', 'alice', 'alicejaime@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `postagem`
--
ALTER TABLE `postagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
