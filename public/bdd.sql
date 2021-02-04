-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 04 fév. 2021 à 22:08
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pulv_api`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `programme` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `nom`, `image_url`, `programme`, `year`, `date_debut`, `date_fin`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Mise à niveau HTML/CSS', 'https://images.unsplash.com/photo-1523437113738-bbd3cc89fb19?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80', 'HTML - CSS - RESPONSIVE', 2020, '2020-09-21', '2020-09-25', NULL, NULL, 'remise à niveau des bases html, css et responsive'),
(2, 'Javascript', 'https://images.unsplash.com/photo-1593720216276-0caa6452e004?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1124&q=80', 'Javascript Pure', 2020, '2020-09-28', '2020-10-02', NULL, NULL, 'Bases de Javascript'),
(3, 'Wireframes et UX pour le web', 'https://images.unsplash.com/photo-1581291518633-83b4ebd1d83e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80', 'UX - UI - ADOBE XD - USER JOURNEY', 2020, '2020-10-05', '2020-10-09', NULL, NULL, 'Introduction au UX et UI avec Adobe XD'),
(4, 'Intégration d\'une maquette web', 'https://images.unsplash.com/photo-1559028012-481c04fa702d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=935&q=80', 'HTML - CSS - PHOTOSHOP - ZEPLIN', 2020, '2020-10-19', '2020-10-23', NULL, NULL, 'Intégration de différents maquette en HTM-CSS-RESPONSIVE notamment des maquettes Photoshop'),
(5, 'PHP Orienté objet', 'https://images.unsplash.com/photo-1504164996022-09080787b6b3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', 'POO', 2020, '2020-11-02', '2020-11-06', NULL, NULL, 'Introduction aux notions du POO'),
(6, 'Mise en ligne FTP/Déploiement', 'https://images.unsplash.com/photo-1539278670307-a69d04dc8a75?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80', ' Connaître les verbes HTTP - Comprendre la notion de DNS...', 2020, '2020-11-30', '2020-12-04', NULL, NULL, 'L’objectif de ce cours est de découvrir la manière classique de mettre en ligne un site ou une application\r\nvia FTP, mais aussi de découvrir de nouveaux outils nouvelle génération commeVercel ou Netlify ainsi que\r\nHeroku\r\n'),
(7, ' La gestion de projet tech/web', 'https://images.unsplash.com/photo-1598520106896-fb5263f3bc33?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=967&q=80', 'Cahier de Charges - Gestion de Projet Web', 2020, '2020-12-07', '2020-12-11', NULL, NULL, 'Introduction aux bases de gestion de projet Web'),
(8, 'Découvertes des APIs', 'https://images.unsplash.com/photo-1599507593548-0187ac4043c6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80', 'API - LARAVEL', 2021, '2021-02-01', '2021-02-05', NULL, NULL, 'Ce cours aura pour objectif de vous expliquer ce qu’est une API, à quoi ça sert, les cas d’usages et\r\nainsi savoir comment les utiliser.\r\nNous verrons aussi comment réaliser une API simple en utilisant le framework php Laravel.\r\n'),
(9, 'UX Mobile', 'https://images.unsplash.com/photo-1578401058525-35aaec0b4658?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80', '-Revoir les différences entre UX et UI + Warm-up UX\r\n-Les méthodologies de travail UX (Vision CDP sur le sketch 4 étapes et le design thinking)\r\n-Les enjeux mobiles - Positions des mains et des yeux et les conséquences UX\r\n- Comprendre la guideline material pour les applis android\r\n- Comprendre la guideline IOS', 2021, '2021-03-22', '2021-03-26', NULL, NULL, 'L\'objectif de ce cours est de comprendre les enjeux UX Mobile :\r\n- Smartphone et positions des mains\r\n- Smartphone et positions des yeux\r\n- Comprendre les guidelines IOS et Android'),
(10, 'Recettage d\'un projet', 'https://images.unsplash.com/photo-1553285991-4c74211f5097?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', 'lorem ipsum', 2021, '2021-04-12', '2021-04-16', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mauris felis, bibendum sit amet malesuada eu');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_03_124003_create_cours_table', 1),
(5, '2021_02_03_181003_add_description_to_cours', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
