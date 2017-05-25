-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 25 Mai 2017 à 02:21
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bd_pardes_tchat`
--

-- --------------------------------------------------------

--
-- Structure de la table `test_admin`
--

CREATE TABLE IF NOT EXISTS `test_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) DEFAULT NULL,
  `prenom` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `login` varchar(250) DEFAULT NULL,
  `mot_passe` varchar(250) DEFAULT NULL,
  `derniere_activite` datetime DEFAULT NULL,
  `connecte` int(11) NOT NULL,
  `demande_reinitialisation` int(11) NOT NULL,
  `date_demande_reinitialisation` datetime DEFAULT NULL,
  `token_reinitialisation` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Contenu de la table `test_admin`
--

INSERT INTO `test_admin` (`id`, `nom`, `prenom`, `email`, `login`, `mot_passe`, `derniere_activite`, `connecte`, `demande_reinitialisation`, `date_demande_reinitialisation`, `token_reinitialisation`) VALUES
(38, 'mehdi', 'mehdi', 'mohamed.mehdi.chaabene@gmail.com', 'mehdi', 'e10adc3949ba59abbe56e057f20f883e', '2017-05-25 01:12:10', 0, 0, NULL, NULL),
(40, 'ali', 'ali', 'ali@h.com', 'ali', 'e10adc3949ba59abbe56e057f20f883e', '2017-05-25 00:31:46', 0, 0, NULL, NULL),
(41, 'ahmed', 'ahmed', 'ahmed@hotmail.com', 'ahmed', 'e10adc3949ba59abbe56e057f20f883e', '2017-05-25 00:31:46', 0, 0, NULL, NULL),
(44, 'marwa', 'marwa', 'marwa@hotmail.com', 'marwa', 'e10adc3949ba59abbe56e057f20f883e', '2017-05-25 01:21:01', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `test_discussion`
--

CREATE TABLE IF NOT EXISTS `test_discussion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_1` int(11) DEFAULT NULL,
  `user_id_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Contenu de la table `test_discussion`
--

INSERT INTO `test_discussion` (`id`, `user_id_1`, `user_id_2`) VALUES
(38, 38, 40),
(39, 38, 41),
(41, 38, 44);

-- --------------------------------------------------------

--
-- Structure de la table `test_msg`
--

CREATE TABLE IF NOT EXISTS `test_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_send` int(11) NOT NULL,
  `id_discussion` int(11) NOT NULL,
  `text` text,
  `date_envoie` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Contenu de la table `test_msg`
--

INSERT INTO `test_msg` (`id`, `id_send`, `id_discussion`, `text`, `date_envoie`) VALUES
(38, 38, 38, 'mehdi il ahmed', '2017-05-24 17:09:21'),
(39, 38, 39, 'tt2', '2017-05-24 17:10:15'),
(40, 41, 38, 'hmed il mehdi', '2017-05-24 17:10:15'),
(41, 38, 38, 'json', '2017-05-24 23:42:06'),
(48, 38, 39, 'tt3', '2017-05-24 23:59:25'),
(49, 38, 39, 'tt4', '2017-05-24 23:59:53'),
(50, 38, 39, 'tt5', '2017-05-25 00:01:36'),
(51, 38, 39, 'tt6', '2017-05-25 00:02:43'),
(52, 38, 39, 'tt7', '2017-05-25 00:03:41'),
(53, 38, 39, 'tt8', '2017-05-25 00:04:28'),
(54, 38, 39, 'tt9', '2017-05-25 00:04:34'),
(55, 44, 41, 'je teste', '2017-05-25 01:09:24');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
