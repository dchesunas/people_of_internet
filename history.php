<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 29.07.2016
 * Time: 14:03
 */

require_once "header.php";



$result=$connection->query("SELECT * FROM history WHERE recip='$user'");
if(!$result) {
    echo "<div class='error-page'><img src='images/smiley_sad_lock.png' alt=''>Something goes wrong. Try later</div>";
    die();
}

$rows=$result->num_rows;
echo "<div class='wrapper'>";
echo "<h1>History of votes for you</h1>";
for($i=0;$i<$rows;$i++){
    $result->data_seek($i);
    $row=$result->fetch_array(MYSQLI_ASSOC);
    if($row['vote']==1){
        $str="liked";
    }else{
        $str="disliked";
    }
    echo "<div class='history-item'>$row[voter] ".$str." you at ".$row['date']."</div>";
}
echo "</div>";