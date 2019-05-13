-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 13 Mai 2019 à 08:58
-- Version du serveur :  5.5.59-0+deb8u1
-- Version de PHP :  5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `2019devG1jee`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE IF NOT EXISTS `commentaire` (
`id_commentaire` int(5) NOT NULL,
  `titre` varchar(40) NOT NULL,
  `corps` varchar(200) NOT NULL,
  `signal` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `FK_id_user` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE IF NOT EXISTS `recette` (
`id_recette` int(5) NOT NULL,
  `titre` varchar(40) NOT NULL,
  `votes_positifs` int(5) NOT NULL,
  `votes_negatifs` int(5) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `FK_id_commentaire` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
`id_user` int(5) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` binary(40) NOT NULL,
  `droits` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
 ADD PRIMARY KEY (`id_commentaire`);

--
-- Index pour la table `recette`
--
ALTER TABLE `recette`
 ADD PRIMARY KEY (`id_recette`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
 ADD PRIMARY KEY (`id_user`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
MODIFY `id_commentaire` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `recette`
--
ALTER TABLE `recette`
MODIFY `id_recette` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;