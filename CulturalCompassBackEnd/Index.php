<?php

include_once 'apiculturalcompass.php';

$api = new ApiCulturalCompass();

if(isset($_GET['category_id'])&&isset($_GET['when'])){
    $category_id = $_GET['category_id'];
    $when = $_GET['when'];
    $api->getFilteredEvents($category_id, $when);
}
elseif(isset($_POST['username'])&&isset($_POST['password'])){
    echo $_POST['submit'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $action = $_POST['submit'];
    switch($action){
        case 'login':
            $api->userLogin($username, $password);
            break;
        case 'register':
            $api->userRegister($username, $password);
            break;
        default:
            $api->when_error('No se especifico ninguna accion');
            break;
    }
}

?>