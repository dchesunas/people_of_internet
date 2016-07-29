<?php

require_once "functions.php";

$query_text = file_get_contents('php://input');
$out = array();
parse_str($query_text, $out);
$error = "";


if (isset($out['user'])) {
    $user = sanitizeString($out['user']);
    $pass = encodePassword(sanitizeString($out['pass']));

    $query = "SELECT * FROM users WHERE name='$user' AND pass='$pass'";
    $result = $connection->query($query);
    if (!$result->num_rows) {
        $error = 'Not important info';
    }

    echo $error;
}

