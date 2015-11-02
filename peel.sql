-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2015 at 01:13 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `peel`
--

-- --------------------------------------------------------

--
-- Table structure for table `peel_access_map`
--

CREATE TABLE IF NOT EXISTS `peel_access_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_tag` text NOT NULL,
  `date_insere` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_maj` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) unsigned NOT NULL DEFAULT '0',
  `text_en` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `peel_access_map`
--

INSERT INTO `peel_access_map` (`id`, `map_tag`, `date_insere`, `date_maj`, `site_id`, `text_en`) VALUES
(1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `peel_admins_actions`
--

CREATE TABLE IF NOT EXISTS `peel_admins_actions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) unsigned NOT NULL DEFAULT '0',
  `action` enum('','SEARCH_USER','ADD_FILTER','EDIT_FILTER','DEL_FILTER','EDIT_AD','SUP_AD','EDIT_VOTE','SUP_DETAILS','EDIT_PROFIL','EDIT_FORUM','SUP_FORUM','SUP_COMPTE','ACTIVATE_COMPTE','NOTES_RECUES','NOTES_DONNEES','NOTE_PROFIL','AUTRE','SEND_EMAIL','CREATE_ORDER','EDIT_ORDER','SUP_ORDER','PHONE_EMITTED','PHONE_RECEIVED','EVENT') NOT NULL DEFAULT '',
  `id_membre` int(11) unsigned NOT NULL DEFAULT '0',
  `data` varchar(255) NOT NULL DEFAULT '',
  `raison` varchar(255) NOT NULL DEFAULT '',
  `remarque` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_membre` (`id_membre`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_admins_comments`
--

CREATE TABLE IF NOT EXISTS `peel_admins_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(11) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(11) unsigned NOT NULL DEFAULT '0',
  `comments` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_admins_contacts_planified`
--

CREATE TABLE IF NOT EXISTS `peel_admins_contacts_planified` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(11) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(11) unsigned NOT NULL DEFAULT '0',
  `reason` enum('','interesting_profile','interested_by_product','payment_expected','follow_up','renewal_expected','planified','usual') NOT NULL DEFAULT '',
  `comments` varchar(255) NOT NULL DEFAULT '',
  `actif` enum('TRUE','FALSE') NOT NULL DEFAULT 'TRUE',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_articles`
--

CREATE TABLE IF NOT EXISTS `peel_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image1` varchar(255) NOT NULL DEFAULT '',
  `on_special` tinyint(1) NOT NULL DEFAULT '0',
  `on_reseller` tinyint(1) NOT NULL DEFAULT '0',
  `on_rollover` tinyint(1) NOT NULL DEFAULT '0',
  `date_insere` date NOT NULL DEFAULT '0000-00-00',
  `date_maj` date NOT NULL DEFAULT '0000-00-00',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `surtitre_en` varchar(255) NOT NULL DEFAULT '',
  `titre_en` varchar(255) NOT NULL DEFAULT '',
  `texte_en` mediumtext NOT NULL,
  `chapo_en` text NOT NULL,
  `meta_titre_en` varchar(255) NOT NULL DEFAULT '',
  `meta_key_en` text NOT NULL,
  `meta_desc_en` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `titre_en` (`titre_en`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_articles_rubriques`
--

CREATE TABLE IF NOT EXISTS `peel_articles_rubriques` (
  `article_id` int(11) NOT NULL DEFAULT '0',
  `rubrique_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`,`rubrique_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peel_attributs`
--

CREATE TABLE IF NOT EXISTS `peel_attributs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nom_attribut` int(11) NOT NULL DEFAULT '0',
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `prix` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_revendeur` float(15,5) NOT NULL DEFAULT '0.00000',
  `position` int(11) NOT NULL DEFAULT '0',
  `mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `descriptif_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_avis`
--

CREATE TABLE IF NOT EXISTS `peel_avis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produit` int(11) NOT NULL DEFAULT '0',
  `nom_produit` varchar(255) NOT NULL DEFAULT '',
  `id_utilisateur` int(11) NOT NULL DEFAULT '0',
  `prenom` varchar(255) NOT NULL DEFAULT '',
  `pseudo` varchar(64) NOT NULL DEFAULT '',
  `note` smallint(5) NOT NULL DEFAULT '0',
  `avis` varchar(255) NOT NULL DEFAULT '',
  `datestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `lang` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_banniere`
--

CREATE TABLE IF NOT EXISTS `peel_banniere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorie` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `date_debut` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_fin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `hit` int(11) NOT NULL DEFAULT '0',
  `vue` int(11) NOT NULL DEFAULT '0',
  `lien` varchar(255) NOT NULL DEFAULT '',
  `position` smallint(5) NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `target` varchar(10) NOT NULL DEFAULT '',
  `tag_html` mediumtext NOT NULL,
  `extra_javascript` varchar(255) NOT NULL DEFAULT '',
  `width` varchar(8) NOT NULL DEFAULT '',
  `height` varchar(8) NOT NULL DEFAULT '',
  `search_words_list` text NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `annonce_number` int(11) NOT NULL DEFAULT '0',
  `rang` int(10) DEFAULT NULL,
  `on_home_page` tinyint(1) NOT NULL DEFAULT '0',
  `on_other_page_category` tinyint(1) NOT NULL DEFAULT '0',
  `on_first_page_category` tinyint(1) NOT NULL DEFAULT '0',
  `on_announcement_creation_page` tinyint(1) NOT NULL DEFAULT '0',
  `on_other_page` tinyint(1) NOT NULL DEFAULT '0',
  `on_search_engine_page` tinyint(1) NOT NULL DEFAULT '0',
  `keywords` mediumtext NOT NULL,
  `list_id` varchar(255) NOT NULL DEFAULT '',
  `pages_allowed` enum('all','odd','even') NOT NULL DEFAULT 'all',
  `do_not_display_on_pages_related_to_user_ids_list` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `peel_banniere`
--

INSERT INTO `peel_banniere` (`id`, `id_categorie`, `description`, `image`, `date_debut`, `date_fin`, `etat`, `hit`, `vue`, `lien`, `position`, `lang`, `target`, `tag_html`, `extra_javascript`, `width`, `height`, `search_words_list`, `alt`, `annonce_number`, `rang`, `on_home_page`, `on_other_page_category`, `on_first_page_category`, `on_announcement_creation_page`, `on_other_page`, `on_search_engine_page`, `keywords`, `list_id`, `pages_allowed`, `do_not_display_on_pages_related_to_user_ids_list`, `site_id`) VALUES
(1, 0, 'PEEL', 'peel_banner.jpg', '2012-01-01 00:00:00', '2030-12-31 00:00:00', 1, 0, 0, 'https://www.peel.fr/', 0, 'fr', '_self', '', '', '200', '76', '', NULL, 0, NULL, 0, 0, 0, 0, 0, 0, '', '', 'all', '', 1),
(2, 0, 'PEEL', 'peel_banner.jpg', '2012-01-01 00:00:00', '2030-12-31 00:00:00', 1, 0, 0, 'http://www.peel-shopping.com/', 0, 'en', '_self', '', '', '200', '76', '', NULL, 0, NULL, 0, 0, 0, 0, 0, 0, '', '', 'all', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peel_categories`
--

CREATE TABLE IF NOT EXISTS `peel_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) NOT NULL DEFAULT '',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `on_special` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `nb` int(11) NOT NULL DEFAULT '0',
  `color` varchar(255) NOT NULL DEFAULT '',
  `type_affichage` tinyint(1) NOT NULL DEFAULT '0',
  `background_menu` varchar(255) NOT NULL DEFAULT '',
  `background_color` varchar(255) NOT NULL DEFAULT '',
  `on_child` tinyint(1) NOT NULL DEFAULT '0',
  `promotion_devises` float(15,5) NOT NULL DEFAULT '0.00000',
  `promotion_percent` float(15,5) NOT NULL DEFAULT '0.00000',
  `on_carrousel` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  `description_en` mediumtext NOT NULL,
  `meta_titre_en` varchar(255) NOT NULL DEFAULT '',
  `meta_key_en` text NOT NULL,
  `meta_desc_en` text NOT NULL,
  `header_html_en` text NOT NULL,
  `image_en` varchar(255) NOT NULL DEFAULT '',
  `alpha_en` char(1) NOT NULL DEFAULT '',
  `sentence_displayed_on_product_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `site_id` (`site_id`),
  KEY `nom_en` (`nom_en`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `peel_categories`
--

INSERT INTO `peel_categories` (`id`, `technical_code`, `parent_id`, `reference`, `lang`, `etat`, `on_special`, `position`, `nb`, `color`, `type_affichage`, `background_menu`, `background_color`, `on_child`, `promotion_devises`, `promotion_percent`, `on_carrousel`, `site_id`, `nom_en`, `description_en`, `meta_titre_en`, `meta_key_en`, `meta_desc_en`, `header_html_en`, `image_en`, `alpha_en`, `sentence_displayed_on_product_en`) VALUES
(1, 'Shoes', 0, '', '', 1, 1, 1, 0, '', 0, '#', '#', 0, 0.00000, 0.00000, 0, 1, 'Shoes', '', 'Shoes,Nairobi,fashion', '', '', '', 'sh-bct2srtr-twNJKzCt.jpg', 'S', '');

-- --------------------------------------------------------

--
-- Table structure for table `peel_cgv`
--

CREATE TABLE IF NOT EXISTS `peel_cgv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_insere` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_maj` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) unsigned NOT NULL DEFAULT '0',
  `titre_en` varchar(255) NOT NULL DEFAULT '',
  `texte_en` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `peel_cgv`
--

INSERT INTO `peel_cgv` (`id`, `date_insere`, `date_maj`, `site_id`, `titre_en`, `texte_en`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `peel_codes_promos`
--

CREATE TABLE IF NOT EXISTS `peel_codes_promos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL DEFAULT '0',
  `nom` varchar(25) NOT NULL DEFAULT '',
  `date_debut` date NOT NULL DEFAULT '0000-00-00',
  `date_fin` date NOT NULL DEFAULT '0000-00-00',
  `remise_percent` float(15,2) NOT NULL DEFAULT '0.00',
  `remise_valeur` float(15,5) NOT NULL DEFAULT '0.00000',
  `on_type` tinyint(1) NOT NULL DEFAULT '0',
  `montant_min` float(15,5) NOT NULL DEFAULT '0.00000',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `source` varchar(25) NOT NULL DEFAULT '',
  `email_ami` varchar(255) NOT NULL DEFAULT '',
  `email_acheteur` varchar(255) NOT NULL DEFAULT '',
  `on_check` tinyint(1) NOT NULL DEFAULT '0',
  `id_site` int(11) NOT NULL DEFAULT '0',
  `id_categorie` int(11) NOT NULL DEFAULT '0',
  `nombre_prevue` int(11) NOT NULL DEFAULT '0',
  `compteur_utilisation` int(11) NOT NULL DEFAULT '0',
  `nb_used_per_client` int(11) NOT NULL DEFAULT '1',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `product_filter` varchar(255) NOT NULL DEFAULT '',
  `cat_not_apply_code_promo` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utilisateur` (`id_utilisateur`),
  KEY `nom` (`nom`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_commandes`
--

CREATE TABLE IF NOT EXISTS `peel_commandes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `id_utilisateur` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `o_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `a_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `f_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `e_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `commentaires` mediumtext NOT NULL,
  `commentaires_admin` mediumtext NOT NULL,
  `montant` float(15,5) NOT NULL DEFAULT '0.00000',
  `montant_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `total_produit` float(15,5) NOT NULL DEFAULT '0.00000',
  `total_produit_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `paiement` varchar(255) NOT NULL DEFAULT '',
  `transport` varchar(255) NOT NULL DEFAULT '',
  `cout_transport` float(15,5) NOT NULL DEFAULT '0.00000',
  `cout_transport_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `total_points` int(11) NOT NULL DEFAULT '0',
  `points_etat` tinyint(1) NOT NULL DEFAULT '0',
  `code_promo` varchar(25) NOT NULL DEFAULT '',
  `numero` varchar(40) NOT NULL DEFAULT '',
  `societe_bill` varchar(255) NOT NULL DEFAULT '',
  `nom_bill` varchar(255) NOT NULL DEFAULT '',
  `prenom_bill` varchar(255) NOT NULL DEFAULT '',
  `telephone_bill` varchar(25) NOT NULL DEFAULT '',
  `email_bill` varchar(255) NOT NULL DEFAULT '',
  `adresse_bill` varchar(255) NOT NULL DEFAULT '',
  `ville_bill` varchar(255) NOT NULL DEFAULT '',
  `zip_bill` varchar(100) NOT NULL DEFAULT '',
  `pays_bill` varchar(255) NOT NULL DEFAULT '',
  `societe_ship` varchar(255) NOT NULL DEFAULT '',
  `nom_ship` varchar(255) NOT NULL DEFAULT '',
  `prenom_ship` varchar(255) NOT NULL DEFAULT '',
  `telephone_ship` varchar(25) NOT NULL DEFAULT '',
  `email_ship` varchar(255) NOT NULL DEFAULT '',
  `adresse_ship` varchar(255) NOT NULL DEFAULT '',
  `ville_ship` varchar(255) NOT NULL DEFAULT '',
  `zip_ship` varchar(100) NOT NULL DEFAULT '',
  `pays_ship` varchar(255) NOT NULL DEFAULT '',
  `montant_affilie` float(15,5) NOT NULL DEFAULT '0.00000',
  `affilie` tinyint(1) NOT NULL DEFAULT '0',
  `statut_affilie` tinyint(1) NOT NULL DEFAULT '0',
  `total_tva` float(15,5) NOT NULL DEFAULT '0.00000',
  `zone_tva` tinyint(1) NOT NULL DEFAULT '0',
  `zone_franco` tinyint(1) NOT NULL DEFAULT '0',
  `colis` varchar(255) NOT NULL DEFAULT '',
  `tarif_paiement` float(15,5) NOT NULL DEFAULT '0.00000',
  `tarif_paiement_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `tva_tarif_paiement` float(15,5) NOT NULL DEFAULT '0.00000',
  `unique_id` varchar(255) NOT NULL DEFAULT '',
  `nom_utilisateur` varchar(255) NOT NULL DEFAULT '',
  `contre_remboursement` varchar(255) NOT NULL DEFAULT '',
  `total_poids` float(12,2) NOT NULL DEFAULT '0.00',
  `tva_cout_transport` float(15,5) NOT NULL DEFAULT '0.00000',
  `id_unique` varchar(255) NOT NULL DEFAULT '',
  `total_remise` float(15,5) NOT NULL DEFAULT '0.00000',
  `total_remise_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `zone` varchar(128) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `typeId` int(11) NOT NULL DEFAULT '0',
  `pays` varchar(128) NOT NULL DEFAULT '',
  `valeur_code_promo` float(15,5) NOT NULL DEFAULT '0.00000',
  `percent_code_promo` float(15,5) NOT NULL DEFAULT '0.00000',
  `avoir` float(15,5) NOT NULL DEFAULT '0.00000',
  `avoir_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `tva_avoir` float(15,5) NOT NULL DEFAULT '0.00000',
  `id_parrain` int(11) NOT NULL DEFAULT '0',
  `id_affilie` int(11) NOT NULL DEFAULT '0',
  `parrain` varchar(10) NOT NULL DEFAULT '0',
  `total_ecotaxe_ttc` float(13,2) NOT NULL DEFAULT '0.00',
  `total_ecotaxe_ht` float(13,2) NOT NULL DEFAULT '0.00',
  `devise` varchar(10) NOT NULL DEFAULT '',
  `currency_rate` float(15,5) NOT NULL DEFAULT '1.00000',
  `percent_remise_user` float(15,5) NOT NULL DEFAULT '0.00000',
  `id_statut_paiement` int(11) NOT NULL DEFAULT '0',
  `id_statut_livraison` int(11) NOT NULL DEFAULT '0',
  `total_option` float(15,5) NOT NULL DEFAULT '0.00000',
  `total_option_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `tva_total_produit` float(15,5) NOT NULL DEFAULT '0.00000',
  `tva_total_option` float(15,5) NOT NULL DEFAULT '0.00000',
  `tva_total_remise` float(15,5) NOT NULL DEFAULT '0.00000',
  `tva_total_ecotaxe` float(15,5) NOT NULL DEFAULT '0.00000',
  `code_facture` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `id_ecom` int(11) NOT NULL DEFAULT '0',
  `small_order_overcost_amount` float(15,5) NOT NULL DEFAULT '0.00000',
  `tva_small_order_overcost` float(15,5) NOT NULL DEFAULT '0.00000',
  `delivery_orderid` varchar(16) NOT NULL DEFAULT '',
  `delivery_infos` varchar(64) NOT NULL DEFAULT '',
  `delivery_tracking` mediumtext NOT NULL,
  `delivery_locationid` varchar(64) NOT NULL DEFAULT '',
  `moneybookers_payment_methods` varchar(50) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_utilisateur` (`id_utilisateur`),
  KEY `email` (`email`),
  KEY `id_statut_paiement` (`id_statut_paiement`),
  KEY `code_facture` (`code_facture`(2)),
  KEY `id_ecom` (`id_ecom`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_commandes_articles`
--

CREATE TABLE IF NOT EXISTS `peel_commandes_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_id` int(11) NOT NULL DEFAULT '0',
  `produit_id` int(11) NOT NULL DEFAULT '0',
  `categorie_id` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(255) NOT NULL DEFAULT '',
  `nom_produit` varchar(255) NOT NULL DEFAULT '',
  `prix` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_cat` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_cat_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_achat_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `total_prix` float(15,5) NOT NULL DEFAULT '0.00000',
  `total_prix_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `quantite` int(11) NOT NULL DEFAULT '0',
  `percent_remise_produit` float(5,2) NOT NULL DEFAULT '0.00',
  `remise` float(15,5) NOT NULL DEFAULT '0.00000',
  `remise_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `tva` float(15,5) NOT NULL DEFAULT '0.00000',
  `tva_percent` float(5,2) NOT NULL DEFAULT '0.00',
  `couleur` varchar(150) NOT NULL DEFAULT '',
  `taille` varchar(150) NOT NULL DEFAULT '',
  `couleur_id` int(11) NOT NULL DEFAULT '0',
  `taille_id` int(11) NOT NULL DEFAULT '0',
  `etat_stock` tinyint(1) NOT NULL DEFAULT '0',
  `delai_stock` varchar(100) NOT NULL DEFAULT '',
  `order_stock` int(11) NOT NULL DEFAULT '0',
  `prix_option` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_option_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `points` int(11) NOT NULL DEFAULT '0',
  `poids` float(10,2) NOT NULL DEFAULT '0.00',
  `email_check` varchar(255) NOT NULL DEFAULT '',
  `on_download` tinyint(1) NOT NULL DEFAULT '0',
  `statut_envoi` varchar(255) NOT NULL DEFAULT '',
  `nb_envoi` int(11) NOT NULL DEFAULT '0',
  `nb_download` int(11) NOT NULL DEFAULT '0',
  `date_download` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ecotaxe_ttc` float(15,5) NOT NULL DEFAULT '0.00000',
  `ecotaxe_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `attributs_list` mediumtext NOT NULL,
  `nom_attribut` mediumtext NOT NULL,
  `total_prix_attribut` float(15,5) NOT NULL DEFAULT '0.00000',
  `statut` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `commande_id` (`commande_id`),
  KEY `produit_id` (`produit_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_configuration`
--

CREATE TABLE IF NOT EXISTS `peel_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `origin` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `string` text NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `explain` text NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `technical_code` (`technical_code`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `peel_configuration`
--

INSERT INTO `peel_configuration` (`id`, `technical_code`, `origin`, `type`, `string`, `lang`, `last_update`, `explain`, `etat`, `site_id`) VALUES
(1, 'compatibility_mode_with_htmlentities_encoding_content', 'core', 'boolean', 'false', '', '2014-01-01 12:00:00', 'Si true : permet de décoder les données en BDD encodées par des versions de PEEL < 5.7.  Mettre à false pour une nouveau site, et à true si des données ont été migrées', 1, 1),
(2, 'post_variables_with_html_allowed_if_not_admin', 'core', 'array', '"description"', '', '2014-01-01 12:00:00', 'Protection générale supplémentaire en complément de nohtml_real_escape_string', 1, 1),
(3, 'order_article_order_by', 'core', 'string', 'id', '', '2014-01-01 12:00:00', 'Spécifie l''ordre des produits dans une commande, s''applique sur l''ensemble du site', 1, 1),
(4, 'allow_command_product_ongift', 'core', 'boolean', 'false', '', '2014-01-01 12:00:00', 'Permet aux produits cadeaux (champ on_gift dans peel_produits) d''être également commandés comme des produits ordinaire, en plus d''être commandé avec les points cadeaux.', 1, 1),
(5, 'uploaded_file_max_size', 'core', 'integer', '4194304', '', '2014-01-01 12:00:00', 'En octets / in bytes => Par défaut 4Mo / Au delà de cette limite, les fichiers ne seront pas acceptés', 1, 1),
(6, 'filesize_limit_keep_origin_file', 'core', 'integer', '300000', '', '2014-01-01 12:00:00', 'Taille limite au delà de laquelle les images téléchargées sont regénérées par PHP et sauvegardées en JPG', 1, 1),
(7, 'image_max_width', 'core', 'integer', '1024', '', '2014-01-01 12:00:00', 'Taille limite au delà de laquelle les images téléchargées sont converties en JPG à cette largeur maximum', 1, 1),
(8, 'image_max_height', 'core', 'integer', '768', '', '2014-01-01 12:00:00', 'Taille limite au delà de laquelle les images téléchargées sont converties en JPG à cette hauteur maximum', 1, 1),
(9, 'jpeg_quality', 'core', 'integer', '88', '', '2014-01-01 12:00:00', 'Qualité pour les JPEG créés par le serveur / PHP default for JPEG quality: 75', 1, 1),
(10, 'session_cookie_basename', 'core', 'string', 'sid', '', '2014-01-01 12:00:00', 'Sera complété par un hash de 8 caractères correspondant au chemin d''installation de ce site', 1, 1),
(11, 'sha256_encoding_salt', 'core', 'string', 'k)I8#;z=TIxnXmIPdW2TRzt4Ov89|#V~cU@]', '', '2014-01-01 12:00:00', 'Used in password hash calculation. If you change it, old passwords will not be compatible anymore.', 1, 1),
(12, 'backoffice_directory_name', 'core', 'string', 'administrer', '', '2014-01-01 12:00:00', 'Le nom du répertoire d''administration peut être changé, mais dans ce cas il faut aussi le changer manuellement dans l''arborescence du site sur le disque dur', 1, 1),
(13, 'cache_folder', 'core', 'string', 'cache', '', '2014-01-01 12:00:00', 'Le nom du répertoire de cache peut être changé, mais dans ce cas il faut aussi le changer manuellement sur le disque dur.', 1, 1),
(14, 'force_display_reseller_prices_without_taxes', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(15, 'delivery_cost_calculation_mode', 'core', 'string', 'cheapest', '', '2014-01-01 12:00:00', 'Par défaut : on prend les frais de port les moins chers qui correspondent aux contraintes poids / montant du caddie', 1, 1),
(16, 'force_sessions_for_subdomains', 'core', 'boolean', 'false', '', '2014-01-01 12:00:00', 'Par défaut les cookies ne sont valables que pour un sous-domaine donné (exemple : www). C''est bien de faire cela par défaut car parfois cookie_domain bloque le déclenchement des sessions chez certains hébergeurs comme 1and1. Pour rendre disponible les cookies pour tous les sous-domaines mettez à true\r\n', 1, 1),
(17, 'admin_fill_empty_bill_number_by_number_format', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', 'Dans l''édition de facture, si numéro de facture vide, on remplit par défaut automatiquement format de numéro à générer', 1, 1),
(18, 'payment_status_create_bill', 'core', 'string', 'being_checked,completed', '', '2014-01-01 12:00:00', 'Dès qu''une commande est dans le statut $payment_status_create_bill, son numéro de facture est créé', 1, 1),
(19, 'smarty_avoid_check_template_files_update', 'core', 'boolean', 'false', '', '2014-01-01 12:00:00', 'Passer à true si vous voulez accélérer un site en production. Attention : si true, alors les modifications que vous ferez sur les templates nécessiteront MAJ manuelle du cache', 1, 1),
(20, 'use_database_permanent_connection', 'core', 'boolean', 'false', '', '2014-01-01 12:00:00', 'Valeurs possibles / Possible values : true, ''local'', ''no'' / false', 1, 1),
(21, 'allow_w3c_validator_access_admin', 'core', 'boolean', 'false', '', '2014-01-01 12:00:00', 'ATTENTION SECURITE : cette valeur doit rester à false sauf cas exceptionnel de test technique de l''administration / SECURITY WARNING: this value must stay set to false, unless for administration technical tests', 1, 1),
(22, 'rating_max_value', 'core', 'integer', '5', '', '2014-01-01 12:00:00', 'Nombre d''étoiles pour les votes / The number of stars allowed for voting', 1, 1),
(23, 'rating_unitwidth', 'core', 'integer', '21', '', '2014-01-01 12:00:00', 'Largeur en pixels de chaque étoile de vote / The width (in pixels) of each rating unit (star, etc.)', 1, 1),
(24, 'sessions_duration', 'sites.php', 'integer', '180', '', '2015-06-05 02:45:13', 'Durée des sessions utilisateurs en minutes / User sessions duration in minutes (default : 180 min => 3h)', 1, 1),
(25, 'display_errors_for_ips', 'sites.php', 'string', '::1', '', '2015-06-05 02:45:13', 'Liste d''IPs, séparées par des espaces ou des virgules, pour lesquelles les erreurs PHP et SQL sont affichées / List of IPs, separated by space or comma, for which SQL & PHP errors are displayed', 1, 1),
(26, 'quotation_delay', 'sites.php', 'string', '6 mois', '', '2015-06-05 02:45:13', '', 1, 1),
(27, 'avoir', 'core', 'integer', '10', '', '2014-01-01 12:00:00', '', 1, 1),
(28, 'commission_affilie', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(29, 'css', 'sites.php', 'string', 'screen.css', '', '2015-06-05 02:45:13', 'List of css file names inside /modeles/.../css/ separated by a coma', 1, 1),
(30, 'template_directory', 'sites.php', 'string', 'peel7', '', '2015-06-05 02:45:13', '', 1, 1),
(31, 'template_multipage', 'sites.php', 'string', 'default_1', '', '2015-06-05 02:45:13', '', 1, 1),
(32, 'email_paypal', 'sites.php', 'string', '', '', '2015-06-05 02:45:13', '', 1, 1),
(33, 'email_commande', 'sites.php', 'string', 'weezyfbaby39@outlook.com', '', '2015-06-05 02:45:13', '', 1, 1),
(34, 'email_webmaster', 'sites.php', 'string', 'weezyfbaby39@outlook.com', '', '2015-06-05 02:45:13', '', 1, 1),
(35, 'nom_expediteur', 'sites.php', 'string', '', '', '2015-06-05 02:45:13', '', 1, 1),
(36, 'email_client', 'sites.php', 'string', 'weezyfbaby39@outlook.com', '', '2015-06-05 02:45:13', '', 1, 1),
(37, 'on_logo', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(38, 'favicon', 'sites.php', 'string', '', '', '2015-06-05 02:45:14', '', 1, 1),
(39, 'timemax', 'core', 'integer', '1800', '', '2014-01-01 12:00:00', '', 1, 1),
(40, 'pays_exoneration_tva', 'sites.php', 'string', '', '', '2015-06-05 02:45:13', '', 1, 1),
(41, 'seuil', 'core', 'integer', '5', '', '2014-01-01 12:00:00', '', 1, 1),
(42, 'seuil_total', 'sites.php', 'float', '0.00000', '', '2015-06-05 02:45:13', '', 1, 1),
(43, 'seuil_total_reve', 'sites.php', 'float', '0.00000', '', '2015-06-05 02:45:13', '', 1, 1),
(44, 'module_retail', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(45, 'module_affilie', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(46, 'module_lot', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(47, 'module_parrain', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(48, 'module_gifts', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(49, 'module_cadeau', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(50, 'module_devise', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(51, 'devise_defaut', 'sites.php', 'integer', '7', '', '2015-06-05 02:45:13', '', 1, 1),
(52, 'module_nuage', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(53, 'module_flash', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(54, 'module_cart_preservation', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(55, 'module_vacances', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(56, 'module_vacances_type', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(57, 'module_vacances_fournisseur', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(58, 'module_pub', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(59, 'module_rss', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(60, 'module_avis', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(61, 'module_precedent_suivant', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(62, 'module_faq', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(63, 'module_forum', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(64, 'module_giftlist', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(65, 'module_entreprise', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(66, 'sips', 'sites.php', 'string', '', '', '2015-06-05 02:45:14', '', 1, 1),
(67, 'systempay_payment_count', 'core', 'string', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(68, 'systempay_payment_period', 'core', 'string', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(69, 'systempay_cle_test', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(70, 'systempay_cle_prod', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(71, 'systempay_test_mode', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(72, 'systempay_code_societe', 'core', 'string', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(73, 'paybox_cgi', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(74, 'paybox_site', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(75, 'paybox_rang', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(76, 'paybox_identifiant', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(77, 'email_moneybookers', 'sites.php', 'string', '', '', '2015-06-05 02:45:13', '', 1, 1),
(78, 'secret_word', 'sites.php', 'string', '', '', '2015-06-05 02:45:13', '', 1, 1),
(79, 'spplus', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(80, 'module_ecotaxe', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(81, 'module_filtre', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(82, 'nb_produit_page', 'sites.php', 'integer', '10', '', '2015-06-05 02:45:13', '', 1, 1),
(83, 'module_rollover', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(84, 'type_rollover', 'sites.php', 'integer', '2', '', '2015-06-05 02:45:13', '', 1, 1),
(85, 'logo_affiliation', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(86, 'small_width', 'sites.php', 'integer', '160', '', '2015-06-05 02:45:13', '', 1, 1),
(87, 'small_height', 'sites.php', 'integer', '160', '', '2015-06-05 02:45:13', '', 1, 1),
(88, 'medium_width', 'sites.php', 'integer', '300', '', '2015-06-05 02:45:13', '', 1, 1),
(89, 'medium_height', 'sites.php', 'integer', '300', '', '2015-06-05 02:45:13', '', 1, 1),
(90, 'mode_transport', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(91, 'module_url_rewriting', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(92, 'display_prices_with_taxes', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(93, 'display_prices_with_taxes_in_admin', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(94, 'html_editor', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(95, 'format_numero_facture', 'sites.php', 'string', '[order_id]', '', '2015-06-05 02:45:13', '', 1, 1),
(96, 'default_country_id', 'sites.php', 'integer', '1', '', '2015-06-05 02:23:19', '', 1, 1),
(97, 'nb_product', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(98, 'nb_on_top', 'sites.php', 'integer', '12', '', '2015-06-05 02:45:13', '', 1, 1),
(99, 'nb_last_views', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(100, 'auto_promo', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(101, 'act_on_top', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(102, 'tag_analytics', 'sites.php', 'string', '', '', '2015-06-05 02:45:13', '', 1, 1),
(103, 'site_suspended', 'sites.php', 'boolean', 'false', '', '2015-06-05 02:45:13', '', 1, 1),
(104, 'small_order_overcost_limit', 'sites.php', 'float', '0.00000', '', '2015-06-05 02:45:13', '', 1, 1),
(105, 'small_order_overcost_amount', 'sites.php', 'float', '0.00000', '', '2015-06-05 02:45:13', '', 1, 1),
(106, 'small_order_overcost_tva_percent', 'sites.php', 'float', '0.00', '', '2015-06-05 02:45:13', '', 1, 1),
(107, 'module_captcha', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(108, 'allow_add_product_with_no_stock_in_cart', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(109, 'payment_status_decrement_stock', 'core', 'string', 'being_checked,completed', '', '2014-01-01 12:00:00', '', 1, 1),
(110, 'module_socolissimo', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(111, 'module_icirelais', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(112, 'module_autosend', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(113, 'module_autosend_delay', 'sites.php', 'integer', '5', '', '2015-06-05 02:45:13', '', 1, 1),
(114, 'category_count_method', 'sites.php', 'string', 'individual', '', '2015-06-05 02:45:13', '', 1, 1),
(115, 'partner_count_method', 'core', 'string', 'individual', '', '2014-01-01 12:00:00', '', 1, 1),
(116, 'admin_force_ssl', 'sites.php', 'string', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(117, 'anim_prod', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(118, 'export_encoding', 'sites.php', 'string', 'utf-8', '', '2015-06-05 02:45:13', '', 1, 1),
(119, 'zoom', 'sites.php', 'string', 'jqzoom', '', '2015-06-05 02:45:13', '', 1, 1),
(120, 'enable_prototype', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:14', '', 1, 1),
(121, 'enable_jquery', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(122, 'send_email_active', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(123, 'minimal_amount_to_order', 'sites.php', 'string', '0.00000', '', '2015-06-05 02:45:13', '', 1, 1),
(124, 'display_nb_product', 'sites.php', 'integer', '1', '', '2015-06-05 02:45:13', '', 1, 1),
(125, 'type_affichage_attribut', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(126, 'fb_admins', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(127, 'facebook_page_link', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(128, 'category_order_on_catalog', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(129, 'global_remise_percent', 'sites.php', 'float', '0.00000', '', '2015-06-05 02:45:13', '', 1, 1),
(130, 'availability_of_carrier', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(131, 'popup_width', 'sites.php', 'integer', '310', '', '2015-06-05 02:45:13', '', 1, 1),
(132, 'popup_height', 'sites.php', 'integer', '160', '', '2015-06-05 02:45:13', '', 1, 1),
(133, 'in_category', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(134, 'facebook_connect', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(135, 'fb_appid', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(136, 'fb_secret', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(137, 'fb_baseurl', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(138, 'module_conditionnement', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(139, 'keep_old_orders_intact', 'sites.php', 'integer', '0', '', '2015-06-05 02:45:13', '', 1, 1),
(140, 'default_picture', 'sites.php', 'string', 'image_defaut_peel.png', '', '2015-06-05 02:45:13', '', 1, 1),
(141, 'module_tnt', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(142, 'sign_in_twitter', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(143, 'googlefriendconnect', 'core', 'integer', '0', '', '2014-01-01 12:00:00', '', 1, 1),
(144, 'session_save_path', 'core', 'string', '', '', '2014-01-01 12:00:00', 'Répertoire sur le disque pour stocker les sessions. Exemple : /home/example/sessions . Attention : ce répertoire en doit pas être accessible par http => il ne doit pas être à l''intérieur de votre répertoire peel. Laisser vide si on veut le répertoire défini par défaut dans php.ini du serveur', 1, 1),
(145, 'general_print_image', 'core', 'string', '{$GLOBALS[''repertoire_images'']}/imprimer.jpg', '', '2014-01-01 12:00:00', '', 1, 1),
(146, 'general_home_image1', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(147, 'general_home_image2', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(148, 'general_product_image', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(149, 'general_send_email_image', 'core', 'string', '{$GLOBALS[''repertoire_images'']}/tell_friend.jpg', '', '2014-01-01 12:00:00', '', 1, 1),
(150, 'general_give_your_opinion_image', 'core', 'string', '{$GLOBALS[''repertoire_images'']}/donnez_avis.jpg', '', '2014-01-01 12:00:00', '', 1, 1),
(151, 'general_read_all_reviews_image', 'core', 'string', '{$GLOBALS[''repertoire_images'']}/tous_les_avis.jpg', '', '2014-01-01 12:00:00', '', 1, 1),
(152, 'general_add_notepad_image', 'core', 'string', '{$GLOBALS[''repertoire_images'']}/ajout_pense_bete.jpg', '', '2014-01-01 12:00:00', '', 1, 1),
(153, 'check_allowed_types', 'auto', 'boolean', 'false', '', '2014-01-01 12:00:00', 'Vous pouvez activer une vérification du type MIME des fichiers téléchargés. Cela pose de nombreux problèmes car cette information n''est pas fiable et des navigateurs envoient des types MIME parfois imprévus => cette vérification est désactivée par défaut', 1, 1),
(154, 'allowed_types', 'auto', 'array', '"image/gif" => ".gif", "image/pjpeg" => ".jpg, .jpeg", "image/jpeg" => ".jpg, .jpeg", "image/x-png" => ".png", "image/png" => ".png", "text/plain" => ".html, .php, .txt, .inc, .csv", "text/comma-separated-values" => ".csv", "application/comma-separated-values" => ".csv", "text/csv" => ".csv", "application/vnd.ms-excel" => ".csv", "application/csv-tab-delimited-table" => ".csv", "application/octet-stream" => "", "application/pdf" => ".pdf", "application/force-download" => "", "application/x-shockwave-flash" => ".swf", "application/x-download" => "', '', '2014-01-01 12:00:00', 'Cette variable est utilisée si check_allowed_types = true', 1, 1),
(155, 'extensions_valides_any', 'auto', 'array', '"jpg", "jpeg", "gif", "png", "ico", "swf", "csv", "txt", "pdf", "zip", "doc", "docx", "xls", "xlsx", "ppt", "pptx"', '', '2014-01-01 12:00:00', 'Vérification en fonction des extensions des fichiers téléchargés', 1, 1),
(156, 'extensions_valides_data', 'auto', 'array', '"csv", "txt"', '', '2014-01-01 12:00:00', 'Vérification en fonction des extensions des fichiers téléchargés', 1, 1),
(157, 'extensions_valides_image_or_pdf', 'auto', 'array', '"jpg", "jpeg", "gif", "png", "pdf"', '', '2014-01-01 12:00:00', 'Vérification en fonction des extensions des fichiers téléchargés', 1, 1),
(158, 'extensions_valides_image', 'auto', 'array', '"jpg", "jpeg", "gif", "png"', '', '2014-01-01 12:00:00', 'Vérification en fonction des extensions des fichiers téléchargés', 1, 1),
(159, 'extensions_valides_image_or_swf', 'auto', 'array', '"jpg", "jpeg", "gif", "png", "swf"', '', '2014-01-01 12:00:00', 'Vérification en fonction des extensions des fichiers téléchargés', 1, 1),
(160, 'extensions_valides_image_or_ico', 'auto', 'array', '"jpg", "jpeg", "gif", "png", "ico"', '', '2014-01-01 12:00:00', 'Vérification en fonction des extensions des fichiers téléchargés', 1, 1),
(161, 'uploaded_images_name_pattern', 'core', 'string', '^[0-9]{6}_[0-9]{6}_PEEL_[0-9a-z-A-Z]{8}\\.[jpg|png|gif]$', '', '2014-01-01 12:00:00', 'Permet de valider le format des noms des images uploadées dans peel', 1, 1),
(162, 'site_general_columns_count', 'core', 'integer', '3', '', '2014-01-01 12:00:00', '', 1, 1),
(163, 'product_details_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(164, 'ad_details_page_columns_count', 'core', 'integer', '3', '', '2014-01-01 12:00:00', '', 1, 1),
(165, 'ads_list_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(166, 'blog_index_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(167, 'listecadeau_list_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(168, 'listecadeau_details_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(169, 'cart_preservation_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(170, 'references_page_columns_count', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(171, 'achat_maintenant_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(172, 'caddie_affichage_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(173, 'fin_commande_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(174, 'achat_index_page_columns_count', 'core', 'integer', '2', '', '2014-01-01 12:00:00', '', 1, 1),
(175, 'edit_prices_on_products_list', 'core', 'string', 'edit', '', '2014-01-01 12:00:00', '', 1, 1),
(176, 'show_qrcode_on_product_pages', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(177, 'minify_css', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', 'Concatenation automatique des fichiers CSS pour plus de rapidité du site - ATTENTION : en cas de modification des fichiers CSS, vous devez cliquer sur le bouton de mise-à-jour "CSS & Javascript" dans le menu "Configuration" > "Nettoyage des dossiers", ou incrémenter manuellement la variable "minify_id_increment", ou supprimer les fichiers de cache CSS dans le dossier de cache // Automatic merge of CSS files in order to speed up pages loading - NOTICE : after any CSS file modification, you must click on the CSS update button on "Site Management" > "Cleaning File", or manually increment the "minify_id_increment" variable, or manually delete in the cache folder the CSS files which will be automatically regenerated', 1, 1),
(178, 'minify_js', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', 'Concatenation automatique des fichiers Javascript pour plus de rapidité du site - ATTENTION : en cas de modification des fichiers Javascript, vous devez cliquer sur le bouton de mise-à-jour "CSS & Javascript" dans le menu "Configuration" > "Nettoyage des dossiers", ou incrémenter manuellement la variable "minify_id_increment", ou supprimer les fichiers de cache JS dans le dossier de cache // Automatic merge of Javascript files in order to speed up pages loading - NOTICE : after any Javascript file modification, you must click on the "CSS & Javascript" update button on "Site Management" > "Cleaning File", or manually increment the "minify_id_increment" variable, or manually delete in the cache folder the Javascript files which will be automatically regenerated', 1, 1),
(179, 'product_categories_depth_in_menu', 'core', 'integer', '1', '', '2014-01-01 12:00:00', 'Profondeur du menu de catégories de produits. NB : Seules les catégories de produits avec position>0 s''afficheront, ce qui permet d''en exclure du menu en les mettant à position=0', 1, 1),
(180, 'content_categories_depth_in_menu', 'core', 'integer', '1', '', '2014-01-01 12:00:00', 'Profondeur du menu de rubriques de contenu. NB : Seules les rubriques de contenu avec position>0 s''afficheront, ce qui permet d''en exclure du menu en les mettant à position=0', 1, 1),
(181, 'main_menu_items_if_available', 'core', 'array', '"home", "cat_*", "rub_*", "annonces", "vitrine", "other"', '', '2014-01-01 12:00:00', 'Liste à définir dans l''ordre d''affichage parmi : "home", "catalog", "content", "news", "promotions", "annonces", "vitrine", "check", "account", "contact", "promotions", "admin", "cat_*", "rub_*", "art_*", "contact_us", "faq", "brand"', 1, 1),
(182, 'template_engine', 'core', 'string', 'smarty', '', '2014-01-01 12:00:00', 'Par défaut : smarty - Existe aussi en version de test : twig', 1, 1),
(183, 'catalog_products_columns_default', 'core', 'integer', '3', '', '2014-01-01 12:00:00', '', 1, 1),
(184, 'associated_products_columns_default', 'core', 'integer', '3', '', '2014-01-01 12:00:00', '', 1, 1),
(185, 'associated_products_display_mode', 'core', 'string', 'column', '', '2014-01-01 12:00:00', '', 1, 1),
(186, 'show_on_estimate_text', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(187, 'show_add_to_cart_on_free_products', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(188, 'show_short_description_on_product_details', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(189, 'category_show_more_on_catalog_if_no_order_allowed', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(190, 'show_on_affiche_guide', 'core', 'array', '"contact", "affiliate", "retailer", "faq", "forum", "lexique", "partner", "references", "access_plan"', '', '2014-01-01 12:00:00', 'Liste à définir dans l''ordre d''affichage parmi : "contact", "affiliate", "retailer", "faq", "forum", "lexique", "partner", "references", "access_plan"', 1, 1),
(191, 'replace_words_in_lang_files', 'core', 'string', '', '', '2014-01-01 12:00:00', '', 1, 1),
(192, 'twitter_page_link', 'core', 'string', '', '', '2014-05-01 12:00:00', '', 1, 1),
(193, 'googleplus_page_link', 'core', 'string', '', '', '2014-05-01 12:00:00', '', 1, 1),
(194, 'skip_images_keywords', 'core', 'array', '', '', '2014-05-01 12:00:00', '', 1, 1),
(195, 'appstore_link', 'core', 'string', '', '', '2014-05-01 12:00:00', '', 1, 1),
(196, 'categories_side_menu_item_max_length', 'core', 'integer', '28', '', '2014-05-01 12:00:00', '', 1, 1),
(197, 'phone_cti_primary_site_list_calls_url', 'core', 'string', '', '', '2014-05-01 12:00:00', '', 1, 1),
(198, 'email_accounts_for_bounces_handling', 'core', 'array', '', '', '2014-05-01 12:00:00', 'Format : ''email'' => ''password''', 1, 1),
(199, 'tagcloud_display_count', 'core', 'integer', '16', '', '2014-05-01 12:00:00', '', 1, 1),
(200, 'filter_stop_words', 'core', 'string', 'afin aie aient aies ailleurs ainsi ait alentour alias allaient allais allait allez allons alors apres aprs assez attendu aucun aucune aucuns audit aujourd aujourdhui auparavant auprs auquel aura aurai auraient aurais aurait auras aurez auriez aurions aurons auront aussi aussitot autant autour autre autrefois autres autrui aux auxdites auxdits auxquelles auxquels avaient avais avait avant avec avez aviez avions avoir avons ayant ayez ayons bah banco bas beaucoup ben bien bientot bis bon caha cahin car ceans ceci cela celle celles celui cent cents cependant certain certaine certaines certains certes ces cet cette ceux cgr chacun chacune champ chaque cher chez cinq cinquante combien comme comment contrario contre crescendo dabord daccord daffilee dailleurs dans daprs darrache davantage debout debut dedans dehors deja dela demain demblee depuis derechef derriere des desdites desdits desormais desquelles desquels dessous dessus deux devant devers devrait die differentes differents dire dis disent dit dito divers diverses dix doit donc dont dorenavant dos douze droite dudit duquel durant elle elles encore enfin ensemble ensuite entre envers environ essai est et etaient etais etait etant etat etc ete etes etiez etions etre eue eues euh eûmes eurent eus eusse eussent eusses eussiez eussions eut eutes eux expres extenso extremis facto faire fais faisaient faisais faisait faisons fait faites fallait faudrait faut flac fois font force fors fort forte fortiori frais fumes fur furent fus fusse fussent fusses fussiez fussions fut futes ghz grosso gure han haut hein hem heu hier hola hop hormis hors hui huit hum ibidem ici idem illico ils ipso item jadis jamais jusqu jusqua jusquau jusquaux jusque juste km² laquelle lautre lequel les lesquelles lesquels leur leurs lez loin lon longtemps lors lorsqu lorsque lot lots lui lun lune maint mainte maintenant maintes maints mais mal malgre meme memes mes mgr mhz mieux mil mille milliards millions mine minima mm² modo moi moins mon mot moult moyennant naguere neanmoins neuf nommes non nonante nonobstant nos notre nous nouveau nouveaux nouvelle nouvelles nul nulle octante ont onze ouais ou oui outre par parbleu parce parfois parmi parole partout pas passe passim pendant personne personnes petto peu peut peuvent peux piece pied pis plupart plus plusieurs plutot point posteriori pour pourquoi pourtant prealable presqu presque primo priori prix prou prs puis puisqu puisque quand quarante quasi quatorze quatre que quel quelle quelles quelqu quelque quelquefois quelques quelquun quelquune quels qui quiconque quinze quoi quoiqu quoique ref refs revoici revoila rien sans sauf secundo seize selon sensu sept septante sera serai seraient serais serait seras serez seriez serions serons seront ses seulement sic sien sine sinon sitot situ six soi soient soixante sommes son sont soudain sous souvent soyez soyons stricto suis sujet sur surtout sus tandis tant tantot tard tel telle tellement telles tels temps ter tes toi ton tot toujours tous tout toute toutefois toutes treize trente tres trois trop trs une unes uns usd vais valeur vas vends vers versa veut veux via vice vingt vingts vingt vis vite vitro vivo voici voie voient voila voire volontiers vont vos votre vous zero', 'fr', '2014-05-01 12:00:00', 'Liste de mots sans accents, de 3 lettres et plus (les mots de moins de 3 lettres sont considérés dans tous les cas comme non significatifs) séparés par des espaces. Cette liste permet de filtrer une chaine pour trouver des mots clés significatifs.', 1, 1),
(201, 'filter_stop_words', 'core', 'string', 'a able about above abst accordance according accordingly across act actually added adj affected affecting affects after afterwards again against ah all almost alone along already also although always am among amongst an and announce another any anybody anyhow anymore anyone anything anyway anyways anywhere apparently approximately are aren arent arise around as aside ask asking at auth available away awfully b back be became because become becomes becoming been before beforehand begin beginning beginnings begins behind being believe below beside besides between beyond biol both brief briefly but by c ca came can cannot can''t cause causes certain certainly co com come comes contain containing contains could couldnt d date did didn''t different do does doesn''t doing done don''t down downwards due during e each ed edu effect eg eight eighty either else elsewhere end ending enough especially et et-al etc even ever every everybody everyone everything everywhere ex except f far few ff fifth first five fix followed following follows for former formerly forth found four from further furthermore g gave get gets getting give given gives giving go goes gone got gotten h had happens hardly has hasn''t have haven''t having he hed hence her here hereafter hereby herein heres hereupon hers herself hes hi hid him himself his hither home how howbeit however hundred i id ie if i''ll im immediate immediately importance important in inc indeed index information instead into invention inward is isn''t it itd it''ll its itself i''ve j just k keep 	keeps kept kg km know known knows l largely last lately later latter latterly least less lest let lets like liked likely line little ''ll look looking looks ltd m made mainly make makes many may maybe me mean means meantime meanwhile merely mg might million miss ml more moreover most mostly mr mrs much mug must my myself n na name namely nay nd near nearly necessarily necessary need needs neither never nevertheless new next nine ninety no nobody non none nonetheless noone nor normally nos not noted nothing now nowhere o obtain obtained obviously of off often oh ok okay old omitted on once one ones only onto or ord other others otherwise ought our ours ourselves out outside over overall owing own p page pages part particular particularly past per perhaps placed please plus poorly possible possibly potentially pp predominantly present previously primarily probably promptly proud provides put q que quickly quite qv r ran rather rd re readily really recent recently ref refs regarding regardless regards related relatively research respectively resulted resulting results right run s said same saw say saying says sec section see seeing seem seemed seeming seems seen self selves sent seven several shall she shed she''ll shes should shouldn''t show showed shown showns shows significant significantly similar similarly since six slightly so some somebody somehow someone somethan something sometime sometimes somewhat somewhere soon sorry specifically specified specify specifying still stop strongly sub substantially successfully such sufficiently suggest sup sure 	t take taken taking tell tends th than thank thanks thanx that that''ll thats that''ve the their theirs them themselves then thence there thereafter thereby thered therefore therein there''ll thereof therere theres thereto thereupon there''ve these they theyd they''ll theyre they''ve think this those thou though thoughh thousand throug through throughout thru thus til tip to together too took toward towards tried tries truly try trying ts twice two u un under unfortunately unless unlike unlikely until unto up upon ups us use used useful usefully usefulness uses using usually v value various ''ve very via viz vol vols vs w want wants was wasn''t way we wed welcome we''ll went were weren''t we''ve what whatever what''ll whats when whence whenever where whereafter whereas whereby wherein wheres whereupon wherever whether which while whim whither who whod whoever whole who''ll whom whomever whos whose why widely willing wish with within without won''t words world would wouldn''t www x y yes yet you youd you''ll your youre yours yourself yourselves you''ve z zero', 'en', '2014-05-01 12:00:00', 'Liste de mots sans accents, de 3 lettres et plus (les mots de moins de 3 lettres sont considérés dans tous les cas comme non significatifs) séparés par des espaces. Cette liste permet de filtrer une chaine pour trouver des mots clés significatifs.', 1, 1),
(202, 'filter_stop_words', 'core', 'string', 'ab aber abgerufen abgerufene abgerufener abgerufenes acht ahnlich alle allein allem allen aller allerdings allerlei alles allgemein allmahlich allzu als alsbald also am an ander andere anderem anderen anderer andererseits anderes anderm andern andernfalls anders anerkannt anerkannte anerkannter anerkanntes anfangen anfing angefangen angesetze angesetzt angesetzten angesetzter ansetzen anstatt arbeiten auch auf aufgehort aufgrund aufhoren aufhorte aufzusuchen aus ausdrucken ausdruckt ausdruckte ausgenommen außen ausser außer ausserdem außerdem außerhalb author autor bald bearbeite bearbeiten bearbeitete bearbeiteten bedarf bedurfen bedurfte befragen befragte befragten befragter begann beginnen begonnen behalten behielt bei beide beiden beiderlei beides beim beinahe beitragen beitrugen bekannt bekannte bekannter bekennen benutzt bereits berichten berichtet berichtete berichteten besonders besser bestehen besteht betrachtlich bevor bezuglich bietet bin bis bis bisher bislang bist bleiben blieb bloss bloß boden brachte brachten brauchen braucht brauchte bringen bsp bzw ca da dabei dadurch dafur dagegen daher dahin damals damit danach daneben dank danke danken dann dannen daran darauf daraus darf darfst darin daruber daruberhinaus darum darunter das dass daß dasselbe davon davor dazu dein deine deinem deinen deiner deines dem demnach demselben den denen denn dennoch denselben der derart derartig derem deren derer derjenige derjenigen derselbe derselben derzeit des deshalb desselben dessen desto deswegen dich die diejenige dies diese dieselbe dieselben diesem diesen dieser dieses diesseits dinge dir direkt direkte direkten direkter doch doppelt dort dorther dorthin drauf drei dreißig drin dritte druber drunter du dunklen durch durchaus durfen durfte durfte durften eben ebenfalls ebenso ehe eher eigenen eigenes eigentlich ein einbaun eine einem einen einer einerseits eines einfach einfuhren einfuhrte einfuhrten eingesetzt einig einige einigem einigen einiger einigermaßen einiges einmal eins einseitig einseitige einseitigen einseitiger einst einstmals einzig ende entsprechend entweder er erganze erganzen erganzte erganzten erhalt erhalten erhielt erhielten erneut eroffne eroffnen eroffnet eroffnete eroffnetes erst erste ersten erster es etc etliche etwa etwas euch euer eure eurem euren eurer eures fall falls fand fast ferner finden findest findet folgende folgenden folgender folgendes folglich fordern fordert forderte forderten fortsetzen fortsetzt fortsetzte fortsetzten fragte frau frei freie freier freies fuer funf fur gab gangig gangige gangigen gangiger gangiges ganz ganze ganzem ganzen ganzer ganzes ganzlich gar gbr geb geben geblieben gebracht gedurft geehrt geehrte geehrten geehrter gefallen gefalligst gefallt gefiel gegeben gegen gehabt gehen geht gekommen gekonnt gemacht gemass gemocht genommen genug gern gesagt gesehen gestern gestrige getan geteilt geteilte getragen gewesen gewissermaßen gewollt geworden ggf gib gibt gleich gleichwohl gleichzeitig glucklicherweise gmbh gratulieren gratuliert gratulierte gute guten hab habe haben haette halb hallo hast hat hatt hatte hatte hatten hatten hattest hattet hen heraus herein heute heutige hier hiermit hiesige hin hinein hinten hinter hinterher hoch hochstens hundert ich igitt ihm ihn ihnen ihr ihre ihrem ihren ihrer ihres im immer immerhin important in indem indessen info infolge innen innerhalb ins insofern inzwischen irgend irgendeine irgendwas irgendwen irgendwer irgendwie irgendwo ist ja jahrig jahrige jahrigen jahriges je jede jedem jeden jedenfalls jeder jederlei jedes jedoch jemand jene jenem jenen jener jenes jenseits jetzt kam kann kannst kaum kein keine keinem keinen keiner keinerlei keines keines keineswegs klar klare klaren klares klein kleinen kleiner kleines koennen koennt koennte koennten komme kommen kommt konkret konkrete konkreten konkreter konkretes konn konnen konnt konnte konnte konnten konnten kunftig lag lagen langsam langst langstens lassen laut lediglich leer legen legte legten leicht leider lesen letze letzten letztendlich letztens letztes letztlich lichten liegt liest links mache machen machst macht machte machten mag magst mal man manche manchem manchen mancher mancherorts manches manchmal mann margin mehr mehrere mein meine meinem meinen meiner meines meist meiste meisten meta mich mindestens mir mit mithin mochte mochte mochten mochtest mogen moglich mogliche moglichen moglicher moglicherweise morgen morgige muessen muesst muesste muss muß mussen musst mußt mußt musste musste mußte mussten mussten nach nachdem nacher nachhinein nachste nacht nahm namlich naturlich neben nebenan nehmen nein neu neue neuem neuen neuer neues neun nicht nichts nie niemals niemand nimm nimmer nimmt nirgends nirgendwo noch notigenfalls nun nur nutzen nutzt nutzt nutzung ob oben oberhalb obgleich obschon obwohl oder oft ohne per pfui plotzlich pro reagiere reagieren reagiert reagierte rechts regelmaßig rief rund sage sagen sagt sagte sagten sagtest samtliche sang sangen schatzen schatzt schatzte schatzten schlechter schließlich schnell schon schreibe schreiben schreibens schreiber schwierig sechs sect sehe sehen sehr sehrwohl seht sei seid sein seine seinem seinen seiner seines seit seitdem seite seiten seither selber selbst senke senken senkt senkte senkten setzen setzt setzte setzten sich sicher sicherlich sie sieben siebte siehe sieht sind singen singt so sobald sodaß soeben sofern sofort sog sogar solange solc solch solche solchem solchen solcher solches soll sollen sollst sollt sollte sollten solltest somit sondern sonst sonstwo sooft soviel soweit sowie sowohl spater spielen startet startete starteten statt stattdessen steht steige steigen steigt stets stieg stiegen such suchen tages tat tat tatsachlich tatsachlichen tatsachlicher tatsachliches tausend teile teilen teilte teilten titel total trage tragen tragt trotzdem trug tun tust tut txt ubel uber uberall uberallhin uberdies ubermorgen ubrig ubrigens ueber um umso unbedingt und ungefahr unmoglich unmogliche unmoglichen unmoglicher unnotig uns unse unsem unsen unser unser unsere unserem unseren unserer unseres unserm unses unten unter unterbrach unterbrechen unterhalb unwichtig usw vergangen vergangene vergangener vergangenes vermag vermogen vermutlich veroffentlichen veroffentlicher veroffentlicht veroffentlichte veroffentlichten veroffentlichtes verrate verraten verriet verrieten version versorge versorgen versorgt versorgte versorgten versorgtes viel viele vielen vieler vieles vielleicht vielmals vier vollig vollstandig vom von vor voran vorbei vorgestern vorher vorne voruber wachen waere wahrend wahrend wahrenddessen wann war war ware waren waren warst warum was weder weg wegen weil weiß weiter weitere weiterem weiteren weiterer weiteres weiterhin welche welchem welchen welcher welches wem wen wenig wenige weniger wenigstens wenn wenngleich wer werde werden werdet weshalb wessen wichtig wie wieder wieso wieviel wiewohl will willst wir wird wirklich wirst wo wodurch wogegen woher wohin wohingegen wohl wohlweislich wolle wollen wollt wollte wollten wolltest wolltet womit woraufhin woraus worin wurde wurde wurden wurden zahlreich zB zehn zeitweise ziehen zieht zog zogen zu zudem zuerst zufolge zugleich zuletzt zum zumal zur zuruck zusammen zuviel zwanzig zwar zwei zwischen zwolf', 'de', '2014-05-01 12:00:00', 'Liste de mots sans accents, de 3 lettres et plus (les mots de moins de 3 lettres sont considérés dans tous les cas comme non significatifs) séparés par des espaces. Cette liste permet de filtrer une chaine pour trouver des mots clés significatifs.', 1, 1),
(203, 'filter_stop_words', 'core', 'string', 'algun alguna algunas alguno algunos ambos ampleamos ante antes aquel aquellas aquellos aqui arriba atras bajo bastante bien cada cierta ciertas cierto ciertos como con conseguimos conseguir consigo consigue consiguen consigues cual cuando dentro desde donde dos el ellas ellos empleais emplean emplear empleas empleo en encima entonces entre era eramos eran eras eres es esta estaba estado estais estamos estan estoy fin fue fueron fui fuimos gueno ha hace haceis hacemos hacen hacer haces hago incluso intenta intentais intentamos intentan intentar intentas intento ir la largo las lo los mientras mio modo muchos muy nos nosotros otro para pero podeis podemos poder podria podriais podriamos podrian podrias por por qué porque primero  puede pueden puedo quien sabe sabeis sabemos saben saber sabes ser si siendo sin sobre sois solamente solo somos soy su sus también teneis tenemos tener tengo tiempo tiene tienen todo trabaja trabajais trabajamos trabajan trabajar trabajas trabajo tras tuyo ultimo un una unas uno unos usa usais usamos usan usar usas uso va vais valor vamos van vaya verdad verdadera verdadero vosotras vosotros voy yo ', 'es', '2014-05-01 12:00:00', 'Liste de mots sans accents, de 3 lettres et plus (les mots de moins de 3 lettres sont considérés dans tous les cas comme non significatifs) séparés par des espaces. Cette liste permet de filtrer une chaine pour trouver des mots clés significatifs.', 1, 1),
(204, 'cron_login', 'core', 'array', '', '', '2014-05-01 12:00:00', 'Format : ''login'' => ''password''', 1, 1),
(205, 'skip_home_top_products', 'core', 'boolean', 'false', '', '2014-05-01 12:00:00', '', 1, 1),
(206, 'skip_home_special_products', 'core', 'boolean', 'false', '', '2014-05-01 12:00:00', '', 1, 1),
(207, 'skip_home_new_products', 'core', 'boolean', 'false', '', '2014-05-01 12:00:00', '', 1, 1),
(208, 'user_mandatory_fields', 'core', 'array', '"prenom" => "STR_ERR_FIRSTNAME", "nom_famille" => "STR_ERR_NAME", "adresse" => "STR_ERR_ADDRESS", "code_postal" => "STR_ERR_ZIP", "ville" => "STR_ERR_TOWN", "pays" => "STR_ERR_COUNTRY", "telephone" => "STR_ERR_TEL", "email" => "STR_ERR_EMAIL", "pseudo" => "STR_ERR_PSEUDO", "token" => "STR_INVALID_TOKEN", "code" => "STR_EMPTY_FIELD"', '', '2014-05-01 12:00:00', '', 1, 1),
(209, 'skip_home_ad_categories_presentation', 'core', 'boolean', 'false', '', '2014-05-01 12:00:00', '', 1, 1),
(210, 'article_details_index_page_columns_count', 'core', 'integer', '3', '', '2014-01-01 12:00:00', '', 1, 1),
(211, 'lire_index_page_columns_count', 'core', 'integer', '3', '', '2014-01-01 12:00:00', '', 1, 1),
(212, 'site_index_page_columns_count', 'core', 'integer', '3', '', '2014-01-01 12:00:00', '', 1, 1),
(213, 'display_nb_vote_graphic_view', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(214, 'display_content_category_diaporama', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(215, 'subcategorie_nb_column', 'core', 'integer', '4', '', '2014-01-01 12:00:00', '', 1, 1),
(216, 'product_category_pages_nb_column', 'core', 'integer', '3', '', '2014-01-01 12:00:00', '', 1, 1),
(217, 'display_share_tools_on_product_pages', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(218, 'prices_precision', 'core', 'integer', '2', '', '2014-01-01 12:00:00', 'Nombre de décimales pour l''affichage des prix / Decimal count for prices display', 1, 1),
(219, 'short_order_process', 'core', 'boolean', 'false', '', '2014-01-01 12:00:00', 'Fin du process de commande, si le paramètre short_order_process est actif. Ce paramètre implique l''absence de paiement et de validation des CGV => Utile pour des demandes de devis', 1, 1),
(220, 'use_ads_as_products', 'core', 'boolean', 'false', '', '2014-01-01 12:00:00', 'Permet d''ajouter des annonces au panier (nécessite le module d''annonce)', 1, 1),
(221, 'tva_annonce', 'core', 'float', '20.00', '', '2014-01-01 12:00:00', 'Spécifie le taux de TVA à appliquer aux annonces lors de leur ajout au panier (fonctionne avec le paramètre use_ads_as_product).', 1, 1),
(222, 'used_uploader', 'core', 'string', 'fineuploader', '', '2014-01-01 12:00:00', 'Définit quelle technologie d''upload utiliser / Defines which upload technology to use - possible values = standard, fineuploader', 1, 1),
(223, 'chart_product', 'core', 'string', 'flot', '', '2014-09-01 12:00:00', '', 1, 1),
(224, 'insert_product_categories_in_menu', 'core', 'boolean', 'true', '', '2014-09-01 12:00:00', '', 1, 1),
(225, 'enable_gzhandler', 'core', 'boolean', 'false', '', '2014-09-01 12:00:00', 'Si true : force PHP à compresser ses sorties HTTP', 1, 1),
(226, 'load_javascript_async', 'core', 'boolean', 'true', '', '2014-09-01 12:00:00', 'Si true : force les fichiers js en fin de page HTML', 1, 1),
(227, 'global_promotion_percent_by_threshold', 'core', 'array', '', '', '2014-09-01 12:00:00', '', 1, 1),
(228, 'minify_id_increment', 'auto 2015-10-17', 'integer', '0', '', '2015-10-17 11:37:26', 'Sert pour générer un nom de fichier différent après chaque ?update=1 forcé par un administrateur', 1, 1),
(229, 'bootstrap_enabled', 'core', 'boolean', 'true', '', '2014-09-01 12:00:00', 'Activer ou non Bootstrap en front-office', 1, 1),
(230, 'disable_add_to_cart_section_if_null_base_price_and_no_option', 'core', 'boolean', 'true', '', '2014-09-01 12:00:00', 'Désactive l''affichage du bouton d''ajout au caddie si le produit est gratuit et sans option - Mettez à false si vous voulez gérer des processus de commande malgré l''absence de prix', 1, 1),
(231, 'paypal_additional_fields', 'core', 'string', '<input name="solution_type" value="Sole" type="hidden"><input name="landing_page" value="Billing" type="hidden">', '', '2014-09-01 12:00:00', 'Permet d''ajouter des champs hidden au formulaire de communication à Paypal - par exemple : <input name="solution_type" value="Sole" type="hidden"><input name="landing_page" value="Billing" type="hidden">', 1, 1),
(232, 'autocomplete_hide_images', 'core', 'boolean', 'false', '', '2014-09-01 12:00:00', 'Par défaut : false - Permet de ne pas afficher la vignette dans l''autocomplete de la recherche : c''est intéressant en cas d''absence complète d''image sur un site', 1, 1),
(233, 'autocomplete_fast_partial_search', 'core', 'boolean', 'false', '', '2014-09-01 12:00:00', 'Par défaut : false - Permet d''accélerer les recherches en ne cherchant pas toutes les combinaisons possibles. En cas de trop grand nombre de produit, il n''est pas raisonnable de faire des recherches de type LIKE "%..."', 1, 1),
(234, 'load_site_specific_files_before_others', 'core', 'array', '', '', '2014-09-01 12:00:00', 'Par défaut : vide - Permet de charger des fichiers de fonctions non prévus dans le logiciel', 1, 1),
(235, 'load_site_specific_files_after_others', 'core', 'array', '', '', '2014-09-01 12:00:00', 'Par défaut : vide - Permet de charger des fichiers de fonctions non prévus dans le logiciel', 1, 1),
(236, 'load_site_specific_lang_folders', 'core', 'array', '', '', '2014-09-01 12:00:00', 'Par défaut : vide - Permet de charger des fichiers de langue non prévus dans le logiciel', 1, 1),
(237, 'load_site_specific_js_files', 'core', 'array', '', '', '2014-09-01 12:00:00', 'Par défaut : vide - Permet de charger des fichiers de javascript non prévus dans le logiciel', 1, 1),
(238, 'load_site_specific_js_content_array', 'core', 'array', '', '', '2014-09-01 12:00:00', 'Par défaut : vide - Permet de charger du javascript non prévus dans le logiciel', 1, 1),
(239, 'load_site_specific_js_ready_content_array', 'core', 'array', '', '', '2014-09-01 12:00:00', 'Par défaut : vide - Permet de charger du javascript non prévus dans le logiciel après le chargement de la page', 1, 1);
INSERT INTO `peel_configuration` (`id`, `technical_code`, `origin`, `type`, `string`, `lang`, `last_update`, `explain`, `etat`, `site_id`) VALUES
(240, 'show_special_on_content_category', 'boolean', 'true', '', '', '2014-09-01 12:00:00', 'Permet d''afficher les articles sur la page d''accueil des rubriques.', 1, 1),
(241, 'insert_article_categories_in_menu', 'core', 'boolean', 'true', '', '2014-09-01 12:00:00', '', 1, 1),
(242, 'only_show_articles_with_picture_in_containers', 'core', 'boolean', 'true', '', '2014-09-01 12:00:00', '', 1, 1),
(243, 'menu_custom_submenus', 'core', 'array', '', '', '2014-03-01 12:00:00', 'Works with menu_custom_urls and menu_custom_titles - Example: "main_menu_technical_code1" => "submenu_technical_code1", "main_menu_technical_code2" => "submenu_technical_code2"', 1, 1),
(244, 'menu_custom_urls', 'core', 'array', '', '', '2014-03-01 12:00:00', 'Works with menu_custom_titles and menu_custom_submenus - You can create one variable per language to have different URLs - Example: "technical_code_1" => "http://www.test.com/url1", "technical_code_2" => "http://www.test.com/url2"', 1, 1),
(245, 'menu_custom_titles', 'core', 'array', '', '', '2014-03-01 12:00:00', 'Works with menu_custom_urls and menu_custom_submenus - Example: "technical_code_1" => "STR_MENU_CUSTOM_TEXT_1", "technical_code_2" => "STR_MENU_CUSTOM_TEXT_2"', 1, 1),
(246, 'module_pensebete', 'core', 'integer', '1', '', '2014-03-01 12:00:00', '', 1, 1),
(247, 'statut_livraison_picto', 'core', 'array', '', '', '2014-03-01 12:00:00', 'permet d''afficher des icônes cliquables pour changer le statut de livraison depuis la page de liste de commandes. Ce paramètre est un tableau qui prend le statut de livraison en index et l''image en valeur : "id_statut_livraison" => "nom+extension de l''image". Les images doivent être stockées dans le dossier administrer/images', 1, 1),
(248, 'user_job_array', 'core', 'array', '"leader" => STR_LEADER, "manager" => STR_MANAGER, "employee" => STR_EMPLOYEE', '', '2014-03-01 12:00:00', '', 1, 1),
(249, 'redirect_user_after_login_by_priv', 'core', 'array', '', '', '2014-03-01 12:00:00', 'paramètre contenant le code technique du profil d''utilisateur, dont la liste est consultable sur la page Configuration>Configuration>Profils d''utilisateurs (/modules/profil/administrer/profil.php, "1"), et une url complète au choix, interne au site ou externe. Le format de ce paramètre est de type array : "profil" => "url"', 1, 1),
(250, 'module_lot', 'core', 'integer', '1', '', '2014-01-01 12:00:00', '', 1, 1),
(251, 'email_sending_format_default', 'core', 'string', 'html', '', '2014-01-01 12:00:00', '', 1, 1),
(252, 'display_recommanded_product_on_cart_page', 'core', 'boolean', 'true', '', '2014-01-01 12:00:00', '', 1, 1),
(253, 'module_vacances_client_msg_en', '', 'string', '', '', '2015-06-05 02:23:19', '', 1, 1),
(254, 'nom_en', 'sites.php', 'string', 'shoeshop', '', '2015-06-05 02:45:13', '', 1, 1),
(255, 'site_id_showed_by_default_if_domain_not_found', 'core', 'integer', '1', '', '2015-06-05 02:23:59', 'For multisite : to allow any alias on a hosting to reach the main site - Put 0 if you want to only allow configured domains', 1, 0),
(256, 'wwwroot', 'sites.php', 'string', 'http://localhost/peel', '', '2015-06-05 02:45:13', '', 1, 1),
(257, 'logo_en', 'sites.php', 'string', 'Shoe Sop', '', '2015-06-05 02:45:13', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peel_contacts`
--

CREATE TABLE IF NOT EXISTS `peel_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_insere` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_maj` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) unsigned NOT NULL DEFAULT '0',
  `titre_en` varchar(255) NOT NULL DEFAULT '',
  `texte_en` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `peel_contacts`
--

INSERT INTO `peel_contacts` (`id`, `date_insere`, `date_maj`, `site_id`, `titre_en`, `texte_en`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `peel_continents`
--

CREATE TABLE IF NOT EXISTS `peel_continents` (
  `id` tinyint(1) unsigned NOT NULL,
  `site_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peel_continents`
--

INSERT INTO `peel_continents` (`id`, `site_id`, `name_en`) VALUES
(1, 1, 'Africa'),
(2, 1, 'Americas'),
(3, 1, 'Asia'),
(4, 1, 'Europe'),
(5, 1, 'Oceania'),
(6, 1, 'Antarctic');

-- --------------------------------------------------------

--
-- Table structure for table `peel_couleurs`
--

CREATE TABLE IF NOT EXISTS `peel_couleurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_devises`
--

CREATE TABLE IF NOT EXISTS `peel_devises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `devise` varchar(50) NOT NULL DEFAULT '',
  `conversion` float(15,5) NOT NULL DEFAULT '1.00000',
  `symbole` varchar(10) NOT NULL DEFAULT '',
  `symbole_place` tinyint(1) NOT NULL DEFAULT '1',
  `code` varchar(3) NOT NULL DEFAULT '',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `peel_devises`
--

INSERT INTO `peel_devises` (`id`, `devise`, `conversion`, `symbole`, `symbole_place`, `code`, `etat`, `site_id`) VALUES
(1, 'Euro', 1.00000, '€', 1, 'EUR', 0, 1),
(2, 'CH Fr. Suisse', 1.41987, 'Fr', 1, 'CHF', 0, 1),
(3, 'US Dollar', 1.21553, '$', 0, 'USD', 0, 1),
(4, 'CA Dollar', 1.27708, '$', 0, 'CAD', 0, 1),
(5, 'JP Yen', 110.56900, '¥', 1, 'JPY', 0, 1),
(6, 'GB Pound', 0.83554, '£', 1, 'GBP', 0, 1),
(7, 'Kenyan Shilling', 0.00000, 'Ksh.', 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peel_diaporama`
--

CREATE TABLE IF NOT EXISTS `peel_diaporama` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_rubrique` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_ecotaxes`
--

CREATE TABLE IF NOT EXISTS `peel_ecotaxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL DEFAULT '',
  `prix_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_ttc` float(15,5) NOT NULL DEFAULT '0.00000',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `peel_ecotaxes`
--

INSERT INTO `peel_ecotaxes` (`id`, `code`, `prix_ht`, `prix_ttc`, `site_id`, `nom_en`) VALUES
(1, '1.1', 10.87000, 13.04400, 1, 'Fridge, Fridge-freezer, Freezer, Wine Cellar, Air Conditioning, Other Devices refrigerant'),
(2, '1.2', 5.02000, 6.02400, 1, 'Washer, Dryer, Dishwasher, Dishwasher combined with another device does not produce cold (Cooking device, ..., Stove, Built-in oven, four-Vapour, centrifuge machines)'),
(3, '1.3', 1.67000, 2.00400, 1, 'Hob, Electric hob, Hood, Filter unit, Microwave oven, Microwave mutilevel, Warming drawer, Storage heater'),
(4, '1.4', 0.84000, 1.00800, 1, 'Purifier, Dehumidifier, Other equipment for ventilation, Air extraction > 5 kg'),
(5, '1.5', 0.42000, 0.50400, 1, 'Other equipment for ventilation, Air extraction < 5 kg'),
(6, '1.6', 0.08000, 0.09600, 1, 'Other equipment for ventilation, Air extraction < 500 g'),
(7, '1.7', 3.34000, 4.00800, 1, 'Boiler storage, Balloon, Cumulus'),
(8, '1.8', 0.84000, 1.00800, 1, 'Control radiating fixed or mobile panel radiant convector heater or fixed or mobile, Radiator oil bath towel dryer, Electric Blanket, Tankless Water Heaters, Electric Fireplace, Other large appliances for heating rooms, beds and seats > 5 kg'),
(9, '1.9', 0.42000, 0.50400, 1, 'Other large appliances for heating rooms, Beds and seats < 5 kg'),
(10, '1.10', 0.08000, 0.09600, 1, 'Other large appliances for heating rooms, Beds and seats < 500 g'),
(11, '2.1', 0.84000, 1.00800, 1, 'Vacuum cleaner, wet and dry vacuum cleaner, robot, brushes, shine, Steam Cleaner, Steam irons, ironing active robot and press ironing, washing machine agitator portable / pulsator, Mini-oven'),
(12, '2.2', 0.42000, 0.50400, 1, 'Electrolysis apparatus, Fondue, Electric curling / straightening, Raclette, device therapy, Light Therapy Device, Device for manicure and pedicure, massage apparatus, device electromusculation, Camera infrared lamp, Apparatus for the beauty of hair, vacuum cleaner, rechargeable hand vac, kitchen scale, blender, kettle, toothbrush, brush fan, Coffee, Juice, Bottle warmer, heater flat Chocolatière combo, dental, electric knife, crepe, Croque Monsieur, Steamer / Simmer / cooker, Stain, and Wax Epilator, Beauty Equipment for facial Factory Ice / sodas, Iron, Fryer, Waffle Maker, Toaster, grill meat grinder, Water Jet, Solar Lamp, espresso machine, bread oven, mirror light, blender, mixer, blender cooker / steam, coffee grinder, mill electric opener, box, Scales, Fruit squeezer, Cooler beverages, Razor, Robot, Saucier, Facial Sauna, hairdryer, Sorbet, Sterilizer, Teapot, hair clipper, ..., slicer, insect killer, Yoghurt'),
(13, '2.3', 0.08000, 0.09600, 1, 'Thermometer, Watch, clock, alarm clock, stopwatch'),
(14, '3.1', 6.69000, 8.02800, 1, 'Monitor with a screen size greater than 32 inches'),
(15, '3.2', 3.34000, 4.00800, 1, 'Monitor screen with a size greater than 20 inches and less than or equal to 32 inches'),
(16, '3.3', 0.84000, 1.00800, 1, 'Monitor screen with a size of less than or equal to 20 inches'),
(17, '3.4', 0.84000, 1.00800, 1, 'Personal Computer, CPU'),
(18, '3.5', 0.25000, 0.30000, 1, 'Laptop'),
(19, '3.6', 0.42000, 0.50400, 1, 'Printer (printer only off photo, Scanner, Fax'),
(20, '3.7', 0.08000, 0.09600, 1, 'Pocket PC, PDA, Calculator, Voice recorder, telephone or wireless, Voicemail, Intercom, Walkie Talkie, GPS, Modem, Router, WiFi, call router, external storage device data (external hard drive, external floppy drive, ..., CD / DVD drive, decoder, transcoder, USB, Small Devices: webcam, mouse, keyboard, speaker for computer, headphone, microphone'),
(21, '3.8', 0.01000, 0.01200, 1, 'Cell Phone Accessories'),
(22, '4.1', 6.69000, 8.02800, 1, 'My television screen larger than 32 inches and other large screens'),
(23, '4.2', 3.34000, 4.00800, 1, 'My TV screen size greater than 20 inches and less than or equal to 32 inches'),
(24, '4.3', 0.84000, 1.00800, 1, 'My TV screen size exceeding 20 inch'),
(25, '4.4', 0.84000, 1.00800, 1, 'Stereo, micro / mini (home audio systems, all elements integrated amplifier, home theater receiver, receiver'),
(26, '4.5', 0.25000, 0.30000, 1, 'VCR, CD, DVD, DIVX, K7, DVD Recorder, Platinum Disc, Tuner, HDD multimedia lounge, Karaoke Player, Projector, Musical Instrument, speaker, subwoofer, mixer, equalizer'),
(27, '4.6', 0.08000, 0.09600, 1, 'Remote Control, Set top box, helmet (audio, TV, stereo, camcorder, digital camera, recorder / dictaphone, Portable CD, MD, MP3, audio-video, hard drive, solid state, Microphone, Computer radio, portable CD and K7 radio, transistor, portable radio, Clock Radio, Camera - photo, photo printer, Accessories Audio / Video)'),
(28, '6.1', 0.17000, 0.20400, 1, 'Chipper, stripper, stripper, router, drill, file, grinder, drill, drill, sander, planer, saw, joiner, edgers, trimmers, chainsaws, Other Power Tools, Soldering Iron, pump, fountain pump, Battery charger, Sewing Machine'),
(29, '6.2', 1.25000, 1.50000, 1, 'mower, pressure washer, chipper shredder, Tools stationary compressor'),
(30, '7.1', 0.04000, 0.04800, 1, 'Toys and equipment weighing less than or equal to 500 grams'),
(31, '7.2', 0.17000, 0.20400, 1, 'Toys and equipment weighing more than 500 grams and less than or equal to 10 kg'),
(32, '7.3', 1.25000, 1.50000, 1, 'Toys and equipment weighing more than 10 kg'),
(33, '8.1', 0.84000, 1.00800, 1, 'Apparatus for detecting, preventing, monitoring, treating, alleviating illness, injury or disability, weighing more than 5 kg'),
(34, '8.2', 0.08000, 0.09600, 1, 'Apparatus for detecting, preventing, monitoring, treating, alleviating illness, injury or disability, weighing less than 5 kg'),
(35, '9.1', 0.08000, 0.09600, 1, 'Equipment for measurement, Control and monitoring headless'),
(36, '9.2', 0.84000, 1.00800, 1, 'Other equipment monitoring and control screen'),
(37, '10.0', 10.87000, 13.04400, 1, 'Vending Machines');

-- --------------------------------------------------------

--
-- Table structure for table `peel_email_template`
--

CREATE TABLE IF NOT EXISTS `peel_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT '',
  `active` enum('TRUE','FALSE') NOT NULL DEFAULT 'TRUE',
  `id_cat` int(11) NOT NULL DEFAULT '1',
  `default_signature_code` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `peel_email_template`
--

INSERT INTO `peel_email_template` (`id`, `technical_code`, `name`, `subject`, `text`, `lang`, `active`, `id_cat`, `default_signature_code`, `site_id`) VALUES
(1, 'signature_commercial', 'Commercial department signature', 'Commercial department signature', '\r\nCommercial department', 'en', 'TRUE', 1, '', 1),
(2, 'signature_comptabilite', 'Accounting department signature', 'Accounting department signature', '\r\nAccounting department', 'en', 'TRUE', 1, '', 1),
(3, 'signature_referencement', 'Referencing department signature', 'Referencing department signature', '\r\nReferencing department', 'en', 'TRUE', 1, '', 1),
(4, 'signature_informatique', 'Technical department signature', 'Technical department signature', '\r\nTechnical department', 'en', 'TRUE', 1, '', 1),
(5, 'signature_communication', 'Communication department signature', 'Communication department signature', '\r\nCommunication department', 'en', 'TRUE', 1, '', 1),
(6, 'signature_marketing', 'Marketing department signature', 'Marketing department signature', '\r\nMarketing department', 'en', 'TRUE', 1, '', 1),
(7, 'signature_direction', 'The direction signature', 'The direction signature', '\r\nThe direction', 'en', 'TRUE', 1, '', 1),
(8, 'signature_externe', 'External department signature', 'External department signature', '\r\nExternal department', 'en', 'TRUE', 1, '', 1),
(9, 'signature_support', 'Support customers signature', 'Support customers signature', '\r\nSupport customers', 'en', 'TRUE', 1, '', 1),
(10, 'download_product', 'Download your order', 'Download your order #[ORDER_ID]', 'Hello,\r\n\r\nYour order #[ORDER_ID] has been validated. We invite you to download your order from the link below:\r\n\r\nYour link to download: [WWWROOT]/modules/download/telecharger.php?id=[ORDER_ID]&key=[CLE]\r\n\r\nYou can download this file only once. If you encounter difficulties while downloading your order, we advise you to contact [SUPPORT_COMMANDE] so that it gives you a new download link.\r\n\r\nWe also invite you to edit your invoice from the following link:\r\n\r\n[WWWROOT]/factures/commande_pdf.php?code_facture=[CODE_FACTURE]&mode=facture', 'en', 'TRUE', 1, '', 1),
(11, 'commande_parrain_avoir', 'Your credit following the order of your contact', 'Your credit following the order of your contact', 'Hello,\r\n\r\nFollowing the order placed by one of your contacts on our shop online, you can now benefit from a credit of [AVOIR] on your next order.', 'en', 'TRUE', 1, '', 1),
(12, 'envoie_client_code_promo', 'In appreciation for your loyalty', 'In appreciation for your loyalty', 'Hello [CIVILITE] [PRENOM] [NOM_FAMILLE],\r\n\r\nIn order to thank you for your order on our online shop, we are offering you this promotional code: [NOM_CODE_PROMO].\r\n\r\nIt allows you to benefit from a [REMISE] discount on your next order.\r\n\r\nThis promotional code can only be used by you once, and you can use it from now on until the following date [DATE_FIN].', 'en', 'TRUE', 1, '', 1),
(13, 'insere_ticket', 'Contact form [EMAIL] [TELEPHONE]', 'Contact form [EMAIL] [TELEPHONE]', 'Hello,\r\n\r\nDetails of the message sent on [DATE]:\r\n\r\nName: [NOM_FAMILLE]\r\nFirstname: [PRENOM]\r\nCompany name: [SOCIETE]\r\nAddress : [ADRESSE]\r\nPhone number: [TELEPHONE]\r\nEmail address: [EMAIL]\r\nAvailability: [DISPO]\r\n\r\nSubject: [SUJET]\r\n\r\nMessage:\r\n\r\n[TEXTE]\r\n\r\nIP: [REMOTE_ADDR]\r\n', 'en', 'TRUE', 1, '', 1),
(14, 'admin_info_payment_credit_card', 'Order by credit card being recorded on [SITE]', 'Order by credit card being recorded on [SITE]', 'Hello,\r\n\r\nThe order associated with the following number [ORDER_ID] has just been recorded on [WWWROOT]/', 'en', 'TRUE', 1, '', 1),
(15, 'admin_info_payment_credit_card_3_times', 'Order by credit card three times during recording [SITE]', 'Order by credit card three times during recording [SITE]', 'Hello,\r\n\r\nThe order associated with the following number [ORDER_ID] has just been recorded on [SITE]\r\n', 'en', 'TRUE', 1, '', 1),
(16, 'send_client_order_html', 'Your order [ORDER_ID] on [SITE] (HTML version)', 'Your order [ORDER_ID] on [SITE]', 'Hello,\r\n\r\nWe invite you to open the following link in order to either print or pay your order on the website [SITE]:\r\n\r\nYour order form:\r\n[URL_FACTURE]\r\n\r\nIf the link does not appear correctly in your web browser, please copy and paste it. The URL must end by mode=[MODE].\r\n\r\nYour order will be processed as soon as we receive your payment.', 'en', 'TRUE', 1, '', 1),
(17, 'send_client_order_pdf', 'Your order [ORDER_ID] on [SITE] (PDF version)', 'Your order [ORDER_ID] on [SITE]', 'Hello,\r\n\r\nWe invite you to open the following link in order to either print or pay your order on the website [SITE]:\r\n\r\nYour order form:\r\n[URL_FACTURE]\r\n\r\nIf the link does not appear correctly in your web browser, please copy and paste it. The URL must end by ''mode=[MODE]''.\r\n\r\nYour order will be processed as soon as we receive your payment.', 'en', 'TRUE', 1, '', 1),
(18, 'send_avis_expedition', 'Shipping order #[ORDER_ID]', 'Shipping order #[ORDER_ID]', 'Hello [PRENOM] [NOM_FAMILLE],\r\n\r\nWe are pleased to confirm the preparation and shipping of your order #[ORDER_ID].\r\n\r\nShipped items:\r\n[SHIPPED_ITEMS]\r\nThe shipping method you have chosen during the order process is: [TYPE].\r\nShipping references: The parcel number is [COLIS], you can follow the shipping of your parcel by clicking on the following link: http://www.coliposte.fr/\r\n\r\nShipping address:\r\n[CLIENT_INFOS_SHIP]\r\n\r\nIMPORTANT REMINDER:\r\nPlease follow our instructions in order to avoid any problem. The shipping is a sensitive step which requires a specific attention.\r\nAs a result, thanks to conform to the elementary rules reminded below:\r\n- Damaged parcel\r\n- Opened and/or broken parcel\r\n- Closing system (adhesive...) damages or not original\r\n\r\nWHAT TO DO?\r\n- Do not open the parcel\r\n- refuse the parcel\r\n- immediately warn the shipper\r\n- warn us and give us the number of the concerned order\r\n\r\nREIMBURSEMENT\r\n[SITE] will refuse systematically the repayment of an order if:\r\n- no warning has been made to the shipper\r\n- no proof of the warning is provided\r\n\r\nThank for your understanding, please do not hesitate to contact us if you have any queries.', 'en', 'TRUE', 1, '', 1),
(19, 'email_commande', 'Order confirmation #[ORDER_ID]', 'Order confirmation #[ORDER_ID] on [SITE]', 'Hello [CIVILITE] [PRENOM] [NOM_FAMILLE],\r\n\r\nYour order #[ORDER_ID] made on [DATE] has been saved on the website [SITE].\r\n\r\n---------------------------\r\nYOUR ORDER SUMMARY\r\n---------------------------\r\n\r\nAmount: [MONTANT] VAT INCLUDED\r\nPayment means [PAIEMENT]: \r\n\r\n---------------------------\r\nBilling address\r\n---------------------------\r\n[CLIENT_INFOS_BILL]\r\n\r\n---------------------------\r\nShipping address\r\n---------------------------\r\n[CLIENT_INFOS_SHIP]\r\n\r\n---------------------------\r\nBought items\r\n---------------------------\r\n[BOUGHT_ITEMS]\r\n\r\nShipping fees\r\n[COUT_TRANSPORT]\r\nShipping type\r\n[TYPE]\r\n\r\nYou can follow the status of your order:\r\n\r\nOnce your order is paid for, your invoice will appear in your account in your order details\r\n\r\nTo access your order history:\r\n - Click on MY ACCOUNT,\r\n - Please log in\r\n - Then click on your order history.\r\n\r\nThank you for your trust.\r\n\r\nSee you soon on [SITE]', 'en', 'TRUE', 1, '', 1),
(20, 'send_mail_order_admin', 'Record of the order #[ORDER_ID]', 'Record of the order #[ORDER_ID]', 'Hello,\r\n\r\nThe following order [ORDER_ID] has just been recorded on [SITE]\r\n\r\nEmail address: [EMAIL]\r\nReference number: [ORDER_ID]\r\nOrder amount: [MONTANT]\r\nOrder date: [O_TIMESTAMP]\r\nPayment: [PAIEMENT]\r\n\r\nPlease consult the administration interface of your web site. ', 'en', 'TRUE', 1, '', 1),
(21, 'initialise_mot_passe', 'New password for your customer account', 'New password for your customer account', 'Hello,\r\n\r\nA request of a new password on the site [SITE] has been initiated.\r\n\r\nTo confirm your password renewal application, you must click the following link: [LINK]\r\nYou have 24 hours after the renewal application to perform this operation. Afterwards, the link will no longer be valid.\r\nThis email was sent automatically, thank you not to reply to this message.\r\n', 'en', 'TRUE', 1, '', 1),
(22, 'send_mail_for_account_creation', 'Your customer account', 'Your customer account', 'Hello,\r\n\r\nYou have just created a customer account on [SITE].\r\n\r\nYour login is: [EMAIL]\r\nYour new password is: [MOT_PASSE]\r\n', 'en', 'TRUE', 1, '', 1),
(23, 'insere_avis', 'A user has left a comment on [SITE]', 'A user has left a comment on [SITE]', 'Hello,\r\n\r\n[PRENOM] [NOM_FAMILLE] has added the following comment:\r\n\r\nProduct name: [NOM_PRODUIT]\r\n\r\nPosted opinion: [AVIS]\r\n\r\nIn order to confirm your opinion, you have to log in the administration interface and to edit its status in TOOLS > Users opinions.', 'en', 'TRUE', 1, '', 1),
(24, 'bons_anniversaires', '[SITE] wishes you an happy birthday', '[SITE] wishes you an happy birthday', 'Hello [CIVILITE] [PRENOM] [NOM_FAMILLE],\r\n\r\nKnowing that it is your birthday, we are giving you this discount code: [NOM_CODE_PROMO].\r\n\r\nIt allows you to benefit from a [REMISE] discount on your next order [MAIL_EXTRA_INFOS].\r\n\r\nThis promotional code can only be used by you once, from now on and until the following date [DATE_FIN].\r\n\r\n[SITE] wishes you a happy birthday!', 'en', 'TRUE', 1, '', 1),
(25, 'direaunami_sent', '[PSEUDO] visited the website [SITE] and recommands you to ha', '[PSEUDO] visited the website [SITE] and recommands you to have a look on it', 'Hello [NOM_FAMILLE], \r\n\r\n[PSEUDO] visited the website [SITE] and thinks it could be interesting for you:\r\n\r\nURL: [PRODUCT_LINK]\r\n\r\nMy comments: \r\n------------------------------------ \r\n[COMMENTS]\r\n------------------------------------', 'en', 'TRUE', 1, '', 1),
(26, 'cheques_cadeaux', '[EMAIL_ACHETEUR] offers you a voucher', '[EMAIL_ACHETEUR] offers you a voucher', 'Hello,\r\n\r\n[EMAIL_ACHETEUR] has bought you a gift!\r\n\r\nTo benefit from it, please connect to the website [WWWROOT]/ and use your code [CHECK_NAME].\r\n\r\nYou will then benefit from a discount of [REMISE_VALEUR] for a minimal amount of purchase of [MONTANT_MIN] HT regarding your order.', 'en', 'TRUE', 1, '', 1),
(27, 'cree_cheque_cadeau_friend', '[EMAIL] offers you a voucher', '[EMAIL] offers you a voucher', 'Hello,\r\n\r\nYour friend [PRENOM] [NOM_FAMILLE] has bought you a gift on the website [SITE].\r\n\r\nIn order to benefit from it, please connect to the website [WWWROOT]/ and use your code [CODE].\r\n\r\nYou will then enjoy a discount of [PRIX] VAT INCLUDED on your order.\r\n', 'en', 'TRUE', 1, '', 1),
(28, 'cree_cheque_cadeau_admin', 'Creation of a voucher', 'Creation of a voucher', 'Hello,\r\n\r\nA promotion code [CODE] using the VOUCHER module has just been created on [SITE].', 'en', 'TRUE', 1, '', 1),
(29, 'cree_cheque_cadeau_client_type2', '[FRIEND] offers you a voucher', '[FRIEND] offers you a voucher', 'Hello,\r\n\r\n[SITE] is offering you a 30 days voucher for an amount of [MONTANT].\r\n\r\nIn order to benefit from it, please connect to the website [WWWROOT]/ and use your code [CODE].', 'en', 'TRUE', 1, '', 1),
(30, 'cree_cheque_cadeau_client_admin', 'Creation of a voucher', 'Creation of a voucher', 'Hello,\r\n\r\nThe promotional code [CODE] has been created using the sponsoring module [SITE].', 'en', 'TRUE', 1, '', 1),
(31, 'gift_list', 'Gift list', 'Gift list', 'Hello,\r\n\r\nDetails of the message received on [DATE]\r\n\r\n[PRENOM] [NOM_FAMILLE] sends you his gift list called: [GIFTLIST_NAME]\r\n\r\n[GIFTLIST_ITEMS]', 'en', 'TRUE', 1, '', 1),
(32, 'email_ordered_cadeaux', 'Control your gift list "[GIFTLIST_NAME]"', 'Control your gift list "[LIST_NAME]"', 'Hello,\r\n\r\n[PRENOM] [NOM_FAMILLE] has just ordered something from your gift list [GIFTLIST_NAME].\r\n\r\nHere are the products ordered: [GIFTLIST_ITEMS]', 'en', 'TRUE', 1, '', 1),
(33, 'listecadeau_voir', 'Control your gift list "[GIFTLIST_NAME]"', 'Control your gift list "[LIST_NAME]"', 'Bonjour,\r\n\r\nDetails of the message sent on [DATE]:\r\n\r\n[PRENOM] [NOM_FAMILLE] sends you his gift list called [GIFTLIST_NAME] :\r\n[URL_LISTE_CADEAU]\r\n\r\n[GIFTLIST_ITEMS]', 'en', 'TRUE', 1, '', 1),
(34, 'parrainage', '[PSEUDO] wishes to sponsor you', '[PSEUDO] wishes to sponsor you', 'Hello,\r\n\r\n[PSEUDO] invites you to discover the following website [SITE] and benefit from a [REBATE] credit on your first order, after having validated your customer account. \r\n\r\nClick on the following link to validate your costumer account: :\r\n [WWWROOT]/modules/parrainage/inscription.php?email=[EMAIL_FILLEUL]&code=[MDP]&id=[ID_UTILISATEUR]\r\n\r\nYour ID: [EMAIL_FILLEUL]\r\nYour password: [MDP]', 'en', 'TRUE', 1, '', 1),
(35, 'email_alerte', 'Product in stock on [SITE]', 'Product in stock on [SITE]', 'Hello,\r\n\r\nThe following product [NOM_PRODUIT] is currently in stock. Click on the following link to discover it: [URLPROD]\r\n\r\nSee you soon on [SITE]\r\n', 'en', 'TRUE', 1, '', 1),
(36, 'decremente_stock', 'Alert notification STOCK', 'Alert notification STOCK', 'Hello,\r\n\r\nThe stock threshold has been reached for the following product [NOM_PRODUIT].\r\nOpen stock : [STOCK_RESTANT_APRES_DEMANDE]', 'en', 'TRUE', 1, '', 1),
(37, 'admin_login', 'Administrator login information', 'Login from [USER] [REMOTE_ADDR]', 'Hello,\r\n\r\nThis email warns you that an administrator has logged in your website.\r\n\r\nUser login : [USER]\r\nIP used : [REMOTE_ADDR]\r\nReverse DNS : [REVERSE_DNS]\r\nDatetime : [DATETIME]\r\n\r\nThis email enhances the security on you PEEL eshop.', 'en', 'TRUE', 1, '', 1),
(38, 'signature', 'Automatic emails signature', 'Automatic emails signature', '\r\nCustomer service\r\n[SITE]\r\n[WWWROOT]/', 'en', 'TRUE', 1, '', 1),
(39, 'cree_cheque_cadeau_client_type1', '[FRIEND] offers you a voucher', '[FRIEND] offers you a voucher', 'Hello,\r\n\r\n[SITE] is offering you a 30 days voucher for an amount of [PERCENT].\r\n\r\nIn order to benefit from it, please connect to the website [WWWROOT]/ and use your code [CODE].', 'en', 'TRUE', 1, '', 1),
(40, 'warn_admin_user_subscription', 'User registration warning', '[CIVILITE] [PRENOM] [NOM_FAMILLE] just opened an account on [SITE_NAME]', 'On [DATE]\r\n\r\nThe following user just opened an account:\r\n\r\n[CIVILITE] [PRENOM] [NOM_FAMILLE]\r\n[EMAIL]\r\n[SOCIETE]\r\n[TELEPHONE]\r\n[PRIV]\r\n\r\n[link="[ADMIN_URL]"]Administrate this user account[/link]\r\n', 'en', 'TRUE', 1, '', 1),
(41, 'warn_admin_reve_subscription', 'User reseller warning', 'The reseller [CIVILITE] [PRENOM] [NOM_FAMILLE] just opened an account on [SITE_NAME]', 'We inform you that the reseller [link="[ADMIN_URL]"] [CIVILITE] [PRENOM] [NOM_FAMILLE] [/link] is registered on [SITE].\r\n\r\nThis account is currently in status "Reseller waiting ". This account is not active and does benefit from reseller prices when you have spent in status "reseller"\r\n', 'en', 'TRUE', 1, '', 1),
(42, 'email_retour_virement', 'Validation of your return number [RETURN_ID]', 'Validation of your return number [RETURN_ID]', 'Hello,\r\n\r\nWe have received your return number [RETURN_ID].\r\nAccording to your choice, the corresponding amount, or will be paid off to [MONTANT] to you by Bank transfer as soon as possible.', 'en', 'TRUE', 1, '', 1),
(43, 'email_retour_avoir', 'Validation of your return number [RETURN_ID]', 'Validation of your return number [RETURN_ID]', 'Hello,\r\n\r\nWe have received your return number [RETURN_ID].\r\nAccording to your choice, the corresponding amount has just been credited on your account, that is [MONTANT]. This [MODE] will be automatically deducted from your next order until exhaustion.', 'en', 'TRUE', 1, '', 1),
(44, 'email_reste_avoir_remboursement', 'Repayment of your credit number [RETURN_ID]', 'Repayment of your credit number [RETURN_ID]', 'Hello,\r\n\r\nWe have received your return number [RETURN_ID].\r\nThe repayment can not blank exceeds the amount of the order, [MONTANT] will be refunded by [MODE].The balance has been credited to your account, that is [RESTE_AVOIR]. This credit will be automatically deducted from your next order until exhausted.', 'en', 'TRUE', 1, '', 1),
(45, 'email_remboursement', 'Repayment of your return number [RETURN_ID]', 'Repayment of your return number [RETURN_ID]', 'Hello,\r\n\r\nThe repayment of your return number [RETURN_ID], to the amount of [MONTANT] has just been made by [MODE]', 'en', 'TRUE', 1, '', 1),
(46, 'email_retour_client', 'Your return request', 'Your return request', 'Hello,\r\n\r\nYour return request has been registered.\r\nA this, send us the items to the following address:\r\n\r\n[SITE]\r\nRETURN NUMBER [RETURN_ID].\r\n\r\nPlease remember that items must be returned in good condition and in their original packaging.\r\nUpon receipt of your items, we will validate the repayment thereof.', 'en', 'TRUE', 1, '', 1),
(47, 'cron_order_payment_failure_alerts', 'Help for your payment', 'Help for your payment', 'Dear [PRENOM] [NOM],\r\n\r\nWe write you about the recent order you have posted on [WWWROOT]/\r\n\r\nOrder content: [PRODUCT_NAME]\r\nTotal amount of your order: [TOTAL_AMOUNT]\r\nPayment mean you have chosen: [PAYMENT_MEAN]\r\n\r\nOur automated system has not detected any payment confirmation for this order.\r\nHave you encountered any problem?\r\n\r\nWe are at your disposal to validate this order, and if you need you can switch to another payment mean.\r\n\r\nBest regards,\r\n\r\n[WWWROOT]/\r\n\r\nNB: If you have already proceeded in the payment of the following order, please do not take into account this email, as your payment will be treated very soon.', 'en', 'TRUE', 1, '', 1),
(48, 'cron_order_not_paid_alerts', 'Payment of your order', 'Payment of your order', 'Dear [PRENOM] [NOM],\r\n\r\nWe write you about the recent order you have posted on [DAYS_SINCE] days ago on [SITE_NAME].\r\n\r\nOrder content: [PRODUCT_NAME]\r\nTotal amount of your order: [TOTAL_AMOUNT]\r\nPayment mean you have chosen: [PAYMENT_MEAN]\r\n\r\nOur automated system has not detected any payment confirmation for this order.\r\nHave you encountered any problem?\r\n\r\nWe are at your disposal to validate this order, and if you need you can switch to another payment mean.\r\n\r\nNB: If you have already proceeded in the payment of the following order, please do not take into account the text hereunder, as your payment will be treated very soon.', 'en', 'TRUE', 1, '', 1),
(49, 'cron_update_contact_info', 'Confirmation of the validity of your information', 'Confirmation of the validity of your information', 'Dear [CIVILITE] [NOM],\r\n\r\nIn order to keep updated your contact information on your ads, here is your currently registered information to check :\r\n\r\nEmail : [EMAIL]\r\nGender : [CIVILITE]\r\nLogin : [PSEUDO]\r\nFirst name : [PRENOM]\r\nLast name : [NOM]\r\nCompany : [SOCIETE]\r\nVAT number : [TVA_INTRA]\r\nPhone : [TELEPHONE]\r\nCell : [PORTABLE]\r\nFax : [FAX]\r\nBirthday : [NAISSANCE]\r\nAddress : [ADRESSE]\r\nZip code : [CODE_POSTAL]\r\nCity : [VILLE]\r\nCountry : [PAYS]\r\nWebsite : [SITE_WEB]\r\n\r\nIf you have any correction to make, please connect to your account on [WWWROOT]/\r\n\r\nIf you have forgotten your password, please go to: [WWWROOT]/utilisateurs/oubli_mot_passe.php\r\n\r\nPlease remember that having correct contact information for your ads is important for your prospects and your company''''s image.\r\nAny wrong information may oblige us to close your account.\r\n\r\nFor any further information, please contact us.', 'en', 'TRUE', 1, '', 1),
(50, 'inscription_newsletter', 'Subscribe to the newsletter on [SITE]', 'Subscribe to newsletter [SITE]', 'Hello,\r\n\r\nThank you for signing up for the newsletter [SITE_NAME]. You will receive a weekly newsletter to [EMAIL].\r\n\r\nSoon on [WWWROOT]/', 'en', 'TRUE', 1, '', 1),
(51, 'send_mail_for_account_creation_stop', 'Your reseller account', 'Your reseller account', 'Hello,\r\n\r\nYour registration has been taken into account in [SITE] and must be validated by an administrator. You will be notified by email of the account''s validation, and login to your account will only be possible after this validation.\r\n\r\nBest Regards,', 'en', 'TRUE', 1, '', 1),
(52, 'send_mail_for_account_creation_reve', 'Change of status of your reseller account', 'Change of status of your reseller account', 'Hello,\r\n\r\nYour account [EMAIL] on [SITE] has been activated by an administrator. You now get the status "[STATUT]" and associated benefits, and you can login to your account.\r\n\r\nBest Regards,', 'en', 'TRUE', 1, '', 1),
(53, 'send_mail_for_account_creation_stand', 'Your affiliate account', 'Your affiliate account', 'Hello,\r\n\r\nYour registration has been taken into account in [SITE] and must be validated by an administrator. You will be notified by email of the account''s validation, and login to your account will only be possible after this validation.\r\n\r\nBest Regards,', 'en', 'TRUE', 1, '', 1),
(54, 'send_mail_for_account_creation_affi', 'Change in status of your affiliate account', 'Change in status of your affiliate account', 'Hello,\r\n\r\nYour account [EMAIL] on [SITE] has been activated by an administrator. You now get the status "[STATUT]" and associated benefits, and you can login to your account.\r\n\r\nBest Regards,', 'en', 'TRUE', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peel_email_template_cat`
--

CREATE TABLE IF NOT EXISTS `peel_email_template_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL DEFAULT '0',
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `name_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `peel_email_template_cat`
--

INSERT INTO `peel_email_template_cat` (`id`, `site_id`, `technical_code`, `name_en`) VALUES
(1, 1, 'automatic_sending', 'Automatic sending'),
(2, 1, 'various', 'Various'),
(3, 1, 'product', 'Product'),
(4, 1, 'sales', 'Sales'),
(5, 1, 'site_and_clients_information', 'Site and clients information'),
(6, 1, 'payment_modes', 'Payment modes'),
(7, 1, 'newsletter', 'NewsLetter');

-- --------------------------------------------------------

--
-- Table structure for table `peel_html`
--

CREATE TABLE IF NOT EXISTS `peel_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenu_html` mediumtext NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `titre` varchar(255) NOT NULL DEFAULT '',
  `o_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `a_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `emplacement` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `peel_html`
--

INSERT INTO `peel_html` (`id`, `contenu_html`, `etat`, `titre`, `o_timestamp`, `a_timestamp`, `emplacement`, `lang`, `site_id`) VALUES
(1, '', 0, 'En-tête du site', '2012-05-01 12:00:00', '2012-05-01 12:00:00', 'header', 'fr', 1),
(2, '<p>Bas de page du site personnalisable dans lequel on peut insérer des liens vers les partenaires</p>', 1, 'Bas de page du site', '2012-05-01 12:00:00', '2012-05-01 12:00:00', 'footer', 'fr', 1),
(3, '<p>Contenu personnalisable dans lequel on peut insérer des images, du texte HTML et des bannières publicitaires</p>', 1, 'Contenu d''accueil du site', '2012-05-01 12:00:00', '2012-05-01 12:00:00', 'home', 'fr', 1),
(4, '<p>Interstitiel de publicité</p>', 0, 'Publicité', '2012-05-01 12:00:00', '2012-05-01 12:00:00', 'interstitiel', 'fr', 1),
(5, '<p>Introduction personnalisable</p>', 0, 'Devenir revendeur', '2012-05-01 12:00:00', '2012-05-01 12:00:00', 'devenir_revendeur', 'fr', 1),
(6, '', 0, 'En-tête du site', '2012-05-01 12:00:00', '2012-05-01 12:00:00', 'header', 'en', 1),
(7, '<h1>La page demandée n''est pas disponible</h1>', 1, 'Page d''erreur 404', '2012-05-01 11:53:04', '2012-05-01 12:00:28', 'error404', 'fr', 1),
(8, '<h1>This page is not found</h1>', 1, 'Error 404 page content', '2012-05-01 11:53:04', '2012-05-01 12:00:28', 'error404', 'en', 1),
(9, '<p class="center">Bas de page du site personnalisable dans lequel on peut insérer des liens (footer_link)</p>', 0, 'Liens du footer', '2012-05-01 12:53:04', '2012-05-01 12:00:28', 'footer_link', 'fr', 1),
(10, 'Merci de votre confiance, votre commande a été enregistrée avec succès.', 1, 'Fin du process de command court', '2012-05-01 12:53:04', '2012-05-01 12:00:28', 'end_process_order', 'fr', 1),
(11, 'Thank you for your order. It has been successful.', 1, 'End of short order process', '2012-05-01 12:53:04', '2012-05-01 12:00:28', 'end_process_order', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peel_import_field`
--

CREATE TABLE IF NOT EXISTS `peel_import_field` (
  `champs` varchar(255) NOT NULL DEFAULT '',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `texte_en` varchar(255) NOT NULL DEFAULT '',
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peel_import_field`
--

INSERT INTO `peel_import_field` (`champs`, `etat`, `site_id`, `texte_en`) VALUES
('id', 0, 1, 'Unique identifier for the product to update an existing product. If id is specified and found in the database, the product is updated'),
('categorie_id', 0, 1, 'The name or reference category (put 0 if it does not exist.) Link is in the <a href="categories.php">llist of categories</a>  - ID column. Category will be created automatically if it does not exist and that is his name'),
('Categorie', 0, 1, 'Other possible column name category_id'),
('id_marque', 1, 1, 'The name or reference of the brand. The reference is in the <a href="marques.php">list of brands</a> - ID column. The brand will be created if it does not exist '),
('reference', 0, 1, 'Product Reference'),
('nom_fr', 0, 1, 'Name in French'),
('descriptif_fr', 0, 1, 'Product short description in French'),
('description_fr', 0, 1, 'Product description in French'),
('nom_en', 0, 1, 'Name in English'),
('descriptif_en', 0, 1, 'Product short description in English'),
('description_en', 0, 1, 'Product description in English'),
('prix', 1, 1, 'Public price incl. VAT'),
('prix_revendeur', 1, 1, 'Reseller price incl. VAT'),
('prix_achat', 1, 1, 'Purchase price incl. VAT'),
('tva', 1, 1, 'VAT rate in percent'),
('promotion', 1, 1, 'Promotion'),
('poids', 0, 1, 'Weight (in grams)'),
('points', 0, 1, 'Gift Points'),
('image1', 1, 1, 'Image 1 : main picture'),
('image2', 1, 1, 'Image 2'),
('image3', 1, 1, 'Image 3'),
('image4', 1, 1, 'Image 4'),
('image5', 1, 1, 'Image 5'),
('image6', 1, 1, 'Image 6'),
('image7', 0, 1, 'Image 7'),
('image8', 0, 1, 'Image 8'),
('image9', 0, 1, 'Image 9'),
('image10', 0, 1, 'Image 10'),
('on_stock', 1, 1, 'Inventory Management (1 = yes, 0 = no)'),
('etat', 1, 1, 'Status (1 = online, 0 = pending)');

-- --------------------------------------------------------

--
-- Table structure for table `peel_langues`
--

CREATE TABLE IF NOT EXISTS `peel_langues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(2) NOT NULL DEFAULT '',
  `flag` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `etat` int(11) NOT NULL DEFAULT '0',
  `url_rewriting` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `peel_langues`
--

INSERT INTO `peel_langues` (`id`, `lang`, `flag`, `position`, `etat`, `url_rewriting`, `site_id`, `nom_en`) VALUES
(1, 'en', '/images/en.png', 0, 1, '', 1, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `peel_legal`
--

CREATE TABLE IF NOT EXISTS `peel_legal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_insere` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_maj` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) unsigned NOT NULL DEFAULT '0',
  `titre_en` varchar(255) NOT NULL DEFAULT '',
  `texte_en` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `peel_legal`
--

INSERT INTO `peel_legal` (`id`, `date_insere`, `date_maj`, `site_id`, `titre_en`, `texte_en`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `peel_marques`
--

CREATE TABLE IF NOT EXISTS `peel_marques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `promotion_devises` float(15,5) NOT NULL DEFAULT '0.00000',
  `promotion_percent` float(15,5) NOT NULL DEFAULT '0.00000',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  `description_en` mediumtext NOT NULL,
  `meta_titre_en` varchar(255) NOT NULL DEFAULT '',
  `meta_key_en` varchar(255) NOT NULL DEFAULT '',
  `meta_desc_en` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_meta`
--

CREATE TABLE IF NOT EXISTS `peel_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `meta_titre_en` varchar(255) NOT NULL DEFAULT '',
  `meta_key_en` text NOT NULL,
  `meta_desc_en` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `peel_meta`
--

INSERT INTO `peel_meta` (`id`, `technical_code`, `site_id`, `meta_titre_en`, `meta_key_en`, `meta_desc_en`) VALUES
(1, '', 1, '', '', ''),
(2, 'contact', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `peel_modules`
--

CREATE TABLE IF NOT EXISTS `peel_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `display_mode` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `in_home` tinyint(1) NOT NULL DEFAULT '0',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`),
  KEY `technical_code` (`technical_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `peel_modules`
--

INSERT INTO `peel_modules` (`id`, `technical_code`, `location`, `display_mode`, `position`, `in_home`, `etat`, `site_id`, `title_en`) VALUES
(1, 'catalogue', 'footer', 'sideblock', 1, 0, 0, 1, 'Catalog'),
(2, 'tagcloud', 'below_middle', 'sideblocktitle', 2, 0, 1, 1, 'Top search'),
(3, 'search', 'header', '', 3, 0, 1, 1, 'Search'),
(4, 'guide', 'footer', 'sideblock', 4, 0, 1, 1, 'Information'),
(5, 'caddie', 'header', '', 1, 0, 1, 1, 'Your cart'),
(6, 'account', 'below_middle', 'sideblocktitle', 2, 0, 0, 1, 'My account'),
(7, 'best_seller', 'bottom_middle', '', 3, 0, 1, 1, 'Best Selling'),
(8, 'news', 'below_middle', 'sideblocktitle', 4, 0, 1, 1, 'News'),
(9, 'advertising', 'below_middle', 'sideblock', 5, 0, 0, 1, 'Advertising random'),
(10, 'menu', 'header', '', 4, 0, 1, 1, 'Menu'),
(11, 'ariane', 'above_middle', '', 5, 0, 0, 1, 'Breadcrumb'),
(12, 'advertising1', 'below_middle', 'sideblock', 10, 0, 0, 1, 'Advertising location 1'),
(13, 'advertising2', 'below_middle', 'sideblock', 11, 0, 0, 1, 'Advertising location 2'),
(14, 'advertising3', 'below_middle', 'sideblock', 12, 0, 0, 1, 'Advertising location 3'),
(15, 'advertising4', 'below_middle', 'sideblock', 10, 0, 0, 1, 'Advertising location 4'),
(16, 'advertising5', 'below_middle', 'sideblock', 11, 0, 0, 1, 'Advertising location 5'),
(17, 'last_views', 'below_middle', 'sideblocktitle', 2, 0, 1, 1, 'Last views'),
(18, 'brand', 'footer', 'sideblock', 13, 0, 1, 1, 'Brands'),
(19, 'paiement_secu', 'below_middle', 'sideblocktitle', 2, 0, 1, 1, 'Secure payment'),
(20, 'articles_rollover', 'below_middle', '', 3, 0, 0, 1, 'Best articles'),
(21, 'subscribe_newsletter', 'header', '', 3, 0, 0, 1, 'Subscribe newsletter');

-- --------------------------------------------------------

--
-- Table structure for table `peel_newsletter`
--

CREATE TABLE IF NOT EXISTS `peel_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `format` varchar(5) NOT NULL DEFAULT '',
  `template_technical_code` varchar(255) NOT NULL DEFAULT '',
  `statut` varchar(100) NOT NULL DEFAULT '',
  `date_envoi` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `sujet_en` varchar(255) NOT NULL DEFAULT '',
  `message_en` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_nom_attributs`
--

CREATE TABLE IF NOT EXISTS `peel_nom_attributs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `texte_libre` tinyint(1) NOT NULL DEFAULT '0',
  `type_affichage_attribut` tinyint(1) NOT NULL DEFAULT '3',
  `show_description` tinyint(1) NOT NULL DEFAULT '1',
  `upload` tinyint(1) NOT NULL DEFAULT '0',
  `mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `technical_code` (`technical_code`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_paiement`
--

CREATE TABLE IF NOT EXISTS `peel_paiement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `tarif` float(15,5) NOT NULL DEFAULT '0.00000',
  `tarif_percent` float(5,2) NOT NULL DEFAULT '0.00',
  `tva` float(5,2) NOT NULL DEFAULT '0.00',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `totalmin` float(15,5) NOT NULL DEFAULT '0.00000',
  `totalmax` float(15,5) NOT NULL DEFAULT '0.00000',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `technical_code` (`technical_code`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `peel_paiement`
--

INSERT INTO `peel_paiement` (`id`, `technical_code`, `position`, `tarif`, `tarif_percent`, `tva`, `etat`, `totalmin`, `totalmax`, `site_id`, `nom_en`) VALUES
(1, 'check', 3, 0.00000, 0.00, 0.00, 1, 0.00000, 0.00000, 1, 'Check'),
(2, 'paypal', 1, 0.00000, 0.00, 0.00, 1, 0.00000, 0.00000, 1, 'Paypal: Visa, Mastercard, Paypal account'),
(3, 'transfer', 4, 0.00000, 0.00, 0.00, 1, 0.00000, 0.00000, 1, 'Wire payment'),
(4, 'moneybookers', 2, 0.00000, 0.00, 0.00, 1, 0.00000, 0.00000, 1, 'Moneybookers: Visa, Mastercard, Virement, Moneybookers e-wallet'),
(5, 'pickup', 5, 0.00000, 0.00, 0.00, 0, 0.00000, 0.00000, 1, 'Payment upon pickup'),
(6, 'delivery', 6, 0.00000, 0.00, 0.00, 0, 0.00000, 0.00000, 1, 'Payment upon delivery'),
(7, 'cash', 7, 0.00000, 0.00, 0.00, 0, 0.00000, 0.00000, 1, 'Cash'),
(8, 'mandate', 0, 0.00000, 0.00, 0.00, 1, 0.00000, 0.00000, 1, 'cash mandate / Western Union');

-- --------------------------------------------------------

--
-- Table structure for table `peel_pays`
--

CREATE TABLE IF NOT EXISTS `peel_pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `continent_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `flag` varchar(255) NOT NULL DEFAULT '',
  `zone` int(11) NOT NULL DEFAULT '0',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `iso` varchar(2) NOT NULL DEFAULT '',
  `iso3` varchar(3) NOT NULL DEFAULT '',
  `iso_num` smallint(4) NOT NULL DEFAULT '0',
  `devise` varchar(3) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `risque_pays` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `pays_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `position` (`position`),
  KEY `site_id` (`site_id`),
  KEY `pays_en` (`pays_en`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=237 ;

--
-- Dumping data for table `peel_pays`
--

INSERT INTO `peel_pays` (`id`, `continent_id`, `lang`, `flag`, `zone`, `etat`, `iso`, `iso3`, `iso_num`, `devise`, `position`, `risque_pays`, `site_id`, `pays_en`) VALUES
(1, 4, 'fr', 'fr.gif', 1, 1, 'FR', 'FRA', 250, 'EUR', 0, 0, 1, 'France'),
(2, 3, 'en', 'af.gif', 4, 1, 'AF', 'AFG', 4, 'AFA', 0, 0, 1, 'Afghanistan'),
(3, 1, 'en', 'za.gif', 4, 1, 'ZA', 'ZAF', 710, 'ZAR', 0, 0, 1, 'South Africa'),
(4, 4, 'en', 'al.gif', 4, 1, 'AL', 'ALB', 8, 'ALL', 0, 0, 1, 'Albania'),
(5, 1, 'fr', 'dz.gif', 4, 1, 'DZ', 'DZA', 12, 'DZD', 0, 0, 1, 'Algeria'),
(6, 4, 'en', 'de.gif', 2, 1, 'DE', 'DEU', 276, 'EUR', 0, 0, 1, 'Germany'),
(7, 3, 'en', 'sa.gif', 4, 1, 'SA', 'SAU', 682, 'SAR', 0, 0, 1, 'Saudi Arabia'),
(8, 2, 'en', 'ar.gif', 4, 1, 'AR', 'ARG', 32, 'ARS', 0, 0, 1, 'Argentina'),
(9, 5, 'en', 'au.gif', 4, 1, 'AU', 'AUS', 36, 'AUD', 0, 0, 1, 'Australia'),
(10, 4, 'en', 'at.gif', 2, 1, 'AT', 'AUT', 40, 'EUR', 0, 0, 1, 'Austria'),
(11, 4, 'fr', 'be.gif', 2, 1, 'BE', 'BEL', 56, 'EUR', 0, 0, 1, 'Belgium'),
(12, 2, 'en', 'br.gif', 4, 1, 'BR', 'BRA', 76, 'BRL', 0, 0, 1, 'Brazil'),
(13, 4, 'en', 'bg.gif', 2, 1, 'BG', 'BGR', 100, 'BGN', 0, 0, 1, 'Bulgaria'),
(14, 2, 'en', 'ca.gif', 4, 1, 'CA', 'CAN', 124, 'CAD', 0, 0, 1, 'Canada'),
(15, 2, 'en', 'cl.gif', 4, 1, 'CL', 'CHL', 152, 'CLP', 0, 0, 1, 'Chile'),
(16, 3, 'en', 'cn.gif', 4, 1, 'CN', 'CHN', 156, 'CNY', 0, 0, 1, 'China'),
(17, 2, 'en', 'co.gif', 4, 1, 'CO', 'COL', 170, 'COP', 0, 0, 1, 'Colombia'),
(18, 3, 'en', 'kr.gif', 4, 1, 'KR', 'KOR', 410, 'KRW', 0, 0, 1, 'Korea (Republic of) (South)'),
(19, 2, 'en', 'cr.gif', 4, 1, 'CR', 'CRI', 188, 'CRC', 0, 0, 1, 'Costa Rica'),
(20, 4, 'en', 'hr.gif', 4, 1, 'HR', 'HRV', 191, 'HRK', 0, 0, 1, 'Croatia'),
(21, 4, 'en', 'dk.gif', 2, 1, 'DK', 'DNK', 208, 'DKK', 0, 0, 1, 'Denmark'),
(22, 1, 'en', 'eg.gif', 4, 1, 'EG', 'EGY', 818, 'EGP', 0, 0, 1, 'Egypt'),
(23, 3, 'en', 'ae.gif', 4, 1, 'AE', 'ARE', 784, 'AED', 0, 0, 1, 'United Arab Emirates'),
(24, 2, 'en', 'ec.gif', 4, 1, 'EC', 'ECU', 218, 'USD', 0, 0, 1, 'Ecuador'),
(25, 2, 'en', 'us.gif', 4, 1, 'US', 'USA', 840, 'USD', 0, 0, 1, 'USA (United States of America)'),
(26, 2, 'en', 'sv.gif', 4, 1, 'SV', 'SLV', 222, 'USD', 0, 0, 1, 'El Salvador'),
(27, 4, 'en', 'es.gif', 2, 1, 'ES', 'ESP', 724, 'EUR', 0, 0, 1, 'Spain'),
(28, 4, 'en', 'fi.gif', 2, 1, 'FI', 'FIN', 246, 'EUR', 0, 0, 1, 'Finland'),
(29, 4, 'en', 'gr.gif', 2, 1, 'GR', 'GRC', 300, 'EUR', 0, 0, 1, 'Greece'),
(30, 3, 'en', 'hk.gif', 4, 1, 'HK', 'HKG', 344, 'HKD', 0, 0, 1, 'Hong Kong'),
(31, 4, 'en', 'hu.gif', 2, 1, 'HU', 'HUN', 348, 'HUF', 0, 0, 1, 'Hungary'),
(32, 3, 'en', 'in.gif', 4, 1, 'IN', 'IND', 356, 'INR', 0, 0, 1, 'India'),
(33, 3, 'en', 'id.gif', 4, 1, 'ID', 'IDN', 360, 'IDR', 0, 0, 1, 'Indonesia'),
(34, 4, 'en', 'ie.gif', 2, 1, 'IE', 'IRL', 372, 'EUR', 0, 0, 1, 'Ireland'),
(35, 3, 'en', 'il.gif', 4, 1, 'IL', 'ISR', 376, 'ILS', 0, 0, 1, 'Israel'),
(36, 4, 'en', 'it.gif', 2, 1, 'IT', 'ITA', 380, 'EUR', 0, 0, 1, 'Italy'),
(37, 3, 'en', 'jp.gif', 4, 1, 'JP', 'JPN', 392, 'JPY', 0, 0, 1, 'Japan'),
(38, 3, 'en', 'jo.gif', 4, 1, 'JO', 'JOR', 400, 'JOD', 0, 0, 1, 'Jordan'),
(39, 3, 'en', 'lb.gif', 4, 1, 'LB', 'LBN', 422, 'USD', 0, 0, 1, 'Lebanon'),
(40, 3, 'en', 'my.gif', 4, 1, 'MY', 'MYS', 458, 'MYR', 0, 0, 1, 'Malaysia'),
(41, 1, 'fr', 'ma.gif', 4, 1, 'MA', 'MAR', 504, 'MAD', 0, 0, 1, 'Morocco'),
(42, 2, 'en', 'mx.gif', 4, 1, 'MX', 'MEX', 484, 'MXN', 0, 0, 1, 'Mexico'),
(43, 4, 'en', 'bv.gif', 4, 1, 'NO', 'NOK', 74, 'NOK', 0, 0, 1, 'Norway'),
(44, 5, 'en', 'nz.gif', 4, 1, 'NZ', 'NZL', 554, 'NZD', 0, 0, 1, 'New Zealand'),
(45, 2, 'en', 'pe.gif', 4, 1, 'PE', 'PER', 604, 'PEN', 0, 0, 1, 'Peru'),
(46, 3, 'en', 'pk.gif', 4, 1, 'PK', 'PAK', 586, 'PKR', 0, 0, 1, 'Pakistan'),
(47, 4, 'en', 'nl.gif', 2, 1, 'NL', 'NLD', 528, 'EUR', 0, 0, 1, 'Netherlands'),
(48, 3, 'en', 'ph.gif', 4, 1, 'PH', 'PHL', 608, 'PHP', 0, 0, 1, 'Philippines'),
(49, 4, 'en', 'pl.gif', 2, 1, 'PL', 'POL', 616, 'PLN', 0, 0, 1, 'Poland'),
(50, 2, 'en', 'pr.gif', 4, 1, 'PR', 'PRI', 630, 'USD', 0, 0, 1, 'Puerto Rico'),
(51, 4, 'en', 'pt.gif', 2, 1, 'PT', 'PRT', 620, 'EUR', 0, 0, 1, 'Portugal'),
(52, 4, 'en', 'cz.gif', 2, 1, 'CZ', 'CZE', 203, 'CZK', 0, 0, 1, 'Czech (Rep.)'),
(53, 4, 'en', 'ro.gif', 2, 1, 'RO', 'ROU', 642, 'ROL', 0, 0, 1, 'Romania'),
(54, 4, 'en', 'gb.gif', 2, 1, 'GB', 'GBR', 826, 'GBP', 0, 0, 1, 'United Kingdom (UK)'),
(55, 4, 'en', 'ru.gif', 4, 1, 'RU', 'RUS', 643, 'RUB', 0, 0, 1, 'Russia'),
(56, 3, 'en', 'sg.gif', 4, 1, 'SG', 'SGP', 702, 'SGD', 0, 0, 1, 'Singapore'),
(57, 4, 'en', 'se.gif', 2, 1, 'SE', 'SWE', 752, 'SEK', 0, 0, 1, 'Sweden'),
(58, 4, 'en', 'ch.gif', 4, 1, 'CH', 'CHE', 756, 'CHF', 0, 0, 1, 'Switzerland'),
(59, 3, 'en', 'tw.gif', 4, 1, 'TW', 'TWN', 158, 'TWD', 0, 0, 1, 'Taiwan'),
(60, 3, 'en', 'th.gif', 4, 1, 'TH', 'THA', 764, 'THB', 0, 0, 1, 'Thailand'),
(61, 3, 'en', 'tr.gif', 4, 1, 'TR', 'TUR', 792, 'TRL', 0, 0, 1, 'Turkey'),
(62, 4, 'en', 'ua.gif', 4, 1, 'UA', 'UKR', 804, 'UAH', 0, 0, 1, 'Ukraine'),
(63, 2, 'en', 've.gif', 4, 1, 'VE', 'VEN', 862, 'VEB', 0, 0, 1, 'Venezuela'),
(64, 4, 'en', 'rs.gif', 4, 1, 'RS', 'SRB', 688, 'CSD', 0, 0, 1, 'Serbia'),
(65, 5, 'en', 'ws.gif', 4, 1, 'WS', 'WSM', 882, 'WST', 0, 0, 1, 'Samoa'),
(66, 4, 'en', 'ad.gif', 4, 1, 'AD', 'AND', 20, 'EUR', 0, 0, 1, 'Andorra'),
(67, 1, 'en', 'ao.gif', 4, 1, 'AO', 'AGO', 24, 'AON', 0, 0, 1, 'Angola'),
(68, 2, 'en', 'ai.gif', 4, 1, 'AI', 'AIA', 660, 'XCD', 0, 0, 1, 'Anguilla'),
(69, 6, 'en', 'aq.gif', 4, 1, 'AQ', 'ATA', 10, 'USD', 0, 0, 1, 'Antarctica'),
(70, 2, 'en', 'ag.gif', 4, 1, 'AG', 'ATG', 28, 'XCD', 0, 0, 1, 'Antigua and Barbuda'),
(71, 3, 'en', 'am.gif', 4, 1, 'AM', 'ARM', 51, 'AMD', 0, 0, 1, 'Armenia'),
(72, 2, 'en', 'aw.gif', 4, 1, 'AW', 'ABW', 533, 'AWG', 0, 0, 1, 'Aruba'),
(73, 3, 'en', 'az.gif', 4, 1, 'AZ', 'AZE', 31, 'AZM', 0, 0, 1, 'Azerbaijan'),
(74, 2, 'en', 'bs.gif', 4, 1, 'BS', 'BHS', 44, 'BSD', 0, 0, 1, 'Bahamas, The'),
(75, 3, 'en', 'bh.gif', 4, 1, 'BH', 'BHR', 48, 'BHD', 0, 0, 1, 'Bahrain'),
(76, 3, 'en', 'bd.gif', 4, 1, 'BD', 'BGD', 50, 'BDT', 0, 0, 1, 'Bangladesh'),
(77, 4, 'en', 'by.gif', 4, 1, 'BY', 'BLR', 112, 'BYR', 0, 0, 1, 'Belarus'),
(78, 2, 'en', 'bz.gif', 4, 1, 'BZ', 'BLZ', 84, 'BZD', 0, 0, 1, 'Belize'),
(79, 1, 'fr', 'bj.gif', 4, 1, 'BJ', 'BEN', 204, 'XOF', 0, 0, 1, 'Benin'),
(80, 2, 'en', 'bm.gif', 4, 1, 'BM', 'BMU', 60, 'BMD', 0, 0, 1, 'Bermuda'),
(81, 3, 'en', 'bt.gif', 4, 1, 'BT', 'BTN', 64, 'BTN', 0, 0, 1, 'Bhutan'),
(82, 2, 'en', 'bo.gif', 4, 1, 'BO', 'BOL', 68, 'BOB', 0, 0, 1, 'Bolivia'),
(83, 4, 'en', 'ba.gif', 4, 1, 'BA', 'BIH', 70, 'BAK', 0, 0, 1, 'Bosnia and Herzegovina'),
(84, 1, 'en', 'bw.gif', 4, 1, 'BW', 'BWA', 72, 'BWP', 0, 0, 1, 'Botswana'),
(85, 4, 'en', 'bv.gif', 4, 1, 'BV', 'BVT', 74, 'NOK', 0, 0, 1, 'Norway - Bouvet Island'),
(86, 3, 'en', 'io.gif', 4, 1, 'IO', 'IOT', 86, 'GBP', 0, 0, 1, 'British Indian Ocean Territory - Diego Garcia'),
(87, 5, 'en', 'vg.gif', 4, 1, 'VG', 'VGB', 92, 'USD', 0, 0, 1, 'Virgin Islands, British (Tortola)'),
(88, 5, 'en', 'bn.gif', 4, 1, 'BN', 'BRN', 96, 'BND', 0, 0, 1, 'Brunei'),
(89, 1, 'fr', 'bf.gif', 4, 1, 'BF', 'BFA', 854, 'XOF', 0, 0, 1, 'Burkina Faso'),
(90, 1, 'en', 'bi.gif', 4, 1, 'BI', 'BDI', 108, 'BIF', 0, 0, 1, 'Burundi'),
(91, 3, 'en', 'kh.gif', 4, 1, 'KH', 'KHM', 116, 'KHR', 0, 0, 1, 'Cambodia'),
(92, 1, 'fr', 'cm.gif', 4, 1, 'CM', 'CMR', 120, 'XAF', 0, 0, 1, 'Cameroon'),
(93, 1, 'en', 'cv.gif', 4, 1, 'CV', 'CPV', 132, 'CVE', 0, 0, 1, 'Cape Verde'),
(94, 2, 'en', 'ky.gif', 4, 1, 'KY', 'CYM', 136, 'KYD', 0, 0, 1, 'Cayman (Islands)'),
(95, 1, 'fr', 'cf.gif', 4, 1, 'CF', 'CAF', 140, 'XAF', 0, 0, 1, 'Central African Republic'),
(96, 1, 'fr', 'td.gif', 4, 1, 'TD', 'TCD', 148, 'XAF', 0, 0, 1, 'Chad'),
(97, 5, 'en', 'cx.gif', 4, 1, 'CX', 'CXR', 162, 'AUD', 0, 0, 1, 'Australia - Christmas Island'),
(98, 5, 'en', 'cc.gif', 4, 1, 'CC', 'CCK', 166, 'AUD', 0, 0, 1, 'Australia - Cocos (Keeling) Islands'),
(99, 1, 'fr', 'km.gif', 4, 1, 'KM', 'COM', 174, 'KMF', 0, 0, 1, 'Comoros'),
(100, 1, 'fr', 'cg.gif', 4, 1, 'CG', 'COG', 178, 'XAF', 0, 0, 1, 'Congo'),
(101, 5, 'en', 'ck.gif', 4, 1, 'CK', 'COK', 184, 'NZD', 0, 0, 1, 'Cook Islands'),
(102, 2, 'en', 'cu.gif', 4, 1, 'CU', 'CUB', 192, 'CUP', 0, 0, 1, 'Cuba'),
(103, 4, 'en', 'cy.gif', 2, 1, 'CY', 'CYP', 196, 'EUR', 0, 0, 1, 'Cyprus'),
(104, 1, 'fr', 'dj.gif', 4, 1, 'DJ', 'DJI', 262, 'DJF', 0, 0, 1, 'Djibouti'),
(105, 2, 'en', 'dm.gif', 4, 1, 'DM', 'DMA', 212, 'XCD', 0, 0, 1, 'Dominica'),
(106, 2, 'en', 'do.gif', 4, 1, 'DO', 'DOM', 214, 'DOP', 0, 0, 1, 'Dominican (Republic)'),
(107, 3, 'en', 'tp.gif', 4, 1, 'TL', 'TLS', 626, 'USD', 0, 0, 1, 'East Timor - Leste'),
(108, 1, 'en', 'gq.gif', 4, 1, 'GQ', 'GNQ', 226, 'XAF', 0, 0, 1, 'Equatorial Guinea'),
(109, 1, 'en', 'er.gif', 4, 1, 'ER', 'ERI', 232, 'ERN', 0, 0, 1, 'Eritrea'),
(110, 4, 'en', 'ee.gif', 2, 1, 'EE', 'EST', 233, 'EEK', 0, 0, 1, 'Estonia'),
(111, 1, 'en', 'et.gif', 4, 1, 'ET', 'ETH', 231, 'ETB', 0, 0, 1, 'Ethiopia'),
(112, 2, 'en', 'fk.gif', 4, 1, 'FK', 'FLK', 238, 'FKP', 0, 0, 1, 'Falkland Islands (Malvinas)'),
(113, 4, 'en', 'fo.gif', 4, 1, 'FO', 'FRO', 234, 'DKK', 0, 0, 1, 'Faroe Islands'),
(114, 5, 'en', 'fj.gif', 4, 1, 'FJ', 'FJI', 242, 'FJD', 0, 0, 1, 'Fiji'),
(115, 2, 'fr', 'gf.gif', 3, 1, 'GF', 'GUF', 254, 'EUR', 0, 0, 1, 'France - Guiana'),
(116, 5, 'fr', 'pf.gif', 3, 1, 'PF', 'PYF', 258, 'XPF', 0, 0, 1, 'France - Polynesia'),
(117, 6, 'fr', 'tf.gif', 3, 1, 'TF', 'ATF', 260, 'EUR', 0, 0, 1, 'France - Southern Territories'),
(118, 1, 'fr', 'ga.gif', 4, 1, 'GA', 'GAB', 266, 'XAF', 0, 0, 1, 'Gabon'),
(119, 1, 'en', 'gm.gif', 4, 1, 'GM', 'GMB', 270, 'GMD', 0, 0, 1, 'Gambia'),
(120, 3, 'en', 'ge.gif', 4, 1, 'GE', 'GEO', 268, 'GEL', 0, 0, 1, 'Georgia'),
(121, 1, 'en', 'gh.gif', 4, 1, 'GH', 'GHA', 288, 'GHC', 0, 0, 1, 'Ghana'),
(122, 4, 'en', 'gi.gif', 4, 1, 'GI', 'GIB', 292, 'GIP', 0, 0, 1, 'Gibraltar'),
(123, 4, 'en', 'gl.gif', 4, 1, 'GL', 'GRL', 304, 'DKK', 0, 0, 1, 'Greenland'),
(124, 2, 'en', 'gd.gif', 4, 1, 'GD', 'GRD', 308, 'XCD', 0, 0, 1, 'Grenada'),
(125, 2, 'fr', 'gp.gif', 3, 1, 'GP', 'GLP', 312, 'EUR', 0, 0, 1, 'France - Guadeloupe'),
(126, 2, 'en', 'gu.gif', 4, 1, 'GU', 'GUM', 316, 'USD', 0, 0, 1, 'Guam'),
(127, 2, 'en', 'gt.gif', 4, 1, 'GT', 'GTM', 320, 'GTQ', 0, 0, 1, 'Guatemala'),
(128, 1, 'fr', 'gn.gif', 4, 1, 'GN', 'GIN', 324, 'USD', 0, 0, 1, 'Guinea'),
(129, 1, 'en', 'gw.gif', 4, 1, 'GW', 'GNB', 624, 'XOF', 0, 0, 1, 'Guinea-Bissau'),
(130, 2, 'fr', 'ht.gif', 4, 1, 'HT', 'HTI', 332, 'HTG', 0, 0, 1, 'Haiti'),
(131, 5, 'en', 'hm.gif', 4, 1, 'HM', 'HMD', 334, 'AUD', 0, 0, 1, 'Australia - Heard and McDonald (Islands)'),
(132, 2, 'en', 'hn.gif', 4, 1, 'HN', 'HND', 340, 'HNL', 0, 0, 1, 'Honduras'),
(133, 4, 'en', 'is.gif', 4, 1, 'IS', 'ISL', 352, 'ISK', 0, 0, 1, 'Iceland'),
(134, 3, 'en', 'ir.gif', 4, 1, 'IR', 'IRN', 364, 'IRR', 0, 0, 1, 'Iran (Islamic Rep. of)'),
(135, 3, 'en', 'iq.gif', 4, 1, 'IQ', 'IRQ', 368, 'IQD', 0, 0, 1, 'Iraq'),
(136, 1, 'fr', 'ci.gif', 4, 1, 'CI', 'CIV', 384, 'XOF', 0, 0, 1, 'Ivory Coast'),
(137, 2, 'en', 'jm.gif', 4, 1, 'JM', 'JAM', 388, 'JMD', 0, 0, 1, 'Jamaica'),
(138, 3, 'en', 'kz.gif', 4, 1, 'KZ', 'KAZ', 398, 'KZT', 0, 0, 1, 'Kazakhstan'),
(139, 1, 'en', 'ke.gif', 4, 1, 'KE', 'KEN', 404, 'KES', 0, 0, 1, 'Kenya'),
(140, 5, 'en', 'ki.gif', 4, 1, 'KI', 'KIR', 296, 'AUD', 0, 0, 1, 'Kiribati'),
(141, 3, 'en', 'kr.gif', 4, 1, 'KR', 'KOR', 410, 'KRW', 0, 0, 1, 'Korea (Republic of) (South)'),
(142, 3, 'en', 'kw.gif', 4, 1, 'KW', 'KWT', 414, 'KWD', 0, 0, 1, 'Kuwait'),
(143, 3, 'en', 'kg.gif', 4, 1, 'KG', 'KGZ', 417, 'KGS', 0, 0, 1, 'Kyrgyzstan'),
(144, 3, 'en', 'la.gif', 4, 1, 'LA', 'LAO', 418, 'LAK', 0, 0, 1, 'Laos (People''s Democratic Rep. of)'),
(145, 4, 'en', 'lv.gif', 2, 1, 'LV', 'LVA', 428, 'LVL', 0, 0, 1, 'Latvia'),
(146, 1, 'en', 'ls.gif', 4, 1, 'LS', 'LSO', 426, 'LSL', 0, 0, 1, 'Lesotho'),
(147, 1, 'en', 'lr.gif', 4, 1, 'LR', 'LBR', 430, 'LRD', 0, 0, 1, 'Liberia'),
(148, 1, 'en', 'ly.gif', 4, 1, 'LY', 'LBY', 434, 'LYD', 0, 0, 1, 'Libya (Libyan Arab Jamahiriya)'),
(149, 4, 'en', 'li.gif', 4, 1, 'LI', 'LIE', 438, 'CHF', 0, 0, 1, 'Liechtenstein'),
(150, 4, 'en', 'lt.gif', 2, 1, 'LT', 'LTU', 440, 'LTL', 0, 0, 1, 'Lithuania'),
(151, 4, 'en', 'lu.gif', 2, 1, 'LU', 'LUX', 442, 'EUR', 0, 0, 1, 'Luxembourg'),
(152, 3, 'en', 'mo.gif', 4, 1, 'MO', 'MAC', 446, 'MOP', 0, 0, 1, 'Macau'),
(153, 4, 'en', 'mk.gif', 4, 1, 'MK', 'MKD', 807, 'EUR', 0, 0, 1, 'Macedonia (F.Y.R.O.M.)'),
(154, 1, 'fr', 'mg.gif', 4, 1, 'MG', 'MDG', 450, 'MGF', 0, 0, 1, 'Madagascar'),
(155, 1, 'en', 'mw.gif', 4, 1, 'MW', 'MWI', 454, 'MWK', 0, 0, 1, 'Malawi'),
(156, 3, 'en', 'mv.gif', 4, 1, 'MV', 'MDV', 462, 'MVR', 0, 0, 1, 'Maldives (Islands)'),
(157, 1, 'fr', 'ml.gif', 4, 1, 'ML', 'MLI', 466, 'XOF', 0, 0, 1, 'Mali'),
(158, 4, 'en', 'mt.gif', 2, 1, 'MT', 'MLT', 470, 'EUR', 0, 0, 1, 'Malta'),
(159, 5, 'en', 'mh.gif', 4, 1, 'MH', 'MHL', 584, 'USD', 0, 0, 1, 'Marshall Islands'),
(160, 2, 'fr', 'mq.gif', 3, 1, 'MQ', 'MTQ', 474, 'EUR', 0, 0, 1, 'France - Martinique'),
(161, 1, 'fr', 'mr.gif', 4, 1, 'MR', 'MRT', 478, 'MRO', 0, 0, 1, 'Mauritania'),
(162, 1, 'en', 'mu.gif', 4, 1, 'MU', 'MUS', 480, 'MUR', 0, 0, 1, 'Mauritius (Island)'),
(163, 1, 'fr', 'yt.gif', 3, 1, 'YT', 'MYT', 175, 'EUR', 0, 0, 1, 'France - Mayotte'),
(164, 5, 'en', 'fm.gif', 4, 1, 'FM', 'FSM', 583, 'USD', 0, 0, 1, 'Micronesia'),
(165, 4, 'en', 'md.gif', 4, 1, 'MD', 'MDA', 498, 'MDL', 0, 0, 1, 'Moldova'),
(166, 4, 'fr', 'mc.gif', 4, 1, 'MC', 'MCO', 492, 'EUR', 0, 0, 1, 'Monaco'),
(167, 3, 'en', 'mn.gif', 4, 1, 'MN', 'MNG', 496, 'MNT', 0, 0, 1, 'Mongolia'),
(168, 2, 'en', 'ms.gif', 4, 1, 'MS', 'MSR', 500, 'XCD', 0, 0, 1, 'Montserrat'),
(169, 1, 'en', 'mz.gif', 4, 1, 'MZ', 'MOZ', 508, 'MZM', 0, 0, 1, 'Mozambique'),
(170, 3, 'en', 'mm.gif', 4, 1, 'MM', 'MMR', 104, 'MMK', 0, 0, 1, 'Myanmar (Burma)'),
(171, 1, 'en', 'na.gif', 4, 1, 'NA', 'NAM', 516, 'NAD', 0, 0, 1, 'Namibia'),
(172, 5, 'en', 'nr.gif', 4, 1, 'NR', 'NRU', 520, 'AUD', 0, 0, 1, 'Nauru'),
(173, 3, 'en', 'np.gif', 4, 1, 'NP', 'NPL', 524, 'NPR', 0, 0, 1, 'Nepal'),
(174, 5, 'fr', 'nc.gif', 3, 1, 'NC', 'NCL', 540, 'XPF', 0, 0, 1, 'France - New Caledonia'),
(175, 2, 'en', 'ni.gif', 4, 1, 'NI', 'NIC', 558, 'NIO', 0, 0, 1, 'Nicaragua'),
(176, 1, 'fr', 'ne.gif', 4, 1, 'NE', 'NER', 562, 'XOF', 0, 0, 1, 'Niger'),
(177, 1, 'en', 'ng.gif', 4, 1, 'NG', 'NGA', 566, 'NGN', 0, 0, 1, 'Nigeria'),
(178, 5, 'en', 'nu.gif', 4, 1, 'NU', 'NIU', 570, 'NZD', 0, 0, 1, 'Niue'),
(179, 5, 'en', 'nf.gif', 4, 1, 'NF', 'NFK', 574, 'AUD', 0, 0, 1, 'Australia - Norfolk Island'),
(180, 5, 'en', 'mp.gif', 4, 1, 'MP', 'MNP', 580, 'USD', 0, 0, 1, 'Northern Marianas (Islands)'),
(181, 3, 'en', 'om.gif', 4, 1, 'OM', 'OMN', 512, 'OMR', 0, 0, 1, 'Oman'),
(182, 5, 'en', 'pw.gif', 4, 1, 'PW', 'PLW', 585, 'USD', 0, 0, 1, 'Palau'),
(183, 2, 'en', 'pa.gif', 4, 1, 'PA', 'PAN', 591, 'PAB', 0, 0, 1, 'Panama'),
(184, 5, 'en', 'pg.gif', 4, 1, 'PG', 'PNG', 598, 'PGK', 0, 0, 1, 'Papua New Guinea'),
(185, 2, 'en', 'py.gif', 4, 1, 'PY', 'PRY', 600, 'PYG', 0, 0, 1, 'Paraguay'),
(186, 5, 'en', 'pn.gif', 4, 1, 'PN', 'PCN', 612, 'NZD', 0, 0, 1, 'Pitcairn Islands'),
(187, 3, 'en', 'qa.gif', 4, 1, 'QA', 'QAT', 634, 'QAR', 0, 0, 1, 'Qatar'),
(188, 1, 'fr', 're.gif', 3, 1, 'RE', 'REU', 638, 'EUR', 0, 0, 1, 'France - Réunion'),
(189, 1, 'en', 'rw.gif', 4, 1, 'RW', 'RWA', 646, 'RWF', 0, 0, 1, 'Rwanda'),
(190, 2, 'en', 'gs.gif', 4, 1, 'GS', 'SGS', 239, 'USD', 0, 0, 1, 'South Georgia and the South Sandwich Islands'),
(191, 2, 'en', 'kn.gif', 4, 1, 'KN', 'KNA', 659, 'XCD', 0, 0, 1, 'Saint Kitts and Nevis'),
(192, 2, 'en', 'lc.gif', 4, 1, 'LC', 'LCA', 662, 'XCD', 0, 0, 1, 'Saint Lucia'),
(193, 2, 'en', 'vc.gif', 4, 1, 'VC', 'VCT', 670, 'XCD', 0, 0, 1, 'Saint Vincent and the Grenadines'),
(194, 5, 'en', 'ws.gif', 4, 1, 'WS', 'WSM', 882, 'WST', 0, 0, 1, 'Samoa'),
(195, 4, 'en', 'sm.gif', 4, 1, 'SM', 'SMR', 674, 'EUR', 0, 0, 1, 'San Marino'),
(196, 1, 'en', 'st.gif', 4, 1, 'ST', 'STP', 678, 'STD', 0, 0, 1, 'Sao Tome and Principe'),
(197, 1, 'fr', 'sn.gif', 4, 1, 'SN', 'SEN', 686, 'XOF', 0, 0, 1, 'Senegal'),
(198, 1, 'en', 'sc.gif', 4, 1, 'SC', 'SYC', 690, 'SCR', 0, 0, 1, 'Seychelles (Islands)'),
(199, 1, 'en', 'sl.gif', 4, 1, 'SL', 'SLE', 694, 'SLL', 0, 0, 1, 'Sierra Leone'),
(200, 4, 'en', 'sk.gif', 2, 1, 'SK', 'SVK', 703, 'SKK', 0, 0, 1, 'Slovakia (Republic)'),
(201, 4, 'en', 'si.gif', 2, 1, 'SI', 'SVN', 705, 'EUR', 0, 0, 1, 'Slovenia'),
(202, 1, 'en', 'so.gif', 4, 1, 'SO', 'SOM', 706, 'SOS', 0, 0, 1, 'Somalia'),
(203, 3, 'en', 'lk.gif', 4, 1, 'LK', 'LKA', 144, 'LKR', 0, 0, 1, 'Sri Lanka'),
(204, 1, 'en', 'sh.gif', 4, 1, 'SH', 'SHN', 654, 'SHP', 0, 0, 1, 'Saint Helena'),
(205, 2, 'fr', 'pm.gif', 3, 1, 'PM', 'SPM', 666, 'EUR', 0, 0, 1, 'France - Saint-Pierre and Miquelon'),
(206, 1, 'en', 'sd.gif', 4, 1, 'SD', 'SDN', 736, 'SDD', 0, 0, 1, 'Sudan'),
(207, 2, 'en', 'sr.gif', 4, 1, 'SR', 'SUR', 740, 'SRG', 0, 0, 1, 'Suriname'),
(208, 4, 'en', 'sj.gif', 4, 1, 'SJ', 'SJM', 744, 'NOK', 0, 0, 1, 'Norway - Svalbard and Jan Mayen'),
(209, 1, 'en', 'sz.gif', 4, 1, 'SZ', 'SWZ', 748, 'SZL', 0, 0, 1, 'Swaziland'),
(210, 3, 'en', 'sy.gif', 4, 1, 'SY', 'SYR', 760, 'SYP', 0, 0, 1, 'Syria'),
(211, 3, 'en', 'tj.gif', 4, 1, 'TJ', 'TJK', 762, 'TJS', 0, 0, 1, 'Tajikistan (Republic of)'),
(212, 1, 'en', 'tz.gif', 4, 1, 'TZ', 'TZA', 834, 'TZS', 0, 0, 1, 'Tanzania'),
(213, 1, 'fr', 'tg.gif', 4, 1, 'TG', 'TGO', 768, 'XOF', 0, 0, 1, 'Togo'),
(214, 5, 'en', 'tk.gif', 4, 1, 'TK', 'TKL', 772, 'NZD', 0, 0, 1, 'New Zealand - Tokelau'),
(215, 5, 'en', 'to.gif', 4, 1, 'TO', 'TON', 776, 'TOP', 0, 0, 1, 'Tonga'),
(216, 2, 'en', 'tt.gif', 4, 1, 'TT', 'TTO', 780, 'TTD', 0, 0, 1, 'Trinidad and Tobago'),
(217, 1, 'fr', 'tn.gif', 4, 1, 'TN', 'TUN', 788, 'TND', 0, 0, 1, 'Tunisia'),
(218, 3, 'en', 'tm.gif', 4, 1, 'TM', 'TKM', 795, 'TMM', 0, 0, 1, 'Turkmenistan'),
(219, 2, 'en', 'tc.gif', 4, 1, 'TC', 'TCA', 796, 'USD', 0, 0, 1, 'Turks and Caicos Islands'),
(220, 5, 'en', 'tv.gif', 4, 1, 'TV', 'TUV', 798, 'AUD', 0, 0, 1, 'Tuvalu'),
(221, 5, 'en', 'um.gif', 4, 1, 'UM', 'UMI', 581, 'USD', 0, 0, 1, 'USA: Minor Outlying Islands'),
(222, 1, 'en', 'ug.gif', 4, 1, 'UG', 'UGA', 800, 'UGX', 0, 0, 1, 'Uganda'),
(223, 2, 'en', 'uy.gif', 4, 1, 'UY', 'URY', 858, 'UYU', 0, 0, 1, 'Uruguay'),
(224, 3, 'en', 'uz.gif', 4, 1, 'UZ', 'UZB', 860, 'UZS', 0, 0, 1, 'Uzbekistan'),
(225, 5, 'en', 'vu.gif', 4, 1, 'VU', 'VUT', 548, 'VUV', 0, 0, 1, 'Vanuatu'),
(226, 4, 'en', 'va.gif', 4, 1, 'VA', 'VAT', 336, 'EUR', 0, 0, 1, 'Vatican'),
(227, 3, 'en', 'vn.gif', 4, 1, 'VN', 'VNM', 704, 'VND', 0, 0, 1, 'Vietnam'),
(228, 5, 'en', 'vi.gif', 4, 1, 'VI', 'VIR', 850, 'USD', 0, 0, 1, 'Virgin Islands (USA)'),
(229, 5, 'fr', 'wf.gif', 3, 1, 'WF', 'WLF', 876, 'XPF', 0, 0, 1, 'France - Wallis and Futuna'),
(230, 1, 'en', 'eh.gif', 4, 1, 'EH', 'ESH', 732, 'MAD', 0, 0, 1, 'Western Sahara'),
(231, 3, 'en', 'ye.gif', 4, 1, 'YE', 'YEM', 887, 'YER', 0, 0, 1, 'Yemen (Rep. of)'),
(232, 1, 'fr', 'cd.gif', 4, 1, 'CD', 'COD', 180, 'XAF', 0, 0, 1, 'Congo Zaire (Dem. Rep.)'),
(233, 1, 'en', 'zm.gif', 4, 1, 'ZM', 'ZMB', 894, 'ZMK', 0, 0, 1, 'Zambia'),
(234, 1, 'en', 'zw.gif', 4, 1, 'ZW', 'ZWE', 716, 'ZWD', 0, 0, 1, 'Zimbabwe'),
(235, 2, 'en', 'bb.gif', 4, 1, 'BB', 'BRB', 52, 'BBD', 0, 0, 1, 'Barbados'),
(236, 4, 'en', 'yu.gif', 4, 1, 'ME', 'MNE', 499, 'CSD', 0, 0, 1, 'Montenegro');

-- --------------------------------------------------------

--
-- Table structure for table `peel_pensebete`
--

CREATE TABLE IF NOT EXISTS `peel_pensebete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produit` int(11) NOT NULL DEFAULT '0',
  `id_utilisateur` int(11) NOT NULL DEFAULT '0',
  `date_insertion` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_produits`
--

CREATE TABLE IF NOT EXISTS `peel_produits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `alpha` char(1) NOT NULL DEFAULT '',
  `reference` varchar(100) NOT NULL DEFAULT '',
  `ean_code` varchar(13) NOT NULL DEFAULT '',
  `default_image` tinyint(1) NOT NULL DEFAULT '1',
  `image1` varchar(255) NOT NULL DEFAULT '',
  `image2` varchar(255) NOT NULL DEFAULT '',
  `image3` varchar(255) NOT NULL DEFAULT '',
  `image4` varchar(255) NOT NULL DEFAULT '',
  `image5` varchar(255) NOT NULL DEFAULT '',
  `image6` varchar(255) NOT NULL DEFAULT '',
  `image7` varchar(255) NOT NULL DEFAULT '',
  `image8` varchar(255) NOT NULL DEFAULT '',
  `image9` varchar(255) NOT NULL DEFAULT '',
  `image10` varchar(255) NOT NULL DEFAULT '',
  `youtube_code` mediumtext NOT NULL,
  `on_estimate` tinyint(1) NOT NULL DEFAULT '0',
  `on_reseller` tinyint(1) NOT NULL DEFAULT '0',
  `prix` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_revendeur` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_flash` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_achat` float(15,5) NOT NULL DEFAULT '0.00000',
  `poids` float(10,2) NOT NULL DEFAULT '0.00',
  `volume` float(10,2) NOT NULL DEFAULT '0.00',
  `display_price_by_weight` tinyint(1) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `date_insere` date NOT NULL DEFAULT '0000-00-00',
  `date_maj` date NOT NULL DEFAULT '0000-00-00',
  `promotion` float(5,2) NOT NULL DEFAULT '0.00',
  `tva` float(5,2) NOT NULL DEFAULT '0.00',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `on_stock` tinyint(1) NOT NULL DEFAULT '0',
  `delai_stock` varchar(100) NOT NULL DEFAULT '',
  `seuil_stock` int(11) NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `affiche_stock` tinyint(1) NOT NULL DEFAULT '0',
  `on_promo` tinyint(1) NOT NULL DEFAULT '0',
  `on_new` tinyint(1) NOT NULL DEFAULT '0',
  `on_rollover` tinyint(1) NOT NULL DEFAULT '0',
  `on_special` tinyint(1) NOT NULL DEFAULT '0',
  `on_perso` tinyint(1) NOT NULL DEFAULT '0',
  `on_top` tinyint(1) NOT NULL DEFAULT '0',
  `on_gift` tinyint(1) NOT NULL DEFAULT '0',
  `on_gift_points` int(11) NOT NULL DEFAULT '0',
  `on_ref_produit` tinyint(1) NOT NULL DEFAULT '0',
  `nb_ref_produits` int(11) NOT NULL DEFAULT '0',
  `recommanded_product_on_cart_page` tinyint(1) NOT NULL DEFAULT '0',
  `comments` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `on_flash` tinyint(1) NOT NULL DEFAULT '0',
  `flash_start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `flash_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_marque` int(11) NOT NULL DEFAULT '0',
  `cost_guides` float(13,2) NOT NULL DEFAULT '0.00',
  `etat_stock` tinyint(1) NOT NULL DEFAULT '0',
  `on_rupture` tinyint(1) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `prix_promo` float(15,5) NOT NULL DEFAULT '0.00000',
  `paiement` varchar(255) NOT NULL DEFAULT '',
  `type_prix` varchar(255) NOT NULL DEFAULT '',
  `on_check` tinyint(1) NOT NULL DEFAULT '0',
  `mp3` varchar(64) NOT NULL DEFAULT '',
  `pdf` varchar(25) NOT NULL DEFAULT '',
  `id_ecotaxe` int(11) NOT NULL DEFAULT '0',
  `extrait` varchar(64) NOT NULL DEFAULT '',
  `on_download` tinyint(1) NOT NULL DEFAULT '0',
  `zip` varchar(64) NOT NULL DEFAULT '',
  `id_utilisateur` int(11) NOT NULL DEFAULT '0',
  `default_color_id` int(11) NOT NULL DEFAULT '0',
  `display_tab` tinyint(1) NOT NULL DEFAULT '0',
  `nb_view` int(11) NOT NULL DEFAULT '0',
  `extra_link` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  `descriptif_en` mediumtext NOT NULL,
  `description_en` mediumtext NOT NULL,
  `meta_titre_en` varchar(255) NOT NULL DEFAULT '',
  `meta_key_en` text NOT NULL,
  `meta_desc_en` text NOT NULL,
  `tab1_html_en` mediumtext NOT NULL,
  `tab2_html_en` mediumtext NOT NULL,
  `tab3_html_en` mediumtext NOT NULL,
  `tab4_html_en` mediumtext NOT NULL,
  `tab5_html_en` mediumtext NOT NULL,
  `tab6_html_en` mediumtext NOT NULL,
  `tab1_title_en` varchar(255) NOT NULL DEFAULT '',
  `tab2_title_en` varchar(255) NOT NULL DEFAULT '',
  `tab3_title_en` varchar(255) NOT NULL DEFAULT '',
  `tab4_title_en` varchar(255) NOT NULL DEFAULT '',
  `tab5_title_en` varchar(255) NOT NULL DEFAULT '',
  `tab6_title_en` varchar(255) NOT NULL DEFAULT '',
  `name_en` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `marque` (`id_marque`),
  KEY `position` (`position`),
  KEY `on_rollover` (`on_rollover`),
  KEY `on_special` (`on_special`),
  KEY `on_top` (`on_top`),
  KEY `reference` (`reference`(2)),
  KEY `site_id` (`site_id`),
  KEY `nom_en` (`nom_en`(2))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_produits_attributs`
--

CREATE TABLE IF NOT EXISTS `peel_produits_attributs` (
  `produit_id` int(11) NOT NULL DEFAULT '0',
  `nom_attribut_id` int(11) NOT NULL DEFAULT '0',
  `attribut_id` int(11) NOT NULL DEFAULT '0',
  KEY `nom_attribut_id` (`nom_attribut_id`),
  KEY `attribut_id` (`attribut_id`),
  KEY `produit_id` (`produit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peel_produits_categories`
--

CREATE TABLE IF NOT EXISTS `peel_produits_categories` (
  `produit_id` int(11) NOT NULL DEFAULT '0',
  `categorie_id` int(11) NOT NULL DEFAULT '0',
  KEY `produit_id` (`produit_id`),
  KEY `categorie_id` (`categorie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peel_produits_couleurs`
--

CREATE TABLE IF NOT EXISTS `peel_produits_couleurs` (
  `produit_id` int(11) NOT NULL DEFAULT '0',
  `couleur_id` int(11) NOT NULL DEFAULT '0',
  `default_image` tinyint(1) NOT NULL DEFAULT '1',
  `image1` varchar(255) NOT NULL DEFAULT '',
  `image2` varchar(255) NOT NULL DEFAULT '',
  `image3` varchar(255) NOT NULL DEFAULT '',
  `image4` varchar(255) NOT NULL DEFAULT '',
  `image5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`produit_id`,`couleur_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peel_produits_references`
--

CREATE TABLE IF NOT EXISTS `peel_produits_references` (
  `produit_id` int(11) NOT NULL DEFAULT '0',
  `reference_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`produit_id`,`reference_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peel_produits_tailles`
--

CREATE TABLE IF NOT EXISTS `peel_produits_tailles` (
  `produit_id` int(11) NOT NULL DEFAULT '0',
  `taille_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`produit_id`,`taille_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peel_profil`
--

CREATE TABLE IF NOT EXISTS `peel_profil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priv` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `name_en` varchar(100) NOT NULL DEFAULT '',
  `description_document_en` text NOT NULL,
  `document_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `peel_profil`
--

INSERT INTO `peel_profil` (`id`, `priv`, `site_id`, `name_en`, `description_document_en`, `document_en`) VALUES
(1, 'util', 1, 'Client', '', ''),
(2, 'admin', 1, 'Global Administrator', '', ''),
(3, 'reve', 1, 'Reseller', '', ''),
(4, 'stop', 1, 'Reseller - waiting', '', ''),
(5, 'affi', 1, 'Affiliate', '', ''),
(6, 'stand', 1, 'Affiliate - waiting', '', ''),
(7, 'supplier', 1, 'Provider', '', ''),
(8, 'newsletter', 1, 'Newsletter subscriber', '', ''),
(9, 'admin_content', 1, 'Content Administrator', '', ''),
(10, 'admin_sales', 1, 'Sales Administrator', '', ''),
(11, 'admin_products', 1, 'Products Administrator', '', ''),
(12, 'admin_webmastering', 1, 'Webmastering Administrator', '', ''),
(13, 'admin_moderation', 1, 'Moderation Administrator', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `peel_rubriques`
--

CREATE TABLE IF NOT EXISTS `peel_rubriques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `on_special` tinyint(1) NOT NULL DEFAULT '0',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `articles_review` tinyint(1) NOT NULL DEFAULT '1',
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  `description_en` mediumtext NOT NULL,
  `meta_titre_en` varchar(255) NOT NULL DEFAULT '',
  `meta_key_en` text NOT NULL,
  `meta_desc_en` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `site_id` (`site_id`),
  KEY `nom_en` (`nom_en`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_security_codes`
--

CREATE TABLE IF NOT EXISTS `peel_security_codes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL DEFAULT '',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_societe`
--

CREATE TABLE IF NOT EXISTS `peel_societe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `societe` varchar(255) NOT NULL DEFAULT '',
  `adresse` varchar(255) NOT NULL DEFAULT '',
  `adresse2` varchar(255) NOT NULL DEFAULT '',
  `code_postal` varchar(100) NOT NULL DEFAULT '',
  `code_postal2` varchar(100) NOT NULL DEFAULT '',
  `ville` varchar(255) NOT NULL DEFAULT '',
  `ville2` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `tel2` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `fax2` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `siren` varchar(255) NOT NULL DEFAULT '',
  `tvaintra` varchar(255) NOT NULL DEFAULT '',
  `nom` varchar(255) NOT NULL DEFAULT '',
  `prenom` varchar(255) NOT NULL DEFAULT '',
  `pays` varchar(255) NOT NULL DEFAULT '',
  `pays2` varchar(255) NOT NULL DEFAULT '',
  `siteweb` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `code_banque` varchar(10) NOT NULL DEFAULT '',
  `code_guichet` varchar(10) NOT NULL DEFAULT '',
  `numero_compte` varchar(20) NOT NULL DEFAULT '',
  `cle_rib` varchar(5) NOT NULL DEFAULT '',
  `titulaire` varchar(255) NOT NULL DEFAULT '',
  `domiciliation` varchar(255) NOT NULL DEFAULT '',
  `cnil` varchar(30) NOT NULL DEFAULT '',
  `iban` varchar(255) NOT NULL DEFAULT '',
  `swift` varchar(255) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `peel_societe`
--

INSERT INTO `peel_societe` (`id`, `societe`, `adresse`, `adresse2`, `code_postal`, `code_postal2`, `ville`, `ville2`, `tel`, `tel2`, `fax`, `fax2`, `email`, `siren`, `tvaintra`, `nom`, `prenom`, `pays`, `pays2`, `siteweb`, `logo`, `code_banque`, `code_guichet`, `numero_compte`, `cle_rib`, `titulaire`, `domiciliation`, `cnil`, `iban`, `swift`, `site_id`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peel_statut_livraison`
--

CREATE TABLE IF NOT EXISTS `peel_statut_livraison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `peel_statut_livraison`
--

INSERT INTO `peel_statut_livraison` (`id`, `technical_code`, `position`, `site_id`, `nom_en`) VALUES
(1, 'discussed', 0, 1, 'Being discussed'),
(2, 'processing', 1, 1, 'Processing'),
(3, 'dispatched', 3, 1, 'Order dispatched'),
(4, 'cancelled', 6, 1, 'Order cancelled'),
(5, 'waiting_for_supply', 9, 1, 'Waiting for supply');

-- --------------------------------------------------------

--
-- Table structure for table `peel_statut_paiement`
--

CREATE TABLE IF NOT EXISTS `peel_statut_paiement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `peel_statut_paiement`
--

INSERT INTO `peel_statut_paiement` (`id`, `technical_code`, `position`, `site_id`, `nom_en`) VALUES
(1, 'discussed', 0, 1, 'Being discussed'),
(2, 'pending', 1, 1, 'Payment pending'),
(3, 'being_checked', 2, 1, 'Payment being checked'),
(4, 'completed', 3, 1, 'Completed'),
(5, 'cancelled', 6, 1, 'Cancelled'),
(6, 'refunded', 9, 1, 'Refunded');

-- --------------------------------------------------------

--
-- Table structure for table `peel_tag_cloud`
--

CREATE TABLE IF NOT EXISTS `peel_tag_cloud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(100) NOT NULL DEFAULT '',
  `nbsearch` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_tailles`
--

CREATE TABLE IF NOT EXISTS `peel_tailles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prix` float(15,5) NOT NULL DEFAULT '0.00000',
  `prix_revendeur` float(15,5) NOT NULL DEFAULT '0.00000',
  `position` int(11) NOT NULL DEFAULT '0',
  `signe` char(1) NOT NULL DEFAULT '',
  `poids` float(15,5) NOT NULL DEFAULT '0.00000',
  `mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_tarifs`
--

CREATE TABLE IF NOT EXISTS `peel_tarifs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poidsmin` float(10,2) NOT NULL DEFAULT '0.00',
  `poidsmax` float(10,2) NOT NULL DEFAULT '0.00',
  `totalmin` float(15,5) NOT NULL DEFAULT '0.00000',
  `totalmax` float(15,5) NOT NULL DEFAULT '0.00000',
  `tarif` float(10,2) NOT NULL DEFAULT '0.00',
  `type` int(11) NOT NULL DEFAULT '0',
  `zone` int(11) NOT NULL DEFAULT '0',
  `tva` float(5,2) NOT NULL DEFAULT '0.00',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `peel_tarifs`
--

INSERT INTO `peel_tarifs` (`id`, `poidsmin`, `poidsmax`, `totalmin`, `totalmax`, `tarif`, `type`, `zone`, `tva`, `site_id`) VALUES
(1, 0.00, 250.00, 0.00000, 0.00000, 6.28, 1, 1, 20.00, 1),
(2, 0.00, 500.00, 0.00000, 0.00000, 7.12, 1, 1, 20.00, 1),
(3, 0.00, 750.00, 0.00000, 0.00000, 7.95, 1, 1, 20.00, 1),
(4, 0.00, 1000.00, 0.00000, 0.00000, 8.37, 1, 1, 20.00, 1),
(5, 0.00, 1500.00, 0.00000, 0.00000, 8.91, 1, 1, 20.00, 1),
(6, 0.00, 2000.00, 0.00000, 0.00000, 9.33, 1, 1, 20.00, 1),
(7, 0.00, 3000.00, 0.00000, 0.00000, 10.05, 1, 1, 20.00, 1),
(8, 0.00, 4000.00, 0.00000, 0.00000, 10.88, 1, 1, 20.00, 1),
(9, 0.00, 5000.00, 0.00000, 0.00000, 11.60, 1, 1, 20.00, 1),
(10, 0.00, 6000.00, 0.00000, 0.00000, 12.32, 1, 1, 20.00, 1),
(11, 0.00, 7000.00, 0.00000, 0.00000, 12.80, 1, 1, 20.00, 1),
(12, 0.00, 10000.00, 0.00000, 0.00000, 14.05, 1, 1, 20.00, 1),
(13, 0.00, 15000.00, 0.00000, 0.00000, 16.21, 1, 1, 20.00, 1),
(14, 0.00, 30000.00, 0.00000, 0.00000, 21.95, 1, 1, 20.00, 1),
(15, 0.00, 0.00, 0.00000, 0.00000, 0.00, 4, 1, 5.50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peel_tva`
--

CREATE TABLE IF NOT EXISTS `peel_tva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tva` float(5,2) NOT NULL DEFAULT '0.00',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `peel_tva`
--

INSERT INTO `peel_tva` (`id`, `tva`, `site_id`) VALUES
(1, 20.00, 1),
(2, 5.50, 1),
(3, 2.10, 1),
(4, 0.00, 1),
(5, 10.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `peel_types`
--

CREATE TABLE IF NOT EXISTS `peel_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `without_delivery_address` tinyint(1) NOT NULL DEFAULT '0',
  `is_socolissimo` tinyint(1) NOT NULL DEFAULT '0',
  `is_icirelais` tinyint(1) NOT NULL DEFAULT '0',
  `etat` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `peel_types`
--

INSERT INTO `peel_types` (`id`, `technical_code`, `position`, `without_delivery_address`, `is_socolissimo`, `is_icirelais`, `etat`, `site_id`, `nom_en`) VALUES
(1, 'colissimo_without_signature', 1, 0, 0, 0, 1, 1, 'Colissimo Expert signature'),
(2, 'colissimo_expert_international', 2, 0, 0, 0, 0, 1, 'Colissimo Expert international'),
(3, 'chronopost', 3, 0, 0, 0, 0, 1, 'Chronopost'),
(4, 'pickup', 4, 1, 0, 0, 1, 1, 'Pickup in store'),
(5, 'ups', 5, 0, 0, 0, 0, 1, 'UPS'),
(6, 'dhl', 6, 0, 0, 0, 0, 1, 'DHL'),
(7, 'fedex', 7, 0, 0, 0, 0, 1, 'FedEx');

-- --------------------------------------------------------

--
-- Table structure for table `peel_utilisateurs`
--

CREATE TABLE IF NOT EXISTS `peel_utilisateurs` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `code_client` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `email_bounce` varchar(60) NOT NULL DEFAULT '',
  `mot_passe` varchar(32) NOT NULL DEFAULT '',
  `priv` varchar(255) NOT NULL DEFAULT '',
  `civilite` varchar(20) NOT NULL DEFAULT '',
  `prenom` varchar(64) NOT NULL DEFAULT '',
  `pseudo` varchar(64) NOT NULL DEFAULT '',
  `nom_famille` varchar(64) NOT NULL DEFAULT '',
  `societe` varchar(255) NOT NULL DEFAULT '',
  `intracom_for_billing` varchar(15) NOT NULL DEFAULT '',
  `naissance` date NOT NULL DEFAULT '0000-00-00',
  `telephone` varchar(32) NOT NULL DEFAULT '',
  `fax` varchar(32) NOT NULL DEFAULT '',
  `portable` varchar(32) NOT NULL DEFAULT '',
  `adresse` varchar(255) NOT NULL DEFAULT '',
  `code_postal` varchar(100) NOT NULL DEFAULT '',
  `ville` varchar(255) NOT NULL DEFAULT '',
  `pays` int(11) NOT NULL DEFAULT '1',
  `cnil` tinyint(1) NOT NULL DEFAULT '1',
  `newsletter` tinyint(1) NOT NULL DEFAULT '1',
  `commercial` tinyint(1) NOT NULL DEFAULT '1',
  `remise_percent` float(5,2) NOT NULL DEFAULT '0.00',
  `remise_valeur` float(5,2) NOT NULL DEFAULT '0.00',
  `points` int(4) NOT NULL DEFAULT '0',
  `on_vacances` tinyint(1) NOT NULL DEFAULT '0',
  `on_vacances_date` date NOT NULL DEFAULT '0000-00-00',
  `format` varchar(5) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  `siret` varchar(20) NOT NULL DEFAULT '',
  `ape` varchar(5) NOT NULL DEFAULT '',
  `code_banque` varchar(15) NOT NULL DEFAULT '',
  `code_guichet` varchar(15) NOT NULL DEFAULT '',
  `numero_compte` varchar(15) NOT NULL DEFAULT '',
  `cle_rib` varchar(15) NOT NULL DEFAULT '',
  `domiciliation` varchar(180) NOT NULL DEFAULT '',
  `iban` varchar(60) NOT NULL DEFAULT '',
  `bic` varchar(60) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `message_client` varchar(255) NOT NULL DEFAULT '',
  `date_insert` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alerte` mediumtext NOT NULL,
  `nom_utilisateur` varchar(255) NOT NULL DEFAULT '',
  `region` varchar(255) NOT NULL DEFAULT '',
  `avoir` float(15,5) NOT NULL DEFAULT '0.00000',
  `statut_coupon` varchar(125) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `fonction` varchar(255) NOT NULL DEFAULT '',
  `etat` tinyint(1) NOT NULL DEFAULT '1',
  `id_parrain` int(11) NOT NULL DEFAULT '0',
  `id_groupe` int(11) NOT NULL DEFAULT '0',
  `origin` int(11) NOT NULL DEFAULT '0',
  `origin_other` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(2) NOT NULL DEFAULT '',
  `seg_buy` enum('no','one_old','one_recent','multi_old','multi_recent','no_info') NOT NULL DEFAULT 'no_info',
  `seg_want` enum('min_contact','max_contact','no_matter','no_info') NOT NULL DEFAULT 'no_info',
  `seg_think` enum('never_budget','no_budget','unsatisfied','satisfied','not_interested','interested','newbie','no_matter','no_info') NOT NULL DEFAULT 'no_info',
  `seg_followed` enum('no','poor','correct','no_info') NOT NULL DEFAULT 'no_info',
  `seg_who` enum('independant','partner','company_small','company_medium','company_big','person','no_info') NOT NULL DEFAULT 'no_info',
  `Admis` enum('NO','OK') NOT NULL DEFAULT 'OK',
  `Valid` enum('NO','YES','AGENT','PROSP') NOT NULL DEFAULT 'YES',
  `promo` varchar(20) NOT NULL DEFAULT '',
  `id_cat_1` int(11) NOT NULL DEFAULT '0',
  `id_cat_2` int(11) NOT NULL DEFAULT '0',
  `id_cat_3` int(11) NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL DEFAULT '',
  `project_product_proposed` varchar(255) NOT NULL DEFAULT '',
  `project_date_forecasted` date NOT NULL DEFAULT '0000-00-00',
  `commercial_contact_id` int(11) NOT NULL DEFAULT '0',
  `project_budget_ht` float(15,5) NOT NULL DEFAULT '0.00000',
  `project_chances_estimated` varchar(255) NOT NULL DEFAULT '0',
  `ad_insert_delay` enum('max','medium','min') NOT NULL DEFAULT 'max',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `description_document` text NOT NULL,
  `document` varchar(255) NOT NULL DEFAULT '',
  `on_client_module` tinyint(1) NOT NULL DEFAULT '0',
  `on_photodesk` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_utilisateur`),
  KEY `code_client` (`code_client`),
  KEY `email` (`email`),
  KEY `pseudo` (`pseudo`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `peel_utilisateurs`
--

INSERT INTO `peel_utilisateurs` (`id_utilisateur`, `code_client`, `email`, `email_bounce`, `mot_passe`, `priv`, `civilite`, `prenom`, `pseudo`, `nom_famille`, `societe`, `intracom_for_billing`, `naissance`, `telephone`, `fax`, `portable`, `adresse`, `code_postal`, `ville`, `pays`, `cnil`, `newsletter`, `commercial`, `remise_percent`, `remise_valeur`, `points`, `on_vacances`, `on_vacances_date`, `format`, `message`, `siret`, `ape`, `code_banque`, `code_guichet`, `numero_compte`, `cle_rib`, `domiciliation`, `iban`, `bic`, `url`, `description`, `message_client`, `date_insert`, `date_update`, `alerte`, `nom_utilisateur`, `region`, `avoir`, `statut_coupon`, `type`, `fonction`, `etat`, `id_parrain`, `id_groupe`, `origin`, `origin_other`, `lang`, `seg_buy`, `seg_want`, `seg_think`, `seg_followed`, `seg_who`, `Admis`, `Valid`, `promo`, `id_cat_1`, `id_cat_2`, `id_cat_3`, `activity`, `project_product_proposed`, `project_date_forecasted`, `commercial_contact_id`, `project_budget_ht`, `project_chances_estimated`, `ad_insert_delay`, `logo`, `description_document`, `document`, `on_client_module`, `on_photodesk`, `site_id`) VALUES
(1, 'CLT20151', 'weezyfbaby39@outlook.com', '', '1b610459ec99394b0cedc8a3fe34f6e5', 'admin', '', '', 'weezy', '', '', '', '0000-00-00', '', '', '', '', '', '', 1, 1, 0, 0, 0.00, 0.00, 0, 0, '0000-00-00', 'html', '', '', '', '', '', '', '', '', '', '', '', '', '', '2015-06-05 02:23:59', '2015-06-05 02:23:59', '', '', '', 0.00000, '', '', '', 1, 0, 0, 0, '', 'en', '', '', '', '', '', 'OK', 'YES', '', 0, 0, 0, '', '', '0000-00-00', 0, 0.00000, '0', 'max', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `peel_utilisateurs_codes_promos`
--

CREATE TABLE IF NOT EXISTS `peel_utilisateurs_codes_promos` (
  `id_utilisateur` int(11) NOT NULL DEFAULT '0',
  `id_code_promo` int(11) NOT NULL DEFAULT '0',
  `nom_code` varchar(25) NOT NULL DEFAULT '',
  `la_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `utilise` tinyint(3) NOT NULL DEFAULT '0',
  `valeur` varchar(25) NOT NULL DEFAULT '',
  KEY `id_utilisateur` (`id_utilisateur`),
  KEY `nom_code` (`nom_code`),
  KEY `la_date` (`la_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `peel_utilisateur_connexions`
--

CREATE TABLE IF NOT EXISTS `peel_utilisateur_connexions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login` varchar(64) NOT NULL DEFAULT '',
  `user_ip` int(15) unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_login` (`user_login`(2)),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `peel_utilisateur_connexions`
--

INSERT INTO `peel_utilisateur_connexions` (`id`, `user_id`, `user_login`, `user_ip`, `date`, `site_id`) VALUES
(1, 1, 'weezy', 0, '2015-06-05 02:26:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peel_webmail`
--

CREATE TABLE IF NOT EXISTS `peel_webmail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `message` text NOT NULL,
  `email` text NOT NULL,
  `nom` varchar(255) NOT NULL DEFAULT '',
  `prenom` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(32) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `heure` text NOT NULL,
  `ip` text NOT NULL,
  `read` enum('NO','READ','SEND','TREATED') NOT NULL DEFAULT 'NO',
  `id_user` int(11) NOT NULL DEFAULT '0',
  `commande_id` int(11) NOT NULL DEFAULT '0',
  `dispo` varchar(50) NOT NULL DEFAULT '',
  `site_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `peel_zones`
--

CREATE TABLE IF NOT EXISTS `peel_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technical_code` varchar(255) NOT NULL DEFAULT '',
  `tva` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `on_franco` tinyint(1) NOT NULL DEFAULT '0',
  `on_franco_amount` float(15,5) NOT NULL DEFAULT '0.00000',
  `on_franco_nb_products` int(5) NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `nom_en` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `peel_zones`
--

INSERT INTO `peel_zones` (`id`, `technical_code`, `tva`, `position`, `on_franco`, `on_franco_amount`, `on_franco_nb_products`, `site_id`, `nom_en`) VALUES
(1, 'france_mainland', 1, 1, 0, 0.00000, 0, 1, 'France'),
(2, 'europe', 1, 2, 0, 0.00000, 0, 1, 'European Union'),
(3, 'france_and_overseas', 1, 3, 0, 0.00000, 0, 1, 'France overseas'),
(4, 'world', 1, 4, 0, 0.00000, 0, 1, 'World outside Europe');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
