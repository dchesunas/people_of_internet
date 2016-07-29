<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 28.07.2016
 * Time: 11:08
 */

require_once "functions.php";


$return=array();
$recip=sanitizeString($_POST['name']);
$voter=sanitizeString($_POST['voter']);
$vote=sanitizeString($_POST['vote']);
if($vote==="-"){
    $vote=0;
}elseif($vote==="+"){
    $vote=1;
}else{
    die("Error");
}

$result1=$connection->query("SELECT * FROM votes WHERE recip='$recip' AND voter='$voter'");
if(!$result1->num_rows){
    $result=$connection->query("INSERT INTO votes VALUES('$voter','$recip','$vote')");
    if($vote==0) {
        $result = $connection->query("UPDATE users SET rate=rate-1 WHERE name='$recip'");

        }else{
            $result=$connection->query("UPDATE users SET rate=rate+1 WHERE name='$recip'");
    }
    $connection->query("INSERT INTO history VALUES('$voter','$recip',CURRENT_TIMESTAMP,'$vote')");
}else{
    $row=$result1->fetch_array(MYSQLI_ASSOC);
    if($vote===$row['vote']){
        die("");
    }elseif($row['vote']!=NULL&&$vote!=$row['vote']){
        $result=$connection->query("UPDATE votes SET vote='$vote' WHERE recip='$recip' AND voter='$voter'");

        if($vote==0) {
            $result = $connection->query("UPDATE users SET rate=rate-2 WHERE name='$recip'");
            $result = $connection->query("UPDATE votes SET vote=0 WHERE recip='$recip'");
        }else{
            $result=$connection->query("UPDATE users SET rate=rate+2 WHERE name='$recip'");
            $result = $connection->query("UPDATE votes SET vote=1 WHERE recip='$recip'");
        }
        $connection->query("INSERT INTO history VALUES('$voter','$recip',CURRENT_TIMESTAMP,'$vote')");

    }
}


$result=$connection->query("SELECT rate FROM users WHERE name='$recip'");
$row=$result->fetch_array(MYSQLI_ASSOC);
$return['rate']=$row['rate'];
$result=$connection->query("SELECT vote FROM votes WHERE recip='$recip' AND voter='$voter'");
$row=$result->fetch_array(MYSQLI_ASSOC);
$return['vote']=$row['vote'];

echo json_encode($return);

