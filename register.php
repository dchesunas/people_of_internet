<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 24.07.2016
 * Time: 11:13
 */

require_once "header.php";
require_once "upload_image.php";

if($loggedin) header('location:index.php');

$error="";

if((isset($_POST['user-name']))&&(isset($_POST['pass']))){

    $name=sanitizeString($_POST['user-name']);
    $pass=sanitizeString($_POST['pass']);

    if((strlen($name)<4)||(strlen($name)>15)){
        $error=$error." Length of nickname must be between 4 and 15 symbols<br>";
    }

    if(preg_match('/[^a-z0-9]/i',$name)){
        $error=$error." Only a-Z and 0-9 allowed in nickname<br>";
    };

    if(strlen($pass)<5||strlen($pass)>25){
        $error=$error." Length of password must be between 5 and 25 symbols<br>";
    }

 if(isset($_POST['captcha'])) {
     if ($_SESSION['rand_code'] != $_POST['captcha']) {
         $error = $error . "Wrong captcha<br>";
     }
 }else{
     $error=$error."You didn't fill captcha field";
 }
$image_path="";
    if(!$error){
        if(!$_FILES['userfile']['type']==''){
            $image_path=uploadImage($name,$_FILES['userfile']);
            if(!$image_path){
                $error=$error." Avatar must be .jpg .jpeg .gif .png and not bigger than 5MB<br>";
            }
        }
    }

 if(!$error){

     $result=$connection->query("SELECT * FROM users WHERE name='$name'");

     if($result->num_rows){
         $error=$error."Such user already exists";
     }else{
         $pass=encodePassword($pass);
         $result=$connection->query("INSERT INTO users VALUES('$name','$pass',0,'$image_path')");
             $_SESSION['user'] = $name;
             $_SESSION['rate']=0;
             $_SESSION['img']=$image_path;
             setcookie('user', $name, time() + 86400);
             header("location:register.php");
     }



 }




}


?>

<div class="wrapper">

    <h1>Registration</h1>

    <div class="info-block"><?php if($error) echo "$error";?></div>

    <form method="post" enctype="multipart/form-data">

        <label for="name">Nickname:</label><input type="text" value="<?php $name?>" id="name" name="user-name">
        <br>
        <label for="pass">Password:</label><input type="password" id="pass" value="" name="pass"><img id='show-pass' src="images/view.png">
        <br>
        <label for="attach"></label>
        <input id='attach' type="file" name="userfile">
        <br>


        <label for="">Put captcha <img id='captcha' src="captcha.php"></label>
        <input name="captcha" type="text">

        <br>
        <input type="submit" value="Register">

    </form>



</div>
