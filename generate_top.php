<script src="js/vote.js"></script>
<link rel="stylesheet" href="styles/style.css">
<?php

require_once "functions.php";

echo "<div class='main-wrapper'>";

$result=$connection->query("SELECT name,rate,avatar FROM users ORDER BY rate DESC LIMIT 15");
if(isset($_COOKIE['user']))
    $user=$_COOKIE['user'];
$rows=$result->num_rows;

//row[name]- Имя пользователя /За кого голос/;
//row1[vote]-голос;

for($i=0;$i<$rows;$i++){
    $result->data_seek($i);
    $row=$result->fetch_array(MYSQLI_ASSOC);
    if(isset($user)){
    $result1=$connection->query("SELECT vote FROM votes WHERE recip='$row[name]' AND voter='$user'");
    $row1=$result1->fetch_array(MYSQLI_ASSOC);
    }
    $result2=$connection->query("SELECT text FROM profiles WHERE name='$row[name]'");
    $row2=$result2->fetch_array(MYSQLI_ASSOC);
    if($row['avatar']==""){
        $row['avatar']="images/zaglyshka.jpg";
    }
    echo <<<_END
<div class="partic-item">

<img src="$row[avatar]">
<div class="partic-name"><a href='profile.php?view=$row[name]'>$row[name]</a></div>
<div class="vote-area">
_END;
    if(isset($user)){
    if($row1['vote']==1) {
        echo <<<_END
        <a href="#" id="$row[name]" class="par-button blocked">+</a>
        <a href="#" id="$row[name]" class="par-button">-</a>
_END;
    }elseif($row1['vote']==0 && $row1['vote']!=NULL){

        echo <<<_END
    
    <a href="#" id="$row[name]"  class="par-button">+</a>
        <a href="#" id="$row[name]"  class="par-button blocked">-</a>


_END;
    }elseif($row['name']!=$user){
        echo <<<_END

        <a href="#" id="$row[name]"  class="par-button">+</a>
        <a href="#" id="$row[name]"  class="par-button">-</a>
_END;
    }else{
        echo <<<_END

        <a href="#" id="$row[name]"  class="par-button blocked">+</a>
        <a href="#" id="$row[name]"  class="par-button blocked">-</a>
_END;
    };
    };
    echo "</div>";

    if(strlen($row2['text'])>1000) {
        $text = substr($row2['text'], 0, 1000);
        $text = $text . "...   <a href='profile.php?view=$row[name]'>Подробнее</a>";
    }else{
        $text=$row2['text'];
    }
    echo <<<_END

<div class="rate-area">$row[rate]</div>
<div class="partic-text">$text</div>
</div>
_END;
}


echo "</div>";
