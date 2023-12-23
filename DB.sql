/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `icp_votesystem_config`;
CREATE TABLE IF NOT EXISTS `icp_votesystem_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admins` varchar(255) DEFAULT NULL,
  `moeda_voto` varchar(255) DEFAULT NULL,
  `qtd_moeda_voto` varchar(255) DEFAULT NULL,
  `deposito` int(1) NOT NULL DEFAULT '0',
  `votos` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `icp_votesystem_config` (`id`, `admins`, `moeda_voto`, `qtd_moeda_voto`, `deposito`, `votos`) VALUES
	(1, ',', '', '', 1, 0);

DROP TABLE IF EXISTS `icp_votesystem_tops`;
CREATE TABLE IF NOT EXISTS `icp_votesystem_tops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `top_name` varchar(255) NOT NULL DEFAULT 'top_sem_nome',
  `top_url` varchar(255) NOT NULL DEFAULT 'top_link',
  `top_img` varchar(255) NOT NULL DEFAULT 'top_btn',
  `top_btn` varchar(255) NOT NULL DEFAULT 'top_btn',
  `top_id` varchar(255) NOT NULL DEFAULT 'sem_id',
  `top_token` varchar(255) NOT NULL DEFAULT 'sem_token',
  `use_token` int(1) NOT NULL DEFAULT '0',
  `disponivel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO `icp_votesystem_tops` (`id`, `top_name`, `top_url`, `top_img`, `top_btn`, `top_id`, `top_token`, `use_token`, `disponivel`) VALUES
	(1, 'L2jBrasil', 'https://top.l2jbrasil.com', 'l2jbrasil.png', 'l2jbrasil.php', 'sem_id', 'sem_token', 0, 0),
	(2, '4TOP MMO', 'https://top.4teambr.com', '4topmmo.png', '4topmmo.php', 'sem_id', 'sem_token', 0, 0),
	(3, 'Gaming Top 100', 'https://www.gamingtop100.net', 'gamingtop100.gif', 'gamingtop100.php', 'sem_id', 'sem_token', 0, 0),
	(4, 'Games Top 200', 'https://www.gamestop200.com', 'gamestop200.jpg', 'gamestop200.php', 'sem_id', 'sem_token', 0, 0),
	(5, 'GTOP100', 'https://www.gtop100.com', 'gtop100.jpg', 'gtop100.php', 'sem_id', 'sem_token', 0, 0),
	(6, 'L2 TOP ZONE', 'https://www.l2topzone.com', 'l2topzone.png', 'l2topzone.php', 'sem_id', 'sem_token', 1, 0),
	(7, 'HOP ZONE', 'https://www.hopzone.net', 'hopzone.gif', 'hopzone.php', 'sem_id', 'sem_token', 1, 0),
	(8, 'Xtreme Top 300', 'https://xtremetop300.com', 'xtremetop300.jpg', 'xtremetop300.php', 'sem_id', 'sem_token', 1, 0),
	(9, 'TOPGS200', 'https://www.topgs200.com', 'topgs200.jpg', 'topgs200.php', 'sem_id', 'sem_token', 0, 0),
	(10, 'Top 100 Arena', 'https://www.top100arena.com', 'top100arena.jpg', 'top100arena.php', 'sem_id', 'sem_token', 0, 0),
	(11, 'L2 Network', 'https://www.l2network.eu', 'l2network.png', 'l2network.php', 'sem_id', 'sem_token', 0, 0),
	(12, 'L2Top.co', 'https://l2top.co', 'l2top.co.png', 'l2top.co.php', 'sem_id', 'sem_token', 0, 0),
	(13, 'Private Server', 'https://www.private-server.ws', 'private_server_ws.jpg', 'privateserverws.php', 'sem_id', 'sem_token', 0, 0),
	(14, 'GameBytes', 'https://www.gamebytes.net', 'gamebytes.png', 'gamebytes.php', 'sem_id', 'sem_token', 0, 0),
	(15, 'L2 Servers', 'https://www.l2servers.com', 'l2servers.png', 'l2servers.php', 'sem_id', 'sem_token', 0, 0),
	(16, 'L2 Votes', 'https://www.l2votes.com', 'l2votes.jpg', 'l2votes.php', 'sem_id', 'sem_token', 0, 0);

DROP TABLE IF EXISTS `icp_votesystem_votos`;
CREATE TABLE IF NOT EXISTS `icp_votesystem_votos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) NOT NULL DEFAULT 'sem_login',
  `ip` varchar(20) NOT NULL DEFAULT 'sem_ip',
  `data_entrega` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `votos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
