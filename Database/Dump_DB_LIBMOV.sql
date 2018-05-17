-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Jeu 17 Mai 2018 à 12:36
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.1.16-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `DB_LIBMOV`
--

-- --------------------------------------------------------

--
-- Structure de la table `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `actor`
--

INSERT INTO `actor` (`id`, `first_name`, `last_name`) VALUES
(1, 'Scarlett', 'Johansson'),
(2, 'Ryan', 'Reynolds'),
(3, 'Ryan', 'Gosling'),
(4, 'Michael', 'Fassbender'),
(5, 'James', 'McAvoy'),
(6, 'Sophie', 'Turner'),
(7, 'Jennifer', 'Lawrence'),
(8, 'Nicholas', 'Hoult');

-- --------------------------------------------------------

--
-- Structure de la table `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `director`
--

INSERT INTO `director` (`id`, `first_name`, `last_name`) VALUES
(1, 'Bryan', 'Singer'),
(2, 'M. Night', 'Shyamalan'),
(3, 'Francis', 'Lawrence'),
(4, 'Tim', 'Miller'),
(5, 'Gary', 'Ross'),
(6, 'David', 'Leitch'),
(7, 'Matthew', 'Vaughn');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `release_date` date NOT NULL,
  `id_actor` int(11) NOT NULL,
  `id_director` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `film`
--

INSERT INTO `film` (`id`, `title`, `release_date`, `id_actor`, `id_director`) VALUES
(1, 'Hunger Games', '2012-03-21', 7, 5),
(2, 'Deadpool', '2016-02-10', 2, 4),
(3, 'Deadpool 2', '2018-05-15', 2, 6),
(4, 'X-Men : Le Commencement', '2011-05-25', 5, 7),
(5, 'X-Men : Le Commencement', '2011-05-25', 4, 7),
(6, 'X-Men : Le Commencement', '2011-05-25', 7, 7),
(7, 'X-Men : Le Commencement', '2011-05-25', 8, 7);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_actor` (`id_actor`,`id_director`),
  ADD KEY `id_actor_2` (`id_actor`),
  ADD KEY `id_director` (`id_director`),
  ADD KEY `title` (`title`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_film_id_actor` FOREIGN KEY (`id_actor`) REFERENCES `actor` (`id`),
  ADD CONSTRAINT `FK_film_id_director` FOREIGN KEY (`id_director`) REFERENCES `director` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
