<?php

//constants
require_once($_SERVER['DOCUMENT_ROOT'] . "/appcreatuity/config/constants.php");

//loading required the classes
require_once(APP_CONFIG . 'database.php');
require_once(APP_MODEL . 'user.php');
require_once(APP_HELPER . 'utilities.php');

//inititate objects
$User = new User();
$Database = new Database();
$Utilities = new Utitlities();

// create connection with database
$PDO = $Database->dbConnection();

//login user
$username = $User->login($_POST['username'], $_POST['password'], $PDO);

if($username !== ''){
    $Utilities->redirect('views/auth/logged.html.php');
} else {
    $Utilities->redirect('views/auth/unlogged.html.php');
}



