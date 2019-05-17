-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 17 Mai 2019 à 05:51
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commentaire`
--

INSERT INTO `commentaire` (`id_commentaire`, `titre`, `corps`, `signalement`, `date`, `FK_id_user`, `FK_id_recette`) VALUES
(1, 'Super recette!', 'Je l''ai faite de nombreuses fois, elle est très bonne.', '', '2019-03-22', 1, 2),
(2, 'Miam!', 'Je me régale régulièrement de cette recette', '', '2019-05-10', 5, 2),
(3, 'Très bon!', 'miam!', '', '2019-05-13', 5, 12),
(4, 'Pas top', 'Bof...', '', '2019-05-02', 1, 12);

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
  `image` varchar(300) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `recette`
--

INSERT INTO `recette` (`id_recette`, `titre`, `votes_positifs`, `votes_negatifs`, `ingredients`, `description`, `image`, `date`) VALUES
(2, 'Sauce Tomate', 5, 3, '1 boîte de tomate pelée ou concassées\r\n<br/>1 petite gousse d''ail\r\n<br/>1 bouillon cube\r\n<br/>Fines herbes (sèches ou fraîches) selon les goûts, origan, basilic, persil…', 'temps total : 1 h<br/>Préparation : 30 min<br/>Cuisson : 30 min<br/>Etape 1    Mets le contenu de la boîte dans une petite casserole avec un peu d''eau (la quantité qui te sert à bien rincer ta boîte). Si tu mets trop d''eau c’est pas grave, elle s’en ira.  <br/>  Etape 2    Ajoute ton demi-bouillon, l’ail coupé, tes petites herbes.    <br/>Etape 3    Ne couvre pas. Laisse à douce ébullition pendant, allez, 30 min, même pas. Remue de temps en temps. Si tu fais bouillir trop fort, ta cuisine ressemblera à une peinture de Pollock.    <br/>Etape 4    Mixe tout ça. Si tu n’as pas de mixeur, prends une fourchette, tords-la à angle droit, et écrase, écrase. Plus ça aura cuit, plus ça sera facile d’écraser les tomates. Par ton opiniâtreté à mixer/écraser, tu choisis la consistance de ton jus: veux-tu des petits morceaux de tomates dans ton jus, ou un jus complètement velouté? Si tu considères le résultat trop liquide, laisse encore sur le feu.  <br/>  Etape 5    C’est prêt. N’ajoute pas de sel! le demi bouillon-cube suffit largement.  <br/>  Etape 6    Si tu as la chance d’avoir des herbes fraîches, essaye une fois de les mettre seulement après avoir mixé, et laisse encore sur le feu.  <br/>  Etape 7    La recette que je t’ai donnée est la recette avec le meilleur rapport goût/prix/technique que je connaisse pour mes pâtes. <br/>   Etape 8    Cette recette peut aussi devenir aussi ton « Jus de base » pour tes sauces tomate plus évoluées: tu y rajoutes de la viande de bœuf hachée que tu as préalablement bien fait griller à la poêle (la voilà ta bolognaise), et/ou des dés de courgette, aubergine, cubes de poivron ou encore oignons préalablement sautés à la poêle, ou bien du thon, du piment, que sais-je?  <br/>  Etape 9    Pour le fromage râpé, tu as le choix. Je te conseille d’avoir toujours dans ton frigo un petit morceau de « Grana Padano » ou de « Parmiggiano » que tu râperas. Je trouve ça bien meilleur que les trucs déjà râpés.', 'https://assets.afcdn.com/recipe/20170512/11496_w1024h768c1cx2808cy1872.jpg', '2019-05-01'),
(3, 'Tarte aux fraises', 12, 3, 'Pour 6 personnes\r\npour la pâte sablée :\r\n\r\n    <br/>250 g de farine\r\n    <br/>125 g de beurre\r\n    <br/>70 g de sucre\r\n    <br/>2 jaunes d''oeuf\r\n   <br/> 5 cl d''eau\r\n   <br/> 1 pincée de sel\r\n<br/>\r\npour la crème pâtissière :\r\n\r\n    25 cl de lait\r\n    1 oeuf\r\n    30 g de farine\r\n    40 g de sucre\r\n    1 sachet de sucre vanillé\r\n    500 g de fraises (ou plus ;)\r\n', '\r\ntemps total : 35 min\r\n<br/>Préparation : 15 min\r\n<br/>Cuisson : 20 min\r\n\r\n    <br/>Etape 1\r\n    PÂTE:\r\n\r\n    Blanchir les jaunes et le sucre au fouet et détendre le mélange avec un peu d''eau.\r\n    <br/>Etape 2\r\n    Mélanger au doigt la farine et le beurre coupé en petites parcelles pour obtenir une consistance sableuse et que tout le beurre soit absorbé (!!! Il faut faire vite pour que le mélange ne ramollisse pas trop!).\r\n   <br/> Etape 3\r\n    Verser au milieu de ce "sable" le mélange liquide.\r\n    Incorporer au couteau les éléments rapidement sans leur donner de corps.\r\n    <br/>Etape 4\r\n    Former une boule avec les paumes et fraiser 1 ou 2 fois pour rendre la boule + homogène.\r\n   <br/> Etape 5\r\n    Foncer un moule de 25 cm de diamètre avec la pâte, garnissez la de papier sulfurisé et de haricots secs.\r\n\r\n    Faire cuire à blanc 20 à 25 min, à 180°C (thermostat 6).\r\n    <br/>Etape 6\r\n    CRÈME PÂTISSIÈRE :\r\n\r\n    Mettre le lait à bouillir avec le parfum choisi (vanille ou autre).\r\n   <br/> Etape 7\r\n    Travailler l''oeuf avec le sucre jusqu''à ce que la pâte fasse le ruban, ajouter la farine.\r\n    <br/>Etape 8\r\n    Verser le lait bouillant sur le mélange en tournant bien.\r\n    <br/>Etape 9\r\n    Remettre dans la casserole sur le feu.\r\n    Faire cuire en tournant très soigneusement.\r\n    Retirer après ébullition.\r\n    <br/>Etape 10\r\n    Verser la crème sur le fond de tarte et disposer joliment les fraises coupées en 2.\r\n<br/>\r\nNote de l''auteur\r\n<br/>\r\nJ''utilise la même pâte que pour la tarte au citron meringuée (sur Marmiton!)... C''est un délice!! ', 'https://www.cookomix.com/wp-content/uploads/2017/04/tarte-aux-fraises-thermomix-800x600.jpg', '2018-10-17'),
(4, 'Charlotte aux fraises', 12, 3, '    500 g de fraises (gariguettes)\r\n    <br/>30 boudoirs\r\n    <br/>5 pots de Gervita (= fromage blanc + crème fouettée)\r\n    <br/>Sucre\r\n   <br/> Alcool de fruits ou Grand Marnier (pour ceux qui préfèrent la version alcoolisée)\r\n', 'temps total : 15 min\r\n<br/>Préparation : 15 min\r\n\r\n    <br/>Etape 1\r\n    Prévoir du film alimentaire et un moule à charlotte ou à soufflé.\r\n   <br/> Etape 2\r\n    Equeutez les fraises, coupez- les en grands morceaux.\r\n   <br/> Etape 3\r\n    Placez le film plastique dans le moule en en laissant déborder largement.\r\n  <br/>  Etape 4\r\n    Faire fondre le sucre dans de l''eau ou diluez l''alcool, puis faire passer rapidement les biscuits sur les deux faces dans la dilution ; placez les biscuits dans le fond et sur les bords du moule. Mettre très peu de sucre dans le Gervita. mettez une couche de Gervita, une couche de fraises, quelques biscuits. Recommencez.\r\n    <br/>Etape 5\r\n    Mettre au frigidaire. Servir frais', 'https://www.ptitchef.com/imgupl/recipe/charlotte-aux-fraises-facile-et-rapide--md-453437p702506.jpg', '2018-08-23'),
(5, 'Veloute de potirons', 43, 1, '1 kg de potiron\r\n<br/>500 g de carotte\r\n<br/>2 pommes de terre\r\n<br/>1 gousse d''ail\r\n<br/>1 oignon\r\n<br/>1/2 l de lait\r\n<br/>1/2 l de bouillon de volaille\r\n<br/>1 cuillère à soupe de huile d''olive\r\n<br/>Persil\r\n<br/>Poivre\r\n<br/>Sel\r\n<br/>Muscade\r\n<br/>10 cl de crème liquide (facultatif)\r\n', 'temps total : 1 h\r\n<br/>Préparation : 30 min\r\n<br/>Cuisson : 30 min\r\n\r\n    <br/>Etape 1\r\n    Éplucher et couper en dés le potiron, les pommes de terre, les carottes en rondelles.\r\n    <br/>Etape 2\r\n    Emincer l''ail et l''oignon.\r\n    <br/>Etape 3\r\n    Faire suer l''oignon dans l''huile d''olive.\r\n    <br/>Etape 4\r\n    Ajouter tous les légumes et l''ail puis verser le bouillon et le lait.\r\n    <br/>Etape 5\r\n    Saler, poivrer, "muscader" et laisser cuire environ une trentaine de minutes.\r\n   <br/> Etape 6\r\n    Mixer le tout (ajouter éventuellement la crème) et rectifier l''assaisonnement si nécessaire.\r\n   <br/> Etape 7\r\n    Bon appétit !\r\n', 'https://assets.afcdn.com/recipe/20160325/63237_w800h600c1cx1000cy1500.jpg', '2019-05-04'),
(6, 'Pâte à crêpes sucrée', 43, 12, '    250 g de farine\r\n    <br/>3 oeufs\r\n   <br/> 50 cl de lait demi-écrémé\r\n   <br/> 1 sachet de sucre vanillé\r\n   <br/> 2 c. à soupe de rhum', 'ÉTAPE 1 Dans un saladier, versez la farine. Ajoutez progressivement le lait en remuant.\r\n<br/>ÉTAPE 2 Dans un bol, fouettez les oeufs avec le sucre puis ajoutez le tout au saladier. Mélangez.\r\n<br/>ÉTAPE 3 Ajoutez le rhum et fouettez de nouveau.\r\n<br/>ÉTAPE 4 Laissez reposer 1 heure à température ambiante.\r\n<br/>ÉTAPE 5 Faites cuire vos crêpes dans une crêpière.', 'https://static.cuisineaz.com/680x357/i135076-pate-a-crepes-sucree.jpeg', '2018-12-16'),
(7, 'Tarte', 56, 12, '    1 pâte brisée\r\n   <br/> 1 boîte de thon naturel\r\n   <br/> 4 oeufs\r\n    <br/>1 sachet de gruyére rapé\r\n    <br/>50 cl de créme liquide\r\n    <br/>3 tomates\r\n    <br/>quelques feuilles de basilic', 'ÉTAPE 1 Préchauffez le four th.7 (210°C).\r\n<br/>ÉTAPE 2 Etalez la pâte dans un plat à tarte.\r\n<br/>ÉTAPE 3 Egouttez le thon, coupez les tomates en rondelles.\r\n\r\n<br/>ÉTAPE 4 Dans un saladier, mettez le thon, les oeufs entiers, la créme, le basilic. Salez et poivrez.\r\n\r\n<br/>ÉTAPE 5 Ajoutez le gruyére rapé, décorez avec les rondelles de tomates et enfournez pendant 25 min.', 'https://static.cuisineaz.com/680x357/i91841-photo-de-tarte-au-thon.jpg', '2018-05-14'),
(8, 'Lasagnes', 290, 2, '\r\n    Pour la lasagne maison :\r\n    <br/>300 g bœuf haché\r\n   <br/> 1/2 paquet de feuilles de lasagnes\r\n  <br/>  1 oignon\r\n   <br/> 1 gousse d''ail\r\n    <br/>800 g de pulpe de tomate en conserve\r\n    <br/>100 g de gruyère râpé\r\n   <br/> 50 g de parmesan râpé\r\n    <br/>2 morceaux de sucre\r\n   <br/> 4 c. à soupe huile d''olive\r\n    <br/>20 g de beurre\r\n   <br/> 1 c. à soupe d''herbes de provence\r\n    sel, poivre\r\n   <br/> Pour la sauce béchamel :\r\n    <br/>70 g de farine\r\n    <br/>50 cl de lait\r\n    <br/>70 g de beurre\r\n    <br/>1 pincée de noix de muscade\r\n    sel, poivre', '\r\n\r\nÉTAPE 1Priorité à la garniture des lasagnes : pelez l''oignon et la gousse d''ail, et émincez-les finement, puis faites-les revenir à feu doux dans une casserole avec 2 c. à soupe d''huile d''olive, jusqu''à ce que les oignons deviennent un peu translucides.\r\n<br/>\r\nÉTAPE 2Ajoutez ensuite la pulpe de tomate, le sucre et les herbes de provence. Salez, poivrez, puis laissez réduire et mijoter à feu doux pendant 20 min. Pendant la cuisson de la sauce tomate, faites revenir le boeuf dans une poêle avec 2 c. à soupe l''huile d''olive, pendant 3 à 5 min à feu moyen. Salez et poivrez, puis mélangez à la sauce tomate et attendez la fin de la cuisson.\r\n<br/>\r\nÉTAPE 3Pour préparer la sauce béchamel, faites d''abord fondre le beurre dans une casserole, puis ajoutez la farine hors du feu et mélangez le tout au fouet. Ajoutez le lait, fouettez énergiquement pour éviter la formation de grumeaux. Replacez sur feu doux et laissez épaissir quelques minutes, tout en mélangeant régulièrement. Salez, poivrez et parfumez avec la noix de muscade.\r\n<br/>\r\nÉTAPE 4Quand la garniture et la béchamel sont prêtes, préchauffez le four à 180°C (th. 6) le temps de "monter" votre lasagne maison. Graissez les parois d''un plat à gratin avec le beurre fondu, puis déposez dans le fond une couche de feuilles de pâte à lasagne et nappez-la de sauce béchamel.\r\n<br/>\r\nÉTAPE 5Ajoutez par dessus une couche de garniture à la sauce tomate et au boeuf haché, puis parsemez de gruyère râpé. Répétez l''opération jusqu''à épuisement des ingrédients, en terminant par une couche de béchamel que vous n''oublierez pas de couvrir d''une belle couche de parmesan râpé.\r\n\r\n<br/>ÉTAPE 6Enfournez votre lasagne maison pendant 45 min le temps de la laisser cuire et gratiner, puis laissez-la refroidir 5 à 10 min avant de la servir en belles portions rectangulaires.\r\n', 'https://static.cuisineaz.com/680x357/i19403-lasgnes-bolognaise-facile.jpg', '2019-01-08'),
(9, 'Pizza fromage', 78, 23, '\r\n    Pour la pâte à pizza :\r\n    <br/>250 g de farine\r\n    <br/>2 c. à soupe d''huile d’olive\r\n    <br/>15 cl d’eau froide + 2 c. à soupe\r\n    <br/>1 pincée de sucre en poudre\r\n    <br/>15 g de levure fraîche de boulanger\r\n    <br/>1/2 c. à café de sel\r\n   <br/> Pour la garniture :\r\n    <br/>80 g de gruyère râpé\r\n   <br/> 80 g de parmesan râpé\r\n    <br/>80 g de comté râpé\r\n    <br/>80 g de mimolette râpée\r\n   <br/> 80 g de chèvre frais\r\n    <br/>30 cl de coulis de tomate\r\n   <br/> sel, poivre\r\n', '\r\n\r\nÉTAPE 1 Préparez la pâte :\r\n<br/>\r\nÉTAPE 2 Faites chauffer les cuillerées à soupe d''eau dans une tasse.\r\n<br/>\r\nÉTAPE 3 Délayez-y la levure fraîche de boulanger à l’aide d’une cuillère, puis laissez reposer de côté pendant 20 min.\r\n<br/>\r\nÉTAPE 4 Au bout de ce temps, mélangez la farine, le sel et le sucre en poudre dans un saladier.\r\n<br/>\r\nÉTAPE 5 Creusez un puits au centre, puis versez la levure délayée et l’huile d’olive.\r\n<br/>\r\nÉTAPE 6 Malaxez le tout avec vos mains, en ajoutant progressivement les 15 cl d’eau froide, jusqu’à obtenir une pâte bien lisse et homogène. La pâte est prête lorsqu’elle se décolle des parois du saladier.\r\n<br/>ÉTAPE 7 Farinez légèrement la pâte de farine, puis recouvrez le saladier avec un torchon propre et laissez lever pendant 1h à température ambiante.\r\n<br/>ÉTAPE 8 Au bout des 1h, préparez la pizza :\r\n<br/>ÉTAPE 9 Préchauffez le four à 240°C ou sur th. 8.\r\n\r\n<br/>ÉTAPE 10 Dégazez la pâte et retirez-la du saladier. Déposez-la sur un plan de travail fariné, puis étalez-la en forme de disque à l’aide d’un rouleau à pâtisserie. Posez ensuite le disque de pâte sur une plaque de four recouverte de papier sulfurisé.\r\n<br/>\r\nÉTAPE 11 Répartissez le coulis de tomate sur la pâte à l’aide d’une cuillère à soupe.\r\n<br/>\r\nÉTAPE 12 Répartissez le gruyère, le parmesan, le comté et la mimolette râpée sur la pâte. Émiettez le chèvre frais par dessus. Salez et poivrez selon vos goûts.\r\n<br/>\r\nÉTAPE 13 Enfournez la pizza dans le four préchauffé et laissez cuire pendant 15 min.\r\n<br/>\r\nÉTAPE 14 Servez et dégustez bien chaud.\r\nAccord vin\r\n', 'https://static.cuisineaz.com/680x357/i79009-photo-de-pizza-aux-cinq-fromages.jpg', '2017-02-21'),
(10, 'Gratin de chèvre', 34, 56, '\r\n    6 chévre frais\r\n    <br/>25 cl de créme liquide\r\n    <br/>1 bouquet de thym\r\n    <br/>1 oeuf\r\n    <br/>1 c. à soupe d''huile\r\n    <br/>poivre', 'ÉTAPE 1Préchauffez le four th.6 (180°C).\r\n<br/>ÉTAPE 2Huilez un plat à gratin.\r\n<br/>ÉTAPE 3Coupez les chèvres en 2 dans l’épaisseur et posez-les dans un plat à gratin. Poivrez.\r\n\r\n<br/>ÉTAPE 4Versez la crème dans un bol et fouettez l’œuf dedans, ajoutez le thym effeuillé, poivrez.\r\n\r\n<br/>ÉTAPE 5Versez cette préparation sur les chèvres.\r\n\r\n<br/>ÉTAPE 6Enfournez le plat à gratin et faites cuire jusqu’à ce que les chèvres soient bien gratinés. ', 'https://static.cuisineaz.com/680x357/i103871-photo-de-gratin-de-chevre.jpg', '2018-02-20'),
(11, 'Spaghetti carbonara', 345, 45, '\r\n    160 g de spaghetti sans blé/sans gluten\r\n   <br/> 1 oeufs calibre gros\r\n   <br/> 60 g de bacon de poulet\r\n   <br/> 14 g de beurre non salé\r\n   <br/> 3 g de parmesan\r\n   <br/> sel\r\n   <br/> poivre\r\n   <br/> papier absorbant', 'ÉTAPE 1 Pour gagner du temps, préparer la sauce et faire cuire les pâtes en même temps: Commencer par faire cuire les pâtes.\r\n<br/>\r\nÉTAPE 2 Pendant ce temps, hacher le bacon et le placer dans un poêlon anti-adhésif. Frire jusqu''à ce qu''il soit croustillant, puis réserver sur une feuille de papier pour absorber le surplus de gras.\r\n<br/>ÉTAPE 3 Mettre l''(es) oeuf(s) dans le bol de service des pâtes, saler et poivrer. Battre pendant 1 min à l''aide d''une fourchette et\r\n<br/>\r\nÉTAPE 4 réserver dans le four à température minimale, pour garder le tout au chaud.\r\n\r\n<br/>ÉTAPE 5 Verser les spaghetti égouttés dans le bol de service. Mélanger rapidement afin que les oeufs puissent cuire et bien recouvrir les spaghetti. Ajouter le bacon frit, le beurre et le fromage râpé.\r\n<br/>\r\nÉTAPE 6 Vérifier l''assaisonnement avant de servir dans les assiettes chaudes.', 'https://static.cuisineaz.com/680x357/i92618-spaghetti-carbonara-halal-sans-gluten.jpg', '2019-02-12'),
(12, 'Soupe de poulet', 45, 56, '\r\n    1 carcasse de poulet cuit ( + 1 cuisse de poulet)\r\n    <br/>8 champignons noirs (Suzi wan)\r\n    <br/>1 morceau gingembre frais (de 3 cm)\r\n    <br/>1.5 c. à café purée de piments (Suzi Wan)\r\n    <br/>1 paquet nouille aux oeufs (Suzi Wan)\r\n    <br/>3 oignons\r\n    <br/>3 clous girofle\r\n    <br/>3 anis étoilées (ou badiane)\r\n   <br/> 2 ciboules (plante aromatique)\r\n    <br/>8 brins coriandre fraiche\r\n   <br/> 2 citrons confits', 'ÉTAPE 1 Dans un grand faitout, versez 4 litres d’eau, ajoutez la carcasse de poulet et la cuisse, le gingembre non pelé coupé en deux dans l’épaisseur, 1 oignon, les clous de girofle, la badiane et les champignons noirs.\r\n<br/>\r\nÉTAPE 2 Faites cuire sur feu moyen pendant 2 heures. \r\n\r\n<br/>ÉTAPE 3 10 min avant la fin de cuisson, ajoutez la purée de piment.\r\nÉTAPE 4Retirez délicatement du faitout, la carcasse de poulet et la cuisse à l’aide d’une écumoire.\r\n\r\n<br/>ÉTAPE 5 Faites cuire les nouilles dans le bouillon. Si le niveau a trop baissé, ajoutez un peu d’eau sans trop éclaircir le boui\r\n', 'https://static.cuisineaz.com/680x357/i87107-photo-de-soupe-de-poulet-aux-champignons-noirs.jpg', '2019-05-20'),
(13, 'Verrine de tartare', 67, 23, '\r\n    250 g de saumon frais\r\n   <br/> 250 g de saumon fumé\r\n   <br/> 100 g de Sojasun Cuisine\r\n    <br/>1 échalote ciselée\r\n    <br/>1 c. à café de sauce Worcestershire\r\n    <br/>2 c. à soupe d''huile d''olive vierge\r\n    <br/>sel, poivre du moulin\r\n', 'ÉTAPE 1 Épluchez l’échalote, ciselez-la. Mélangez-la avec le Sojasun Cuisine. Ajoutez l’huile, assaisonnez de sel et de poivre à votre convenance. Agrémentez de sauce Worcestershire. Mélangez bien et placez au froid.\r\n<br/>\r\nÉTAPE 2 Prenez les deux saumons. Coupez-les en petits dés. L’idéal est d’avoir des pavés de saumon, qui se coupent donc plus facilement en petits dés. Mettez-les dans un saladier.\r\n<br/>ÉTAPE 3 Sortez la sauce du réfrigérateur. Versez-la sur les saumons. Mélangez délicatement avec la sauce. Ajoutez avant de servir de la ciboulette, du persil, de l’estragon… Ajustez avec quelques gouttes de citron pour relever le goût. Remettez au réfrigérateur au moins 1h avant de servir. Mieux, déposez-les au congélateur 15 à 20 min. Ainsi, les verrines de tartare aux deux saumons seront très fraîches !\r\n<br/>\r\nÉTAPE 4 Servez avec du pain de campagne grillé ou sur des feuilles d’endives rouges ou classiques.', 'https://static.cuisineaz.com/680x357/i44732-verrine-de-tartare-aux-deux-saumons.jpg', '2018-10-15');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `name`, `email`, `password`, `droits`, `FK_id_recetteVotee`) VALUES
(1, 'test', 'test@test.test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'user', NULL),
(3, 'visiteur', 'visiteur@ici.ici', '922391a72f5d8792a0b66b6cb3674d5eae454bda', 'visiteur', NULL),
(4, 'admin', 'admin@ici.ici', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', NULL),
(5, 'liloo', 'liloo@multipass.test', '6b2cb6f64f56257b8e4fe12a06087fee831481da', 'user', NULL),
(6, 'pino', 'semmoud29@gmail.com', '3d95672b7ca966952d7ce9f5dd20f5585f66f52e', 'user', NULL),
(7, 'Marine', 'marine@test.test', '1fd1b4516473c36c8fb30bbf7c4490fc20419a10', 'user', NULL),
(8, 'Marinea', 'marinea@test.test', '1fd1b4516473c36c8fb30bbf7c4490fc20419a10', 'visiteur', NULL),
(9, 'MarineB', 'marineB@test.test', '1fd1b4516473c36c8fb30bbf7c4490fc20419a10', 'visiteur', 1),
(10, 'Julien', 'julien@test.test', '5c682c2d1ec4073e277f9ba9f4bdf07e5794dabe', 'visiteur', NULL);

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
MODIFY `id_commentaire` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `recette`
--
ALTER TABLE `recette`
MODIFY `id_recette` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;