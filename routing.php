<?php
/**
 * Created by PhpStorm.
 * User: budde
 * Date: 6/30/15
 * Time: 9:36 AM
 */


$path = preg_replace("/[?#].+$/", "", $_SERVER['REQUEST_URI']);

if ( file_exists(__DIR__ . '/www/' . $path)) {
    return false; // serve the requested resource as-is.
} else {
    $_GET['page'] = isset($_SERVER['PATH_INFO'])?substr($_SERVER['PATH_INFO'],1):null;
    chdir("www");
    require_once 'index.php';
}