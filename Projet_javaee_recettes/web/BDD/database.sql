-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 13 Mai 2019 à 10:11
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
  `signalement` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `FK_id_user` int(5) NOT NULL,
  `FK_id_recette` int(5) NOT NULL
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
  `ingredients` varchar(1000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `recette`
--

INSERT INTO `recette` (`id_recette`, `titre`, `votes_positifs`, `votes_negatifs`, `ingredients`, `description`, `date`) VALUES
(1, 'Sauce tomate', 0, 0, '1 boîte de tomate pelée ou concassées\r\n1 petite gousse d''ail\r\n1 bouillon cube\r\nFines herbes (sèches ou fraîches) selon les goûts, origan, basilic, persil…', '\r\n    Etape 1\r\n    Mets le contenu de la boîte dans une petite casserole avec un peu d''eau (la quantité qui te sert à bien rincer ta boîte). Si tu mets trop d''eau c’est pas grave, elle s’en ira.\r\n    Etape 2\r\n    Ajoute ton demi-bouillon, l’ail coupé, tes petites herbes.\r\n    Etape 3\r\n    Ne couvre pas. Laisse à douce ébullition pendant, allez, 30 min, même pas. Remue de temps en temps. Si tu fais bouillir trop fort, ta cuisine ressemblera à une peinture de Pollock.\r\n    Etape 4\r\n    Mixe tout ça. Si tu n’as pas de mixeur, prends une fourchette, tords-la à angle droit, et écrase, écrase. Plus ça aura cuit, plus ça sera facile d’écraser les tomates. Par ton opiniâtreté à mixer/écraser, tu choisis la consistance de ton jus: veux-tu des petits morceaux de tomates dans ton jus, ou un jus complètement velouté? Si tu considères le résultat trop liquide, laisse encore sur le feu.\r\n    Etape 5\r\n    C’est prêt. N’ajoute pas de sel! le demi bouillon-cube suffit largement.\r\n    Etape 6\r\n    Si tu as la chance d’avoir des herbes fraîches, essaye une fois de les mettre seulement après avoir mixé, et laisse encore sur le feu.\r\n    Etape 7\r\n    La recette que je t’ai donnée est la recette avec le meilleur rapport goût/prix/technique que je connaisse pour mes pâtes.\r\n    Etape 8\r\n    Cette recette peut aussi devenir aussi ton « Jus de base » pour tes sauces tomate plus évoluées: tu y rajoutes de la viande de bœuf hachée que tu as préalablement bien fait griller à la poêle (la voilà ta bolognaise), et/ou des dés de courgette, aubergine, cubes de poivron ou encore oignons préalablement sautés à la poêle, ou bien du thon, du piment, que sais-je?\r\n    Etape 9\r\n    Pour le fromage râpé, tu as le choix. Je te conseille d’avoir toujours dans ton frigo un petit morceau de « Grana Padano » ou de « Parmiggiano » que tu râperas. Je trouve ça bien meilleur que les trucs déjà râpés.\r\n', '2019-05-01'),
(2, 'Sauce tomate', 0, 0, '1 boîte de tomate pelée ou concassées\r\n1 petite gousse d''ail\r\n1 bouillon cube\r\nFines herbes (sèches ou fraîches) selon les goûts, origan, basilic, persil…', '\r\ntemps total : 1 h\r\nPréparation : 30 min\r\nCuisson : 30 min\r\n\r\n    Etape 1\r\n    Mets le contenu de la boîte dans une petite casserole avec un peu d''eau (la quantité qui te sert à bien rincer ta boîte). Si tu mets trop d''eau c’est pas grave, elle s’en ira.\r\n    Etape 2\r\n    Ajoute ton demi-bouillon, l’ail coupé, tes petites herbes.\r\n    Etape 3\r\n    Ne couvre pas. Laisse à douce ébullition pendant, allez, 30 min, même pas. Remue de temps en temps. Si tu fais bouillir trop fort, ta cuisine ressemblera à une peinture de Pollock.\r\n    Etape 4\r\n    Mixe tout ça. Si tu n’as pas de mixeur, prends une fourchette, tords-la à angle droit, et écrase, écrase. Plus ça aura cuit, plus ça sera facile d’écraser les tomates. Par ton opiniâtreté à mixer/écraser, tu choisis la consistance de ton jus: veux-tu des petits morceaux de tomates dans ton jus, ou un jus complètement velouté? Si tu considères le résultat trop liquide, laisse encore sur le feu.\r\n    Etape 5\r\n    C’est prêt. N’ajoute pas de sel! le demi bouillon-cube suffit largement.\r\n    Etape 6\r\n    Si tu as la chance d’avoir des herbes fraîches, essaye une fois de les mettre seulement après avoir mixé, et laisse encore sur le feu.\r\n    Etape 7\r\n    La recette que je t’ai donnée est la recette avec le meilleur rapport goût/prix/technique que je connaisse pour mes pâtes.\r\n    Etape 8\r\n    Cette recette peut aussi devenir aussi ton « Jus de base » pour tes sauces tomate plus évoluées: tu y rajoutes de la viande de bœuf hachée que tu as préalablement bien fait griller à la poêle (la voilà ta bolognaise), et/ou des dés de courgette, aubergine, cubes de poivron ou encore oignons préalablement sautés à la poêle, ou bien du thon, du piment, que sais-je?\r\n    Etape 9\r\n    Pour le fromage râpé, tu as le choix. Je te conseille d’avoir toujours dans ton frigo un petit morceau de « Grana Padano » ou de « Parmiggiano » que tu râperas. Je trouve ça bien meilleur que les trucs déjà râpés.\r\n', '2019-05-01');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
`id_user` int(5) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` binary(40) NOT NULL,
  `droits` varchar(40) NOT NULL,
  `FK_id_recetteVotee` int(5) DEFAULT NULL
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
MODIFY `id_recette` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;