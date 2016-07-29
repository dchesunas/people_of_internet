<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 25.07.2016
 * Time: 11:14
 */

require_once "header.php";

if(!$loggedin) header("Location:index.php");

setcookie('user');
setcookie('rate');
setcookie('ava');
destroySession();
header("Location: index.php");