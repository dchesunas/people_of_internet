<?php


require_once "header.php";

if(!$loggedin) {echo "<div class='error-page'><img src='images/smiley_sad_lock.png' alt=''>You need to be logged in to view this page</div>";
die();}

echo "<div class='main-wrapper'>";
$per_page=15;
if (isset($_GET['page'])) $page=($_GET['page']-1); else $page=0;
$start=abs($page*$per_page);

$result=$connection->query("SELECT name,rate,avatar FROM users ORDER BY rate DESC LIMIT $start,$per_page");
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

$q="SELECT count(*) FROM users";
$res=$connection->query($q);
$row=$res->fetch_row();
$total_rows=$row[0];

$num_pages=ceil($total_rows/$per_page);

for($i=1;$i<=$num_pages;$i++) {
    if ($i-1 == $page) {
        echo $i." ";
    } else {
        echo '<a href="'.$_SERVER['PHP_SELF'].'?page='.$i.'">'.$i."</a> ";
    }
}

echo "</div>";
