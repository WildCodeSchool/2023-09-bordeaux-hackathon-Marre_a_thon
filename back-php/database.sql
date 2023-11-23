-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: bordeaux_hackaton
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movies`
--
DROP DATABASE IF EXISTS bordeaux_hackaton;
CREATE DATABASE bordeaux_hackaton;
USE bordeaux_hackaton;

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(250) NOT NULL,
  `movie_img` varchar(2050) NOT NULL,
  `movie_url` varchar(2050) NOT NULL,
  `movie_time` varchar(10) NOT NULL,
  `movie_desc` text NOT NULL,
  `movie_avg` float DEFAULT NULL,
  `movie_release` varchar(10) NOT NULL,
  `movie_trailer` varchar(2050) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Le père Noël est une ordure','https://www.themoviedb.org/t/p/w1280/xkTLoFbNpBPt5SyTPqllw9F97YM.jpg','https://www.themoviedb.org/movie/14645-le-pere-noel-est-une-ordure','1h45','Le soir de Noël, Pierre et Thérèse s’apprêtent à assurer la permanence de « S.O.S. Détresse‐Amitié ». Thérèse reçoit un appel de son amie Josette, une jeune clocharde qui vient de quitter Félix, son miteux compagnon. Déguisé en père Noël, celui‐ci avait passé la soirée à distribuer des prospectus sur le trottoir d’un grand magasin jusqu’à ce que le gérant le renvoie…',7.4,'1982','https://youtu.be/cm8Bk3TbSnQ'),(2,'Maman, j\'ai râté l\'avion !','https://www.themoviedb.org/t/p/w1280/aP9UrDpKS5i5PCiYKDgJvkRz7ne.jpg','https://www.themoviedb.org/movie/771-home-alone','1h43','La famille McCallister a décidé de passer les fêtes de Noël à Paris. \nSeulement Kate et Peter McCallister s\'aperçoivent dans l\'avion qu\'il \nleur manque le plus jeune de leurs enfants, Kevin, âgé de 9 ans. D\'abord\n désespéré, Kevin reprend vite les choses en main et s\'organise pour \nvivre le mieux possible. Quand deux cambrioleurs choisissent sa maison \npour commettre leurs méfaits.',7.4,'1990','https://youtu.be/GPtHAQARLdw'),(3,'Le drôle Noël de Scrooge','https://www.themoviedb.org/t/p/w1280/thn0s6e01fewLW2j1X5htgjKbeJ.jpg','https://www.themoviedb.org/movie/17979-a-christmas-carol','1h36','Parmi tous les marchands de Londres, Ebenezer Scrooge est connu comme l’un des plus riches et des plus avares. Ce vieillard solitaire et insensible vit dans l’obsession de ses livres de comptes. Ni la mort de son associé, Marley, ni la pauvre condition de son employé, Bob Cratchit, n’ont jamais réussi à l’émouvoir. De tous les jours de l’année, celui que Scrooge déteste le plus est Noël. L’idée de répandre joie et cadeaux va définitivement à l’encontre de tous ses principes ! Pourtant, cette année, Scrooge va vivre un Noël qu’il ne sera pas près d’oublier… Tout commence la veille de Noël, lorsqu’en rentrant chez lui, Scrooge a d’étranges hallucinations. Le spectre de son ancien associé lui rend la plus effrayante des visites, et lui en annonce d’autres, aussi magiques que troublantes… Scrooge se voit d’abord confronté à l’Esprit des Noëls passés, qui le replonge dans ses propres souvenirs, réveillant en lui des blessures oubliées et des regrets profondément enfouis…',6.9,'2009','https://youtu.be/GPtHAQARLdw'),(4,'L\'Étrange Noël de monsieur Jack','https://www.themoviedb.org/t/p/w1280/e5hgZBkL1kvY0fGPixZD0468VIA.jpg','https://www.themoviedb.org/movie/9479-the-nightmare-before-christmas','1h15','Jack Skellington, un épouvantail squelettique surnommé « le Roi des citrouilles », vit dans la ville d\'Halloween. En tant que maître de l\'épouvante, Jack occupe ses journées à préparer la prochaine fête d\'Halloween. Mais le terrible épouvantail, lassé de cette vie répétitive et monotone, décide de partir. C\'est alors qu\'il découvre la ville de Noël. Après cette aventure, il revient chez lui, avec une idée originale en tête : et si cette année, c\'étaient les habitants de la ville d\'Halloween qui allaient fêter Noël ?',7.8,'1993','https://youtu.be/E8o_8iKS6mk'),(5,'Le Grinch','https://www.themoviedb.org/t/p/w1280/cmbQRAux3YdOIIk9RIj1Hq3C05f.jpg','https://www.themoviedb.org/movie/8871-how-the-grinch-stole-christmas','1h44','Le Grinch est un croque-mitaine de poils verts qui arbore un sourire élastique jusqu\'aux oreilles. Misanthrope exilé, il vit depuis 53 ans dans une grotte sur le mont Crumpit avec son chien Max. Il se nourrit de jus de laitue, d\'huile de castor et de lait tourné, et a un cœur trois fois trop petit pour aimer qui que ce soit. Recueilli par deux charmantes vieilles dames, le Grinch aurait aimé avoir une enfance et une scolarité normales, avoir des copains et flirter avec la gentille Martha qui le couvait d\'un œil tendre. Mais les petits Whos se comportèrent si cruellement avec lui qu\'ils le contraignirent à l\'exil.',6.7,'2000','https://youtu.be/s8tc12mDbOY'),(6,'Love Actually','https://www.themoviedb.org/t/p/w1280/rJAML5icaPEkj8CU4wLHjpL4RWd.jpg','https://www.themoviedb.org/movie/508-love-actually','2h15','L\'amour est partout, imprévisible, inexplicable, insurmontable. Il frappe quand il veut et souvent, ça fait pas mal de dégâts... Pour le nouveau Premier Ministre britannique, il va prendre la jolie forme d\'une jeune collaboratrice. Pour l\'écrivain au coeur brisé parti se réfugier dans le sud de la France, il surgira d\'un lac. Il s\'éloigne de cette femme qui, installée dans une vie de couple ronronnante, suspecte soudain son mari de songer à une autre. Il se cache derrière les faux-semblants de ce meilleur ami qui aurait bien voulu être autre chose que le témoin du mariage de celle qu\'il aime. Pour ce veuf et son beau-fils, pour cette jeune femme qui adore son collègue, l\'amour est l\'enjeu, le but, mais également la source d\'innombrables complications. À l\'approche de Noël, à Londres, ces vies et ces amours vont se croiser, se frôler et se confronter.',7.1,'2003','https://youtu.be/g5doBFqKKpk'),(7,'Retour vers le futur','https://www.themoviedb.org/t/p/w1280/y9bs2N5rEM51YBXbU7N5PaXJc6W.jpg','https://www.themoviedb.org/movie/105-back-to-the-future','1h56','En 1985, Marty, un adolescent comme les autres, mène une existence morne et ennuyeuse. Heureusement, il est épris de la jolie Jennifer et entretient une profonde amitié avec Doc, un savant fou qui prétend avoir inventé une machine à explorer le temps. Un jour, Doc invite Marty à l\'essayer…',8.3,'1985','https://youtu.be/Q5ffxbs4vYs'),(8,'Le Pôle express','https://www.themoviedb.org/t/p/w1280/tz4DUBcxU7UowOIJwqvQfdWkU2U.jpg','https://www.themoviedb.org/movie/5255-the-polar-express','1h40','Un jeune garçon qui se met à douter de l\'existence du père Noël monte dans un train mystérieux en partance pour le pôle Nord. À mesure que le Pôle Express s\'enfonce dans des contrées enchantées, l\'aventure est au rendez-vous et les jeunes passagers prennent conscience de l\'étendue de leurs dons.',6.7,'2004','https://youtu.be/cCNy5JCfaOg'),(9,'La vie est belle','https://www.themoviedb.org/t/p/w1280/niniH26VfSTF7fefLWwipvNFGbL.jpg','https://www.themoviedb.org/movie/1585-it-s-a-wonderful-life','2h16','Bedford Falls, petite ville de l\'État de New York, la veille de Noël. De chaque foyer s\'élève une prière. Les paroles murmurées avec ferveur concernent toutes le même homme – George Bailey –, qu\'elles proviennent de la bouche de son épouse, de ses enfants, de ses amis et collègues… et de manière générale de tous ceux qui tiennent à lui. Les prières vont être exaucées et Clarence, un ange sans ailes est envoyé au secours de George afin de gagner ses ailes. Avec lui, nous revivons les années écoulées dans la vie de George .Ayant renoncé à son rêve d\'enfant de devenir explorateur, pour reprendre la banque de son père, il a toujours consacré son énergie et son argent à l\'amélioration des conditions de vie des habitants de la ville, en luttant contre le désir de puissance d\'un homme d\'affaires sans scrupules.',8.3,'1946','https://youtu.be/iLR3gZrU2Xo'),(10,'Edward aux mains d\'argent','https://www.themoviedb.org/t/p/w1280/tMCj9KY70NasF2KsiXWpg0m7smK.jpg','https://www.themoviedb.org/movie/162-edward-scissorhands','1h45','Edward n’est pas un garçon ordinaire. Création d’un inventeur, il a reçu un cœur pour aimer, un cerveau pour comprendre. Mais son concepteur est mort avant d’avoir pu terminer son œuvre et Edward se retrouve avec des lames de métal et des instruments tranchants en guise de doigts.',7.7,'1991','https://youtu.be/XdL1oR_L5EM'),(11,'Klaus','https://www.themoviedb.org/t/p/w1280/qb0eCUtvi2Rn5etdqFbaYzvIPYn.jpg','https://www.themoviedb.org/movie/508965-klaus','1h36','Un facteur égoïste et un fabricant de jouets solitaire forgent une amitié improbable, apportant la joie à une bourgade sombre et froide qui en a désespérément besoin.',8.2,'2019','https://youtu.be/h5gR4vUb2rA'),(12,'La Course aux jouets','https://www.themoviedb.org/t/p/w1280/pN98TAu71SfSVLPAUmWWDlKnTQx.jpg','https://www.themoviedb.org/movie/9279-jingle-all-the-way','1h26','Comme tous les enfants américains, et bientôt les autres, Jamie veut un Turbo Man pour Noël. Seulement son papa, homme d\'affaires stressé, a oublié sa promesse. Il s\'en souvient quelques heures avant la remise fatidique des cadeaux et part à la chasse au Turbo Man, qui n\'est plus disponible dans aucun magasin. Une course contre le temps et d\'autres acquéreurs du jouet s\'engage.',6,'1996','https://youtu.be/Tcj_k50GJxc'),(13,'Les Cinq légendes','https://www.themoviedb.org/t/p/w1280/51YlO5sXgchWvvibunzOtfPsDRF.jpg','https://www.themoviedb.org/movie/81188-rise-of-the-guardians','1h37','Il existe dans le monde, dissimulés aux yeux des humains, quatre êtres surnaturels dotés de grands pouvoirs qui protègent l’innocence et l’imaginaire des enfants : le Père Noël, le Lapin de Pâques, la Fée des dents et le Marchand de sable. Lorsqu’ils découvrent que Pitch, un esprit maléfique, œuvre pour répandre ruine et destruction sur le monde, ils réalisent que même en unissant leurs forces, ils ne seront pas de taille. Aussi tentent‐ils de rallier à leur cause Jack Frost, un jeune garçon insouciant et solitaire qui maîtrise le givre et le froid. Ce combat va permettre à Jack de comprendre quelle est sa place dans l’ordre de l’univers…',7.4,'2012','https://youtu.be/fVlx5D3x_5o'),(14,'Joyeux Noël','https://www.themoviedb.org/t/p/w1280/lZ2HM8khLugaTiA1j8S7NiVoxiB.jpg','https://www.themoviedb.org/movie/11661-joyeux-noel','1h56','Lorsque la guerre surgit au creux de l\'été 1914, elle surprend et emporte dans son tourbillon des millions d\'hommes. Nikolaus Sprink, prodigieux ténor à l\'opéra de Berlin, va devoir renoncer à sa belle carrière et surtout à celle qu\'il aime : Anna Sörensen, soprane et partenaire de chant. Le prêtre anglican Palmer s\'est porté volontaire pour suivre Jonathan, son jeune aide à l\'église. Ils quittent leur Ecosse, l\'un comme soldat, l\'autre comme brancardier. Le lieutenant Audebert a dû laisser sa femme enceinte et alitée pour aller combattre l\'ennemi. Mais depuis, les Allemands occupent la petite ville du Nord où la jeune épouse a probablement accouché à présent. Et puis arrive Noël, avec sa neige et son cortège de cadeaux des familles et des Etats majors. Mais la surprise ne viendra pas des colis généreux qui jonchent les tranchées françaises, écossaises et allemandes…',7.4,'2005','https://youtu.be/bnRgrxsQaIQ'),(15,'The Holiday','https://www.themoviedb.org/t/p/w1280/wpjqSv3I364qjEOhzktSaUQEyKS.jpg','https://www.themoviedb.org/movie/1581-the-holiday','2h15','Une Américaine, Amanda, et une Anglaise, Iris, toutes deux déçues des hommes, décident, sans se connaître, d\'échanger leurs appartements. Iris, va débarquer dans une demeure de rêve tandis que la distinguée Amanda découvre une petite maison de campagne sans prétentions. Les deux femmes pensent passer de paisibles vacances loin de la gente masculine, mais c\'était sans compter l\'arrivée du frère d\'Iris dans la vie d\'Amanda, et la rencontre de Miles pour Iris.',7.1,'2006','https://youtu.be/MaVNC5gjYHY'),(16,'Un jour sans fin','https://www.themoviedb.org/t/p/w1280/kSdgmtOmxFxdiJqK1R3kfKBqRUo.jpg','https://www.themoviedb.org/movie/137-groundhog-day','1h41','Phil Connors, présentateur météo grincheux et arrogant, doit tourner un reportage sur la fête de la marmotte. Mais lorsqu\'il se réveille le lendemain, il découvre avec stupeur que la date n\'a pas changé et qu\'il est condamné à revivre un par un les événements de la veille. Connors se voit dès lors obligé de faire face à la répétition infinie du Jour de la marmotte.',7.6,'1993','https://youtu.be/m8Z3PPOLvm8'),(17,'Charlie et la chocolaterie','https://www.themoviedb.org/t/p/w1280/lxzRFeCHblcE1vc4GVXGN0otrSA.jpg','https://www.themoviedb.org/movie/118-charlie-and-the-chocolate-factory','1h55','Charlie est un enfant issu d\'une famille pauvre. Travaillant pour subvenir aux besoins des siens, il doit économiser chaque penny, et ne peut s\'offrir les friandises dont raffolent les enfants de son âge. Pour obtenir son comptant de sucreries, il participe à un concours organisé par l\'inquiétant Willy Wonka, le propriétaire de la fabrique de chocolat de la ville. Celui qui découvrira l\'un des cinq tickets d\'or que Wonka a caché dans les barres de chocolat de sa fabrication gagnera une vie de sucreries.',7,'2005','https://youtu.be/ylC9q4yZx6s'),(18,'Harry Potter à l\'école des sorciers','https://www.themoviedb.org/t/p/w1280/fbxQ44VRdM2PVzHSNajUseUteem.jpg','https://www.themoviedb.org/movie/671-harry-potter-and-the-philosopher-s-stone','2h33','Orphelin, le jeune Harry Potter peut enfin quitter ses tyranniques oncle et tante Dursley lorsqu\'un curieux messager lui révèle qu\'il est un sorcier. À 11 ans, Harry va enfin pouvoir intégrer la légendaire école de sorcellerie de Poudlard, y trouver une famille digne de ce nom et des amis, développer ses dons, et préparer son glorieux avenir.',7.9,'2001','https://youtu.be/UMs6IqPievo');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `recipe_title` varchar(250) NOT NULL,
  `recipe_description` text NOT NULL,
  `recipe_img` varchar(2050) NOT NULL,
  `recipe_url` varchar(2050) NOT NULL,
  `recipe_level` varchar(100) NOT NULL,
  `recipe_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'Minis blinis de saumon aux truffes','C\'est lors des fêtes que l\'on peut se faire plaisir en mangeant pleins de petits fours et tartines de ce genre... Essayer d\'en faire chez vous.','https://www.ptitchef.com/imgupl/recipe/minis-blinis-de-saumon-aux-truffes--md-70165p93833.jpg','https://www.ptitchef.com/recettes/aperitif/minis-blinis-de-saumon-aux-truffes-fid-12582','Facile','Apéritif'),(2,'Mini tatins de foie gras','Une recette sucrée-salée qui fera fureur auprès de vos invités lors de vos repas de fêtes.','https://www.ptitchef.com/imgupl/recipe/mini-tatins-de-foie-gras--lg-451661p699022.jpg','https://www.ptitchef.com/recettes/entree/mini-tatins-de-foie-gras-fid-1566682','Facile','Entrée'),(3,'Pourlarde Farcie au fois gras','Les fêtes de fin d\'années sont l\'occasion de réaliser des plats inédits et savoureux pour faire plaisir à vos convives et passer un bon moment autour d\'une poularde farcie au foie gras.','https://www.ptitchef.com/imgupl/recipe/pourlarde-farcie-au-fois-gras--md-954p1026.jpg','https://www.ptitchef.com/recettes/plat/pourlarde-farcie-au-fois-gras-fid-203571','Difficile','Plat'),(4,'Noix de Saint-Jacques flambées, sauce corail','Simple comme bonjour et parfaite pour un moment de fêtes réussi !','https://mycancalekitchen.com/wp-content/uploads/2017/04/corail-st-jacques.jpg','https://www.ptitchef.com/recettes/plat/noix-de-saint-jacques-flambees-sauce-corail-fid-1493220','Facile','Plat'),(5,'Chapon aux marrons traditionnel','Le chapon, la viande bien tendre qu\'on se régale de déguster pour Noël et/ou Nouvel an. Farcie avec du veau haché, des petits légumes et accompagnée de marrons, ça promet un plat de fêtes maison en bonne et due forme ! ','https://www.ptitchef.com/imgupl/recipe/chapon-aux-marrons-traditionnel--md-455155p706607.jpg','https://www.ptitchef.com/recettes/plat/chapon-aux-marrons-traditionnel-fid-1570119','Moyen','Plat'),(6,'Soufflés au fromage bien moelleux et aérés','Vous pensez que les soufflés au fromage sont difficiles à faire ? Détrompez-vous ! C\'est au contraire ultra simple.Vous n\'aurez qu\'à préparer la pâte puis à la mettre dans des petits ramequins individuels.','https://www.ptitchef.com/imgupl/recipe/souffles-au-fromage-bien-moelleux-et-aeres--lg-451108p697791.jpg','https://www.ptitchef.com/recettes/entree/souffles-au-fromage-faciles-fid-1566175','Moyen','Entrée'),(7,'Velouté de butternut chorizo noix','Un délicieux velouté bien réconfortant au butternut relevé par le chorizo et parfumé par la coriandre et le curcuma avec une petite touche croquante apportée par le concassé de noix.','https://www.ptitchef.com/imgupl/recipe/veloute-de-butternut-chorizo-noix--lg-383400p612812.jpg','https://www.ptitchef.com/recettes/entree/veloute-de-butternut-chorizo-noix-fid-1562620','Facile','Entrée'),(8,'Soupe feuilletée poireau pomme de terre','Rendons nos classiques soupes un peu plus chics et raffinées en leur ajoutant une coque feuilletée. Aussi appelée \'soupe en montgolfière\', cette recette ultra facile sera parfaite pour débuter les hostilités de vos repas de fêtes.','https://www.ptitchef.com/imgupl/recipe/soupe-feuilletee-poireau-pomme-de-terre--lg-455038p706234.jpg','https://www.ptitchef.com/recettes/plat/soupe-feuilletee-poireau-pomme-de-terre-fid-1570027','Facile','Plat'),(9,'Rôti de Porc aux Châtaignes & aux Cêpes','Un plat qui sent bon l\'automne, avec la présence de châtaignes légèrement caramélisées, de champignons et d\'un jus de cuisson épais et sirupeux.','https://static.saisons-vives.com/assets/imgupload/5/0/7/7/image_5077.jpg','https://www.ptitchef.com/recettes/plat/roti-de-porc-aux-chataignes-aux-cepes-fid-1136037','Moyen','Plat'),(10,'Bûche de Noël fourrée à la chantilly','Vous n\'avez pas d\'idées pour votre dessert du Noël ? Pas de panique, notre équipe est là et vous propose une recette de bûche de Noël fourrée à la chantilly.','https://www.ptitchef.com/imgupl/recipe/buche-de-noel-fourree-a-la-chantilly--lg-143661p215135.jpg','https://www.ptitchef.com/recettes/dessert/buche-de-noel-fourree-a-la-chantilly-fid-1558706','Facile','Dessert'),(11,'Bûche à la mangue et à la framboise','Et si vous faisiez la traditionnelle bûche de Noël vous-même cette année ?! On vous propose ici une recette aux saveurs fruitées puisqu\'elle allie mangue et framboise. L\'occasion de terminer ce repas de fêtes sur une note de fraîcheur !','https://www.ptitchef.com/imgupl/recipe/buche-a-la-mangue-et-a-la-framboise--lg-456382p709948.jpg','https://www.ptitchef.com/recettes/dessert/buche-a-la-mangue-et-a-la-framboise-fid-1571409','Difficile','Dessert'),(12,'Risotto de noix de St Jacques au safran','Pas envie de manger de viande pour les fêtes ? Optez pour les noix de Saint-Jacques ! Mises en scène dans une recette de risotto fait maison et parfumées au safran, vous ne résisterez pas à cette recette pour Noël !','https://www.ptitchef.com/imgupl/recipe/risotto-de-noix-de-st-jacques-au-safran--lg-455037p706231.jpg','https://www.ptitchef.com/recettes/plat/risotto-de-noix-de-st-jacques-au-safran-fid-1570028','Moyen','Plat'),(13,'Forêt-noire sans gluten','La preuve qu\'il est possible de se faire plaisir avec un beau gâteau, classique, et sans gluten !','https://www.ptitchef.com/imgupl/recipe/foret-noire-sans-gluten--lg-440230p681167.jpg','https://www.ptitchef.com/recettes/dessert/foret-noire-sans-gluten-fid-1110088','Facile','Dessert'),(14,'Truffes fondantes au chocolat','Un Noël sans chocolat ? Impossible ! Nous vous proposons une recette fondantes pour tous les mordus de chocolat !','https://www.ptitchef.com/imgupl/recipe/truffes-fondantes-au-chocolat--md-39949p48972.jpg','https://www.ptitchef.com/recettes/dessert/truffes-fondantes-au-chocolat-fid-1495134','Facile','Dessert'),(15,'Une bûche de noël sans gluten','Un dessert riche et gourmand, léger et fondant, délicieux et exquis, impressionnant et intéressant!','https://www.ptitchef.com/imgupl/recipe/ma-buche-de-noel-sans-gluten--lg-185479p280269.jpg','https://www.ptitchef.com/recettes/dessert/ma-buche-de-noel-sans-gluten-fid-199811','Facile','Dessert'),(16,'Sapin feuilleté à la tapenade maison','Des pâtes feuilletées, de la tapenade maison, mélangez le tout et obtenez un joli sapin croustillant pour l\'apéritif ! Une recette hyper simple à reproduire chez vous.','https://www.ptitchef.com/imgupl/recipe/sapin-feuillete-a-la-tapenade-maison--lg-457044p711763.jpg','https://www.ptitchef.com/recettes/aperitif/sapin-feuillete-a-la-tapenade-maison-fid-1571904','Facile','Apéritif'),(17,'Toasts au roquefort, noix et miel','Une association sucrée/salée mais aussi fondante/croquante. Idéale pour des apéritifs en fête !','https://www.ptitchef.com/imgupl/recipe/toasts-au-roquefort-noix-et-miel--lg-453343p702309.jpg','https://www.ptitchef.com/recettes/aperitif/toasts-au-roquefort-noix-et-miel-fid-1568168','Facile','Apéritif'),(18,'Meringues bonnets de Père Noël','À l\'approche des fêtes de fin d\'année, on s\'amuse à intégrer la magie de Noël dans nos recettes. La preuve avec ces petites meringues en forme de bonnet de Père Noël.','https://www.ptitchef.com/imgupl/recipe/meringues-bonnets-de-pere-noel--lg-455042p706251.jpg','https://www.ptitchef.com/recettes/dessert/meringues-bonnets-de-pere-noel-fid-1570022','Moyen','Dessert'),(19,'Tourte à la pintade au foie gras','Rendez votre pintade bien croustillante en l\'intégrant dans une recette de tourte ! Parfumée au porto blanc et associée à du foie gras, vous ne résisterez pas à cette préparation inratable !','https://www.ptitchef.com/imgupl/recipe/tourte-a-la-pintade-au-foie-gras--lg-454958p706001.jpg','https://www.ptitchef.com/recettes/plat/tourte-a-la-pintade-et-sa-sauce-fid-1569958','Moyen','Plat'),(20,'Bûche aux Ferrero Rochers','Vous connaissez sûrement les fameux Ferrero Rocher, et on ne doute pas que vous en raffiolez ! Pourquoi ne pas les intégrer dans votre recette de bûche cette année ?','https://www.ptitchef.com/imgupl/recipe/buche-aux-ferrero-rochers--lg-452260p700220.jpg','https://www.ptitchef.com/recettes/dessert/buche-aux-ferrero-rochers-fid-1567249','Facile','Dessert'),(21,'Bûche de crêpes framboise chocolat blanc','Vous aimez les crêpes et Noël ? Ça tombe bien on vous propose une bûche de crêpes pour votre dessert ;-) Facile et originale, cette recette expliquée pas à pas vous permettra de terminer votre repas de fêtes en beauté !','https://www.ptitchef.com/imgupl/recipe/buche-de-crepes-framboise-chocolat-blanc--lg-454997p706100.jpg','https://www.ptitchef.com/recettes/dessert/buche-de-crepes-framboise-chocolat-blanc-fid-1570012','Moyen','Dessert');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23 15:16:26
