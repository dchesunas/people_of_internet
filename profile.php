<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 29.07.2016
 * Time: 13:09
 */


require_once "header.php";
require_once "upload_image.php";
echo "<div class='preloader'><img src='images/preloader.gif'></div>";

if(!$loggedin) {echo "<div class='error-page'><img src='images/smiley_sad_lock.png' alt=''>You need to be logged in to view this page</div>";
die();}


echo "<div class='main-wrapper'>";


if(isset($_GET['view'])){
$view=sanitizeString($_GET['view']);
if($view!=$user){

    echo "<div class='main-wrapper'>";
    if(isset($_COOKIE['user']))
        $user=$_COOKIE['user'];
    $result=$connection->query("SELECT * FROM users WHERE name='$view'");
    if(!$result->num_rows){
        echo "<div class='error-page'><img src='images/smiley_sad_lock.png' alt=''>Try to not hack.</div>";
        die();
    }
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
<div class="partic-item no-border">

<img src="$row[avatar]">
<div class="partic-name"><a href='profile.php?view=$row[name]'>$row[name]</a></div>
<div class="vote-area">
_END;
        if(isset($user)){
            if($row1['vote']==1) {
                echo <<<_END
        <a href="#" id="$row[name]" class="prof-button blocked">+</a>
        <a href="#" id="$row[name]" class="prof-button">-</a>
_END;
            }elseif($row1['vote']==0 && $row1['vote']!=NULL){

                echo <<<_END
    
    <a href="#" id="$row[name]"  class="prof-button">+</a>
        <a href="#" id="$row[name]"  class="prof-button blocked">-</a>


_END;
            }elseif($row['name']!=$user){
                echo <<<_END

        <a href="#" id="$row[name]"  class="prof-button">+</a>
        <a href="#" id="$row[name]"  class="prof-button">-</a>
_END;
            }else{
                echo <<<_END

        <a href="#" id="$row[name]"  class="prof-button blocked">+</a>
        <a href="#" id="$row[name]"  class="prof-button blocked">-</a>
_END;
            };
        };
        echo "</div>";

    if($row2['text']==""){
        $row2['text']="No idea yet...";
    }


        echo <<<_END

<div class="rate-area">$row[rate]</div>
<div class="partic-text">
<h2>User idea:</h2>
$row2[text]
</div>
</div>
_END;
    }else{


        if(isset($_FILES['userfile'])&& (strlen($_FILES['userfile']['name']))!=0){
            $image_path=uploadImage($user,$_FILES['userfile']);
            if(isset($image_path)){
              $result=$connection->query("UPDATE users SET avatar='$image_path' WHERE name='$user'");
                header("Location:profile.php?view=$user");
            }else{
                echo "Cant upload your avatar";
                die();
            }
        }
        if(isset($_POST['text'])){
            $text=sanitizeString($_POST['text']);
            $result=$connection->query("SELECT * FROM profiles WHERE name='$user'");
            if($result->num_rows)
            $connection->query("UPDATE profiles SET text='$text' WHERE name='$user'");
            else
                $connection->query("INSERT INTO profiles VALUES('$user','$text')");
        }

        $result=$connection->query("SELECT * FROM users WHERE name='$user'");
        $row=$result->fetch_array(MYSQLI_ASSOC);
        if($row['avatar']==""){
            $row['avatar']="images/zaglyshka.jpg";
        }
        $result=$connection->query("SELECT text FROM profiles WHERE name='$user'");
        $row1=$result->fetch_array(MYSQLI_ASSOC);
        echo "<div class='partic-item no-border'>";
        echo "<img src='$row[avatar]' alt=''>";
        echo <<<_END

<form method='post' enctype="multipart/form-data">
<label for='avatar'>Upload new avatar: <br> </label>
<input type='file' id='avatar' name='userfile'>
<br>
<br>
<textarea id='textarea' name='text'>$row1[text]</textarea>
<br>
<input type='submit' value="Сохранить">
</form>

_END;



}

}else{
   echo "<div class='error-page'><img src='images/smiley_sad_lock.png' alt=''>Try to not hack.</div>";
}
    echo "</div>";



echo "</div>";