<?php

include './init.php';

include './config.db.php';

require(CLASS_DIR . 'template.app.php');

require(CLASS_DIR . 'function_user.app.php');

$smarty = new My_App();

$smarty->debugging = false;

$smarty->caching = true;

$smarty->cache_lifetime = 120;

function create_cbt_database($mysqli)
{
	$database = 'new_users';

	$sql = "CREATE TABLE `$database` (
            `id` int(100) NOT NULL AUTO_INCREMENT,
            `username` varchar(250) NOT NULL,
            `email` varchar(250) NOT NULL,
            `passwords` varchar(250) NOT NULL,
            `trn_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
            `token_id` varchar(250) NOT NULL,
            PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1";

	mysqli_query($mysqli, $sql);
}

create_cbt_database($mysqli);

$smarty->display('extends:templates/parent.tpl|templates/register.tpl');
