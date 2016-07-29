<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 22.07.2016
 * Time: 14:25
 */

require_once "connection.php";
$appname="Voter";


$connection=new mysqli($h_name,$u_name,$h_password,$database);
if($connection->connect_error) die($connection->connect_error);


function createTable($name,$query){
    queryMysql("CREATE TABLE IF NOT EXISTS $name($query)");
}

function queryMysql($query){
    global $connection;
    $result=$connection->query($query);
    if(!$result) die($connection->error);
    return $result;
}

function destroySession(){
    $_SESSION=array();
    if(session_id()!="" || isset($_COOKIE[session_name()]))
        setcookie(session_name(),'',time()-2592000,'/');
    session_destroy();
}

function sanitizeString($var){
    global $connection;
    $var=strip_tags($var);
    $var=htmlentities($var);
    $var=stripcslashes($var);
    return $connection->real_escape_string($var);
}

function encodePassword($pass){
    $salt1='$gf6*';
    $salt2='4kgf7)';
    $pass=$salt1.$pass.$salt2;
    $pass=hash("md5",$pass);
    return $pass;
}
