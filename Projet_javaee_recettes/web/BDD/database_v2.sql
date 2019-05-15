-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 15 Mai 2019 à 12:19
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `recette`
--

INSERT INTO `recette` (`id_recette`, `titre`, `votes_positifs`, `votes_negatifs`, `ingredients`, `description`, `date`) VALUES
(2, 'Sauce Tomate', 0, 0, '1 boîte de tomate pelée ou concassées\r\n1 petite gousse d''ail\r\n1 bouillon cube\r\nFines herbes (sèches ou fraîches) selon les goûts, origan, basilic, persil…', 'temps total : 1 hPréparation : 30 minCuisson : 30 min    Etape 1    Mets le contenu de la boîte dans une petite casserole avec un peu d''eau (la quantité qui te sert à bien rincer ta boîte). Si tu mets trop d''eau c’est pas grave, elle s’en ira.    Etape 2    Ajoute ton demi-bouillon, l’ail coupé, tes petites herbes.    Etape 3    Ne couvre pas. Laisse à douce ébullition pendant, allez, 30 min, même pas. Remue de temps en temps. Si tu fais bouillir trop fort, ta cuisine ressemblera à une peinture de Pollock.    Etape 4    Mixe tout ça. Si tu n’as pas de mixeur, prends une fourchette, tords-la à angle droit, et écrase, écrase. Plus ça aura cuit, plus ça sera facile d’écraser les tomates. Par ton opiniâtreté à mixer/écraser, tu choisis la consistance de ton jus: veux-tu des petits morceaux de tomates dans ton jus, ou un jus complètement velouté? Si tu considères le résultat trop liquide, laisse encore sur le feu.    Etape 5    C’est prêt. N’ajoute pas de sel! le demi bouillon-cube suffit largement.    Etape 6    Si tu as la chance d’avoir des herbes fraîches, essaye une fois de les mettre seulement après avoir mixé, et laisse encore sur le feu.    Etape 7    La recette que je t’ai donnée est la recette avec le meilleur rapport goût/prix/technique que je connaisse pour mes pâtes.    Etape 8    Cette recette peut aussi devenir aussi ton « Jus de base » pour tes sauces tomate plus évoluées: tu y rajoutes de la viande de bœuf hachée que tu as préalablement bien fait griller à la poêle (la voilà ta bolognaise), et/ou des dés de courgette, aubergine, cubes de poivron ou encore oignons préalablement sautés à la poêle, ou bien du thon, du piment, que sais-je?    Etape 9    Pour le fromage râpé, tu as le choix. Je te conseille d’avoir toujours dans ton frigo un petit morceau de « Grana Padano » ou de « Parmiggiano » que tu râperas. Je trouve ça bien meilleur que les trucs déjà râpés.', '2019-05-01'),
(3, 'Tarte aux fraises', 0, 0, 'Pour 6 personnes\r\npour la pâte sablée :\r\n\r\n    250 g de farine\r\n    125 g de beurre\r\n    70 g de sucre\r\n    2 jaunes d''oeuf\r\n    5 cl d''eau\r\n    1 pincée de sel\r\n\r\npour la crème pâtissière :\r\n\r\n    25 cl de lait\r\n    1 oeuf\r\n    30 g de farine\r\n    40 g de sucre\r\n    1 sachet de sucre vanillé\r\n    500 g de fraises (ou plus ;)\r\n', '\r\ntemps total : 35 min\r\nPréparation : 15 min\r\nCuisson : 20 min\r\n\r\n    Etape 1\r\n    PÂTE:\r\n\r\n    Blanchir les jaunes et le sucre au fouet et détendre le mélange avec un peu d''eau.\r\n    Etape 2\r\n    Mélanger au doigt la farine et le beurre coupé en petites parcelles pour obtenir une consistance sableuse et que tout le beurre soit absorbé (!!! Il faut faire vite pour que le mélange ne ramollisse pas trop!).\r\n    Etape 3\r\n    Verser au milieu de ce "sable" le mélange liquide.\r\n    Incorporer au couteau les éléments rapidement sans leur donner de corps.\r\n    Etape 4\r\n    Former une boule avec les paumes et fraiser 1 ou 2 fois pour rendre la boule + homogène.\r\n    Etape 5\r\n    Foncer un moule de 25 cm de diamètre avec la pâte, garnissez la de papier sulfurisé et de haricots secs.\r\n\r\n    Faire cuire à blanc 20 à 25 min, à 180°C (thermostat 6).\r\n    Etape 6\r\n    CRÈME PÂTISSIÈRE :\r\n\r\n    Mettre le lait à bouillir avec le parfum choisi (vanille ou autre).\r\n    Etape 7\r\n    Travailler l''oeuf avec le sucre jusqu''à ce que la pâte fasse le ruban, ajouter la farine.\r\n    Etape 8\r\n    Verser le lait bouillant sur le mélange en tournant bien.\r\n    Etape 9\r\n    Remettre dans la casserole sur le feu.\r\n    Faire cuire en tournant très soigneusement.\r\n    Retirer après ébullition.\r\n    Etape 10\r\n    Verser la crème sur le fond de tarte et disposer joliment les fraises coupées en 2.\r\n\r\nNote de l''auteur\r\n\r\nJ''utilise la même pâte que pour la tarte au citron meringuée (sur Marmiton!)... C''est un délice!! ', '2018-10-17'),
(4, 'Charlotte aux fraises', 0, 0, '    500 g de fraises (gariguettes)\r\n    30 boudoirs\r\n    5 pots de Gervita (= fromage blanc + crème fouettée)\r\n    Sucre\r\n    Alcool de fruits ou Grand Marnier (pour ceux qui préfèrent la version alcoolisée)\r\n', 'temps total : 15 min\r\nPréparation : 15 min\r\n\r\n    Etape 1\r\n    Prévoir du film alimentaire et un moule à charlotte ou à soufflé.\r\n    Etape 2\r\n    Equeutez les fraises, coupez- les en grands morceaux.\r\n    Etape 3\r\n    Placez le film plastique dans le moule en en laissant déborder largement.\r\n    Etape 4\r\n    Faire fondre le sucre dans de l''eau ou diluez l''alcool, puis faire passer rapidement les biscuits sur les deux faces dans la dilution ; placez les biscuits dans le fond et sur les bords du moule. Mettre très peu de sucre dans le Gervita. mettez une couche de Gervita, une couche de fraises, quelques biscuits. Recommencez.\r\n    Etape 5\r\n    Mettre au frigidaire. Servir frais', '2018-08-23'),
(5, 'Veloute de potirons et carottes', 0, 0, '1 kg de potiron\r\n500 g de carotte\r\n2 pommes de terre\r\n1 gousse d''ail\r\n1 oignon\r\n1/2 l de lait\r\n1/2 l de bouillon de volaille\r\n1 cuillère à soupe de huile d''olive\r\nPersil\r\nPoivre\r\nSel\r\nMuscade\r\n10 cl de crème liquide (facultatif)\r\n', '\r\ntemps total : 1 h\r\nPréparation : 30 min\r\nCuisson : 30 min\r\n\r\n    Etape 1\r\n    Éplucher et couper en dés le potiron, les pommes de terre, les carottes en rondelles.\r\n    Etape 2\r\n    Emincer l''ail et l''oignon.\r\n    Etape 3\r\n    Faire suer l''oignon dans l''huile d''olive.\r\n    Etape 4\r\n    Ajouter tous les légumes et l''ail puis verser le bouillon et le lait.\r\n    Etape 5\r\n    Saler, poivrer, "muscader" et laisser cuire environ une trentaine de minutes.\r\n    Etape 6\r\n    Mixer le tout (ajouter éventuellement la crème) et rectifier l''assaisonnement si nécessaire.\r\n    Etape 7\r\n    Bon appétit !\r\n', '2019-05-04');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
`id_user` int(5) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) NOT NULL,
  `droits` varchar(40) CHARACTER SET utf8 NOT NULL,
  `FK_id_recetteVotee` int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `name`, `email`, `password`, `droits`, `FK_id_recetteVotee`) VALUES
(1, 'test', 'test@test.test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'user', NULL),
(2, 'aaaa', 'aaaa@aaaa.aaaa', '70c881d4a26984ddce795f6f71817c9cf4480e79', 'user', NULL);

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
MODIFY `id_recette` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;