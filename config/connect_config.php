<?php
#|======================================================================|#
#|  ## ####### #######                                                  |#
#|  ## ##      ##   ##                                                  |#
#|  ## ##      ## ####  |)  | |¯¯¯ ¯¯|¯¯ |     | |¯¯¯| |¯¯¯| | ) |¯¯¯|  |#
#|  ## ##      ##       | | | |--    |    ) . (  | | | | |_| |<   ¯|_   |#
#|  ## ####### ##       |  (| |___   |     V V   |___| | | ) | ) |___|  |#
#| -------------------------------------------------------------------- |#
#|      Brazillian Developer / WebSite: http://www.icpfree.com.br       |#
#|                Email & Skype: ivan1507@gmail.com.br                  |#
#|======================================================================|#

$db_data = 'l2j';
$L2jVersaoRussa = false;
$db_ip = 'IP DB';
$db_name = 'DB NAME';
$db_user = 'USER';
$db_pass = 'PASS';
$cached_port = 2012;

include('connection.php');

$configuracoes = $conn->prepare('SELECT * FROM icp_votesystem_config');
$configuracoes->execute();
$config = $configuracoes->fetch(PDO::FETCH_ASSOC);

if($config){
	$admins = $config['admins'];
	$moeda_voto = $config['moeda_voto'];
	$qtd_moeda_voto = $config['qtd_moeda_voto'];
	$deposito_loc = $config['deposito'];
	$mostra_votos = $config['votos'];
}
?>