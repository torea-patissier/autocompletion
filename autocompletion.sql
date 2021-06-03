-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 03 juin 2021 à 16:03
-- Version du serveur :  5.7.30
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `infos`
--

CREATE TABLE `infos` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `age` int(11) NOT NULL,
  `poste` varchar(20) NOT NULL,
  `equipe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `infos`
--

INSERT INTO `infos` (`id`, `nom`, `prenom`, `age`, `poste`, `equipe`) VALUES
(1, 'Asafo', 'Aumua', 23, 'Talonneur', 'All blacks'),
(3, 'Codie', 'Taylor', 29, 'Talonneur', 'All blacks'),
(4, 'Alex', 'Hodgman', 27, 'Pilier', 'All blacks'),
(5, 'Nepo', 'Laulala', 28, 'Pilier', 'All blacks'),
(6, 'Tyrel', 'Lomax', 24, 'Pilier', 'All blacks'),
(8, 'Karl', 'Tuinukuafe', 27, 'Pilier', 'All blacks'),
(9, 'Ofa', 'Tuungafasi', 28, 'Pilier', 'All blacks'),
(10, 'Quinten\r\n', 'Strange', 24, 'Deuxième ligne', 'All blacks'),
(11, 'Patrick', 'Tuipiulotu', 27, 'Deuxième ligne', 'All blacks'),
(12, 'Tupou', 'Vaai', 20, 'Deuxième ligne', 'All blacks'),
(13, 'Samuel', 'Whitelock', 31, 'Deuxième ligne', 'All blacks'),
(15, 'Shannon', 'Frizell', 26, 'Troisième ligne', 'All blacks'),
(16, 'Cullen', 'Grace', 20, 'Troisième ligne', 'All blacks'),
(18, 'Dalton', 'Papalii', 22, 'Troisième ligne', 'All blacks'),
(19, 'Ardie', 'Savea', 26, 'Troisième ligne', 'All blacks'),
(20, 'Hoskins', 'Sotutu', 22, 'Troisième ligne', 'All blacks'),
(22, 'Aaron', 'Smith', 31, 'Charnière', 'All blacks'),
(24, 'Beauden', 'Barett', 29, 'Charnière', 'All blacks'),
(25, 'Richie', 'Mounga', 26, 'Charnière', 'All blacks'),
(26, 'Braydon', 'Ennor', 23, 'Centre', 'All blacks'),
(27, 'Jack', 'Goodhue', 25, 'Centre', 'All blacks'),
(28, 'Rieko', 'Ioane', 23, 'Centre', 'All blacks'),
(29, 'Anton', 'Lienert', 25, 'Centre', 'All blacks'),
(30, 'Jordie', 'Barrett', 23, 'Ailier', 'All blacks'),
(31, 'George', 'Bridge', 25, 'Ailier', 'All blacks'),
(32, 'Caleb', 'Clarke', 21, 'Ailier', 'All blacks'),
(33, 'Will', 'Jordan', 22, 'Ailier', 'All blacks'),
(34, 'Damian', 'McKenzie', 25, 'Ailier', 'All blacks'),
(35, 'Sevu', 'Reece', 23, 'Ailier', 'All blacks'),
(36, 'Aldegheri', 'Dorian', 27, 'Talonneur', 'France'),
(37, 'Baille', 'Cyril', 27, 'Talonneur', 'France'),
(38, 'Bourgarit', 'Pierre', 23, 'Pilier', 'France'),
(39, 'Chat', 'Camille', 25, 'Pilier', 'France'),
(40, 'Gros', 'Jean Baptiste', 21, 'Pilier', 'France'),
(41, 'Haouas', 'Mohamed', 26, 'Pilier', 'France'),
(42, 'Cazeaux', 'Cyril', 26, 'Deuxième ligne', 'France'),
(44, 'Taofifenua', 'Romain', 30, 'Deuxième ligne', 'France'),
(45, 'Willemse', 'Paul', 28, 'Deuxième ligne', 'France'),
(46, 'Alldritt', 'Grégory', 23, 'Troisième ligne', 'France'),
(47, 'Cretin', 'Dylan', 23, 'Troisième ligne', 'France'),
(48, 'Jelonch', 'Anthony', 24, 'Troisième ligne', 'France'),
(49, 'Ollivon', 'Charles', 27, 'Troisième ligne', 'France'),
(50, 'Couilloud', 'Baptiste', 23, 'Charnière', 'France'),
(51, 'Dupont', 'Antoine', 24, 'Charnière', 'France'),
(52, 'Serin', 'Baptiste', 26, 'Charnière', 'France'),
(53, 'Jalibert', 'Matthieu', 22, 'Charnière', 'France'),
(54, 'Ntamack', 'Romain', 21, 'Charnière', 'France'),
(55, 'Danty', 'Jonathan', 28, 'Centre', 'France'),
(56, 'Fickou', 'Gael', 26, 'Centre', 'France'),
(57, 'Moefana', 'Yoram', 20, 'Centre', 'France'),
(58, 'Vakatawa', 'Virimi', 28, 'Centre', 'France'),
(59, 'Penaud', 'Damian', 24, 'Ailier', 'France'),
(60, 'Taofifenuaa', 'Donovan', 21, 'Ailier', 'France'),
(61, 'Thomas', 'Teddy', 27, 'Ailier', 'France'),
(62, 'Bouthier', 'Anthony', 28, 'Arrière', 'France'),
(63, 'Dulin', 'Brice', 30, 'Arrière', 'France');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
