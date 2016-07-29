<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 22.07.2016
 * Time: 14:32
 */

$h_name='localhost';
$database='people_of_internet';
$u_name='root';
$h_password='';

$connection=new mysqli($h_name,$u_name,$h_password,$database);
if($connection->connect_error) die($connection->connect_error);